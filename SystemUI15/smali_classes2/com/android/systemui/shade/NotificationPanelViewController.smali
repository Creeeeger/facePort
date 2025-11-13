.class public final Lcom/android/systemui/shade/NotificationPanelViewController;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/shade/ShadeSurface;
.implements Lcom/android/systemui/Dumpable;
.implements Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;
.implements Lcom/android/systemui/keyguard/animator/KeyguardTouchViewInjector;
.implements Lcom/android/systemui/logging/PanelScreenShotLogger$LogProvider;


# static fields
.field public static final EMPTY_RECT:Landroid/graphics/Rect;

.field public static final M_DUMMY_DIRTY_RECT:Landroid/graphics/Rect;


# instance fields
.field public mAODDoubleTouchListener:Landroid/view/View$OnTouchListener;

.field public final mAccessibilityDelegate:Lcom/android/systemui/shade/NotificationPanelViewController$ShadeAccessibilityDelegate;

.field public final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field public final mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field public mAllowExpandForSmallExpansion:Z

.field public final mAlternateBouncerInteractor:Lcom/android/systemui/bouncer/domain/interactor/AlternateBouncerInteractor;

.field public final mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

.field public mAnimateAfterExpanding:Z

.field public final mAnimateKeyguardBottomAreaInvisibleEndRunnable:Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda37;

.field public mAnimateNextPositionUpdate:Z

.field public mAnimatingOnDown:Z

.field public final mAuthController:Lcom/android/systemui/biometrics/AuthController;

.field public mAvailableNotifSpace:F

.field public mBarState:I

.field public mBioUnlockControllerLazy:Ldagger/Lazy;

.field public mBlockingExpansionForCurrentTouch:Z

.field public mBottomAreaShadeAlpha:F

.field public final mBottomAreaShadeAlphaAnimator:Landroid/animation/ValueAnimator;

.field public mBottomMarginY:I

.field public mBouncerShowing:Z

.field public mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

.field mClockPositionAlgorithm:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;

.field public final mClockPositionResult:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;

.field public mClosingWithAlphaFadeOut:Z

.field public mCollapsedAndHeadsUpOnDown:Z

.field public mCollapsedOnDown:Z

.field public final mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

.field public final mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

.field public final mConfigurationListener:Lcom/android/systemui/shade/NotificationPanelViewController$ConfigurationListener;

.field public final mContentResolver:Landroid/content/ContentResolver;

.field public mContinuityLockScreenContainer:Lcom/android/keyguard/KeyguardContinuityLockscreenAffordanceArea;

.field public mContinuityLockScreenContainerController:Lcom/android/keyguard/KeyguardContinuityLockscreenAffordanceController;

.field public final mConversationNotificationManager:Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;

.field public mCountOfUpdateDisplayedNotifications:I

.field public mCountOfUpdateDisplayedNotificationsCurrentMill:J

.field public final mCoverScreenManagerLazy:Ldagger/Lazy;

.field public mCurrentBackProgress:F

.field public mCurrentPanelState:I

.field public final mDataUsageLabelManagerLazy:Ldagger/Lazy;

.field public mDataUsageLabelParent:Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelParent;

.field public final mDepthController:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

.field public final mDeviceEntryFaceAuthInteractor:Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryFaceAuthInteractor;

.field public final mDisplayId:I

.field public mDisplayLeftInset:I

.field public mDisplayRightInset:I

.field public mDisplayTopInset:I

.field public mDownEventFromOverView:Landroid/view/MotionEvent;

.field public mDownTime:J

.field public mDownX:F

.field public mDownY:F

.field public final mDozeLog:Lcom/android/systemui/doze/DozeLog;

.field public final mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

.field public mDozing:Z

.field public mDozingOnDown:Z

.field public final mDreamingLockscreenHostedToLockscreenTransition:Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda11;

.field public final mDreamingToLockscreenTransition:Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda11;

.field public mDreamingToLockscreenTransitionTranslationY:I

.field public final mDreamingToLockscreenTransitionViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/DreamingToLockscreenTransitionViewModel;

.field public mEditModeContainer:Landroid/view/View;

.field public final mEmergencyButtonControllerFactory:Lcom/android/keyguard/EmergencyButtonController$Factory;

.field public mExpandAfterLayoutRunnable:Ljava/lang/Runnable;

.field public mExpandLatencyTracking:Z

.field public mExpandedFraction:F

.field public mExpandedHeight:F

.field public mExpanding:Z

.field public mExpandingFromHeadsUp:Z

.field public mExpansionDragDownAmountPx:F

.field public mExpectingSynthesizedDown:Z

.field public final mFalsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

.field public final mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

.field public final mFalsingTapListener:Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda23;

.field public final mFeatureFlags:Lcom/android/systemui/flags/FeatureFlags;

.field public mFixedDuration:I

.field public mFlingAnimationUtils:Lcom/android/wm/shell/animation/FlingAnimationUtils;

.field public final mFlingAnimationUtilsBuilder:Ljavax/inject/Provider;

.field public final mFlingAnimationUtilsClosing:Lcom/android/wm/shell/animation/FlingAnimationUtils;

.field public final mFlingAnimationUtilsDismissing:Lcom/android/wm/shell/animation/FlingAnimationUtils;

.field public mFlingAnimator:Landroid/animation/Animator;

.field public final mFlingCollapseRunnable:Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda37;

.field public mForceFlingAnimationForTest:Z

.field public final mFragmentService:Lcom/android/systemui/fragments/FragmentService;

.field public mFullScreenModeEnabled:Z

.field public mGestureRecorder:Lcom/android/systemui/statusbar/GestureRecorder;

.field public mGestureWaitForTouchSlop:Z

.field public final mGoneToDreamingLockscreenHostedTransition:Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda11;

.field public final mGoneToDreamingLockscreenHostedTransitionViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/GoneToDreamingLockscreenHostedTransitionViewModel;

.field public final mGoneToDreamingTransition:Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda11;

.field public mGoneToDreamingTransitionTranslationY:I

.field public final mGoneToDreamingTransitionViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/GoneToDreamingTransitionViewModel;

.field public final mGutsManager:Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

.field public mHandlingPointerUp:Z

.field public mHasLayoutedSinceDown:Z

.field public mHasVibratedOnOpen:Z

.field public mHeadsUpAnimatingAway:Z

.field public mHeadsUpAppearanceController:Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;

.field public final mHeadsUpExistenceChangedRunnable:Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda37;

.field public mHeadsUpInset:I

.field public mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

.field public mHeadsUpPinnedMode:Z

.field public mHeadsUpStartHeight:I

.field public mHeadsUpTouchHelper:Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;

.field public mHeadsUpVisibleOnDown:Z

.field public mHeightAnimator:Landroid/animation/ValueAnimator;

.field public mHideExpandedRunnable:Ljava/lang/Runnable;

.field public mHintAnimationRunning:Z

.field public mHintDistance:F

.field public mIgnoreXTouchSlop:Z

.field public mIndicationBottomPadding:I

.field public final mIndicatorTouchHandler:Lcom/android/systemui/statusbar/phone/IndicatorTouchHandler;

.field public mInitialExpandX:F

.field public mInitialExpandY:F

.field public mInitialOffsetOnTouch:F

.field public mInitialTouchFromKeyguard:Z

.field public mInstantExpanding:Z

.field public mInterpolatedDarkAmount:F

.field public mIsExpandingOrCollapsing:Z

.field public mIsFaceWidgetOnTouchDown:Z

.field public mIsFlinging:Z

.field public mIsFullWidth:Z

.field public mIsGestureNavigation:Z

.field public mIsGoneToDreamingLockscreenHostedTransitionRunning:Z

.field public mIsKeyguardSupportLandscapePhone:Z

.field public mIsLaunchTransitionFinished:Z

.field public mIsLaunchTransitionRunning:Z

.field public mIsLockStarOnTouchDown:Z

.field public mIsOcclusionTransitionRunning:Z

.field public mIsPanelCollapseOnQQS:Z

.field public mIsSpringBackAnimation:Z

.field public mIsTrackpadReverseScroll:Z

.field public final mKeyguardAffordanceHelperCallback:Lcom/android/systemui/shade/NotificationPanelViewController$KeyguardAffordanceHelperCallback;

.field public mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

.field public final mKeyguardBottomAreaInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardBottomAreaInteractor;

.field public final mKeyguardBottomAreaViewController:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaViewController;

.field public final mKeyguardBottomAreaViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBottomAreaViewModel;

.field public final mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

.field public final mKeyguardEditModeController:Lcom/android/systemui/keyguard/KeyguardEditModeController;

.field public final mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

.field public final mKeyguardInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;

.field public final mKeyguardMediaController:Lcom/android/systemui/media/controls/ui/controller/KeyguardMediaController;

.field public mKeyguardNotificationBottomPadding:F

.field public mKeyguardNotificationTopPadding:F

.field public mKeyguardOnlyContentAlpha:F

.field public mKeyguardOnlyTransitionTranslationY:I

.field public mKeyguardPunchHoleVIView:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;

.field public final mKeyguardQsUserSwitchComponentFactory:Lcom/android/keyguard/dagger/KeyguardQsUserSwitchComponent$Factory;

.field public mKeyguardQsUserSwitchController:Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;

.field public mKeyguardQsUserSwitchEnabled:Z

.field public final mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

.field public mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

.field public final mKeyguardStatusBarViewComponentFactory:Lcom/android/keyguard/dagger/KeyguardStatusBarViewComponent$Factory;

.field public mKeyguardStatusBarViewController:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;

.field public final mKeyguardStatusViewComponentFactory:Lcom/android/keyguard/dagger/KeyguardStatusViewComponent$Factory;

.field public mKeyguardStatusViewController:Lcom/android/keyguard/KeyguardStatusViewController;

.field public final mKeyguardTouchAnimator:Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;

.field public final mKeyguardTransitionInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;

.field public final mKeyguardUnfoldTransition:Ljava/util/Optional;

.field public final mKeyguardUserSwitcherComponentFactory:Lcom/android/keyguard/dagger/KeyguardUserSwitcherComponent$Factory;

.field public mKeyguardUserSwitcherController:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;

.field public mKeyguardUserSwitcherEnabled:Z

.field public final mKeyguardViewConfigurator:Lcom/android/systemui/keyguard/KeyguardViewConfigurator;

.field public final mKeyguardWallpaperController:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

.field public mLastCameraLaunchSource:I

.field public final mLastDownEvents:Lcom/android/systemui/shade/NPVCDownEventState$Buffer;

.field public mLastEventSynthesizedDown:Z

.field public mLastGesturedOverExpansion:F

.field public final mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

.field public mLaunchAnimationEndRunnable:Ljava/lang/Runnable;

.field public mLaunchingAffordance:Z

.field public final mLayoutInflater:Landroid/view/LayoutInflater;

.field public mLinearDarkAmount:F

.field public mListenForHeadsUp:Z

.field public final mLockIconViewController:Lcom/android/keyguard/SecLockIconViewController;

.field public final mLockStarCallback:Lcom/android/systemui/shade/NotificationPanelViewController$1;

.field public mLockStarEnabled:Z

.field public final mLockscreenGestureLogger:Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;

.field public final mLockscreenNotificationIconsOnlyController:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;

.field public final mLockscreenNotificationManager:Lcom/android/systemui/statusbar/LockscreenNotificationManager;

.field public final mLockscreenShadeTransitionController:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

.field public final mLockscreenToDreamingLockscreenHostedTransition:Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda11;

.field public final mLockscreenToDreamingTransition:Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda11;

.field public mLockscreenToDreamingTransitionTranslationY:I

.field public final mLockscreenToDreamingTransitionViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/LockscreenToDreamingTransitionViewModel;

.field public final mLockscreenToOccludedTransition:Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda11;

.field public final mLockscreenToOccludedTransitionViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/LockscreenToOccludedTransitionViewModel;

.field public final mMainDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field public final mMascotViewContainer:Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;

.field public mMaxAllowedKeyguardNotifications:I

.field public mMaxOverscrollAmountForPulse:I

.field public final mMaybeHideExpandedRunnable:Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda37;

.field public final mMediaDataManager:Lcom/android/systemui/media/controls/domain/pipeline/MediaDataManager;

.field public final mMediaHierarchyManager:Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;

.field public mMediaNowBarExpandState:I

.field public mMediaOutputDetailShowing:Z

.field public final mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field public mMinExpandHeight:F

.field public mMinFraction:F

.field public mMotionAborted:Z

.field public final mMultiWindowEdgeDetector:Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;

.field public final mNaturalScrollingSettingObserver:Lcom/android/systemui/keyguard/domain/interactor/NaturalScrollingSettingObserver;

.field public mNavigationBarBottomHeight:I

.field public final mNavigationBarController:Lcom/android/systemui/navigationbar/NavigationBarController;

.field public mNewNotifReadListener:Lcom/android/systemui/shade/NotificationPanelViewController$NewNotifReadListener;

.field public mNextCollapseSpeedUpFactor:F

.field public mNotiCardCount:I

.field public mNotificationContainerParent:Lcom/android/systemui/shade/NotificationsQuickSettingsContainer;

.field public final mNotificationListContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

.field public final mNotificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

.field public final mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

.field public final mNotificationStackSizeCalculator:Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator;

.field public final mNotificationsDragEnabled:Z

.field public final mNotificationsQSContainerController:Lcom/android/systemui/shade/NotificationsQSContainerController;

.field public mNowBarContainer:Landroid/view/View;

.field public final mOccludedToLockscreenTransition:Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda11;

.field public final mOccludedToLockscreenTransitionViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/OccludedToLockscreenTransitionViewModel;

.field public mOldLayoutDirection:I

.field public final mOnEmptySpaceClickListener:Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda8;

.field public final mOnHeadsUpChangedListener:Lcom/android/systemui/shade/NotificationPanelViewController$ShadeHeadsUpChangedListener;

.field public mOnlyAffordanceInThisMotion:Z

.field public mOpenCloseListener:Lcom/android/systemui/shade/ShadeControllerImpl$2;

.field public mOverExpansion:F

.field public mOverStretchAmount:F

.field public mPanelAlpha:I

.field public final mPanelAlphaAnimator:Lcom/android/systemui/statusbar/notification/AnimatableProperty$6;

.field public mPanelAlphaEndAction:Ljava/lang/Runnable;

.field public final mPanelAlphaInPropertiesAnimator:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

.field public final mPanelAlphaOutPropertiesAnimator:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

.field public mPanelClosedOnDown:Z

.field public mPanelExpandForBiometric:Z

.field public mPanelFlingOvershootAmount:F

.field public mPanelInVisibleReason:I

.field public final mPanelSplitHelper:Lcom/android/systemui/shade/SecPanelSplitHelper;

.field public final mPanelTransitionStateListener:Lcom/android/systemui/shade/NotificationPanelViewController$2;

.field public mPanelUpdateWhenAnimatorEnds:Z

.field public final mPluginAODManagerLazy:Ldagger/Lazy;

.field public mPluginLock:Lcom/samsung/systemui/splugins/pluginlock/PluginLock;

.field public final mPluginLockData:Lcom/android/systemui/pluginlock/PluginLockData;

.field public final mPluginLockMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

.field public mPluginLockStarContainer:Landroid/view/View;

.field public final mPluginLockStarManagerLazy:Ldagger/Lazy;

.field public mPluginLockViewMode:I

.field public final mPostCollapseRunnable:Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda37;

.field public final mPowerInteractor:Lcom/android/systemui/power/domain/interactor/PowerInteractor;

.field public final mPrimaryBouncerToGoneTransitionViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/PrimaryBouncerToGoneTransitionViewModel;

.field public final mPrivacyDialogController:Lcom/android/systemui/privacy/PrivacyDialogController;

.field public final mPulseExpansionHandler:Lcom/android/systemui/statusbar/PulseExpansionHandler;

.field public mPulsing:Z

.field public final mPunchHoleVIViewControllerFactory:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController$Factory;

.field public final mQsController:Lcom/android/systemui/shade/QuickSettingsControllerImpl;

.field public mQsExpandedOnTouchDown:Z

.field public final mQsStatusEventLog:Lcom/android/systemui/util/QsStatusEventLog;

.field public final mQuickPanelLogBuilder:Ljava/lang/StringBuilder;

.field public final mQuickPanelLogger:Lcom/android/systemui/log/QuickPanelLogger;

.field public final mQuickQsOffsetHeight:I

.field public mRecomputedMaxCountCallStack:Ljava/lang/String;

.field public mRecomputedMaxCountNotification:Ljava/lang/String;

.field public mRecomputedReason:Ljava/lang/String;

.field public final mResources:Landroid/content/res/Resources;

.field public final mScreenOffAnimationController:Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;

.field public final mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

.field public mSecAffordanceHelper:Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper;

.field public final mSecNotificationPanelViewController:Lcom/android/systemui/shade/SecNotificationPanelViewController;

.field public final mSecQuickSettingsAffordanceInteractor:Lcom/android/systemui/shade/domain/interactor/SecQuickSettingsAffordanceInteractor;

.field public final mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

.field public final mSettingsChangeObserver:Lcom/android/systemui/shade/NotificationPanelViewController$SettingsChangeObserver;

.field public final mShadeAnimationInteractor:Lcom/android/systemui/shade/domain/interactor/ShadeAnimationInteractor;

.field public final mShadeExpansionStateManager:Lcom/android/systemui/shade/ShadeExpansionStateManager;

.field public final mShadeFoldAnimator:Lcom/android/systemui/shade/NotificationPanelViewController$ShadeFoldAnimatorImpl;

.field public final mShadeHeaderController:Lcom/android/systemui/shade/ShadeHeaderController;

.field public final mShadeHeadsUpTracker:Lcom/android/systemui/shade/NotificationPanelViewController$ShadeHeadsUpTrackerImpl;

.field public final mShadeLog:Lcom/android/systemui/shade/ShadeLogger;

.field public final mShadeRepository:Lcom/android/systemui/shade/data/repository/ShadeRepository;

.field public final mShadeViewStateProvider:Lcom/android/systemui/shade/NotificationPanelViewController$16;

.field public final mShelfManager:Lcom/android/systemui/statusbar/NotificationShelfManager;

.field public mShortcut:I

.field public mShowIconsWhenExpanded:Z

.field public mSlopMultiplier:F

.field public mSplitShadeFullTransitionDistance:I

.field public mSplitShadeScrimTransitionDistance:I

.field public final mSplitShadeStateController:Lcom/android/systemui/statusbar/policy/SplitShadeStateController;

.field public mStackScrollerMeasuringPass:I

.field public mStatusBarHeaderHeightKeyguard:I

.field public final mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

.field public mStatusBarMinHeight:I

.field public final mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field public final mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

.field public final mStatusBarStateListener:Lcom/android/systemui/shade/NotificationPanelViewController$StatusBarStateListener;

.field public final mStatusBarTouchableRegionManager:Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;

.field public final mSubScreenManagerLazy:Ldagger/Lazy;

.field public final mSysUiState:Lcom/android/systemui/model/SysUiState;

.field public final mSystemClock:Lcom/android/systemui/util/time/SystemClock;

.field public final mSystemUIWidgetCallback:Lcom/android/systemui/shade/NotificationPanelViewController$17;

.field public final mTapAgainViewController:Lcom/android/systemui/statusbar/phone/TapAgainViewController;

.field mTestSetOfAnimatorsUsed:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field public mTouchAboveFalsingThreshold:Z

.field public mTouchDisabled:Z

.field public mTouchDownOnHeadsUpPinnded:Z

.field public final mTouchHandler:Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;

.field public mTouchSlop:I

.field public mTouchSlopExceeded:Z

.field public mTouchSlopExceededBeforeDown:Z

.field public mTouchStartedInEmptyArea:Z

.field public mTrackedHeadsUpNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

.field public final mTrackingHeadsUpListeners:Ljava/util/ArrayList;

.field public mTrackingPointer:I

.field public mTrackingStartedListener:Lcom/android/systemui/shade/ShadeControllerImpl$$ExternalSyntheticLambda4;

.field public mUdfpsMaxYBurnInOffset:F

.field public final mUnlockedScreenOffAnimationController:Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;

.field public mUpdateFlingOnLayout:Z

.field public mUpdateFlingVelocity:F

.field public final mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public mUpwardsWhenThresholdReached:Z

.field public mUseExternalTouch:Z

.field public final mUserManager:Landroid/os/UserManager;

.field public mUserSetupComplete:Z

.field public final mVelocityTracker:Landroid/view/VelocityTracker;

.field public final mVibrateOnOpening:Z

.field public final mVibratorHelper:Lcom/android/systemui/statusbar/VibratorHelper;

.field public final mView:Lcom/android/systemui/shade/NotificationPanelView;

.field public mViewName:Ljava/lang/String;

.field public final mWakeUpCoordinator:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;

.field public final mWallpaperImageCreator:Lcom/android/systemui/keyguardimage/WallpaperImageInjectCreator;

.field public mWillPlayDelayedDozeAmountAnimation:Z

.field public shouldScrollViewIntercept:Z


# direct methods
.method public static -$$Nest$maddMovement(Lcom/android/systemui/shade/NotificationPanelViewController;Landroid/view/MotionEvent;)V
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    neg-float p0, v0

    neg-float v0, v1

    invoke-virtual {p1, p0, v0}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    return-void
.end method

.method public static -$$Nest$mendMotionEvent(Lcom/android/systemui/shade/NotificationPanelViewController;Landroid/view/MotionEvent;FFZ)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    iget-object v4, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mShadeLog:Lcom/android/systemui/shade/ShadeLogger;

    const-string v5, "endMotionEvent called"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v3, v6}, Lcom/android/systemui/shade/ShadeLogger;->logEndMotionEvent(Ljava/lang/String;ZZ)V

    const/4 v5, -0x1

    iput v5, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mTrackingPointer:I

    iget-object v7, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    iget-boolean v8, v7, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mIsSwipingUp:Z

    const/4 v9, 0x1

    if-eqz v8, :cond_0

    iput-boolean v9, v7, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mIsFlingRequiredAfterLockScreenSwipeUp:Z

    :cond_0
    iput-boolean v6, v7, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mIsSwipingUp:Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->isTracking()Z

    move-result v7

    iget-object v8, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    const/4 v10, 0x3

    if-eqz v7, :cond_1

    iget-boolean v7, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mTouchSlopExceeded:Z

    if-nez v7, :cond_4

    :cond_1
    iget v7, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mInitialExpandX:F

    sub-float v7, v1, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    iget v11, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mTouchSlop:I

    int-to-float v11, v11

    cmpl-float v7, v7, v11

    if-gtz v7, :cond_4

    iget v7, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mInitialExpandY:F

    sub-float v7, v2, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    iget v11, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mTouchSlop:I

    int-to-float v11, v11

    cmpl-float v7, v7, v11

    if-gtz v7, :cond_4

    iget v7, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mExpandedFraction:F

    const v11, 0x3f7ae148    # 0.98f

    cmpl-float v7, v7, v11

    if-gtz v7, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->isFullyCollapsed()Z

    move-result v7

    if-eqz v7, :cond_4

    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v7

    if-eq v7, v10, :cond_4

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_3
    iget-object v3, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    check-cast v3, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    iget-boolean v3, v3, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mBouncerShowing:Z

    if-nez v3, :cond_1a

    iget-object v3, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mAlternateBouncerInteractor:Lcom/android/systemui/bouncer/domain/interactor/AlternateBouncerInteractor;

    invoke-virtual {v3}, Lcom/android/systemui/bouncer/domain/interactor/AlternateBouncerInteractor;->isVisibleState()Z

    move-result v3

    if-nez v3, :cond_1a

    iget-boolean v3, v8, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mKeyguardGoingAway:Z

    if-nez v3, :cond_1a

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/shade/NotificationPanelViewController;->onEmptySpaceClick(FF)V

    invoke-virtual {v0, v9}, Lcom/android/systemui/shade/NotificationPanelViewController;->onTrackingStopped(Z)V

    goto/16 :goto_d

    :cond_4
    :goto_0
    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v7, 0x3e8

    invoke-virtual {v1, v7}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    iget-boolean v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mIsTrackpadReverseScroll:Z

    if-eqz v1, :cond_5

    goto :goto_1

    :cond_5
    move v5, v9

    :goto_1
    int-to-float v1, v5

    iget-object v5, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v5

    mul-float/2addr v5, v1

    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v1

    float-to-double v11, v1

    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v1

    float-to-double v13, v1

    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v11

    double-to-float v1, v11

    iget-boolean v7, v8, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    iget-boolean v11, v8, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mKeyguardFadingAway:Z

    const/4 v12, 0x0

    if-nez v11, :cond_6

    iget-boolean v11, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mInitialTouchFromKeyguard:Z

    if-eqz v11, :cond_7

    if-nez v7, :cond_7

    :cond_6
    move v13, v7

    goto/16 :goto_8

    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v11

    if-eq v11, v10, :cond_8

    if-eqz v3, :cond_9

    :cond_8
    move v13, v7

    goto/16 :goto_7

    :cond_9
    iget-object v10, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {v10}, Lcom/android/systemui/plugins/FalsingManager;->isUnlockingDisabled()Z

    move-result v10

    if-nez v10, :cond_f

    iget v10, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mInitialExpandY:F

    sub-float v10, v2, v10

    cmpl-float v10, v10, v12

    if-lez v10, :cond_a

    move v8, v6

    goto :goto_2

    :cond_a
    iget-boolean v8, v8, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mCanDismissLockScreen:Z

    if-eqz v8, :cond_b

    const/4 v8, 0x4

    goto :goto_2

    :cond_b
    const/16 v8, 0x8

    :goto_2
    iget-object v10, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mFlingAnimationUtils:Lcom/android/wm/shell/animation/FlingAnimationUtils;

    iget v10, v10, Lcom/android/wm/shell/animation/FlingAnimationUtils;->mMinVelocityPxPerSecond:F

    iget v11, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mExpandedFraction:F

    const/high16 v13, 0x3f000000    # 0.5f

    cmpl-float v11, v11, v13

    if-lez v11, :cond_c

    move v11, v9

    goto :goto_3

    :cond_c
    move v11, v6

    :goto_3
    iget-boolean v14, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mAllowExpandForSmallExpansion:Z

    sget-object v15, Lcom/android/systemui/log/core/LogLevel;->VERBOSE:Lcom/android/systemui/log/core/LogLevel;

    sget-object v6, Lcom/android/systemui/shade/ShadeLogger$logFlingExpands$2;->INSTANCE:Lcom/android/systemui/shade/ShadeLogger$logFlingExpands$2;

    const/4 v9, 0x0

    iget-object v12, v4, Lcom/android/systemui/shade/ShadeLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    const-string/jumbo v13, "systemui.shade"

    invoke-virtual {v12, v13, v15, v6, v9}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v6

    move-object v9, v6

    check-cast v9, Lcom/android/systemui/log/LogMessageImpl;

    iput v8, v9, Lcom/android/systemui/log/LogMessageImpl;->int1:I

    move v13, v7

    float-to-long v7, v5

    iput-wide v7, v9, Lcom/android/systemui/log/LogMessageImpl;->long1:J

    float-to-long v7, v1

    iput-wide v7, v9, Lcom/android/systemui/log/LogMessageImpl;->long2:J

    float-to-double v7, v10

    iput-wide v7, v9, Lcom/android/systemui/log/LogMessageImpl;->double1:D

    iput-boolean v11, v9, Lcom/android/systemui/log/LogMessageImpl;->bool1:Z

    iput-boolean v14, v9, Lcom/android/systemui/log/LogMessageImpl;->bool2:Z

    invoke-virtual {v12, v6}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget-object v6, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mFlingAnimationUtils:Lcom/android/wm/shell/animation/FlingAnimationUtils;

    iget v6, v6, Lcom/android/wm/shell/animation/FlingAnimationUtils;->mMinVelocityPxPerSecond:F

    cmpg-float v1, v1, v6

    if-gez v1, :cond_e

    iget v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mExpandedFraction:F

    const/high16 v6, 0x3f000000    # 0.5f

    cmpl-float v1, v1, v6

    if-lez v1, :cond_d

    :goto_4
    goto :goto_5

    :cond_d
    const/4 v1, 0x0

    goto :goto_6

    :cond_e
    const/4 v1, 0x0

    cmpl-float v6, v5, v1

    if-lez v6, :cond_d

    goto :goto_4

    :cond_f
    move v13, v7

    :goto_5
    const/4 v1, 0x1

    :goto_6
    iget-object v6, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mQsController:Lcom/android/systemui/shade/QuickSettingsControllerImpl;

    iget-object v6, v6, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mExpansionAnimator:Landroid/animation/ValueAnimator;

    if-eqz v6, :cond_10

    const/4 v1, 0x1

    :cond_10
    iget v6, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mBarState:I

    const/4 v7, 0x1

    if-eq v6, v7, :cond_11

    if-eqz v1, :cond_11

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->isFullyExpanded()Z

    move-result v6

    if-nez v6, :cond_11

    iget-boolean v6, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mListenForHeadsUp:Z

    if-eqz v6, :cond_11

    const-string v6, "NotificationPanelView"

    const-string v7, "previous heightAnimator cancel due to headsup"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->cancelHeightAnimator()V

    :cond_11
    const-string v6, "endMotionEvent: flingExpands"

    invoke-virtual {v4, v6, v3, v1}, Lcom/android/systemui/shade/ShadeLogger;->logEndMotionEvent(Ljava/lang/String;ZZ)V

    goto :goto_9

    :goto_7
    if-eqz v13, :cond_12

    const-string v1, "endMotionEvent: cancel while on keyguard"

    const/4 v6, 0x1

    invoke-virtual {v4, v1, v3, v6}, Lcom/android/systemui/shade/ShadeLogger;->logEndMotionEvent(Ljava/lang/String;ZZ)V

    move v1, v6

    goto :goto_9

    :cond_12
    const/4 v6, 0x1

    iget-boolean v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mCollapsedAndHeadsUpOnDown:Z

    if-eqz v1, :cond_13

    const-string v0, "endMotionEvent: cancel But should expand panel with heads up"

    invoke-virtual {v4, v0, v3, v6}, Lcom/android/systemui/shade/ShadeLogger;->logEndMotionEvent(Ljava/lang/String;ZZ)V

    goto/16 :goto_e

    :cond_13
    iget-boolean v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mPanelClosedOnDown:Z

    xor-int/2addr v1, v6

    const-string v6, "endMotionEvent: cancel"

    invoke-virtual {v4, v6, v3, v1}, Lcom/android/systemui/shade/ShadeLogger;->logEndMotionEvent(Ljava/lang/String;ZZ)V

    goto :goto_9

    :goto_8
    const/4 v1, 0x0

    :goto_9
    iget-boolean v3, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mTouchAboveFalsingThreshold:Z

    iget-object v6, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mPowerInteractor:Lcom/android/systemui/power/domain/interactor/PowerInteractor;

    iget-object v6, v6, Lcom/android/systemui/power/domain/interactor/PowerInteractor;->detailedWakefulness:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v6, v6, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {v6}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/power/shared/model/WakefulnessModel;

    invoke-virtual {v6}, Lcom/android/systemui/power/shared/model/WakefulnessModel;->isAwake()Z

    move-result v7

    if-eqz v7, :cond_15

    sget-object v7, Lcom/android/systemui/power/shared/model/WakeSleepReason;->TAP:Lcom/android/systemui/power/shared/model/WakeSleepReason;

    iget-object v6, v6, Lcom/android/systemui/power/shared/model/WakefulnessModel;->lastWakeReason:Lcom/android/systemui/power/shared/model/WakeSleepReason;

    if-eq v6, v7, :cond_14

    sget-object v7, Lcom/android/systemui/power/shared/model/WakeSleepReason;->GESTURE:Lcom/android/systemui/power/shared/model/WakeSleepReason;

    if-ne v6, v7, :cond_15

    :cond_14
    const/4 v7, 0x1

    goto :goto_a

    :cond_15
    const/4 v7, 0x0

    :goto_a
    iget-object v6, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mDozeLog:Lcom/android/systemui/doze/DozeLog;

    invoke-virtual {v6, v1, v3, v7}, Lcom/android/systemui/doze/DozeLog;->traceFling(ZZZ)V

    if-nez v1, :cond_16

    if-eqz v13, :cond_16

    iget-object v3, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    check-cast v3, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    iget v6, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mInitialExpandY:F

    sub-float/2addr v2, v6

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-int v2, v2

    div-float v3, v5, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    float-to-int v3, v3

    iget-object v6, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mLockscreenGestureLogger:Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;

    const/16 v7, 0xba

    invoke-virtual {v6, v7, v2, v3}, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;->write(III)V

    sget-object v2, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger$LockscreenUiEvent;->LOCKSCREEN_UNLOCK:Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger$LockscreenUiEvent;

    new-instance v3, Lcom/android/internal/logging/UiEventLoggerImpl;

    invoke-direct {v3}, Lcom/android/internal/logging/UiEventLoggerImpl;-><init>()V

    invoke-virtual {v3, v2}, Lcom/android/internal/logging/UiEventLoggerImpl;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    :cond_16
    iget v2, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mBarState:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_17

    iget v2, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mExpandedFraction:F

    float-to-double v6, v2

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, v6, v8

    if-ltz v2, :cond_17

    const-string v2, "NPVC endMotionEvent - skipping fling on keyguard"

    invoke-virtual {v4, v2}, Lcom/android/systemui/shade/ShadeLogger;->d(Ljava/lang/String;)V

    iget-boolean v2, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mUseExternalTouch:Z

    if-eqz v2, :cond_18

    iget-object v2, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->setOverExpansion(F)V

    goto :goto_b

    :cond_17
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v5, v2, v1}, Lcom/android/systemui/shade/NotificationPanelViewController;->fling(FFZ)V

    :cond_18
    :goto_b
    invoke-virtual {v0, v1}, Lcom/android/systemui/shade/NotificationPanelViewController;->onTrackingStopped(Z)V

    if-eqz v1, :cond_19

    iget-boolean v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mPanelClosedOnDown:Z

    if-eqz v1, :cond_19

    iget-boolean v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mHasLayoutedSinceDown:Z

    if-nez v1, :cond_19

    move v6, v3

    goto :goto_c

    :cond_19
    const/4 v6, 0x0

    :goto_c
    iput-boolean v6, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mUpdateFlingOnLayout:Z

    if-eqz v6, :cond_1a

    iput v5, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mUpdateFlingVelocity:F

    :cond_1a
    :goto_d
    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    :goto_e
    return-void
.end method

.method public static -$$Nest$minitDownStates(Lcom/android/systemui/shade/NotificationPanelViewController;Landroid/view/MotionEvent;)V
    .locals 11

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mDozing:Z

    iput-boolean v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mDozingOnDown:Z

    iput-boolean v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mOnlyAffordanceInThisMotion:Z

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mSecAffordanceHelper:Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper;

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper;->isShortcutPreviewSwipingInProgress:Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mDownX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mDownY:F

    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->isFullyCollapsed()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mCollapsedOnDown:Z

    iget-object v2, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mQsController:Lcom/android/systemui/shade/QuickSettingsControllerImpl;

    iput-boolean v0, v2, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mCollapsedOnDown:Z

    iget-object v3, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    iget-object v3, v3, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    iget v3, v3, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    iget v4, v2, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mMinExpansionHeight:I

    iget v5, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mQuickQsOffsetHeight:I

    sub-int/2addr v4, v5

    const/4 v5, 0x1

    if-lt v3, v4, :cond_0

    iput-boolean v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mIsPanelCollapseOnQQS:Z

    goto :goto_3

    :cond_0
    iget v3, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mDownX:F

    iget v4, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mDownY:F

    if-nez v0, :cond_3

    iget v0, v2, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mBarState:I

    if-eq v0, v5, :cond_3

    invoke-virtual {v2}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->getExpanded$1()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, v2, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mQs:Lcom/android/systemui/plugins/qs/QS;

    if-nez v0, :cond_2

    iget-object v0, v2, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Lcom/android/systemui/plugins/qs/QS;->getHeader()Landroid/view/View;

    move-result-object v0

    :goto_0
    iget-object v6, v2, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mQsFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getX()F

    move-result v6

    cmpl-float v6, v3, v6

    if-ltz v6, :cond_3

    iget-object v6, v2, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mQsFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getX()F

    move-result v6

    iget-object v7, v2, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mQsFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v6, v7

    cmpg-float v3, v3, v6

    if-gtz v3, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    int-to-float v0, v0

    cmpg-float v0, v4, v0

    if-gtz v0, :cond_3

    move v0, v5

    goto :goto_2

    :cond_3
    :goto_1
    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mIsPanelCollapseOnQQS:Z

    :goto_3
    iget-boolean v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mCollapsedOnDown:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    check-cast v0, Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager;->mHasPinnedNotification:Z

    if-eqz v0, :cond_4

    move v1, v5

    :cond_4
    iput-boolean v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mListenForHeadsUp:Z

    iget-boolean v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mExpectingSynthesizedDown:Z

    iput-boolean v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mAllowExpandForSmallExpansion:Z

    iput-boolean v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mTouchSlopExceededBeforeDown:Z

    iput-boolean v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mLastEventSynthesizedDown:Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    iget p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mDownX:F

    iget v3, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mDownY:F

    iget-boolean v4, v2, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mFullyExpanded:Z

    iput-boolean v4, v2, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mTouchAboveFalsingThreshold:Z

    iget-boolean v2, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mDozingOnDown:Z

    iget-boolean v5, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mCollapsedOnDown:Z

    iget-boolean v6, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mIsPanelCollapseOnQQS:Z

    iget-boolean v7, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mListenForHeadsUp:Z

    iget-boolean v8, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mAllowExpandForSmallExpansion:Z

    iget-boolean v9, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mTouchSlopExceededBeforeDown:Z

    iget-boolean v10, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mLastEventSynthesizedDown:Z

    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mLastDownEvents:Lcom/android/systemui/shade/NPVCDownEventState$Buffer;

    iget-object p0, p0, Lcom/android/systemui/shade/NPVCDownEventState$Buffer;->buffer:Lcom/android/systemui/common/buffer/RingBuffer;

    invoke-virtual {p0}, Lcom/android/systemui/common/buffer/RingBuffer;->advance()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/shade/NPVCDownEventState;

    iput-wide v0, p0, Lcom/android/systemui/shade/NPVCDownEventState;->timeStamp:J

    iput p1, p0, Lcom/android/systemui/shade/NPVCDownEventState;->x:F

    iput v3, p0, Lcom/android/systemui/shade/NPVCDownEventState;->y:F

    iput-boolean v4, p0, Lcom/android/systemui/shade/NPVCDownEventState;->qsTouchAboveFalsingThreshold:Z

    iput-boolean v2, p0, Lcom/android/systemui/shade/NPVCDownEventState;->dozing:Z

    iput-boolean v5, p0, Lcom/android/systemui/shade/NPVCDownEventState;->collapsed:Z

    iput-boolean v6, p0, Lcom/android/systemui/shade/NPVCDownEventState;->canCollapseOnQQS:Z

    iput-boolean v7, p0, Lcom/android/systemui/shade/NPVCDownEventState;->listenForHeadsUp:Z

    iput-boolean v8, p0, Lcom/android/systemui/shade/NPVCDownEventState;->allowExpandForSmallExpansion:Z

    iput-boolean v9, p0, Lcom/android/systemui/shade/NPVCDownEventState;->touchSlopExceededBeforeDown:Z

    iput-boolean v10, p0, Lcom/android/systemui/shade/NPVCDownEventState;->lastEventSynthesized:Z

    goto :goto_4

    :cond_5
    iput-boolean v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mLastEventSynthesizedDown:Z

    :goto_4
    return-void
.end method

.method public static -$$Nest$mstartExpandMotion(Lcom/android/systemui/shade/NotificationPanelViewController;FFZF)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mHandlingPointerUp:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    check-cast v0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mIsDozing:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mQsController:Lcom/android/systemui/shade/QuickSettingsControllerImpl;

    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->isFullyCollapsed()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->beginJankMonitoring(Z)V

    :cond_0
    iput p4, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mInitialOffsetOnTouch:F

    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->isTracking()Z

    move-result p4

    if-eqz p4, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->isFullyCollapsed()Z

    move-result p4

    if-eqz p4, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mShadeLog:Lcom/android/systemui/shade/ShadeLogger;

    const-string p2, "not setting mInitialExpandY in startExpandMotion"

    invoke-virtual {p1, p2}, Lcom/android/systemui/shade/ShadeLogger;->d(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    :goto_0
    iput p2, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mInitialExpandY:F

    iput p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mInitialExpandX:F

    :goto_1
    iget-object p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean p1, p1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    iput-boolean p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mInitialTouchFromKeyguard:Z

    const/4 p1, 0x1

    if-eqz p3, :cond_3

    iput-boolean p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mTouchSlopExceeded:Z

    iget p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mInitialOffsetOnTouch:F

    invoke-virtual {p0, p1}, Lcom/android/systemui/shade/NotificationPanelViewController;->setExpandedHeight(F)V

    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->onTrackingStarted()V

    goto :goto_2

    :cond_3
    iget-boolean p2, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mHeadsUpPinnedMode:Z

    if-eqz p2, :cond_4

    iput-boolean p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mTouchDownOnHeadsUpPinnded:Z

    :cond_4
    :goto_2
    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lcom/android/systemui/shade/NotificationPanelView;

    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object v0, Lcom/android/systemui/shade/NotificationPanelViewController;->M_DUMMY_DIRTY_RECT:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/systemui/shade/NotificationPanelViewController;->EMPTY_RECT:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;Lcom/android/systemui/pluginlock/PluginLockMediator;Lcom/android/systemui/shade/NotificationPanelView;Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;Ldagger/Lazy;Landroid/os/Handler;Landroid/view/LayoutInflater;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;Lcom/android/systemui/statusbar/PulseExpansionHandler;Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/window/StatusBarWindowStateController;Lcom/android/systemui/statusbar/NotificationShadeWindowController;Lcom/android/systemui/doze/DozeLog;Lcom/android/systemui/statusbar/phone/DozeParameters;Lcom/android/systemui/statusbar/CommandQueue;Lcom/android/systemui/statusbar/VibratorHelper;Lcom/android/internal/util/LatencyTracker;Landroid/view/accessibility/AccessibilityManager;ILcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/shade/ShadeLogger;Lcom/android/systemui/statusbar/policy/ConfigurationController;Ljavax/inject/Provider;Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;Lcom/android/systemui/shade/NotificationsQSContainerController;Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;Lcom/android/keyguard/dagger/KeyguardStatusViewComponent$Factory;Lcom/android/keyguard/dagger/KeyguardQsUserSwitchComponent$Factory;Lcom/android/keyguard/dagger/KeyguardUserSwitcherComponent$Factory;Lcom/android/keyguard/dagger/KeyguardStatusBarViewComponent$Factory;Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;Lcom/android/systemui/biometrics/AuthController;Lcom/android/systemui/statusbar/phone/ScrimController;Landroid/os/UserManager;Lcom/android/systemui/media/controls/domain/pipeline/MediaDataManager;Lcom/android/systemui/statusbar/NotificationShadeDepthController;Lcom/android/systemui/statusbar/notification/stack/AmbientState;Lcom/android/keyguard/SecLockIconViewController;Lcom/android/systemui/media/controls/ui/controller/KeyguardMediaController;Lcom/android/systemui/statusbar/phone/TapAgainViewController;Lcom/android/systemui/navigationbar/NavigationModeController;Lcom/android/systemui/navigationbar/NavigationBarController;Lcom/android/systemui/shade/QuickSettingsControllerImpl;Lcom/android/systemui/fragments/FragmentService;Lcom/android/internal/statusbar/IStatusBarService;Landroid/content/ContentResolver;Lcom/android/systemui/shade/ShadeHeaderController;Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;Lcom/android/systemui/shade/ShadeExpansionStateManager;Lcom/android/systemui/shade/data/repository/ShadeRepository;Ljava/util/Optional;Lcom/android/systemui/model/SysUiState;Ljavax/inject/Provider;Lcom/android/systemui/wallpaper/KeyguardWallpaperController;Lcom/android/systemui/keyguardimage/WallpaperImageInjectCreator;Lcom/android/keyguard/EmergencyButtonController$Factory;Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;Lcom/android/systemui/statusbar/KeyguardIndicationController;Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator;Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;Lcom/android/systemui/util/time/SystemClock;Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBottomAreaViewModel;Lcom/android/systemui/keyguard/domain/interactor/KeyguardBottomAreaInteractor;Lcom/android/systemui/keyguard/domain/interactor/KeyguardClockInteractor;Lcom/android/systemui/bouncer/domain/interactor/AlternateBouncerInteractor;Lcom/android/systemui/keyguard/ui/viewmodel/DreamingToLockscreenTransitionViewModel;Lcom/android/systemui/keyguard/ui/viewmodel/OccludedToLockscreenTransitionViewModel;Lcom/android/systemui/keyguard/ui/viewmodel/LockscreenToDreamingTransitionViewModel;Lcom/android/systemui/keyguard/ui/viewmodel/GoneToDreamingTransitionViewModel;Lcom/android/systemui/keyguard/ui/viewmodel/GoneToDreamingLockscreenHostedTransitionViewModel;Lcom/android/systemui/keyguard/ui/viewmodel/LockscreenToOccludedTransitionViewModel;Lcom/android/systemui/keyguard/ui/viewmodel/PrimaryBouncerToGoneTransitionViewModel;Lkotlinx/coroutines/CoroutineDispatcher;Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardLongPressViewModel;Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/statusbar/notification/stack/domain/interactor/SharedNotificationContainerInteractor;Lcom/android/systemui/statusbar/notification/domain/interactor/ActiveNotificationsInteractor;Lcom/android/systemui/statusbar/notification/domain/interactor/HeadsUpNotificationInteractor;Ldagger/Lazy;Ldagger/Lazy;Lcom/android/systemui/shade/domain/interactor/ShadeAnimationInteractor;Lcom/android/systemui/keyguard/KeyguardViewConfigurator;Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryFaceAuthInteractor;Lcom/android/systemui/statusbar/policy/SplitShadeStateController;Lcom/android/systemui/power/domain/interactor/PowerInteractor;Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;Lcom/android/systemui/keyguard/domain/interactor/NaturalScrollingSettingObserver;Lcom/android/systemui/privacy/PrivacyDialogController;Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController$Factory;Lcom/android/systemui/statusbar/NotificationShelfManager;Lcom/android/systemui/keyguard/KeyguardEditModeController;Lcom/android/systemui/keyguard/KeyguardClickController;Lcom/android/systemui/pluginlock/PluginLockData;Ldagger/Lazy;Lcom/android/systemui/statusbar/phone/IndicatorTouchHandler;Lcom/android/systemui/statusbar/LockscreenNotificationManager;Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;Ldagger/Lazy;Lcom/android/systemui/util/QsStatusEventLog;Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;Lcom/android/systemui/shade/domain/interactor/SecQuickSettingsAffordanceInteractor;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;",
            "Lcom/android/systemui/pluginlock/PluginLockMediator;",
            "Lcom/android/systemui/shade/NotificationPanelView;",
            "Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;",
            "Ldagger/Lazy;",
            "Landroid/os/Handler;",
            "Landroid/view/LayoutInflater;",
            "Lcom/android/systemui/flags/FeatureFlags;",
            "Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;",
            "Lcom/android/systemui/statusbar/PulseExpansionHandler;",
            "Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;",
            "Lcom/android/systemui/statusbar/phone/KeyguardBypassController;",
            "Lcom/android/systemui/plugins/FalsingManager;",
            "Lcom/android/systemui/classifier/FalsingCollector;",
            "Lcom/android/systemui/statusbar/policy/KeyguardStateController;",
            "Lcom/android/systemui/plugins/statusbar/StatusBarStateController;",
            "Lcom/android/systemui/statusbar/window/StatusBarWindowStateController;",
            "Lcom/android/systemui/statusbar/NotificationShadeWindowController;",
            "Lcom/android/systemui/doze/DozeLog;",
            "Lcom/android/systemui/statusbar/phone/DozeParameters;",
            "Lcom/android/systemui/statusbar/CommandQueue;",
            "Lcom/android/systemui/statusbar/VibratorHelper;",
            "Lcom/android/internal/util/LatencyTracker;",
            "Landroid/view/accessibility/AccessibilityManager;",
            "I",
            "Lcom/android/keyguard/KeyguardUpdateMonitor;",
            "Lcom/android/internal/logging/MetricsLogger;",
            "Lcom/android/systemui/shade/ShadeLogger;",
            "Lcom/android/systemui/statusbar/policy/ConfigurationController;",
            "Ljavax/inject/Provider;",
            "Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;",
            "Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;",
            "Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;",
            "Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;",
            "Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;",
            "Lcom/android/systemui/shade/NotificationsQSContainerController;",
            "Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;",
            "Lcom/android/keyguard/dagger/KeyguardStatusViewComponent$Factory;",
            "Lcom/android/keyguard/dagger/KeyguardQsUserSwitchComponent$Factory;",
            "Lcom/android/keyguard/dagger/KeyguardUserSwitcherComponent$Factory;",
            "Lcom/android/keyguard/dagger/KeyguardStatusBarViewComponent$Factory;",
            "Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;",
            "Lcom/android/systemui/biometrics/AuthController;",
            "Lcom/android/systemui/statusbar/phone/ScrimController;",
            "Landroid/os/UserManager;",
            "Lcom/android/systemui/media/controls/domain/pipeline/MediaDataManager;",
            "Lcom/android/systemui/statusbar/NotificationShadeDepthController;",
            "Lcom/android/systemui/statusbar/notification/stack/AmbientState;",
            "Lcom/android/keyguard/SecLockIconViewController;",
            "Lcom/android/systemui/media/controls/ui/controller/KeyguardMediaController;",
            "Lcom/android/systemui/statusbar/phone/TapAgainViewController;",
            "Lcom/android/systemui/navigationbar/NavigationModeController;",
            "Lcom/android/systemui/navigationbar/NavigationBarController;",
            "Lcom/android/systemui/shade/QuickSettingsControllerImpl;",
            "Lcom/android/systemui/fragments/FragmentService;",
            "Lcom/android/internal/statusbar/IStatusBarService;",
            "Landroid/content/ContentResolver;",
            "Lcom/android/systemui/shade/ShadeHeaderController;",
            "Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;",
            "Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;",
            "Lcom/android/systemui/shade/ShadeExpansionStateManager;",
            "Lcom/android/systemui/shade/data/repository/ShadeRepository;",
            "Ljava/util/Optional<",
            "Lcom/android/systemui/unfold/SysUIUnfoldComponent;",
            ">;",
            "Lcom/android/systemui/model/SysUiState;",
            "Ljavax/inject/Provider;",
            "Lcom/android/systemui/wallpaper/KeyguardWallpaperController;",
            "Lcom/android/systemui/keyguardimage/WallpaperImageInjectCreator;",
            "Lcom/android/keyguard/EmergencyButtonController$Factory;",
            "Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;",
            "Lcom/android/systemui/statusbar/KeyguardIndicationController;",
            "Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;",
            "Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator;",
            "Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;",
            "Lcom/android/systemui/util/time/SystemClock;",
            "Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBottomAreaViewModel;",
            "Lcom/android/systemui/keyguard/domain/interactor/KeyguardBottomAreaInteractor;",
            "Lcom/android/systemui/keyguard/domain/interactor/KeyguardClockInteractor;",
            "Lcom/android/systemui/bouncer/domain/interactor/AlternateBouncerInteractor;",
            "Lcom/android/systemui/keyguard/ui/viewmodel/DreamingToLockscreenTransitionViewModel;",
            "Lcom/android/systemui/keyguard/ui/viewmodel/OccludedToLockscreenTransitionViewModel;",
            "Lcom/android/systemui/keyguard/ui/viewmodel/LockscreenToDreamingTransitionViewModel;",
            "Lcom/android/systemui/keyguard/ui/viewmodel/GoneToDreamingTransitionViewModel;",
            "Lcom/android/systemui/keyguard/ui/viewmodel/GoneToDreamingLockscreenHostedTransitionViewModel;",
            "Lcom/android/systemui/keyguard/ui/viewmodel/LockscreenToOccludedTransitionViewModel;",
            "Lcom/android/systemui/keyguard/ui/viewmodel/PrimaryBouncerToGoneTransitionViewModel;",
            "Lkotlinx/coroutines/CoroutineDispatcher;",
            "Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;",
            "Lcom/android/systemui/dump/DumpManager;",
            "Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardLongPressViewModel;",
            "Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;",
            "Lcom/android/systemui/plugins/ActivityStarter;",
            "Lcom/android/systemui/statusbar/notification/stack/domain/interactor/SharedNotificationContainerInteractor;",
            "Lcom/android/systemui/statusbar/notification/domain/interactor/ActiveNotificationsInteractor;",
            "Lcom/android/systemui/statusbar/notification/domain/interactor/HeadsUpNotificationInteractor;",
            "Ldagger/Lazy;",
            "Ldagger/Lazy;",
            "Lcom/android/systemui/shade/domain/interactor/ShadeAnimationInteractor;",
            "Lcom/android/systemui/keyguard/KeyguardViewConfigurator;",
            "Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryFaceAuthInteractor;",
            "Lcom/android/systemui/statusbar/policy/SplitShadeStateController;",
            "Lcom/android/systemui/power/domain/interactor/PowerInteractor;",
            "Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;",
            "Lcom/android/systemui/keyguard/domain/interactor/NaturalScrollingSettingObserver;",
            "Lcom/android/systemui/privacy/PrivacyDialogController;",
            "Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController$Factory;",
            "Lcom/android/systemui/statusbar/NotificationShelfManager;",
            "Lcom/android/systemui/keyguard/KeyguardEditModeController;",
            "Lcom/android/systemui/keyguard/KeyguardClickController;",
            "Lcom/android/systemui/pluginlock/PluginLockData;",
            "Ldagger/Lazy;",
            "Lcom/android/systemui/statusbar/phone/IndicatorTouchHandler;",
            "Lcom/android/systemui/statusbar/LockscreenNotificationManager;",
            "Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;",
            "Ldagger/Lazy;",
            "Lcom/android/systemui/util/QsStatusEventLog;",
            "Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;",
            "Lcom/android/systemui/shade/domain/interactor/SecQuickSettingsAffordanceInteractor;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p54

    move-object/from16 v5, p61

    move-object/from16 v6, p100

    move-object/from16 v7, p106

    move-object/from16 v8, p107

    move-object/from16 v9, p113

    const/4 v13, 0x1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v14, Lcom/android/systemui/shade/NotificationPanelViewController$KeyguardAffordanceHelperCallback;

    const/4 v15, 0x0

    invoke-direct {v14, v0, v15}, Lcom/android/systemui/shade/NotificationPanelViewController$KeyguardAffordanceHelperCallback;-><init>(Lcom/android/systemui/shade/NotificationPanelViewController;I)V

    iput-object v14, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardAffordanceHelperCallback:Lcom/android/systemui/shade/NotificationPanelViewController$KeyguardAffordanceHelperCallback;

    const/4 v14, 0x3

    iput v14, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mLastCameraLaunchSource:I

    new-instance v10, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda8;

    invoke-direct {v10, v0}, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda8;-><init>(Lcom/android/systemui/shade/NotificationPanelViewController;)V

    iput-object v10, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mOnEmptySpaceClickListener:Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda8;

    new-instance v10, Lcom/android/systemui/shade/NotificationPanelViewController$ShadeHeadsUpChangedListener;

    invoke-direct {v10, v0, v15}, Lcom/android/systemui/shade/NotificationPanelViewController$ShadeHeadsUpChangedListener;-><init>(Lcom/android/systemui/shade/NotificationPanelViewController;I)V

    iput-object v10, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mOnHeadsUpChangedListener:Lcom/android/systemui/shade/NotificationPanelViewController$ShadeHeadsUpChangedListener;

    new-instance v10, Lcom/android/systemui/shade/NotificationPanelViewController$ConfigurationListener;

    invoke-direct {v10, v0, v15}, Lcom/android/systemui/shade/NotificationPanelViewController$ConfigurationListener;-><init>(Lcom/android/systemui/shade/NotificationPanelViewController;I)V

    iput-object v10, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mConfigurationListener:Lcom/android/systemui/shade/NotificationPanelViewController$ConfigurationListener;

    new-instance v10, Lcom/android/systemui/shade/NotificationPanelViewController$StatusBarStateListener;

    invoke-direct {v10, v0, v15}, Lcom/android/systemui/shade/NotificationPanelViewController$StatusBarStateListener;-><init>(Lcom/android/systemui/shade/NotificationPanelViewController;I)V

    iput-object v10, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mStatusBarStateListener:Lcom/android/systemui/shade/NotificationPanelViewController$StatusBarStateListener;

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v10

    iput-object v10, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mVelocityTracker:Landroid/view/VelocityTracker;

    new-instance v10, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda23;

    invoke-direct {v10, v0}, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda23;-><init>(Lcom/android/systemui/shade/NotificationPanelViewController;)V

    iput-object v10, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mFalsingTapListener:Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda23;

    new-instance v10, Lcom/android/systemui/shade/NotificationPanelViewController$ShadeAccessibilityDelegate;

    invoke-direct {v10, v0, v15}, Lcom/android/systemui/shade/NotificationPanelViewController$ShadeAccessibilityDelegate;-><init>(Lcom/android/systemui/shade/NotificationPanelViewController;I)V

    iput-object v10, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mAccessibilityDelegate:Lcom/android/systemui/shade/NotificationPanelViewController$ShadeAccessibilityDelegate;

    new-instance v10, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;

    invoke-direct {v10, v0}, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;-><init>(Lcom/android/systemui/shade/NotificationPanelViewController;)V

    iput-object v10, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mTouchHandler:Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;

    const/4 v10, 0x0

    iput v10, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mExpandedHeight:F

    iput v15, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mDisplayTopInset:I

    iput v15, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mDisplayRightInset:I

    iput v15, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mDisplayLeftInset:I

    const/4 v11, -0x1

    iput v11, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mNotiCardCount:I

    iput-boolean v15, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mIsLockStarOnTouchDown:Z

    new-instance v14, Lcom/android/systemui/shade/NotificationPanelViewController$1;

    invoke-direct {v14, v0}, Lcom/android/systemui/shade/NotificationPanelViewController$1;-><init>(Lcom/android/systemui/shade/NotificationPanelViewController;)V

    iput-object v14, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mLockStarCallback:Lcom/android/systemui/shade/NotificationPanelViewController$1;

    new-instance v14, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;

    invoke-direct {v14}, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;-><init>()V

    iput-object v14, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mClockPositionResult:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;

    new-instance v14, Lcom/android/systemui/shade/NotificationPanelViewController$ShadeHeadsUpTrackerImpl;

    invoke-direct {v14, v0, v15}, Lcom/android/systemui/shade/NotificationPanelViewController$ShadeHeadsUpTrackerImpl;-><init>(Lcom/android/systemui/shade/NotificationPanelViewController;I)V

    iput-object v14, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mShadeHeadsUpTracker:Lcom/android/systemui/shade/NotificationPanelViewController$ShadeHeadsUpTrackerImpl;

    new-instance v14, Lcom/android/systemui/shade/NotificationPanelViewController$ShadeFoldAnimatorImpl;

    invoke-direct {v14, v0}, Lcom/android/systemui/shade/NotificationPanelViewController$ShadeFoldAnimatorImpl;-><init>(Lcom/android/systemui/shade/NotificationPanelViewController;)V

    iput-object v14, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mShadeFoldAnimator:Lcom/android/systemui/shade/NotificationPanelViewController$ShadeFoldAnimatorImpl;

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    iput-object v14, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mTrackingHeadsUpListeners:Ljava/util/ArrayList;

    new-instance v14, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda30;

    invoke-direct {v14}, Ljava/lang/Object;-><init>()V

    new-instance v12, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda29;

    invoke-direct {v12, v13}, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda29;-><init>(I)V

    sget-object v16, Lcom/android/systemui/statusbar/notification/AnimatableProperty;->Y:Lcom/android/systemui/statusbar/notification/AnimatableProperty$7;

    new-instance v13, Lcom/android/systemui/statusbar/notification/AnimatableProperty$5;

    const-string v10, "panelAlpha"

    invoke-direct {v13, v10, v12, v14}, Lcom/android/systemui/statusbar/notification/AnimatableProperty$5;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/BiConsumer;)V

    new-instance v10, Lcom/android/systemui/statusbar/notification/AnimatableProperty$6;

    const v12, 0x7f0a08b1

    const v14, 0x7f0a08b0

    const v11, 0x7f0a08b2

    invoke-direct {v10, v12, v14, v11, v13}, Lcom/android/systemui/statusbar/notification/AnimatableProperty$6;-><init>(IIILandroid/util/Property;)V

    iput-object v10, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mPanelAlphaAnimator:Lcom/android/systemui/statusbar/notification/AnimatableProperty$6;

    new-instance v11, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    invoke-direct {v11}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;-><init>()V

    const-wide/16 v12, 0x96

    iput-wide v12, v11, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->duration:J

    iget-object v12, v10, Lcom/android/systemui/statusbar/notification/AnimatableProperty$6;->val$property:Landroid/util/Property;

    sget-object v13, Lcom/android/app/animation/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    invoke-virtual {v11, v12, v13}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->setCustomInterpolator(Landroid/util/Property;Landroid/view/animation/Interpolator;)V

    iput-object v11, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mPanelAlphaOutPropertiesAnimator:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    new-instance v11, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    invoke-direct {v11}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;-><init>()V

    const-wide/16 v7, 0xc8

    iput-wide v7, v11, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->duration:J

    new-instance v7, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda11;

    const/16 v8, 0xb

    invoke-direct {v7, v0, v8}, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda11;-><init>(Lcom/android/systemui/shade/NotificationPanelViewController;I)V

    iput-object v7, v11, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->mAnimationEndAction:Ljava/util/function/Consumer;

    iget-object v7, v10, Lcom/android/systemui/statusbar/notification/AnimatableProperty$6;->val$property:Landroid/util/Property;

    sget-object v8, Lcom/android/app/animation/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v11, v7, v8}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->setCustomInterpolator(Landroid/util/Property;Landroid/view/animation/Interpolator;)V

    iput-object v11, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mPanelAlphaInPropertiesAnimator:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    iput v15, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mCurrentPanelState:I

    const/high16 v7, 0x3f800000    # 1.0f

    iput v7, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardOnlyContentAlpha:F

    iput v15, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardOnlyTransitionTranslationY:I

    iput-boolean v15, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mHasVibratedOnOpen:Z

    const/4 v8, -0x1

    iput v8, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mFixedDuration:I

    const/high16 v8, -0x40800000    # -1.0f

    iput v8, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mLastGesturedOverExpansion:F

    const/4 v8, 0x0

    iput v8, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mExpandedFraction:F

    iput v8, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mExpansionDragDownAmountPx:F

    iput v7, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mNextCollapseSpeedUpFactor:F

    iput-boolean v15, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mUseExternalTouch:Z

    iput-boolean v15, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mWillPlayDelayedDozeAmountAnimation:Z

    iput-boolean v15, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mIsOcclusionTransitionRunning:Z

    iput-boolean v15, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mForceFlingAnimationForTest:Z

    new-instance v7, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda37;

    const/4 v8, 0x2

    invoke-direct {v7, v0, v8}, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda37;-><init>(Ljava/lang/Object;I)V

    iput-object v7, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mFlingCollapseRunnable:Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda37;

    new-instance v7, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda37;

    const/4 v8, 0x3

    invoke-direct {v7, v0, v8}, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda37;-><init>(Ljava/lang/Object;I)V

    iput-object v7, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mAnimateKeyguardBottomAreaInvisibleEndRunnable:Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda37;

    new-instance v7, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda37;

    const/4 v8, 0x4

    invoke-direct {v7, v0, v8}, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda37;-><init>(Ljava/lang/Object;I)V

    iput-object v7, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mHeadsUpExistenceChangedRunnable:Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda37;

    new-instance v7, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda37;

    const/4 v8, 0x5

    invoke-direct {v7, v0, v8}, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda37;-><init>(Ljava/lang/Object;I)V

    iput-object v7, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mMaybeHideExpandedRunnable:Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda37;

    new-instance v7, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda11;

    const/16 v8, 0xc

    invoke-direct {v7, v0, v8}, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda11;-><init>(Lcom/android/systemui/shade/NotificationPanelViewController;I)V

    iput-object v7, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mDreamingToLockscreenTransition:Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda11;

    new-instance v7, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda11;

    const/4 v8, 0x2

    invoke-direct {v7, v0, v8}, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda11;-><init>(Lcom/android/systemui/shade/NotificationPanelViewController;I)V

    iput-object v7, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mOccludedToLockscreenTransition:Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda11;

    new-instance v7, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda11;

    const/4 v8, 0x3

    invoke-direct {v7, v0, v8}, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda11;-><init>(Lcom/android/systemui/shade/NotificationPanelViewController;I)V

    iput-object v7, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mLockscreenToDreamingTransition:Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda11;

    new-instance v7, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda11;

    const/4 v8, 0x4

    invoke-direct {v7, v0, v8}, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda11;-><init>(Lcom/android/systemui/shade/NotificationPanelViewController;I)V

    iput-object v7, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mGoneToDreamingTransition:Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda11;

    new-instance v7, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda11;

    const/4 v8, 0x5

    invoke-direct {v7, v0, v8}, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda11;-><init>(Lcom/android/systemui/shade/NotificationPanelViewController;I)V

    iput-object v7, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mGoneToDreamingLockscreenHostedTransition:Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda11;

    new-instance v7, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda11;

    const/4 v8, 0x6

    invoke-direct {v7, v0, v8}, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda11;-><init>(Lcom/android/systemui/shade/NotificationPanelViewController;I)V

    iput-object v7, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mLockscreenToDreamingLockscreenHostedTransition:Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda11;

    new-instance v7, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda11;

    const/4 v8, 0x7

    invoke-direct {v7, v0, v8}, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda11;-><init>(Lcom/android/systemui/shade/NotificationPanelViewController;I)V

    iput-object v7, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mDreamingLockscreenHostedToLockscreenTransition:Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda11;

    new-instance v7, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda11;

    const/16 v8, 0x8

    invoke-direct {v7, v0, v8}, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda11;-><init>(Lcom/android/systemui/shade/NotificationPanelViewController;I)V

    iput-object v7, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mLockscreenToOccludedTransition:Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda11;

    iput-boolean v15, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mIsFaceWidgetOnTouchDown:Z

    iput-boolean v15, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mFullScreenModeEnabled:Z

    const/4 v7, -0x1

    iput v7, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mPanelInVisibleReason:I

    iput-boolean v15, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mIsKeyguardSupportLandscapePhone:Z

    iput-boolean v15, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mHeadsUpVisibleOnDown:Z

    iput-boolean v15, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->shouldScrollViewIntercept:Z

    const/4 v7, 0x0

    iput-object v7, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mPanelSplitHelper:Lcom/android/systemui/shade/SecPanelSplitHelper;

    new-instance v8, Lcom/android/systemui/shade/NotificationPanelViewController$2;

    invoke-direct {v8, v0}, Lcom/android/systemui/shade/NotificationPanelViewController$2;-><init>(Lcom/android/systemui/shade/NotificationPanelViewController;)V

    iput-object v8, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mPanelTransitionStateListener:Lcom/android/systemui/shade/NotificationPanelViewController$2;

    iput-boolean v15, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mPanelExpandForBiometric:Z

    iput-object v7, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mDownEventFromOverView:Landroid/view/MotionEvent;

    new-instance v8, Lcom/android/systemui/shade/NotificationPanelViewController$16;

    invoke-direct {v8, v0}, Lcom/android/systemui/shade/NotificationPanelViewController$16;-><init>(Lcom/android/systemui/shade/NotificationPanelViewController;)V

    iput-object v8, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mShadeViewStateProvider:Lcom/android/systemui/shade/NotificationPanelViewController$16;

    iput-object v7, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mDataUsageLabelParent:Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelParent;

    new-instance v7, Lcom/android/systemui/shade/NotificationPanelViewController$17;

    invoke-direct {v7, v0}, Lcom/android/systemui/shade/NotificationPanelViewController$17;-><init>(Lcom/android/systemui/shade/NotificationPanelViewController;)V

    iput-object v7, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mSystemUIWidgetCallback:Lcom/android/systemui/shade/NotificationPanelViewController$17;

    invoke-static {}, Lcom/android/systemui/scene/shared/flag/SceneContainerFlag;->assertInLegacyMode()V

    new-instance v7, Lcom/android/systemui/shade/NotificationPanelViewController$3;

    invoke-direct {v7, v0}, Lcom/android/systemui/shade/NotificationPanelViewController$3;-><init>(Lcom/android/systemui/shade/NotificationPanelViewController;)V

    move-object/from16 v8, p15

    check-cast v8, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    invoke-virtual {v8, v7}, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->addCallback(Ljava/lang/Object;)V

    move-object/from16 v7, p48

    iput-object v7, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    iput-object v2, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mView:Lcom/android/systemui/shade/NotificationPanelView;

    move-object/from16 v7, p34

    iput-object v7, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-object/from16 v7, p60

    iput-object v7, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mLockscreenGestureLogger:Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;

    iput-object v5, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mShadeExpansionStateManager:Lcom/android/systemui/shade/ShadeExpansionStateManager;

    move-object/from16 v7, p62

    iput-object v7, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mShadeRepository:Lcom/android/systemui/shade/data/repository/ShadeRepository;

    move-object/from16 v10, p97

    iput-object v10, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mShadeAnimationInteractor:Lcom/android/systemui/shade/domain/interactor/ShadeAnimationInteractor;

    move-object/from16 v10, p28

    iput-object v10, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mShadeLog:Lcom/android/systemui/shade/ShadeLogger;

    move-object/from16 v10, p35

    iput-object v10, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mGutsManager:Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

    move-object/from16 v10, p79

    iput-object v10, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mDreamingToLockscreenTransitionViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/DreamingToLockscreenTransitionViewModel;

    move-object/from16 v10, p80

    iput-object v10, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mOccludedToLockscreenTransitionViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/OccludedToLockscreenTransitionViewModel;

    move-object/from16 v10, p81

    iput-object v10, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mLockscreenToDreamingTransitionViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/LockscreenToDreamingTransitionViewModel;

    move-object/from16 v10, p82

    iput-object v10, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mGoneToDreamingTransitionViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/GoneToDreamingTransitionViewModel;

    move-object/from16 v10, p83

    iput-object v10, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mGoneToDreamingLockscreenHostedTransitionViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/GoneToDreamingLockscreenHostedTransitionViewModel;

    move-object/from16 v10, p84

    iput-object v10, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mLockscreenToOccludedTransitionViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/LockscreenToOccludedTransitionViewModel;

    move-object/from16 v10, p85

    iput-object v10, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mPrimaryBouncerToGoneTransitionViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/PrimaryBouncerToGoneTransitionViewModel;

    move-object/from16 v10, p87

    iput-object v10, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardTransitionInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;

    move-object/from16 v10, p90

    iput-object v10, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;

    move-object/from16 v10, p112

    iput-object v10, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mLockscreenNotificationManager:Lcom/android/systemui/statusbar/LockscreenNotificationManager;

    iput-object v9, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mLockscreenNotificationIconsOnlyController:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;

    move-object/from16 v10, p101

    iput-object v10, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mPowerInteractor:Lcom/android/systemui/power/domain/interactor/PowerInteractor;

    move-object/from16 v10, p98

    iput-object v10, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardViewConfigurator:Lcom/android/systemui/keyguard/KeyguardViewConfigurator;

    move-object/from16 v10, p68

    iput-object v10, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mEmergencyButtonControllerFactory:Lcom/android/keyguard/EmergencyButtonController$Factory;

    move-object/from16 v10, p104

    iput-object v10, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mPrivacyDialogController:Lcom/android/systemui/privacy/PrivacyDialogController;

    move-object/from16 v10, p102

    iput-object v10, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mClockPositionAlgorithm:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;

    sget-object v10, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v11, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;

    invoke-virtual {v10, v11}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;

    const-string/jumbo v11, "setNPVController() controller = "

    if-eqz v10, :cond_0

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v14, "PluginFaceWidgetManager"

    invoke-static {v14, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v0, v10, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mNPVController:Lcom/android/systemui/shade/NotificationPanelViewController;

    :cond_0
    move-object/from16 v10, p103

    iput-object v10, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mNaturalScrollingSettingObserver:Lcom/android/systemui/keyguard/domain/interactor/NaturalScrollingSettingObserver;

    iput-object v3, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardTouchAnimator:Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;

    new-instance v10, Lcom/android/systemui/shade/NotificationPanelViewController$4;

    invoke-direct {v10, v0}, Lcom/android/systemui/shade/NotificationPanelViewController$4;-><init>(Lcom/android/systemui/shade/NotificationPanelViewController;)V

    iput-object v0, v3, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->viewInjector:Lcom/android/systemui/keyguard/animator/KeyguardTouchViewInjector;

    iput-object v10, v3, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->callback:Lcom/android/systemui/keyguard/animator/KeyguardTouchSwipeCallback;

    move-object/from16 v3, p105

    iput-object v3, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mPunchHoleVIViewControllerFactory:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController$Factory;

    new-instance v3, Lcom/android/systemui/shade/NotificationPanelViewController$5;

    invoke-direct {v3, v0}, Lcom/android/systemui/shade/NotificationPanelViewController$5;-><init>(Lcom/android/systemui/shade/NotificationPanelViewController;)V

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    new-instance v3, Lcom/android/systemui/shade/NotificationPanelViewController$ShadeLayoutChangeListener;

    invoke-direct {v3, v0, v15}, Lcom/android/systemui/shade/NotificationPanelViewController$ShadeLayoutChangeListener;-><init>(Lcom/android/systemui/shade/NotificationPanelViewController;I)V

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->getTouchHandler()Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iput-object v3, v2, Lcom/android/systemui/shade/NotificationPanelView;->mTouchHandler:Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;

    new-instance v3, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda8;

    invoke-direct {v3, v0}, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda8;-><init>(Lcom/android/systemui/shade/NotificationPanelViewController;)V

    iput-object v3, v2, Lcom/android/systemui/shade/NotificationPanelView;->mOnConfigurationChangedListener:Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda8;

    invoke-virtual/range {p3 .. p3}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iput-object v3, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mResources:Landroid/content/res/Resources;

    iput-object v8, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iput-object v4, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mQsController:Lcom/android/systemui/shade/QuickSettingsControllerImpl;

    move-object/from16 v8, p70

    iput-object v8, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    move-object/from16 v8, p16

    check-cast v8, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    iput-object v8, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    move-object/from16 v8, p18

    iput-object v8, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    invoke-interface/range {p30 .. p30}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/wm/shell/animation/FlingAnimationUtils$Builder;

    invoke-virtual {v8}, Lcom/android/wm/shell/animation/FlingAnimationUtils$Builder;->reset()V

    const v10, 0x3f19999a    # 0.6f

    iput v10, v8, Lcom/android/wm/shell/animation/FlingAnimationUtils$Builder;->mMaxLengthSeconds:F

    iput v10, v8, Lcom/android/wm/shell/animation/FlingAnimationUtils$Builder;->mSpeedUpFactor:F

    invoke-virtual {v8}, Lcom/android/wm/shell/animation/FlingAnimationUtils$Builder;->build()Lcom/android/wm/shell/animation/FlingAnimationUtils;

    move-result-object v12

    iput-object v12, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mFlingAnimationUtils:Lcom/android/wm/shell/animation/FlingAnimationUtils;

    invoke-virtual {v8}, Lcom/android/wm/shell/animation/FlingAnimationUtils$Builder;->reset()V

    iput v10, v8, Lcom/android/wm/shell/animation/FlingAnimationUtils$Builder;->mMaxLengthSeconds:F

    iput v10, v8, Lcom/android/wm/shell/animation/FlingAnimationUtils$Builder;->mSpeedUpFactor:F

    invoke-virtual {v8}, Lcom/android/wm/shell/animation/FlingAnimationUtils$Builder;->build()Lcom/android/wm/shell/animation/FlingAnimationUtils;

    move-result-object v12

    iput-object v12, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mFlingAnimationUtilsClosing:Lcom/android/wm/shell/animation/FlingAnimationUtils;

    invoke-virtual {v8}, Lcom/android/wm/shell/animation/FlingAnimationUtils$Builder;->reset()V

    const/high16 v12, 0x3f000000    # 0.5f

    iput v12, v8, Lcom/android/wm/shell/animation/FlingAnimationUtils$Builder;->mMaxLengthSeconds:F

    iput v10, v8, Lcom/android/wm/shell/animation/FlingAnimationUtils$Builder;->mSpeedUpFactor:F

    iput v10, v8, Lcom/android/wm/shell/animation/FlingAnimationUtils$Builder;->mX2:F

    const v10, 0x3f570a3d    # 0.84f

    iput v10, v8, Lcom/android/wm/shell/animation/FlingAnimationUtils$Builder;->mY2:F

    invoke-virtual {v8}, Lcom/android/wm/shell/animation/FlingAnimationUtils$Builder;->build()Lcom/android/wm/shell/animation/FlingAnimationUtils;

    move-result-object v8

    iput-object v8, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mFlingAnimationUtilsDismissing:Lcom/android/wm/shell/animation/FlingAnimationUtils;

    move-object/from16 v8, p23

    iput-object v8, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    new-instance v8, Lcom/android/systemui/statusbar/phone/BounceInterpolator;

    invoke-direct {v8}, Lcom/android/systemui/statusbar/phone/BounceInterpolator;-><init>()V

    move-object/from16 v8, p13

    iput-object v8, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    move-object/from16 v8, p19

    iput-object v8, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mDozeLog:Lcom/android/systemui/doze/DozeLog;

    const v8, 0x7f050019

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    iput-boolean v8, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mNotificationsDragEnabled:Z

    move-object/from16 v8, p22

    iput-object v8, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mVibratorHelper:Lcom/android/systemui/statusbar/VibratorHelper;

    const v8, 0x7f050053

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mVibrateOnOpening:Z

    move-object/from16 v3, p31

    iput-object v3, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mStatusBarTouchableRegionManager:Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;

    move-object/from16 v3, p74

    iput-object v3, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mSystemClock:Lcom/android/systemui/util/time/SystemClock;

    move-object/from16 v3, p50

    iput-object v3, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardMediaController:Lcom/android/systemui/media/controls/ui/controller/KeyguardMediaController;

    move-object/from16 v3, p27

    iput-object v3, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    move-object/from16 v3, p29

    iput-object v3, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    move-object/from16 v3, p30

    iput-object v3, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mFlingAnimationUtilsBuilder:Ljavax/inject/Provider;

    move-object/from16 v3, p33

    iput-object v3, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mMediaHierarchyManager:Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;

    move-object/from16 v3, p36

    iput-object v3, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mNotificationsQSContainerController:Lcom/android/systemui/shade/NotificationsQSContainerController;

    move-object/from16 v8, p72

    iput-object v8, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mNotificationStackSizeCalculator:Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator;

    move-object/from16 v8, p53

    iput-object v8, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mNavigationBarController:Lcom/android/systemui/navigationbar/NavigationBarController;

    invoke-interface/range {p65 .. p65}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaViewController;

    iput-object v8, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardBottomAreaViewController:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaViewController;

    invoke-virtual {v8}, Lcom/android/systemui/util/ViewController;->init()V

    invoke-virtual/range {p36 .. p36}, Lcom/android/systemui/util/ViewController;->init()V

    move-object/from16 v10, p37

    iput-object v10, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    move-object/from16 v10, p38

    iput-object v10, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardStatusViewComponentFactory:Lcom/android/keyguard/dagger/KeyguardStatusViewComponent$Factory;

    move-object/from16 v10, p41

    iput-object v10, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardStatusBarViewComponentFactory:Lcom/android/keyguard/dagger/KeyguardStatusBarViewComponent$Factory;

    move-object/from16 v10, p47

    iput-object v10, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mDepthController:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    move-object/from16 v10, p57

    iput-object v10, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v10, p39

    iput-object v10, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardQsUserSwitchComponentFactory:Lcom/android/keyguard/dagger/KeyguardQsUserSwitchComponent$Factory;

    move-object/from16 v10, p40

    iput-object v10, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardUserSwitcherComponentFactory:Lcom/android/keyguard/dagger/KeyguardUserSwitcherComponent$Factory;

    move-object/from16 v10, p55

    iput-object v10, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mFragmentService:Lcom/android/systemui/fragments/FragmentService;

    move-object/from16 v10, p56

    iput-object v10, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    new-instance v10, Lcom/android/systemui/shade/NotificationPanelViewController$SettingsChangeObserver;

    move-object/from16 v12, p6

    invoke-direct {v10, v0, v12}, Lcom/android/systemui/shade/NotificationPanelViewController$SettingsChangeObserver;-><init>(Lcom/android/systemui/shade/NotificationPanelViewController;Landroid/os/Handler;)V

    iput-object v10, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mSettingsChangeObserver:Lcom/android/systemui/shade/NotificationPanelViewController$SettingsChangeObserver;

    iput-object v6, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mSplitShadeStateController:Lcom/android/systemui/statusbar/policy/SplitShadeStateController;

    check-cast v6, Lcom/android/systemui/statusbar/policy/SplitShadeStateControllerImpl;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/policy/SplitShadeStateControllerImpl;->shouldUseSplitNotificationShade()V

    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    move-object/from16 v6, p58

    iput-object v6, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mShadeHeaderController:Lcom/android/systemui/shade/ShadeHeaderController;

    move-object/from16 v10, p7

    iput-object v10, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mLayoutInflater:Landroid/view/LayoutInflater;

    move-object/from16 v10, p8

    iput-object v10, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mFeatureFlags:Lcom/android/systemui/flags/FeatureFlags;

    sget-object v10, Lcom/android/systemui/Flags;->FEATURE_FLAGS:Lcom/android/systemui/FeatureFlagsImpl;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v10, p14

    iput-object v10, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mFalsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

    move-object/from16 v10, p9

    iput-object v10, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mWakeUpCoordinator:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;

    move-object/from16 v10, p86

    iput-object v10, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mMainDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    move-object/from16 v10, p24

    iput-object v10, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->determineAccessibilityPaneTitle()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Landroid/widget/FrameLayout;->setAccessibilityPaneTitle(Ljava/lang/CharSequence;)V

    const/16 v10, 0xff

    invoke-virtual {v0, v10, v15}, Lcom/android/systemui/shade/NotificationPanelViewController;->setAlpha(IZ)V

    move-object/from16 v10, p21

    iput-object v10, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    move/from16 v10, p25

    iput v10, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mDisplayId:I

    move-object/from16 v10, p10

    iput-object v10, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mPulseExpansionHandler:Lcom/android/systemui/statusbar/PulseExpansionHandler;

    move-object/from16 v10, p20

    iput-object v10, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    move-object/from16 v10, p44

    iput-object v10, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    move-object/from16 v10, p45

    iput-object v10, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mUserManager:Landroid/os/UserManager;

    move-object/from16 v10, p46

    iput-object v10, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mMediaDataManager:Lcom/android/systemui/media/controls/domain/pipeline/MediaDataManager;

    move-object/from16 v10, p51

    iput-object v10, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mTapAgainViewController:Lcom/android/systemui/statusbar/phone/TapAgainViewController;

    move-object/from16 v10, p64

    iput-object v10, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mSysUiState:Lcom/android/systemui/model/SysUiState;

    new-instance v10, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda21;

    invoke-direct {v10, v0}, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda21;-><init>(Lcom/android/systemui/shade/NotificationPanelViewController;)V

    move-object/from16 v12, p17

    invoke-virtual {v12, v10}, Lcom/android/systemui/statusbar/window/StatusBarWindowStateController;->addListener(Lcom/android/systemui/statusbar/window/StatusBarWindowStateListener;)V

    move-object/from16 v10, p12

    iput-object v10, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    move-object/from16 v10, p26

    iput-object v10, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-object/from16 v10, p42

    iput-object v10, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mLockscreenShadeTransitionController:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

    new-instance v12, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda22;

    invoke-direct {v12, v0}, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda22;-><init>(Lcom/android/systemui/shade/NotificationPanelViewController;)V

    move-object/from16 v14, p11

    iget-object v14, v14, Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;->mListeners:Landroid/util/ArraySet;

    invoke-virtual {v14, v12}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    new-instance v12, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda8;

    invoke-direct {v12, v0}, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda8;-><init>(Lcom/android/systemui/shade/NotificationPanelViewController;)V

    iput-object v12, v4, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mExpansionHeightListener:Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda8;

    new-instance v12, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda8;

    invoke-direct {v12, v0}, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda8;-><init>(Lcom/android/systemui/shade/NotificationPanelViewController;)V

    iput-object v12, v4, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mQsStateUpdateListener:Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda8;

    new-instance v12, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda8;

    invoke-direct {v12, v0}, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda8;-><init>(Lcom/android/systemui/shade/NotificationPanelViewController;)V

    iput-object v12, v4, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mApplyClippingImmediatelyListener:Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda8;

    new-instance v12, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda8;

    invoke-direct {v12, v0}, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda8;-><init>(Lcom/android/systemui/shade/NotificationPanelViewController;)V

    iput-object v12, v4, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mFlingQsWithoutClickListener:Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda8;

    new-instance v12, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda8;

    invoke-direct {v12, v0}, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda8;-><init>(Lcom/android/systemui/shade/NotificationPanelViewController;)V

    iput-object v12, v4, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mExpansionHeightSetToMaxListener:Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda8;

    new-instance v12, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda25;

    invoke-direct {v12, v0}, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda25;-><init>(Lcom/android/systemui/shade/NotificationPanelViewController;)V

    iget-object v5, v5, Lcom/android/systemui/shade/ShadeExpansionStateManager;->stateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5, v12}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x2

    new-array v12, v5, [F

    fill-array-data v12, :array_0

    invoke-static {v12}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v5

    iput-object v5, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mBottomAreaShadeAlphaAnimator:Landroid/animation/ValueAnimator;

    new-instance v12, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda26;

    invoke-direct {v12, v0, v15}, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda26;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v5, v12}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v3, 0xa0

    invoke-virtual {v5, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v5, v13}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    move-object/from16 v3, p32

    iput-object v3, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mConversationNotificationManager:Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;

    move-object/from16 v3, p43

    iput-object v3, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mAuthController:Lcom/android/systemui/biometrics/AuthController;

    move-object/from16 v3, p49

    iput-object v3, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mLockIconViewController:Lcom/android/keyguard/SecLockIconViewController;

    move-object/from16 v3, p59

    iput-object v3, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mScreenOffAnimationController:Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;

    move-object/from16 v3, p73

    iput-object v3, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mUnlockedScreenOffAnimationController:Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;

    new-instance v3, Lcom/android/systemui/shade/NPVCDownEventState$Buffer;

    const/16 v4, 0x32

    invoke-direct {v3, v4}, Lcom/android/systemui/shade/NPVCDownEventState$Buffer;-><init>(I)V

    iput-object v3, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mLastDownEvents:Lcom/android/systemui/shade/NPVCDownEventState$Buffer;

    move-object/from16 v3, p99

    iput-object v3, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mDeviceEntryFaceAuthInteractor:Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryFaceAuthInteractor;

    new-instance v3, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda27;

    invoke-direct {v3, v0}, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda27;-><init>(Lcom/android/systemui/shade/NotificationPanelViewController;)V

    move-object/from16 v4, p52

    invoke-virtual {v4, v3}, Lcom/android/systemui/navigationbar/NavigationModeController;->addListener(Lcom/android/systemui/navigationbar/NavigationModeController$ModeChangedListener;)I

    move-result v3

    invoke-static {v3}, Lcom/android/systemui/shared/system/QuickStepContract;->isGesturalMode(I)Z

    move-result v3

    iput-boolean v3, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mIsGestureNavigation:Z

    invoke-virtual {v2, v15}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    new-instance v3, Lcom/android/systemui/shade/NotificationPanelViewController$ShadeAttachStateChangeListener;

    invoke-direct {v3, v0, v15}, Lcom/android/systemui/shade/NotificationPanelViewController$ShadeAttachStateChangeListener;-><init>(Lcom/android/systemui/shade/NotificationPanelViewController;I)V

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    invoke-virtual/range {p3 .. p3}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3, v2}, Lcom/android/systemui/shade/NotificationPanelViewController$ShadeAttachStateChangeListener;->onViewAttachedToWindow(Landroid/view/View;)V

    :cond_1
    new-instance v3, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda28;

    invoke-direct {v3, v0}, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda28;-><init>(Lcom/android/systemui/shade/NotificationPanelViewController;)V

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    iput-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mPluginLockMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    invoke-interface {v1, v0}, Lcom/android/systemui/pluginlock/PluginLockMediator;->registerStateCallback(Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;)V

    new-instance v1, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda29;

    invoke-direct {v1, v15}, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda29;-><init>(I)V

    move-object/from16 v2, p63

    invoke-virtual {v2, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardUnfoldTransition:Ljava/util/Optional;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->updateUserSwitcherFlags()V

    move-object/from16 v1, p75

    iput-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardBottomAreaViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBottomAreaViewModel;

    move-object/from16 v1, p76

    iput-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardBottomAreaInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardBottomAreaInteractor;

    move-object/from16 v1, p91

    iput-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    sget-boolean v1, Lcom/android/systemui/CscRune;->KEYGUARD_DCM_LIVE_UX:Z

    if-eqz v1, :cond_2

    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mMascotViewContainer:Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;

    :cond_2
    move-object/from16 v1, p116

    iput-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->onFinishInflate()V

    new-instance v1, Lcom/android/systemui/shade/NotificationPanelViewController$6;

    invoke-direct {v1, v0}, Lcom/android/systemui/shade/NotificationPanelViewController$6;-><init>(Lcom/android/systemui/shade/NotificationPanelViewController;)V

    move-object/from16 v2, p69

    iget-object v2, v2, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, p78

    iput-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mAlternateBouncerInteractor:Lcom/android/systemui/bouncer/domain/interactor/AlternateBouncerInteractor;

    move-object/from16 v1, p88

    invoke-virtual {v1, v0}, Lcom/android/systemui/dump/DumpManager;->registerDumpable(Lcom/android/systemui/Dumpable;)V

    new-instance v1, Lcom/android/systemui/log/QuickPanelLogger;

    const-string v2, "NPVC"

    invoke-direct {v1, v2}, Lcom/android/systemui/log/QuickPanelLogger;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mQuickPanelLogger:Lcom/android/systemui/log/QuickPanelLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mQuickPanelLogBuilder:Ljava/lang/StringBuilder;

    new-instance v1, Lcom/android/systemui/shade/SecNotificationPanelViewController;

    new-instance v2, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda1;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v3}, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/shade/NotificationPanelViewController;I)V

    new-instance v4, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda1;

    const/4 v5, 0x2

    invoke-direct {v4, v0, v5}, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/shade/NotificationPanelViewController;I)V

    new-instance v5, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda2;

    invoke-direct {v5, v0, v3}, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/shade/NotificationPanelViewController;I)V

    new-instance v12, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda1;

    const/4 v13, 0x3

    invoke-direct {v12, v0, v13}, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/shade/NotificationPanelViewController;I)V

    new-instance v13, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda4;

    invoke-direct {v13, v0, v3}, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/shade/NotificationPanelViewController;I)V

    new-instance v3, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda11;

    const/16 v14, 0x9

    invoke-direct {v3, v0, v14}, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda11;-><init>(Lcom/android/systemui/shade/NotificationPanelViewController;I)V

    new-instance v14, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda11;

    const/16 v15, 0xa

    invoke-direct {v14, v0, v15}, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda11;-><init>(Lcom/android/systemui/shade/NotificationPanelViewController;I)V

    new-instance v15, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda37;

    const/4 v6, 0x0

    invoke-direct {v15, v0, v6}, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda37;-><init>(Ljava/lang/Object;I)V

    move-object/from16 p6, v1

    move-object/from16 p7, p42

    move-object/from16 p8, p36

    move-object/from16 p9, p54

    move-object/from16 p10, p58

    move-object/from16 p11, p62

    move-object/from16 p12, v2

    move-object/from16 p13, v4

    move-object/from16 p14, v5

    move-object/from16 p15, v12

    move-object/from16 p16, v13

    move-object/from16 p17, v3

    move-object/from16 p18, v14

    move-object/from16 p19, v15

    invoke-direct/range {p6 .. p19}, Lcom/android/systemui/shade/SecNotificationPanelViewController;-><init>(Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;Lcom/android/systemui/shade/NotificationsQSContainerController;Lcom/android/systemui/shade/QuickSettingsControllerImpl;Lcom/android/systemui/shade/ShadeHeaderController;Lcom/android/systemui/shade/data/repository/ShadeRepository;Ljava/util/function/Supplier;Ljava/util/function/Supplier;Ljava/util/function/BooleanSupplier;Ljava/util/function/Supplier;Ljava/util/function/IntSupplier;Ljava/util/function/Consumer;Ljava/util/function/Consumer;Ljava/lang/Runnable;)V

    iput-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mSecNotificationPanelViewController:Lcom/android/systemui/shade/SecNotificationPanelViewController;

    sget-boolean v1, Lcom/android/systemui/LsRune;->SUBSCREEN_WATCHFACE:Z

    if-eqz v1, :cond_3

    move-object/from16 v1, p95

    iput-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mSubScreenManagerLazy:Ldagger/Lazy;

    :cond_3
    sget-boolean v1, Lcom/android/systemui/LsRune;->COVER_VIRTUAL_DISPLAY:Z

    if-eqz v1, :cond_4

    move-object/from16 v1, p96

    iput-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mCoverScreenManagerLazy:Ldagger/Lazy;

    :cond_4
    move-object/from16 v1, p5

    iput-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mPluginAODManagerLazy:Ldagger/Lazy;

    move-object/from16 v1, p106

    iput-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mShelfManager:Lcom/android/systemui/statusbar/NotificationShelfManager;

    iput-object v0, v1, Lcom/android/systemui/statusbar/NotificationShelfManager;->notificationPanelController:Lcom/android/systemui/shade/NotificationPanelViewController;

    new-instance v1, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;

    iget-object v2, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mView:Lcom/android/systemui/shade/NotificationPanelView;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "QuickPannel"

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mMultiWindowEdgeDetector:Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;

    move-object/from16 v1, p111

    iput-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mIndicatorTouchHandler:Lcom/android/systemui/statusbar/phone/IndicatorTouchHandler;

    invoke-virtual/range {p113 .. p113}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LockscreenNotificationIconsOnlyController"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v0, v9, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mNPVController:Lcom/android/systemui/shade/NotificationPanelViewController;

    new-instance v1, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda37;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda37;-><init>(Ljava/lang/Object;I)V

    iput-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mPostCollapseRunnable:Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda37;

    sget-boolean v1, Lcom/android/systemui/QpRune;->QUICK_DATA_USAGE_LABEL:Z

    if-eqz v1, :cond_5

    move-object/from16 v1, p114

    iput-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mDataUsageLabelManagerLazy:Ldagger/Lazy;

    :cond_5
    move-object/from16 v1, p107

    iput-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardEditModeController:Lcom/android/systemui/keyguard/KeyguardEditModeController;

    iget-object v2, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mView:Lcom/android/systemui/shade/NotificationPanelView;

    check-cast v1, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;

    invoke-virtual {v1, v2}, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->bind(Landroid/view/View;)V

    new-instance v2, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda39;

    invoke-direct {v2, v0}, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda39;-><init>(Lcom/android/systemui/shade/NotificationPanelViewController;)V

    iput-object v2, v1, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->onStartActivityListener:Lkotlin/jvm/functions/Function0;

    new-instance v2, Lcom/android/systemui/shade/NotificationPanelViewController$7;

    invoke-direct {v2, v0}, Lcom/android/systemui/shade/NotificationPanelViewController$7;-><init>(Lcom/android/systemui/shade/NotificationPanelViewController;)V

    iget-object v1, v1, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->listeners:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda41;

    invoke-direct {v1, v0}, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda41;-><init>(Lcom/android/systemui/shade/NotificationPanelViewController;)V

    move-object/from16 v2, p108

    check-cast v2, Lcom/android/systemui/keyguard/KeyguardClickControllerImpl;

    iput-object v1, v2, Lcom/android/systemui/keyguard/KeyguardClickControllerImpl;->isClickContainerArea:Lkotlin/jvm/functions/Function2;

    move-object/from16 v1, p109

    iput-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mPluginLockData:Lcom/android/systemui/pluginlock/PluginLockData;

    move-object/from16 v1, p110

    iput-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mPluginLockStarManagerLazy:Ldagger/Lazy;

    invoke-interface/range {p110 .. p110}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/lockstar/PluginLockStarManager;

    const-string v3, "NotificationPanelViewController"

    iget-object v4, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mLockStarCallback:Lcom/android/systemui/shade/NotificationPanelViewController$1;

    invoke-virtual {v2, v3, v4}, Lcom/android/systemui/lockstar/PluginLockStarManager;->registerCallback(Ljava/lang/String;Lcom/android/systemui/lockstar/PluginLockStarManager$LockStarCallback;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->updateLockStarContainer()V

    invoke-interface/range {p110 .. p110}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/lockstar/PluginLockStarManager;

    iget-object v1, v1, Lcom/android/systemui/lockstar/PluginLockStarManager;->mShortcutController:Lcom/android/systemui/lockstar/shortcut/LockStarShortcutController;

    iput-object v8, v1, Lcom/android/systemui/lockstar/shortcut/LockStarShortcutController;->bottomAreaCallback:Lcom/android/systemui/pluginlock/PluginLockBottomAreaCallback;

    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mView:Lcom/android/systemui/shade/NotificationPanelView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/policy/SystemBarUtils;->getQuickQsOffsetHeight(Landroid/content/Context;)I

    move-result v1

    iput v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mQuickQsOffsetHeight:I

    sget-object v1, Lcom/android/systemui/logging/PanelScreenShotLogger;->INSTANCE:Lcom/android/systemui/logging/PanelScreenShotLogger;

    const-string v2, "NotificationPanelView"

    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/logging/PanelScreenShotLogger;->addLogProvider(Ljava/lang/String;Lcom/android/systemui/logging/PanelScreenShotLogger$LogProvider;)V

    move-object/from16 v1, p66

    iput-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardWallpaperController:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    move-object/from16 v1, p67

    iput-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mWallpaperImageCreator:Lcom/android/systemui/keyguardimage/WallpaperImageInjectCreator;

    move-object/from16 v1, p115

    iput-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mQsStatusEventLog:Lcom/android/systemui/util/QsStatusEventLog;

    sget-object v1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v2, Lcom/android/systemui/shade/SecPanelSplitHelper;

    invoke-virtual {v1, v2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/shade/SecPanelSplitHelper;

    iput-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mPanelSplitHelper:Lcom/android/systemui/shade/SecPanelSplitHelper;

    iget-object v2, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mPanelTransitionStateListener:Lcom/android/systemui/shade/NotificationPanelViewController$2;

    invoke-virtual {v1, v2}, Lcom/android/systemui/shade/SecPanelSplitHelper;->addListener(Lcom/android/systemui/shade/PanelTransitionStateListener;)V

    move-object/from16 v1, p117

    iput-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mSecQuickSettingsAffordanceInteractor:Lcom/android/systemui/shade/domain/interactor/SecQuickSettingsAffordanceInteractor;

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method


# virtual methods
.method public final abortAnimations()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->cancelHeightAnimator()V

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mPostCollapseRunnable:Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda37;

    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mView:Lcom/android/systemui/shade/NotificationPanelView;

    if-eqz v0, :cond_0

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mFlingCollapseRunnable:Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda37;

    invoke-virtual {v1, p0}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final animateCollapseQs(Z)V
    .locals 4

    invoke-static {}, Lcom/android/systemui/shade/SecPanelSplitHelper;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1, v2, v1}, Lcom/android/systemui/shade/NotificationPanelViewController;->collapse(FZZ)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mQsController:Lcom/android/systemui/shade/QuickSettingsControllerImpl;

    iget-object v0, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mExpansionAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_2

    iget-boolean v3, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mAnimatorExpand:Z

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    iget v3, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mExpansionHeight:F

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    invoke-virtual {p0, v3}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->setExpansionHeight(F)V

    :cond_2
    if-eqz p1, :cond_3

    const/4 v2, 0x2

    :cond_3
    const/4 p1, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v2, p1, v1}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->flingQs(FILcom/android/systemui/shade/QuickSettingsControllerImpl$$ExternalSyntheticLambda0;Z)V

    :goto_0
    return-void
.end method

.method public final blockExpansionForCurrentTouch()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->isTracking()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mBlockingExpansionForCurrentTouch:Z

    return-void
.end method

.method public final calculatePanelHeightShade()I
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getEmptyBottomMargin()I

    move-result v1

    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    sub-int/2addr v2, v1

    iget v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mBarState:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mClockPositionAlgorithm:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;

    iget p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mKeyguardStatusHeight:I

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    iget v0, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIntrinsicContentHeight:F

    float-to-int v0, v0

    add-int/2addr p0, v0

    invoke-static {v2, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0

    :cond_0
    return v2
.end method

.method public final canBeCollapsed()Z
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    check-cast v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mCommandQueueCallbacks:Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;

    iget v0, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;->mDisabled1:I

    const/high16 v2, 0x10000

    and-int/2addr v0, v2

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->isFullyCollapsed()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->isTracking()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->isClosing()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/systemui/Flags;->FEATURE_FLAGS:Lcom/android/systemui/FeatureFlagsImpl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/systemui/shade/SecPanelSplitHelper;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mPanelSplitHelper:Lcom/android/systemui/shade/SecPanelSplitHelper;

    iget-object p0, p0, Lcom/android/systemui/shade/SecPanelSplitHelper;->panelSlideEventHandler:Lcom/android/systemui/shade/PanelSlideEventHandler;

    iget-boolean p0, p0, Lcom/android/systemui/shade/PanelSlideEventHandler;->tracking:Z

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
.end method

.method public canCollapsePanelOnTouch()Z
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mQsController:Lcom/android/systemui/shade/QuickSettingsControllerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->getExpanded$1()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mBarState:I

    if-ne v1, v2, :cond_0

    return v2

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mScrollAdapter:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$9;

    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$9;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    iget v3, v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getScrollRange$1()I

    move-result v1

    if-lt v3, v1, :cond_1

    return v2

    :cond_1
    const/4 v1, 0x0

    iget-object v3, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mSecNotificationPanelViewController:Lcom/android/systemui/shade/SecNotificationPanelViewController;

    if-eqz v3, :cond_6

    iget-boolean v4, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mIsPanelCollapseOnQQS:Z

    invoke-virtual {v0}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->getExpanded$1()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mIsPanelCollapseOnQQS:Z

    if-eqz p0, :cond_3

    :cond_2
    move v1, v2

    :cond_3
    sget-object p0, Lcom/android/systemui/shade/SecPanelSplitHelper;->Companion:Lcom/android/systemui/shade/SecPanelSplitHelper$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean p0, Lcom/android/systemui/shade/SecPanelSplitHelper;->isEnabled:Z

    if-eqz p0, :cond_5

    iget-object p0, v3, Lcom/android/systemui/shade/SecNotificationPanelViewController;->panelSplitHelper:Lcom/android/systemui/shade/SecPanelSplitHelper;

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Lcom/android/systemui/shade/SecPanelSplitHelper;->isQSState()Z

    move-result p0

    if-ne p0, v2, :cond_4

    goto :goto_0

    :cond_4
    move v2, v4

    goto :goto_0

    :cond_5
    move v2, v1

    :goto_0
    return v2

    :cond_6
    invoke-virtual {v0}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->getExpanded$1()Z

    move-result v0

    if-nez v0, :cond_8

    iget-boolean p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mIsPanelCollapseOnQQS:Z

    if-eqz p0, :cond_7

    goto :goto_1

    :cond_7
    move v2, v1

    :cond_8
    :goto_1
    return v2
.end method

.method public final cancelAnimation()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mView:Lcom/android/systemui/shade/NotificationPanelView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    return-void
.end method

.method public cancelHeightAnimator()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mHeightAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mPanelUpdateWhenAnimatorEnds:Z

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mHeightAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->endClosing()V

    return-void
.end method

.method public final cancelInputFocusTransfer()V
    .locals 2

    const-string v0, "NotificationPanelView"

    const-string v1, "cancelInputFocusTransfer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/CommandQueue;->panelsEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mExpectingSynthesizedDown:Z

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mExpectingSynthesizedDown:Z

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/shade/NotificationPanelViewController;->collapse(FZ)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/shade/NotificationPanelViewController;->onTrackingStopped(Z)V

    goto :goto_0

    :cond_1
    const-string p0, "couldn\'t call onTrackingStopped() by mExpectingSynthesizedDown"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public final cancelPendingCollapse(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mView:Lcom/android/systemui/shade/NotificationPanelView;

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mHideExpandedRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "cancelPendingPanelCollapse "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "KeyguardVisible"

    invoke-static {v1, p1}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-class p1, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    sget-object v1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v1, p1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    invoke-virtual {p1}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->reset()V

    sget-boolean p1, Lcom/android/systemui/LsRune;->KEYGUARD_SUB_DISPLAY_LOCK:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    check-cast p1, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;

    iget-object p1, p1, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mHelper:Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->resetForceInvisible(Z)V

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mMaybeHideExpandedRunnable:Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda37;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final closeQsIfPossible()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->isShadeFullyExpanded()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->isExpandingOrCollapsing()Z

    move-result v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    check-cast v0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mIsDozing:Z

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/systemui/shade/SecPanelSplitHelper;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mPanelSplitHelper:Lcom/android/systemui/shade/SecPanelSplitHelper;

    invoke-virtual {v0}, Lcom/android/systemui/shade/SecPanelSplitHelper;->isShadeState()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    iget v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mBarState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setVisibility(I)V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mBlockHideAmountVisibility:Z

    :cond_3
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mQsController:Lcom/android/systemui/shade/QuickSettingsControllerImpl;

    invoke-virtual {p0}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->closeQs()V

    return-void
.end method

.method public final closeUserSwitcherIfOpen()Z
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardUserSwitcherController:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->closeSwitcherIfOpenAndNotSimple(Z)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final collapse(FZ)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->canBeCollapsed()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mQsController:Lcom/android/systemui/shade/QuickSettingsControllerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->getExpanded$1()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {v0, v2}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->setExpandImmediate(Z)V

    invoke-virtual {p0, v2}, Lcom/android/systemui/shade/NotificationPanelViewController;->setShowShelfOnly(Z)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->canBeCollapsed()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->cancelHeightAnimator()V

    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->notifyExpandingStarted()V

    invoke-virtual {p0, v2}, Lcom/android/systemui/shade/NotificationPanelViewController;->setClosing(Z)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mUpdateFlingOnLayout:Z

    if-eqz p2, :cond_2

    iput p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mNextCollapseSpeedUpFactor:F

    const-wide/16 p1, 0x78

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mView:Lcom/android/systemui/shade/NotificationPanelView;

    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mFlingCollapseRunnable:Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda37;

    invoke-virtual {v0, p0, p1, p2}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    invoke-virtual {p0, p2, p1, v0}, Lcom/android/systemui/shade/NotificationPanelViewController;->fling(FFZ)V

    :cond_3
    :goto_0
    return-void
.end method

.method public final collapse(FZZ)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->isFullyCollapsed()Z

    move-result p2

    if-nez p2, :cond_0

    invoke-virtual {p0, p1, p3}, Lcom/android/systemui/shade/NotificationPanelViewController;->collapse(FZ)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0, v0}, Lcom/android/systemui/shade/NotificationPanelViewController;->resetViews(ZZ)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/shade/NotificationPanelViewController;->setExpandedFraction(F)V

    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mShadeExpansionStateManager:Lcom/android/systemui/shade/ShadeExpansionStateManager;

    iget p1, p0, Lcom/android/systemui/shade/ShadeExpansionStateManager;->state:I

    invoke-static {p1}, Lcom/android/systemui/shade/ShadeExpansionStateManagerKt;->panelStateToString(I)Ljava/lang/String;

    invoke-static {v0}, Lcom/android/systemui/shade/ShadeExpansionStateManagerKt;->panelStateToString(I)Ljava/lang/String;

    iget p1, p0, Lcom/android/systemui/shade/ShadeExpansionStateManager;->state:I

    if-eqz p1, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/systemui/shade/ShadeExpansionStateManager;->updateStateInternal(I)V

    :cond_1
    :goto_0
    sget-object p0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class p1, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

    invoke-virtual {p0, p1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mIsGoingGutOpenedFromLock:Z

    return-void
.end method

.method public computeMaxKeyguardNotifications()I
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mPluginLockStarManagerLazy:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/lockstar/PluginLockStarManager;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Lcom/android/systemui/lockstar/PluginLockStarManager;->getLockStarValues()Lcom/samsung/systemui/splugins/lockstar/LockStarValues;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "TYPE_N_CARD"

    iput-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mRecomputedReason:Ljava/lang/String;

    invoke-interface {v0}, Lcom/samsung/systemui/splugins/lockstar/LockStarValues;->getDetailNotificationCardCount()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getNotificationCardCount() : error "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NotificationPanelView"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mPluginLockMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    invoke-interface {v0}, Lcom/android/systemui/pluginlock/PluginLockMediator;->isDynamicLockEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mNotiCardCount:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    const-string v1, "isDynamicLockEnabled"

    iput-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mRecomputedReason:Ljava/lang/String;

    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    iget v0, v0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mFractionToShade:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    const-string v0, "mAmbientState.getFractionToShade()"

    iput-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mRecomputedReason:Ljava/lang/String;

    iget p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mMaxAllowedKeyguardNotifications:I

    return p0

    :cond_2
    const-string v0, "computeMaxKeyguardNotifications"

    iput-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mRecomputedReason:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->getVerticalSpaceForLockscreenNotifications()F

    move-result v2

    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->getVerticalSpaceForLockscreenShelf()F

    move-result v3

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    if-nez v0, :cond_3

    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    :goto_0
    int-to-float v0, v0

    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mNotificationStackSizeCalculator:Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator;

    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator;->computeMaxKeyguardNotifications(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;FFF)I

    move-result p0

    return p0
.end method

.method public final determineAccessibilityPaneTitle()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mQsController:Lcom/android/systemui/shade/QuickSettingsControllerImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->isCustomizing()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mResources:Landroid/content/res/Resources;

    const v0, 0x7f130084

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {}, Lcom/android/systemui/shade/SecPanelSplitHelper;->isEnabled()Z

    move-result v1

    const v2, 0x7f13007f

    const v3, 0x7f130083

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mPanelSplitHelper:Lcom/android/systemui/shade/SecPanelSplitHelper;

    if-eqz v1, :cond_4

    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_DATA_USAGE_LABEL:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mDataUsageLabelManagerLazy:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager;->updateLabelVisibility(Z)V

    :cond_1
    invoke-virtual {v1}, Lcom/android/systemui/shade/SecPanelSplitHelper;->isQSState()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mResources:Landroid/content/res/Resources;

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-virtual {v1}, Lcom/android/systemui/shade/SecPanelSplitHelper;->isShadeState()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mResources:Landroid/content/res/Resources;

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    const/4 p0, 0x0

    return-object p0

    :cond_4
    if-eqz v0, :cond_5

    iget v1, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mExpansionHeight:F

    const/4 v4, 0x0

    cmpl-float v1, v1, v4

    if-eqz v1, :cond_5

    iget-boolean v0, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mFullyExpanded:Z

    if-eqz v0, :cond_5

    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mResources:Landroid/content/res/Resources;

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    iget v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mBarState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isKeyguardUnlocking()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string p0, ""

    goto :goto_0

    :cond_6
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mResources:Landroid/content/res/Resources;

    const v0, 0x7f130ab5

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_7
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mResources:Landroid/content/res/Resources;

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final dozeTimeTick()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mLockIconViewController:Lcom/android/keyguard/SecLockIconViewController;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/systemui/keyguard/MigrateClocksToBlueprint;->INSTANCE:Lcom/android/systemui/keyguard/MigrateClocksToBlueprint;

    invoke-static {}, Lcom/android/systemui/Flags;->migrateClocksToBlueprint()V

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardStatusViewController:Lcom/android/keyguard/KeyguardStatusViewController;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardStatusViewController;->refreshTime()V

    iget-object v0, v0, Lcom/android/keyguard/KeyguardStatusViewController;->mKeyguardSliceViewController:Lcom/android/keyguard/KeyguardSliceViewController;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSliceViewController;->refresh()V

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v1, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;

    invoke-virtual {v0, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;

    if-nez v0, :cond_0

    const-string v0, "NotificationPanelView"

    const-string v1, "dozeTimeTick() Failed to get PluginFaceWidgetManager"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mFaceWidgetContainerWrapper:Lcom/android/systemui/facewidget/plugin/FaceWidgetContainerWrapper;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/android/systemui/facewidget/plugin/FaceWidgetContainerWrapper;->mPluginKeyguardStatusView:Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardStatusView;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardStatusView;->dozeTimeTick()V

    :cond_1
    :goto_0
    iget v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mInterpolatedDarkAmount:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/shade/NotificationPanelViewController;->positionClockAndNotifications(Z)V

    :cond_2
    sget-boolean v0, Lcom/android/systemui/LsRune;->SUBSCREEN_WATCHFACE:Z

    const-string v1, "dozeTimeTick() "

    const-string v2, "dozeTimeTick() no plugin"

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mSubScreenManagerLazy:Ldagger/Lazy;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/subscreen/SubScreenManager;

    iget-object v3, v0, Lcom/android/systemui/subscreen/SubScreenManager;->mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    const-string v4, "SubScreenManager"

    if-nez v3, :cond_3

    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v0, Lcom/android/systemui/subscreen/SubScreenManager;->mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    invoke-interface {v0}, Lcom/android/systemui/plugins/subscreen/PluginSubScreen;->dozeTimeTick()V

    :cond_4
    :goto_1
    sget-boolean v0, Lcom/android/systemui/LsRune;->COVER_VIRTUAL_DISPLAY:Z

    if-eqz v0, :cond_6

    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mCoverScreenManagerLazy:Ldagger/Lazy;

    if-eqz p0, :cond_6

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/cover/CoverScreenManager;

    iget-object v0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverPlugin:Lcom/android/systemui/plugins/cover/PluginCover;

    const-string v3, "CoverScreenManager"

    if-nez v0, :cond_5

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_5
    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverPlugin:Lcom/android/systemui/plugins/cover/PluginCover;

    invoke-interface {p0}, Lcom/android/systemui/plugins/cover/PluginCover;->dozeTimeTick()V

    :cond_6
    :goto_2
    return-void
.end method

.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 7
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    const-string p2, "NotificationPanelView:"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/systemui/util/DumpUtilsKt;->asIndenting(Ljava/io/PrintWriter;)Landroid/util/IndentingPrintWriter;

    move-result-object p2

    invoke-virtual {p2}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_DATA_USAGE_LABEL:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mDataUsageLabelManagerLazy:Ldagger/Lazy;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DataUsageLabelManager"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " InsetNavigationBarBottomHeight:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager;->mInsetNavigationBarBottomHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager;->mDataUsageLabelParent:Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelParent;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelParent;->getParentViewGroup()Landroid/view/ViewGroup;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, ", parentAlpha:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getAlpha()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, ", parentVisibility:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " (V0-I4-G8)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, ", parentHeight:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, ", parentPaddingBottom:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager;->mNavSettingsHelper:Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager$NavSettingsHelper;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager$NavSettingsHelper;->getDumpText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager;->mLabelView:Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView;

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, ", childTextView:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager;->mLabelView:Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "DataUsageLabelCommonView"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_2
    const-string p1, "mDownTime="

    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mDownTime:J

    invoke-virtual {p2, v0, v1}, Landroid/util/IndentingPrintWriter;->println(J)V

    const-string p1, "mTouchSlopExceededBeforeDown="

    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mTouchSlopExceededBeforeDown:Z

    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->println(Z)V

    const-string p1, "mIsLaunchAnimationRunning="

    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->isLaunchingActivity$1()Z

    move-result p1

    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->println(Z)V

    const-string p1, "mOverExpansion="

    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mOverExpansion:F

    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->println(F)V

    const-string p1, "mExpandedHeight="

    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mExpandedHeight:F

    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->println(F)V

    const-string p1, "isTracking()="

    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->isTracking()Z

    move-result p1

    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->println(Z)V

    const-string p1, "mExpanding="

    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mExpanding:Z

    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->println(Z)V

    const-string p1, "mSplitShadeEnabled="

    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->println(Z)V

    const-string v0, "mKeyguardNotificationBottomPadding="

    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardNotificationBottomPadding:F

    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->println(F)V

    const-string v0, "mKeyguardNotificationTopPadding="

    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardNotificationTopPadding:F

    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->println(F)V

    const-string v0, "mMaxAllowedKeyguardNotifications="

    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mMaxAllowedKeyguardNotifications:I

    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->println(I)V

    const-string v0, "mAnimateNextPositionUpdate="

    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mAnimateNextPositionUpdate:Z

    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    const-string v0, "isPanelExpanded()="

    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->isPanelExpanded()Z

    move-result v0

    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    const-string v0, "mKeyguardQsUserSwitchEnabled="

    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardQsUserSwitchEnabled:Z

    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    const-string v0, "mKeyguardUserSwitcherEnabled="

    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardUserSwitcherEnabled:Z

    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    const-string v0, "mDozing="

    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mDozing:Z

    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    const-string v0, "mDozingOnDown="

    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mDozingOnDown:Z

    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    const-string v0, "mBouncerShowing="

    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mBouncerShowing:Z

    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    const-string v0, "mBarState="

    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mBarState:I

    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->println(I)V

    const-string v0, "mStatusBarMinHeight="

    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mStatusBarMinHeight:I

    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->println(I)V

    const-string v0, "mStatusBarHeaderHeightKeyguard="

    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mStatusBarHeaderHeightKeyguard:I

    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->println(I)V

    const-string v0, "mOverStretchAmount="

    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mOverStretchAmount:F

    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->println(F)V

    const-string v0, "mDownX="

    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mDownX:F

    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->println(F)V

    const-string v0, "mDownY="

    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mDownY:F

    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->println(F)V

    const-string v0, "mDisplayTopInset="

    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mDisplayTopInset:I

    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->println(I)V

    const-string v0, "mDisplayRightInset="

    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mDisplayRightInset:I

    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->println(I)V

    const-string v0, "mDisplayLeftInset="

    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mDisplayLeftInset:I

    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->println(I)V

    const-string v0, "mIsExpandingOrCollapsing="

    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mIsExpandingOrCollapsing:Z

    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    const-string v0, "mHeadsUpStartHeight="

    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mHeadsUpStartHeight:I

    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->println(I)V

    const-string v0, "mListenForHeadsUp="

    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mListenForHeadsUp:Z

    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    const-string v0, "mNavigationBarBottomHeight="

    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mNavigationBarBottomHeight:I

    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->println(I)V

    const-string v0, "mExpandingFromHeadsUp="

    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mExpandingFromHeadsUp:Z

    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    const-string v0, "mCollapsedOnDown="

    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mCollapsedOnDown:Z

    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    const-string v0, "mClosingWithAlphaFadeOut="

    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mClosingWithAlphaFadeOut:Z

    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    const-string v0, "mHeadsUpVisible="

    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->println(Z)V

    const-string v0, "mHeadsUpAnimatingAway="

    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mHeadsUpAnimatingAway:Z

    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    const-string v0, "mShowIconsWhenExpanded="

    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mShowIconsWhenExpanded:Z

    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    const-string v0, "mIndicationBottomPadding="

    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mIndicationBottomPadding:I

    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->println(I)V

    const-string v0, "mAmbientIndicationBottomPadding="

    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->println(I)V

    const-string p1, "mIsFullWidth="

    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mIsFullWidth:Z

    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->println(Z)V

    const-string p1, "mBlockingExpansionForCurrentTouch="

    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mBlockingExpansionForCurrentTouch:Z

    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->println(Z)V

    const-string p1, "mExpectingSynthesizedDown="

    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mExpectingSynthesizedDown:Z

    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->println(Z)V

    const-string p1, "mLastEventSynthesizedDown="

    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mLastEventSynthesizedDown:Z

    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->println(Z)V

    const-string p1, "mInterpolatedDarkAmount="

    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mInterpolatedDarkAmount:F

    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->println(F)V

    const-string p1, "mLinearDarkAmount="

    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mLinearDarkAmount:F

    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->println(F)V

    const-string p1, "mPulsing="

    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mPulsing:Z

    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->println(Z)V

    const-string p1, "mStackScrollerMeasuringPass="

    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mStackScrollerMeasuringPass:I

    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->println(I)V

    const-string p1, "mPanelAlpha="

    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mPanelAlpha:I

    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->println(I)V

    const-string p1, "mBottomAreaShadeAlpha="

    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mBottomAreaShadeAlpha:F

    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->println(F)V

    const-string p1, "mHeadsUpInset="

    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mHeadsUpInset:I

    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->println(I)V

    const-string p1, "mHeadsUpPinnedMode="

    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mHeadsUpPinnedMode:Z

    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->println(Z)V

    const-string p1, "mAllowExpandForSmallExpansion="

    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mAllowExpandForSmallExpansion:Z

    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->println(Z)V

    const-string p1, "mMaxOverscrollAmountForPulse="

    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mMaxOverscrollAmountForPulse:I

    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->println(I)V

    const-string p1, "mIsPanelCollapseOnQQS="

    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mIsPanelCollapseOnQQS:Z

    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->println(Z)V

    const-string p1, "mKeyguardOnlyContentAlpha="

    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardOnlyContentAlpha:F

    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->println(F)V

    const-string p1, "mKeyguardOnlyTransitionTranslationY="

    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardOnlyTransitionTranslationY:I

    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->println(I)V

    const-string p1, "mUdfpsMaxYBurnInOffset="

    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mUdfpsMaxYBurnInOffset:F

    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->println(F)V

    const-string p1, "mIsGestureNavigation="

    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mIsGestureNavigation:Z

    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->println(Z)V

    const-string p1, "mOldLayoutDirection="

    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mOldLayoutDirection:I

    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->println(I)V

    const-string p1, "mMinFraction="

    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mMinFraction:F

    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->println(F)V

    const-string p1, "mSplitShadeFullTransitionDistance="

    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mSplitShadeFullTransitionDistance:I

    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->println(I)V

    const-string p1, "mSplitShadeScrimTransitionDistance="

    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mSplitShadeScrimTransitionDistance:I

    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->println(I)V

    const-string p1, "mMinExpandHeight="

    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mMinExpandHeight:F

    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->println(F)V

    const-string p1, "mPanelUpdateWhenAnimatorEnds="

    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mPanelUpdateWhenAnimatorEnds:Z

    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->println(Z)V

    const-string p1, "mHasVibratedOnOpen="

    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mHasVibratedOnOpen:Z

    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->println(Z)V

    const-string p1, "mFixedDuration="

    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mFixedDuration:I

    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->println(I)V

    const-string p1, "mPanelFlingOvershootAmount="

    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mPanelFlingOvershootAmount:F

    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->println(F)V

    const-string p1, "mLastGesturedOverExpansion="

    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mLastGesturedOverExpansion:F

    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->println(F)V

    const-string p1, "mIsSpringBackAnimation="

    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mIsSpringBackAnimation:Z

    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->println(Z)V

    const-string p1, "mHintDistance="

    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mHintDistance:F

    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->println(F)V

    const-string p1, "mInitialOffsetOnTouch="

    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mInitialOffsetOnTouch:F

    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->println(F)V

    const-string p1, "mCollapsedAndHeadsUpOnDown="

    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mCollapsedAndHeadsUpOnDown:Z

    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->println(Z)V

    const-string p1, "mExpandedFraction="

    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mExpandedFraction:F

    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->println(F)V

    const-string p1, "mExpansionDragDownAmountPx="

    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mExpansionDragDownAmountPx:F

    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->println(F)V

    const-string p1, "mPanelClosedOnDown="

    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mPanelClosedOnDown:Z

    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->println(Z)V

    const-string p1, "mHasLayoutedSinceDown="

    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mHasLayoutedSinceDown:Z

    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->println(Z)V

    const-string p1, "mUpdateFlingVelocity="

    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mUpdateFlingVelocity:F

    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->println(F)V

    const-string p1, "mUpdateFlingOnLayout="

    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mUpdateFlingOnLayout:Z

    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->println(Z)V

    const-string p1, "isClosing()="

    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->isClosing()Z

    move-result p1

    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->println(Z)V

    const-string p1, "mTouchSlopExceeded="

    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mTouchSlopExceeded:Z

    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->println(Z)V

    const-string p1, "mTrackingPointer="

    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mTrackingPointer:I

    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->println(I)V

    const-string p1, "mTouchSlop="

    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mTouchSlop:I

    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->println(I)V

    const-string p1, "mSlopMultiplier="

    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mSlopMultiplier:F

    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->println(F)V

    const-string p1, "mTouchAboveFalsingThreshold="

    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mTouchAboveFalsingThreshold:Z

    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->println(Z)V

    const-string p1, "mTouchStartedInEmptyArea="

    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mTouchStartedInEmptyArea:Z

    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->println(Z)V

    const-string p1, "mMotionAborted="

    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mMotionAborted:Z

    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->println(Z)V

    const-string p1, "mUpwardsWhenThresholdReached="

    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mUpwardsWhenThresholdReached:Z

    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->println(Z)V

    const-string p1, "mAnimatingOnDown="

    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mAnimatingOnDown:Z

    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->println(Z)V

    const-string p1, "mHandlingPointerUp="

    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mHandlingPointerUp:Z

    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->println(Z)V

    const-string p1, "mInstantExpanding="

    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mInstantExpanding:Z

    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->println(Z)V

    const-string p1, "mAnimateAfterExpanding="

    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mAnimateAfterExpanding:Z

    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->println(Z)V

    const-string p1, "mIsFlinging="

    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mIsFlinging:Z

    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->println(Z)V

    const-string p1, "mViewName="

    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mViewName:Ljava/lang/String;

    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "mInitialExpandY="

    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mInitialExpandY:F

    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->println(F)V

    const-string p1, "mInitialExpandX="

    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mInitialExpandX:F

    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->println(F)V

    const-string p1, "mTouchDisabled="

    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mTouchDisabled:Z

    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->println(Z)V

    const-string p1, "mInitialTouchFromKeyguard="

    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mInitialTouchFromKeyguard:Z

    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->println(Z)V

    const-string p1, "mNextCollapseSpeedUpFactor="

    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mNextCollapseSpeedUpFactor:F

    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->println(F)V

    const-string p1, "mGestureWaitForTouchSlop="

    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mGestureWaitForTouchSlop:Z

    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->println(Z)V

    const-string p1, "mIgnoreXTouchSlop="

    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mIgnoreXTouchSlop:Z

    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->println(Z)V

    const-string p1, "mExpandLatencyTracking="

    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mExpandLatencyTracking:Z

    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->println(Z)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "gestureExclusionRect:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mStatusBarTouchableRegionManager:Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;->calculateTouchableRegion()Landroid/graphics/Region;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->isFullyCollapsed()Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    sget-object v0, Lcom/android/systemui/shade/NotificationPanelViewController;->EMPTY_RECT:Landroid/graphics/Rect;

    :goto_1
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "Table<DownEvents>"

    invoke-static {p1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    new-instance p1, Lcom/android/systemui/dump/DumpsysTableLogger;

    sget-object v0, Lcom/android/systemui/shade/NPVCDownEventState;->TABLE_HEADERS:Ljava/util/List;

    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mLastDownEvents:Lcom/android/systemui/shade/NPVCDownEventState$Buffer;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    iget-object p0, p0, Lcom/android/systemui/shade/NPVCDownEventState$Buffer;->buffer:Lcom/android/systemui/common/buffer/RingBuffer;

    invoke-static {p0, v2}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v2, Lcom/android/systemui/common/buffer/RingBuffer$iterator$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/common/buffer/RingBuffer$iterator$1;-><init>(Lcom/android/systemui/common/buffer/RingBuffer;)V

    :goto_2
    invoke-virtual {v2}, Lcom/android/systemui/common/buffer/RingBuffer$iterator$1;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_5

    invoke-virtual {v2}, Lcom/android/systemui/common/buffer/RingBuffer$iterator$1;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/shade/NPVCDownEventState;

    iget-object p0, p0, Lcom/android/systemui/shade/NPVCDownEventState;->asStringList$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    const-string p0, "NotificationPanelView"

    invoke-direct {p1, p0, v0, v1}, Lcom/android/systemui/dump/DumpsysTableLogger;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {p1, p2}, Lcom/android/systemui/dump/DumpsysTableLogger;->printTableData(Ljava/io/PrintWriter;)V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public final endClosing()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->isClosing()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/shade/NotificationPanelViewController;->setClosing(Z)V

    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mOpenCloseListener:Lcom/android/systemui/shade/ShadeControllerImpl$2;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/android/systemui/shade/ShadeControllerImpl$2;->this$0:Lcom/android/systemui/shade/ShadeControllerImpl;

    invoke-virtual {v1}, Lcom/android/systemui/shade/BaseShadeControllerImpl;->onClosingFinished$1()V

    :cond_0
    iput-boolean v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mClosingWithAlphaFadeOut:Z

    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mForceNoOverlappingRendering:Z

    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mMediaHierarchyManager:Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->Companion:Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController$Companion;

    const/4 v2, 0x1

    iget-object v1, v1, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->mediaCarouselController:Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;

    invoke-virtual {v1, v2}, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->closeGuts(Z)V

    sget-boolean v1, Lcom/android/systemui/QpRune;->QUICK_TABLET_HORIZONTAL_PANEL_POSITION:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mQsController:Lcom/android/systemui/shade/QuickSettingsControllerImpl;

    iget-object v1, v1, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mSecQuickSettingsControllerImpl:Lcom/android/systemui/shade/SecQuickSettingsControllerImpl;

    iget-object v1, v1, Lcom/android/systemui/shade/SecQuickSettingsControllerImpl;->tabletHorizontalPanelPositionHelper:Lcom/android/systemui/shade/SecTabletHorizontalPanelPositionHelper;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Lcom/android/systemui/shade/SecTabletHorizontalPanelPositionHelper;->resetHorizontalPanelPosition(Z)V

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/systemui/shade/NotificationPanelViewController;->setExpandSettingsPanel$1(Z)V

    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mQsStatusEventLog:Lcom/android/systemui/util/QsStatusEventLog;

    invoke-virtual {p0}, Lcom/android/systemui/util/QsStatusEventLog;->startTimer()V

    :cond_2
    return-void
.end method

.method public final expand(Z)V
    .locals 7

    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->isFullyCollapsed()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->isCollapsing()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_0
    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mQuickPanelLogger:Lcom/android/systemui/log/QuickPanelLogger;

    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mQuickPanelLogBuilder:Ljava/lang/StringBuilder;

    if-eqz v3, :cond_1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string v4, "expand: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "animate: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", mInstantExpanding: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mInstantExpanding:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " -> true"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", mAnimateAfterExpanding: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mAnimateAfterExpanding:Z

    const-string v5, " -> "

    const-string v6, ", mUpdateFlingOnLayout: "

    invoke-static {v3, v4, v5, p1, v6}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    iget-boolean v4, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mUpdateFlingOnLayout:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " -> false"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", isTracking(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->isTracking()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", mExpanding: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mExpanding:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/log/QuickPanelLogger;->logPanelState(Ljava/lang/String;)V

    :cond_1
    iput-boolean v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mInstantExpanding:Z

    iput-boolean p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mAnimateAfterExpanding:Z

    iput-boolean v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mUpdateFlingOnLayout:Z

    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->abortAnimations()V

    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->isTracking()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0, v1}, Lcom/android/systemui/shade/NotificationPanelViewController;->onTrackingStopped(Z)V

    :cond_2
    iget-boolean p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mExpanding:Z

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->notifyExpandingFinished()V

    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->updateExpansionAndVisibility()V

    iget-object p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mView:Lcom/android/systemui/shade/NotificationPanelView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v2, Lcom/android/systemui/shade/NotificationPanelViewController$13;

    invoke-direct {v2, p0}, Lcom/android/systemui/shade/NotificationPanelViewController$13;-><init>(Lcom/android/systemui/shade/NotificationPanelViewController;)V

    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->requestLayout()V

    :cond_4
    invoke-virtual {p0, v1}, Lcom/android/systemui/shade/NotificationPanelViewController;->setListening$3(Z)V

    return-void
.end method

.method public final expandQSForOpenDetail()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/shade/NotificationPanelViewController;->setExpandSettingsPanel$1(Z)V

    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->expandToQs()V

    return-void
.end method

.method public final expandToNotifications()V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mSecNotificationPanelViewController:Lcom/android/systemui/shade/SecNotificationPanelViewController;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/android/systemui/shade/SecPanelSplitHelper;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mPanelSplitHelper:Lcom/android/systemui/shade/SecPanelSplitHelper;

    iput v2, v0, Lcom/android/systemui/shade/SecPanelSplitHelper;->stateOnDown:I

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->isOnKeyguard$1()Z

    move-result v5

    if-eqz v5, :cond_4

    check-cast v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mBouncerShowing:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mFullScreenModeEnabled:Z

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v2, Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {v0, v2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isNeedsToExpandLocksNoti()Z

    move-result v0

    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mLockscreenShadeTransitionController:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

    if-eqz v0, :cond_3

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->onDragDownStarted$frameworks__base__packages__SystemUI__android_common__SystemUI_core(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->touchHelper:Lcom/android/systemui/statusbar/DragDownHelper;

    iget-object v0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->dragDownCallback:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->getPanelSplitHelper$1()Lcom/android/systemui/shade/SecPanelSplitHelper;

    move-result-object v0

    if-eqz v0, :cond_2

    sget-object v1, Lcom/android/systemui/shade/PanelSlideEventHandler$Direction;->UNDECIDED:Lcom/android/systemui/shade/PanelSlideEventHandler$Direction;

    iput-object v1, v0, Lcom/android/systemui/shade/SecPanelSplitHelper;->shouldQsDownInLockscreen:Lcom/android/systemui/shade/PanelSlideEventHandler$Direction;

    :cond_2
    invoke-virtual {p0, v3, v3, v4}, Lcom/android/systemui/statusbar/DragDownHelper;->animateToMaxDragDown(FFZ)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v1, v4}, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->goToLockedShade(Landroid/view/View;Z)V

    :goto_0
    return-void

    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mQsController:Lcom/android/systemui/shade/QuickSettingsControllerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->getExpanded$1()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {v0, v3, v4, v1, v2}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->flingQs(FILcom/android/systemui/shade/QuickSettingsControllerImpl$$ExternalSyntheticLambda0;Z)V

    goto :goto_2

    :cond_5
    invoke-virtual {p0, v4}, Lcom/android/systemui/shade/NotificationPanelViewController;->expand(Z)V

    :goto_2
    return-void
.end method

.method public final expandToQs()V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mSecNotificationPanelViewController:Lcom/android/systemui/shade/SecNotificationPanelViewController;

    if-eqz v3, :cond_6

    iget-object v4, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->isOnKeyguard$1()Z

    move-result v5

    if-eqz v5, :cond_0

    check-cast v4, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    iget-boolean v4, v4, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mBouncerShowing:Z

    if-nez v4, :cond_5

    iget-boolean v4, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mFullScreenModeEnabled:Z

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    sget-object v4, Lcom/android/systemui/shade/SecPanelSplitHelper;->Companion:Lcom/android/systemui/shade/SecPanelSplitHelper$Companion;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v4, Lcom/android/systemui/shade/SecPanelSplitHelper;->isEnabled:Z

    if-nez v4, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->isOnKeyguard$1()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mLockscreenShadeTransitionController:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

    invoke-virtual {p0, v0, v2}, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->goToLockedShade(Landroid/view/View;Z)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->isFullyCollapsed()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p0, v2}, Lcom/android/systemui/shade/NotificationPanelViewController;->expand(Z)V

    :cond_3
    :goto_0
    iget-object p0, v3, Lcom/android/systemui/shade/SecNotificationPanelViewController;->panelSplitHelper:Lcom/android/systemui/shade/SecPanelSplitHelper;

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Lcom/android/systemui/shade/SecPanelSplitHelper;->isQSState()Z

    move-result v2

    if-nez v2, :cond_4

    move-object v0, p0

    :cond_4
    if-eqz v0, :cond_5

    invoke-virtual {v0, v1}, Lcom/android/systemui/shade/SecPanelSplitHelper;->slide$1(I)V

    :cond_5
    :goto_1
    return-void

    :cond_6
    :goto_2
    iget-object v3, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mQsController:Lcom/android/systemui/shade/QuickSettingsControllerImpl;

    invoke-virtual {v3}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->isExpansionEnabled()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {v3, v2}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->setExpandImmediate(Z)V

    invoke-virtual {p0, v2}, Lcom/android/systemui/shade/NotificationPanelViewController;->setShowShelfOnly(Z)V

    :cond_7
    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->isFullyCollapsed()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-virtual {p0, v2}, Lcom/android/systemui/shade/NotificationPanelViewController;->expand(Z)V

    goto :goto_3

    :cond_8
    invoke-virtual {v3, v2, v1}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->traceQsJank(ZZ)V

    const/4 p0, 0x0

    invoke-virtual {v3, p0, v1, v0, v1}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->flingQs(FILcom/android/systemui/shade/QuickSettingsControllerImpl$$ExternalSyntheticLambda0;Z)V

    :goto_3
    return-void
.end method

.method public final finishInputFocusTransfer(F)V
    .locals 7

    const-string v0, "NotificationPanelView"

    const-string v1, "finishInputFocusTransfer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/CommandQueue;->panelsEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mExpectingSynthesizedDown:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    iput-boolean v2, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mExpectingSynthesizedDown:Z

    invoke-virtual {p0, v2}, Lcom/android/systemui/shade/NotificationPanelViewController;->maybeVibrateOnOpening(Z)V

    invoke-static {}, Lcom/android/systemui/shade/SecPanelSplitHelper;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mPanelSplitHelper:Lcom/android/systemui/shade/SecPanelSplitHelper;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mDownEventFromOverView:Landroid/view/MotionEvent;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Lcom/android/systemui/shade/SecPanelSplitHelper;->shouldQSDown(Landroid/view/MotionEvent;)Z

    :cond_1
    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v1, Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor;

    invoke-virtual {v0, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor;

    iget-object v0, v0, Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor;->repository:Lcom/android/systemui/shade/data/repository/SecPanelSAStatusLogRepository;

    iget-object v0, v0, Lcom/android/systemui/shade/data/repository/SecPanelSAStatusLogRepository;->_openQuickPanelFrom1DepthEtcInShade:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    const-wide/16 v4, 0x1

    const/4 v6, 0x0

    invoke-static {v3, v4, v5, v0, v6}, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/Number;JLkotlinx/coroutines/flow/StateFlowImpl;Ljava/lang/Object;)V

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v0, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor;

    invoke-virtual {v0}, Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor;->countOpenNotificationPanelFromEtc()V

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_2

    const/high16 v0, 0x447a0000    # 1000.0f

    mul-float/2addr p1, v0

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/shade/NotificationPanelViewController;->fling(F)V

    iget-object p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    const/4 v0, 0x1

    check-cast p1, Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager;

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager;->unpinAll(Z)V

    invoke-virtual {p0, v2}, Lcom/android/systemui/shade/NotificationPanelViewController;->onTrackingStopped(Z)V

    goto :goto_1

    :cond_3
    const-string p1, "couldn\'t call onTrackingStopped() by mExpectingSynthesizedDown"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v2}, Lcom/android/systemui/shade/NotificationPanelViewController;->onTrackingStopped(Z)V

    :goto_1
    return-void
.end method

.method public final fling(F)V
    .locals 12

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mGestureRecorder:Lcom/android/systemui/statusbar/GestureRecorder;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    cmpl-float v1, p1, v1

    if-lez v1, :cond_0

    const-string v1, "open"

    goto :goto_0

    :cond_0
    const-string v1, "closed"

    :goto_0
    const-string v2, "fling "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "notifications,v="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    iget-object v2, v0, Lcom/android/systemui/statusbar/GestureRecorder;->mGestures:Ljava/util/LinkedList;

    monitor-enter v2

    :try_start_0
    iget-object v3, v0, Lcom/android/systemui/statusbar/GestureRecorder;->mCurrentGesture:Lcom/android/systemui/statusbar/GestureRecorder$Gesture;

    if-nez v3, :cond_1

    new-instance v3, Lcom/android/systemui/statusbar/GestureRecorder$Gesture;

    invoke-direct {v3, v0}, Lcom/android/systemui/statusbar/GestureRecorder$Gesture;-><init>(Lcom/android/systemui/statusbar/GestureRecorder;)V

    iput-object v3, v0, Lcom/android/systemui/statusbar/GestureRecorder;->mCurrentGesture:Lcom/android/systemui/statusbar/GestureRecorder$Gesture;

    iget-object v4, v0, Lcom/android/systemui/statusbar/GestureRecorder;->mGestures:Ljava/util/LinkedList;

    invoke-virtual {v4, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    :goto_1
    iget-object v9, v0, Lcom/android/systemui/statusbar/GestureRecorder;->mCurrentGesture:Lcom/android/systemui/statusbar/GestureRecorder$Gesture;

    iget-object v10, v9, Lcom/android/systemui/statusbar/GestureRecorder$Gesture;->mRecords:Ljava/util/LinkedList;

    new-instance v11, Lcom/android/systemui/statusbar/GestureRecorder$Gesture$TagRecord;

    move-object v3, v11

    move-object v4, v9

    move-object v7, v1

    invoke-direct/range {v3 .. v8}, Lcom/android/systemui/statusbar/GestureRecorder$Gesture$TagRecord;-><init>(Lcom/android/systemui/statusbar/GestureRecorder$Gesture;JLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, v11}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-object v3, v9, Lcom/android/systemui/statusbar/GestureRecorder$Gesture;->mTags:Ljava/util/HashSet;

    invoke-virtual {v3, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, v0, Lcom/android/systemui/statusbar/GestureRecorder;->mHandler:Lcom/android/systemui/statusbar/GestureRecorder$1;

    const/16 v1, 0x18cf

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_3

    :goto_2
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_2
    :goto_3
    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/systemui/shade/NotificationPanelViewController;->fling(FFZ)V

    return-void
.end method

.method public final fling(FFZ)V
    .locals 7

    if-eqz p3, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->getMaxPanelTransitionDistance()I

    move-result v0

    int-to-float v0, v0

    :goto_0
    move v4, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    if-nez p3, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/shade/NotificationPanelViewController;->setClosing(Z)V

    :cond_1
    const/4 v6, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p3

    move v5, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/shade/NotificationPanelViewController;->flingToHeight(FZFFZ)V

    return-void
.end method

.method public flingToHeight(FZFFZ)V
    .locals 26

    move-object/from16 v6, p0

    move/from16 v7, p1

    move/from16 v8, p2

    move/from16 v9, p3

    move/from16 v10, p4

    move/from16 v11, p5

    const/4 v12, 0x1

    const/4 v13, 0x0

    iget-object v0, v6, Lcom/android/systemui/shade/NotificationPanelViewController;->mQuickPanelLogger:Lcom/android/systemui/log/QuickPanelLogger;

    if-eqz v0, :cond_0

    iget-object v1, v6, Lcom/android/systemui/shade/NotificationPanelViewController;->mQuickPanelLogBuilder:Ljava/lang/StringBuilder;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string v2, "flingToHeight: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "vel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", expand: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", target: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", collapseSpeedUpFactor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", expandBecauseOfFalsing: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mExpandedHeight: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v6, Lcom/android/systemui/shade/NotificationPanelViewController;->mExpandedHeight:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", mOverExpansion: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v6, Lcom/android/systemui/shade/NotificationPanelViewController;->mOverExpansion:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", mIsFling: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, v6, Lcom/android/systemui/shade/NotificationPanelViewController;->mIsFlinging:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/log/QuickPanelLogger;->logPanelState(Ljava/lang/String;)V

    :cond_0
    iget-object v0, v6, Lcom/android/systemui/shade/NotificationPanelViewController;->mQsController:Lcom/android/systemui/shade/QuickSettingsControllerImpl;

    iput-boolean v8, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mLastShadeFlingWasExpanding:Z

    iget-object v1, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mShadeLog:Lcom/android/systemui/shade/ShadeLogger;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/android/systemui/log/core/LogLevel;->VERBOSE:Lcom/android/systemui/log/core/LogLevel;

    sget-object v3, Lcom/android/systemui/shade/ShadeLogger$logLastFlingWasExpanding$2;->INSTANCE:Lcom/android/systemui/shade/ShadeLogger$logLastFlingWasExpanding$2;

    const-string/jumbo v4, "systemui.shade"

    iget-object v1, v1, Lcom/android/systemui/shade/ShadeLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v2, v3, v5}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/android/systemui/log/LogMessageImpl;

    iput-boolean v8, v3, Lcom/android/systemui/log/LogMessageImpl;->bool1:Z

    invoke-virtual {v1, v2}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    iget-object v1, v6, Lcom/android/systemui/shade/NotificationPanelViewController;->mHeadsUpTouchHelper:Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;

    xor-int/lit8 v2, v8, 0x1

    iget-object v3, v1, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    if-eqz v2, :cond_1

    iget-boolean v4, v1, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mCollapseSnoozes:Z

    if-eqz v4, :cond_1

    invoke-interface {v3}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->snooze()V

    :cond_1
    iput-boolean v13, v1, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mCollapseSnoozes:Z

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    iput-boolean v13, v1, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mIsCollapsingHeadsup:Z

    if-nez v2, :cond_2

    const-string v1, "HeadsUpTouchHelper"

    const-string/jumbo v2, "unpinAll because of notifyFling expand"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    check-cast v3, Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager;

    invoke-virtual {v3, v12}, Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager;->unpinAll(Z)V

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->isOnKeyguard$1()Z

    move-result v1

    if-eqz v1, :cond_3

    if-nez v8, :cond_3

    move v1, v12

    goto :goto_0

    :cond_3
    move v1, v13

    :goto_0
    iget-object v14, v6, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iput-boolean v1, v14, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mFlingingToDismissKeyguard:Z

    if-eqz v1, :cond_4

    iget-boolean v2, v14, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mDismissingFromTouch:Z

    if-eqz v2, :cond_4

    move v2, v12

    goto :goto_1

    :cond_4
    move v2, v13

    :goto_1
    iput-boolean v2, v14, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mFlingingToDismissKeyguardDuringSwipeGesture:Z

    xor-int/2addr v1, v12

    iput-boolean v1, v14, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mSnappingKeyguardBackAfterSwipe:Z

    const/4 v15, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    if-nez v8, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->isKeyguardShowing$2()Z

    move-result v1

    if-nez v1, :cond_6

    iget v0, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mMinExpansionHeight:I

    if-nez v0, :cond_5

    move v0, v5

    goto :goto_2

    :cond_5
    iget v1, v6, Lcom/android/systemui/shade/NotificationPanelViewController;->mExpandedHeight:F

    int-to-float v0, v0

    div-float/2addr v1, v0

    invoke-static {v1, v5}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v15, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    float-to-double v0, v0

    const-wide/high16 v2, 0x3fe8000000000000L    # 0.75

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    :goto_2
    cmpl-float v0, v0, v5

    if-nez v0, :cond_6

    move v0, v12

    goto :goto_3

    :cond_6
    move v0, v13

    :goto_3
    iput-boolean v0, v6, Lcom/android/systemui/shade/NotificationPanelViewController;->mClosingWithAlphaFadeOut:Z

    iget-object v1, v6, Lcom/android/systemui/shade/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    iget-object v2, v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    iput-boolean v0, v2, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mForceNoOverlappingRendering:Z

    invoke-virtual {v1, v12}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->setPanelFlinging(Z)V

    new-instance v0, Lcom/android/systemui/shade/data/repository/FlingInfo;

    invoke-direct {v0, v8, v7}, Lcom/android/systemui/shade/data/repository/FlingInfo;-><init>(ZF)V

    iget-object v1, v6, Lcom/android/systemui/shade/NotificationPanelViewController;->mShadeRepository:Lcom/android/systemui/shade/data/repository/ShadeRepository;

    check-cast v1, Lcom/android/systemui/shade/data/repository/ShadeRepositoryImpl;

    iget-object v1, v1, Lcom/android/systemui/shade/data/repository/ShadeRepositoryImpl;->_currentFling:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {v1, v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->setValue(Ljava/lang/Object;)V

    iget v0, v6, Lcom/android/systemui/shade/NotificationPanelViewController;->mExpandedHeight:F

    cmpl-float v0, v9, v0

    if-nez v0, :cond_7

    iget v0, v6, Lcom/android/systemui/shade/NotificationPanelViewController;->mOverExpansion:F

    cmpl-float v0, v0, v15

    if-nez v0, :cond_7

    invoke-virtual {v6, v13}, Lcom/android/systemui/shade/NotificationPanelViewController;->onFlingEnd(Z)V

    return-void

    :cond_7
    iput-boolean v12, v6, Lcom/android/systemui/shade/NotificationPanelViewController;->mIsFlinging:Z

    if-eqz v8, :cond_8

    iget-object v0, v6, Lcom/android/systemui/shade/NotificationPanelViewController;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    check-cast v0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    iget v0, v0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mState:I

    if-eq v0, v12, :cond_8

    iget v0, v6, Lcom/android/systemui/shade/NotificationPanelViewController;->mOverExpansion:F

    cmpl-float v0, v0, v15

    if-nez v0, :cond_8

    cmpl-float v0, v7, v15

    if-ltz v0, :cond_8

    move v0, v12

    goto :goto_4

    :cond_8
    move v0, v13

    :goto_4
    if-nez v0, :cond_a

    iget v1, v6, Lcom/android/systemui/shade/NotificationPanelViewController;->mOverExpansion:F

    cmpl-float v1, v1, v15

    if-eqz v1, :cond_9

    if-eqz v8, :cond_9

    goto :goto_5

    :cond_9
    move v4, v13

    goto :goto_6

    :cond_a
    :goto_5
    move v4, v12

    :goto_6
    if-eqz v0, :cond_b

    iget-object v0, v6, Lcom/android/systemui/shade/NotificationPanelViewController;->mFlingAnimationUtils:Lcom/android/wm/shell/animation/FlingAnimationUtils;

    iget v0, v0, Lcom/android/wm/shell/animation/FlingAnimationUtils;->mHighVelocityPxPerSecond:F

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    div-float v0, v7, v0

    invoke-static {v0}, Landroid/util/MathUtils;->saturate(F)F

    move-result v0

    const v1, 0x3e4ccccd    # 0.2f

    invoke-static {v1, v5, v0}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v0

    iget v1, v6, Lcom/android/systemui/shade/NotificationPanelViewController;->mOverExpansion:F

    iget v2, v6, Lcom/android/systemui/shade/NotificationPanelViewController;->mPanelFlingOvershootAmount:F

    div-float/2addr v1, v2

    add-float/2addr v1, v0

    move/from16 v16, v1

    goto :goto_7

    :cond_b
    move/from16 v16, v15

    :goto_7
    iget-object v0, v6, Lcom/android/systemui/shade/NotificationPanelViewController;->mFlingAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, v6, Lcom/android/systemui/shade/NotificationPanelViewController;->mFlingAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_d

    :cond_c
    iget-object v0, v6, Lcom/android/systemui/shade/NotificationPanelViewController;->mFlingAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_d
    iget v3, v6, Lcom/android/systemui/shade/NotificationPanelViewController;->mOverExpansion:F

    iget v0, v6, Lcom/android/systemui/shade/NotificationPanelViewController;->mExpandedHeight:F

    const/4 v1, 0x2

    new-array v1, v1, [F

    aput v0, v1, v13

    aput v9, v1, v12

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    iget-object v0, v6, Lcom/android/systemui/shade/NotificationPanelViewController;->mTestSetOfAnimatorsUsed:Ljava/util/Set;

    if-eqz v0, :cond_e

    if-eqz v2, :cond_e

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_e
    new-instance v1, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda49;

    move-object v0, v1

    move-object v13, v1

    move-object/from16 v1, p0

    move-object/from16 v23, v2

    move/from16 v2, v16

    move/from16 v18, v3

    move/from16 v3, p3

    move/from16 v24, v4

    move/from16 v4, v18

    move/from16 v25, v5

    move-object/from16 v5, v23

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda49;-><init>(Lcom/android/systemui/shade/NotificationPanelViewController;FFFLandroid/animation/ValueAnimator;)V

    invoke-virtual {v5, v13}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iput-object v5, v6, Lcom/android/systemui/shade/NotificationPanelViewController;->mFlingAnimator:Landroid/animation/Animator;

    iget-object v0, v6, Lcom/android/systemui/shade/NotificationPanelViewController;->mView:Lcom/android/systemui/shade/NotificationPanelView;

    if-eqz v8, :cond_12

    invoke-virtual {v6, v12}, Lcom/android/systemui/shade/NotificationPanelViewController;->maybeVibrateOnOpening(Z)V

    if-eqz v11, :cond_f

    cmpg-float v1, v7, v15

    if-gez v1, :cond_f

    move v7, v15

    :cond_f
    iget-object v1, v6, Lcom/android/systemui/shade/NotificationPanelViewController;->mFlingAnimationUtils:Lcom/android/wm/shell/animation/FlingAnimationUtils;

    iget v2, v6, Lcom/android/systemui/shade/NotificationPanelViewController;->mExpandedHeight:F

    iget v3, v6, Lcom/android/systemui/shade/NotificationPanelViewController;->mPanelFlingOvershootAmount:F

    mul-float v16, v16, v3

    add-float v20, v16, v9

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    int-to-float v0, v0

    move-object/from16 v17, v1

    move-object/from16 v18, v5

    move/from16 v19, v2

    move/from16 v21, v7

    move/from16 v22, v0

    invoke-virtual/range {v17 .. v22}, Lcom/android/wm/shell/animation/FlingAnimationUtils;->apply(Landroid/animation/Animator;FFFF)V

    if-eqz v8, :cond_11

    iget v0, v6, Lcom/android/systemui/shade/NotificationPanelViewController;->mExpandedFraction:F

    cmpl-float v0, v0, v25

    if-nez v0, :cond_11

    const-wide/16 v0, 0x0

    invoke-virtual {v5, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    :cond_10
    :goto_8
    move-object v11, v5

    goto/16 :goto_c

    :cond_11
    cmpl-float v0, v7, v15

    if-nez v0, :cond_10

    const-wide/16 v0, 0x15e

    invoke-virtual {v5, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    goto :goto_8

    :cond_12
    const/4 v1, 0x0

    iput-boolean v1, v6, Lcom/android/systemui/shade/NotificationPanelViewController;->mHasVibratedOnOpen:Z

    iget v1, v6, Lcom/android/systemui/shade/NotificationPanelViewController;->mBarState:I

    if-eqz v1, :cond_13

    iget-boolean v1, v14, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mCanDismissLockScreen:Z

    if-nez v1, :cond_14

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->isTracking()Z

    move-result v1

    if-nez v1, :cond_13

    goto :goto_9

    :cond_13
    move-object v11, v5

    goto :goto_a

    :cond_14
    :goto_9
    cmpl-float v1, v7, v15

    if-nez v1, :cond_15

    sget-object v1, Lcom/android/app/animation/Interpolators;->PANEL_CLOSE_ACCELERATED:Landroid/view/animation/Interpolator;

    invoke-virtual {v5, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget v1, v6, Lcom/android/systemui/shade/NotificationPanelViewController;->mExpandedHeight:F

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v1, v0

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float/2addr v1, v0

    const/high16 v0, 0x43480000    # 200.0f

    add-float/2addr v1, v0

    float-to-long v0, v1

    invoke-virtual {v5, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-object v11, v5

    goto :goto_b

    :cond_15
    iget v2, v6, Lcom/android/systemui/shade/NotificationPanelViewController;->mExpandedHeight:F

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    int-to-float v8, v0

    iget-object v0, v6, Lcom/android/systemui/shade/NotificationPanelViewController;->mFlingAnimationUtilsDismissing:Lcom/android/wm/shell/animation/FlingAnimationUtils;

    move-object v1, v5

    move/from16 v3, p3

    move/from16 v4, p1

    move-object v11, v5

    move v5, v8

    invoke-virtual/range {v0 .. v5}, Lcom/android/wm/shell/animation/FlingAnimationUtils;->apply(Landroid/animation/Animator;FFFF)V

    goto :goto_b

    :goto_a
    iget v2, v6, Lcom/android/systemui/shade/NotificationPanelViewController;->mExpandedHeight:F

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    int-to-float v5, v0

    iget-object v0, v6, Lcom/android/systemui/shade/NotificationPanelViewController;->mFlingAnimationUtilsClosing:Lcom/android/wm/shell/animation/FlingAnimationUtils;

    move-object v1, v11

    move/from16 v3, p3

    move/from16 v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/wm/shell/animation/FlingAnimationUtils;->apply(Landroid/animation/Animator;FFFF)V

    :goto_b
    cmpl-float v0, v7, v15

    if-nez v0, :cond_16

    invoke-virtual {v11}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v0

    long-to-float v0, v0

    div-float/2addr v0, v10

    float-to-long v0, v0

    invoke-virtual {v11, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    :cond_16
    iget v0, v6, Lcom/android/systemui/shade/NotificationPanelViewController;->mFixedDuration:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_17

    int-to-long v0, v0

    invoke-virtual {v11, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    :cond_17
    new-instance v0, Lcom/android/systemui/shade/NotificationPanelViewController$11;

    invoke-direct {v0, v6}, Lcom/android/systemui/shade/NotificationPanelViewController$11;-><init>(Lcom/android/systemui/shade/NotificationPanelViewController;)V

    invoke-virtual {v11, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :goto_c
    new-instance v0, Lcom/android/systemui/shade/NotificationPanelViewController$12;

    move/from16 v12, v24

    invoke-direct {v0, v6, v12}, Lcom/android/systemui/shade/NotificationPanelViewController$12;-><init>(Lcom/android/systemui/shade/NotificationPanelViewController;Z)V

    invoke-virtual {v11, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, v6, Lcom/android/systemui/shade/NotificationPanelViewController;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScreenOn:Z

    if-nez v0, :cond_18

    iget-boolean v0, v6, Lcom/android/systemui/shade/NotificationPanelViewController;->mForceFlingAnimationForTest:Z

    if-nez v0, :cond_18

    const-wide/16 v0, 0x1

    invoke-virtual {v11, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    :cond_18
    invoke-virtual {v6, v11}, Lcom/android/systemui/shade/NotificationPanelViewController;->setAnimator$1(Landroid/animation/ValueAnimator;)V

    invoke-virtual {v11}, Landroid/animation/ValueAnimator;->start()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->setMotionAborted()V

    return-void
.end method

.method public final gatherState()Ljava/util/ArrayList;
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lcom/android/systemui/logging/PanelScreenShotLogger;->INSTANCE:Lcom/android/systemui/logging/PanelScreenShotLogger;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "NotificationPanelViewController"

    invoke-static {v1, v0}, Lcom/android/systemui/logging/PanelScreenShotLogger;->addHeaderLine(Ljava/lang/String;Ljava/util/ArrayList;)V

    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mClockPositionResult:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;

    iget v1, v1, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->stackScrollerPadding:I

    iget-object v2, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mQsController:Lcom/android/systemui/shade/QuickSettingsControllerImpl;

    invoke-virtual {v2, v1}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->calculatePanelHeightExpanded(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "calculatePanelHeightQsExpanded"

    invoke-static {v0, v3, v1}, Lcom/android/systemui/logging/PanelScreenShotLogger;->addLogItem(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->calculatePanelHeightShade()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "calculatePanelHeightShade"

    invoke-static {v0, v3, v1}, Lcom/android/systemui/logging/PanelScreenShotLogger;->addLogItem(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/Object;)V

    iget v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mHeadsUpInset:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "mHeadsUpInset"

    invoke-static {v0, v3, v1}, Lcom/android/systemui/logging/PanelScreenShotLogger;->addLogItem(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->getKeyguardNotificationStaticPadding()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "getKeyguardNotificationStaticPadding"

    invoke-static {v0, v3, v1}, Lcom/android/systemui/logging/PanelScreenShotLogger;->addLogItem(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/Object;)V

    iget v1, v2, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mMaxExpansionHeight:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "mQsMaxExpansionHeight"

    invoke-static {v0, v3, v1}, Lcom/android/systemui/logging/PanelScreenShotLogger;->addLogItem(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/Object;)V

    iget v1, v2, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mExpansionHeight:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v3, "mQsExpansionHeight"

    invoke-static {v0, v3, v1}, Lcom/android/systemui/logging/PanelScreenShotLogger;->addLogItem(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->computeExpansionFraction()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "computeQsExpansionFraction"

    invoke-static {v0, v2, v1}, Lcom/android/systemui/logging/PanelScreenShotLogger;->addLogItem(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "mTransitioningToFullShadeProgress"

    invoke-static {v0, v2, v1}, Lcom/android/systemui/logging/PanelScreenShotLogger;->addLogItem(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/Object;)V

    iget v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mOverStretchAmount:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "mOverStretchAmount"

    invoke-static {v0, v2, v1}, Lcom/android/systemui/logging/PanelScreenShotLogger;->addLogItem(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/Object;)V

    iget v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mMaxAllowedKeyguardNotifications:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "mMaxAllowedKeyguardNotifications"

    invoke-static {v0, v2, v1}, Lcom/android/systemui/logging/PanelScreenShotLogger;->addLogItem(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mView:Lcom/android/systemui/shade/NotificationPanelView;

    iget v2, v1, Lcom/android/systemui/shade/NotificationPanelView;->mCurrentPanelAlpha:I

    int-to-float v2, v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const-string v3, "currentPanelAlpha"

    invoke-static {v0, v3, v2}, Lcom/android/systemui/logging/PanelScreenShotLogger;->addLogItem(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, "visibility"

    invoke-static {v0, v3, v2}, Lcom/android/systemui/logging/PanelScreenShotLogger;->addLogItem(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "getAlpha"

    invoke-static {v0, v2, v1}, Lcom/android/systemui/logging/PanelScreenShotLogger;->addLogItem(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/Object;)V

    iget v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mQuickQsOffsetHeight:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "mQuickQsOffsetHeight"

    invoke-static {v0, v2, v1}, Lcom/android/systemui/logging/PanelScreenShotLogger;->addLogItem(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/Object;)V

    iget v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mExpandedHeight:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "mExpandedHeight"

    invoke-static {v0, v2, v1}, Lcom/android/systemui/logging/PanelScreenShotLogger;->addLogItem(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "mRecomputedMaxCountNotification"

    iget-object v2, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mRecomputedMaxCountNotification:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/android/systemui/logging/PanelScreenShotLogger;->addLogItem(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "mRecomputedMaxCountCallStack"

    iget-object v2, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mRecomputedMaxCountCallStack:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/android/systemui/logging/PanelScreenShotLogger;->addLogItem(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "mRecomputedReason"

    iget-object v2, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mRecomputedReason:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/android/systemui/logging/PanelScreenShotLogger;->addLogItem(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/Object;)V

    iget v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mBottomMarginY:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "mBottomMarginY"

    invoke-static {v0, v2, v1}, Lcom/android/systemui/logging/PanelScreenShotLogger;->addLogItem(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/Object;)V

    iget p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mAvailableNotifSpace:F

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    const-string v1, "mAvailableNotifSpace"

    invoke-static {v0, v1, p0}, Lcom/android/systemui/logging/PanelScreenShotLogger;->addLogItem(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public final getBarState()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mBarState:I

    return p0
.end method

.method public final getCutoutHeight$1()I
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mView:Lcom/android/systemui/shade/NotificationPanelView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/DisplayCutout;->getBoundingRects()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p0

    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final getFaceWidgetAlpha()F
    .locals 8

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardTouchAnimator:Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->isViRunning()Z

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    check-cast v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mBouncerShowing:Z

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mLockscreenShadeTransitionController:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->getFractionToShade()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->getFractionToShade()F

    move-result v0

    float-to-double v4, v0

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    cmpl-double v2, v4, v6

    if-lez v2, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v0, v2

    :goto_0
    invoke-static {v1, v3, v0}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v0

    goto :goto_3

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mClockPositionAlgorithm:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->isPanelExpanded()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mQsController:Lcom/android/systemui/shade/QuickSettingsControllerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->getExpanded$1()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v0}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->computeExpansionFraction()F

    move-result v0

    float-to-double v4, v0

    const-wide v6, 0x3fd3333333333333L    # 0.3

    cmpl-double v2, v4, v6

    if-lez v2, :cond_3

    move v0, v1

    goto :goto_1

    :cond_3
    const/high16 v2, 0x40400000    # 3.0f

    mul-float/2addr v0, v2

    :goto_1
    invoke-static {v1, v3, v0}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v0

    goto :goto_3

    :cond_4
    move v0, v1

    goto :goto_3

    :cond_5
    :goto_2
    const/high16 v0, -0x40800000    # -1.0f

    :goto_3
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardEditModeController:Lcom/android/systemui/keyguard/KeyguardEditModeController;

    check-cast p0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->getVIRunning()Z

    move-result p0

    if-eqz p0, :cond_6

    goto :goto_4

    :cond_6
    move v1, v0

    :goto_4
    return v1
.end method

.method public final getFalsingThreshold()I
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mPowerInteractor:Lcom/android/systemui/power/domain/interactor/PowerInteractor;

    iget-object v0, v0, Lcom/android/systemui/power/domain/interactor/PowerInteractor;->detailedWakefulness:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v0, v0, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/power/shared/model/WakefulnessModel;

    sget-object v1, Lcom/android/systemui/shade/ShadeViewController;->Companion:Lcom/android/systemui/shade/ShadeViewController$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Lcom/android/systemui/power/shared/model/WakefulnessModel;->isAwake()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/systemui/power/shared/model/WakeSleepReason;->TAP:Lcom/android/systemui/power/shared/model/WakeSleepReason;

    iget-object v0, v0, Lcom/android/systemui/power/shared/model/WakefulnessModel;->lastWakeReason:Lcom/android/systemui/power/shared/model/WakeSleepReason;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/android/systemui/power/shared/model/WakeSleepReason;->GESTURE:Lcom/android/systemui/power/shared/model/WakeSleepReason;

    if-ne v0, v1, :cond_1

    :cond_0
    const/high16 v0, 0x3fc00000    # 1.5f

    goto :goto_0

    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mQsController:Lcom/android/systemui/shade/QuickSettingsControllerImpl;

    iget p0, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mFalsingThreshold:I

    int-to-float p0, p0

    mul-float/2addr p0, v0

    float-to-int p0, p0

    return p0
.end method

.method public final getKeyguardBottomAreaViewController()Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaViewController;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardBottomAreaViewController:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaViewController;

    return-object p0
.end method

.method public final getKeyguardNotificationStaticPadding()I
    .locals 5

    invoke-static {}, Lcom/android/systemui/scene/shared/flag/SceneContainerFlag;->assertInLegacyMode()V

    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->isKeyguardShowing$2()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    sget-object v0, Lcom/android/systemui/keyguard/shared/ComposeLockscreen;->INSTANCE:Lcom/android/systemui/keyguard/shared/ComposeLockscreen;

    invoke-static {}, Lcom/android/systemui/Flags;->composeLockscreen()V

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mClockPositionResult:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;

    if-nez v0, :cond_3

    sget-object v0, Lcom/android/systemui/keyguard/MigrateClocksToBlueprint;->INSTANCE:Lcom/android/systemui/keyguard/MigrateClocksToBlueprint;

    invoke-static {}, Lcom/android/systemui/Flags;->migrateClocksToBlueprint()V

    sget-boolean v0, Lcom/android/systemui/CscRune;->KEYGUARD_DCM_LIVE_UX:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mLockscreenNotificationIconsOnlyController:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->getIconContainer()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->getIconContainer()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    :cond_1
    iget v0, v2, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->stackScrollerPadding:I

    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mMascotViewContainer:Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->updatePosition(II)I

    move-result p0

    add-int/2addr p0, v0

    return p0

    :cond_2
    iget p0, v2, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->stackScrollerPadding:I

    return p0

    :cond_3
    iget v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mHeadsUpInset:I

    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isPulseExpanding()Z

    move-result v1

    if-nez v1, :cond_4

    return v0

    :cond_4
    iget v1, v2, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->stackScrollerPadding:I

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    iget v2, v2, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mPulseHeight:F

    const v3, 0x47c35000    # 100000.0f

    cmpl-float v3, v2, v3

    const/4 v4, 0x0

    if-nez v3, :cond_5

    move v2, v4

    :cond_5
    iget p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIntrinsicPadding:I

    int-to-float p0, p0

    invoke-static {v4, p0, v2}, Landroid/util/MathUtils;->smoothStep(FFF)F

    move-result p0

    invoke-static {v0, v1, p0}, Landroid/util/MathUtils;->lerp(IIF)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method public final getLockIconPadding()F
    .locals 2

    sget-object v0, Lcom/android/systemui/deviceentry/shared/DeviceEntryUdfpsRefactor;->INSTANCE:Lcom/android/systemui/deviceentry/shared/DeviceEntryUdfpsRefactor;

    invoke-static {}, Lcom/android/systemui/Flags;->deviceEntryUdfpsRefactor()V

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardViewConfigurator:Lcom/android/systemui/keyguard/KeyguardViewConfigurator;

    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardViewConfigurator;->keyguardRootView:Lcom/android/systemui/keyguard/ui/view/KeyguardRootView;

    const v1, 0x7f0a0371

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getBottom()I

    move-result p0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    sub-int/2addr p0, v0

    int-to-float p0, p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final getMaxKeyguardNotifications(I)I
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getMaxKeyguardNotifications max: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "NotificationPanelView"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->computeMaxKeyguardNotifications()I

    move-result p0

    return p0
.end method

.method public final getMaxPanelHeight()I
    .locals 7

    iget v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mStatusBarMinHeight:I

    iget v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mBarState:I

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mQsController:Lcom/android/systemui/shade/QuickSettingsControllerImpl;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->getNotGoneChildCount()I

    move-result v1

    if-nez v1, :cond_0

    iget v1, v3, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mMinExpansionHeight:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    :cond_0
    invoke-static {}, Lcom/android/systemui/shade/SecPanelSplitHelper;->isEnabled()Z

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mClockPositionResult:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;

    if-nez v1, :cond_2

    invoke-virtual {v3}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->isExpandImmediate()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v3}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->getExpanded$1()Z

    move-result v1

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mIsExpandingOrCollapsing:Z

    if-eqz v1, :cond_1

    iget-boolean v1, v3, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mExpandedWhenExpandingStarted:Z

    if-nez v1, :cond_2

    :cond_1
    iget-boolean v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mPulsing:Z

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->calculatePanelHeightShade()I

    move-result v1

    goto :goto_0

    :cond_2
    iget v1, v2, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->stackScrollerPadding:I

    invoke-virtual {v3, v1}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->calculatePanelHeightExpanded(I)I

    move-result v1

    :goto_0
    iget-object v4, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mSecNotificationPanelViewController:Lcom/android/systemui/shade/SecNotificationPanelViewController;

    if-eqz v4, :cond_3

    iget v4, v2, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->stackScrollerPadding:I

    invoke-virtual {v3, v4}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->calculatePanelHeightExpanded(I)I

    move-result v4

    iget v5, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mBarState:I

    sget-object v6, Lcom/android/systemui/shade/SecPanelSplitHelper;->Companion:Lcom/android/systemui/shade/SecPanelSplitHelper$Companion;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v6, Lcom/android/systemui/shade/SecPanelSplitHelper;->isEnabled:Z

    if-eqz v6, :cond_3

    if-nez v5, :cond_3

    div-int/lit8 v1, v4, 0x2

    :cond_3
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-nez v0, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "maxPanelHeight is invalid. mOverExpansion: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mOverExpansion:F

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ", calculatePanelHeightQsExpanded: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v2, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->stackScrollerPadding:I

    invoke-virtual {v3, v2}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->calculatePanelHeightExpanded(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", calculatePanelHeightShade: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->calculatePanelHeightShade()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mStatusBarMinHeight = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mStatusBarMinHeight:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", mQsMinExpansionHeight = "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, v3, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mMinExpansionHeight:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "NotificationPanelView"

    invoke-static {v1, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return v0
.end method

.method public getMaxPanelTransitionDistance()I
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->getMaxPanelHeight()I

    move-result p0

    return p0
.end method

.method public final getNotificationStackScrollLayoutController()Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    return-object p0
.end method

.method public final getNotificationTopMargin(Z)I
    .locals 1

    invoke-static {}, Lcom/android/systemui/util/DeviceState;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mResources:Landroid/content/res/Resources;

    const p1, 0x7f0704bf

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->getCutoutHeight$1()I

    move-result p1

    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mResources:Landroid/content/res/Resources;

    const v0, 0x7f0704c0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    add-int/2addr p0, p1

    :goto_0
    return p0

    :cond_1
    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mResources:Landroid/content/res/Resources;

    const p1, 0x7f0704be

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->getCutoutHeight$1()I

    move-result p1

    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mResources:Landroid/content/res/Resources;

    const v0, 0x7f0704bd

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    add-int/2addr p0, p1

    :goto_1
    return p0
.end method

.method public final getShadeFoldAnimator()Lcom/android/systemui/shade/ShadeFoldAnimator;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mShadeFoldAnimator:Lcom/android/systemui/shade/NotificationPanelViewController$ShadeFoldAnimatorImpl;

    return-object p0
.end method

.method public final getShadeHeadsUpTracker$1()Lcom/android/systemui/shade/ShadeHeadsUpTracker;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mShadeHeadsUpTracker:Lcom/android/systemui/shade/NotificationPanelViewController$ShadeHeadsUpTrackerImpl;

    return-object p0
.end method

.method public getStatusBarStateController()Lcom/android/systemui/plugins/statusbar/StatusBarStateController;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    return-object p0
.end method

.method public getStatusBarStateListener()Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mStatusBarStateListener:Lcom/android/systemui/shade/NotificationPanelViewController$StatusBarStateListener;

    return-object p0
.end method

.method public final getTouchAnimator()Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardTouchAnimator:Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;

    return-object p0
.end method

.method public getTouchHandler()Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mTouchHandler:Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;

    return-object p0
.end method

.method public final getTouchSlop$1(Landroid/view/MotionEvent;)F
    .locals 1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getClassification()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mTouchSlop:I

    int-to-float p1, p1

    iget p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mSlopMultiplier:F

    mul-float/2addr p1, p0

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mTouchSlop:I

    int-to-float p1, p0

    :goto_0
    return p1
.end method

.method public getVerticalSpaceForLockscreenNotifications()F
    .locals 7

    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->getLockIconPadding()F

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mView:Lcom/android/systemui/shade/NotificationPanelView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0704e3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const/16 v2, 0xa

    :goto_0
    iput v2, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mIndicationBottomPadding:I

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardNotificationBottomPadding:F

    iget-object v2, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mClockPositionAlgorithm:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;

    iget-object v4, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    iget-object v5, v4, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getTop()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v2, v5}, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->getLockscreenNotifPadding(F)F

    move-result v2

    iput v2, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardNotificationTopPadding:F

    sget-boolean v5, Lcom/android/systemui/CscRune;->KEYGUARD_DCM_LIVE_UX:Z

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mMascotViewContainer:Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v6

    if-nez v6, :cond_1

    iget v3, v5, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->mascotHeight:I

    iget v6, v5, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->mascotTopMarin:I

    add-int/2addr v3, v6

    iget v5, v5, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->mascotBottomMarin:I

    add-int/2addr v3, v5

    :cond_1
    iget-object v5, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mClockPositionAlgorithm:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;

    instance-of v6, v5, Lcom/android/systemui/facewidget/plugin/FaceWidgetPositionAlgorithmWrapper;

    if-eqz v6, :cond_2

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->getBottomMarginY()I

    move-result v0

    goto :goto_1

    :cond_2
    float-to-int v0, v0

    :goto_1
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    iget-object v4, v4, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getHeight()I

    iput v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mBottomMarginY:I

    int-to-float v1, v1

    sub-float/2addr v1, v2

    int-to-float v0, v0

    sub-float/2addr v1, v0

    sget-boolean v0, Lcom/android/systemui/CscRune;->KEYGUARD_DCM_LIVE_UX:Z

    if-eqz v0, :cond_3

    int-to-float v0, v3

    sub-float/2addr v1, v0

    :cond_3
    iput v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mAvailableNotifSpace:F

    return v1
.end method

.method public getVerticalSpaceForLockscreenShelf()F
    .locals 4

    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->getLockIconPadding()F

    move-result v0

    iget v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mIndicationBottomPadding:I

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    const/4 v1, 0x0

    cmpl-float v3, v0, v1

    if-lez v3, :cond_1

    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    :goto_0
    int-to-float p0, v2

    invoke-static {p0, v0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    return p0

    :cond_1
    return v1
.end method

.method public final goToLockedShade()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "goToLockedShade mCentralSurfaces: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NotificationPanelView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mLockscreenShadeTransitionController:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->goToLockedShade(Landroid/view/View;Z)V

    :cond_0
    return-void
.end method

.method public final handleExternalInterceptTouch(Landroid/view/MotionEvent;)Z
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mUseExternalTouch:Z

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mTouchHandler:Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;

    invoke-virtual {v0, p1}, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mUseExternalTouch:Z

    return p1

    :catchall_0
    move-exception p1

    iput-boolean v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mUseExternalTouch:Z

    throw p1
.end method

.method public final handleExternalTouch(Landroid/view/MotionEvent;)Z
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mUseExternalTouch:Z

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mTouchHandler:Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;

    invoke-virtual {v0, p1}, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mUseExternalTouch:Z

    return p1

    :catchall_0
    move-exception p1

    iput-boolean v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mUseExternalTouch:Z

    throw p1
.end method

.method public final initBottomArea()V
    .locals 9

    sget-object v0, Lcom/android/systemui/keyguard/KeyguardBottomAreaRefactor;->INSTANCE:Lcom/android/systemui/keyguard/KeyguardBottomAreaRefactor;

    invoke-static {}, Lcom/android/systemui/Flags;->keyguardBottomAreaRefactor()V

    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    new-instance v5, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda8;

    invoke-direct {v5, p0}, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda8;-><init>(Lcom/android/systemui/shade/NotificationPanelViewController;)V

    iget-object v4, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mLockIconViewController:Lcom/android/keyguard/SecLockIconViewController;

    iget-object v6, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mVibratorHelper:Lcom/android/systemui/statusbar/VibratorHelper;

    iget-object v2, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardBottomAreaViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBottomAreaViewModel;

    iget-object v3, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    iget-object v7, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    iget-object v8, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mPluginLockStarManagerLazy:Ldagger/Lazy;

    invoke-virtual/range {v1 .. v8}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->init(Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBottomAreaViewModel;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/keyguard/SecLockIconViewController;Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$MessageDisplayer;Lcom/android/systemui/statusbar/VibratorHelper;Lcom/android/systemui/plugins/ActivityStarter;Ldagger/Lazy;)V

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mSecAffordanceHelper:Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper;

    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mView:Lcom/android/systemui/shade/NotificationPanelView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    check-cast v2, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;

    iget-object v3, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardAffordanceHelperCallback:Lcom/android/systemui/shade/NotificationPanelViewController$KeyguardAffordanceHelperCallback;

    invoke-direct {v0, v3, v1, v2}, Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper$Callback;Landroid/content/Context;Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;)V

    iput-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mSecAffordanceHelper:Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper;

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardBottomAreaViewController:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaViewController;

    iget-boolean p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mUserSetupComplete:Z

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaViewController;->setUserSetupComplete$1(Z)V

    :cond_0
    return-void
.end method

.method public final initDependencies(Lcom/android/systemui/statusbar/phone/CentralSurfaces;Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda29;Lcom/android/systemui/statusbar/policy/HeadsUpManager;)V
    .locals 5

    iput-object p3, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    sget-object v0, Lcom/android/systemui/statusbar/notification/shared/NotificationsHeadsUpRefactor;->INSTANCE:Lcom/android/systemui/statusbar/notification/shared/NotificationsHeadsUpRefactor;

    invoke-static {}, Lcom/android/systemui/Flags;->notificationsHeadsUpRefactor()V

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mOnHeadsUpChangedListener:Lcom/android/systemui/shade/NotificationPanelViewController$ShadeHeadsUpChangedListener;

    check-cast v0, Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager;->addListener(Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;)V

    new-instance v0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;

    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    iget-object v2, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mHeadsUpCallback:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$13;

    new-instance v3, Lcom/android/systemui/shade/NotificationPanelViewController$HeadsUpNotificationViewControllerImpl;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/systemui/shade/NotificationPanelViewController$HeadsUpNotificationViewControllerImpl;-><init>(Lcom/android/systemui/shade/NotificationPanelViewController;I)V

    invoke-direct {v0, p3, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;-><init>(Lcom/android/systemui/statusbar/policy/HeadsUpManager;Lcom/android/internal/statusbar/IStatusBarService;Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper$Callback;Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper$HeadsUpNotificationViewController;)V

    iput-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mHeadsUpTouchHelper:Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;

    iput-object p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mGestureRecorder:Lcom/android/systemui/statusbar/GestureRecorder;

    iput-object p2, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mHideExpandedRunnable:Ljava/lang/Runnable;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/systemui/shade/NotificationPanelViewController;->updateMaxDisplayedNotifications(Z)V

    return-void
.end method

.method public final instantCollapse()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mQuickPanelLogger:Lcom/android/systemui/log/QuickPanelLogger;

    if-eqz v0, :cond_0

    const-string v1, "instantCollapse"

    invoke-virtual {v0, v1}, Lcom/android/systemui/log/QuickPanelLogger;->logPanelState(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->abortAnimations()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/shade/NotificationPanelViewController;->setExpandedFraction(F)V

    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->setMotionAborted()V

    iget-boolean v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mExpanding:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->notifyExpandingFinished()V

    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mInstantExpanding:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mInstantExpanding:Z

    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->updateExpansionAndVisibility()V

    :cond_2
    return-void
.end method

.method public isClosing()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mShadeRepository:Lcom/android/systemui/shade/data/repository/ShadeRepository;

    check-cast p0, Lcom/android/systemui/shade/data/repository/ShadeRepositoryImpl;

    iget-object p0, p0, Lcom/android/systemui/shade/data/repository/ShadeRepositoryImpl;->legacyIsClosing:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object p0, p0, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {p0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final isCollapsing()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->isClosing()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->isLaunchingActivity$1()Z

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

.method public final isExpanded()Z
    .locals 2

    iget v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mExpandedFraction:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mInstantExpanding:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->isPanelVisibleBecauseOfHeadsUp()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->isTracking()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mHeightAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mUnlockedScreenOffAnimationController:Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;->isAnimationPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mIsSpringBackAnimation:Z

    if-nez p0, :cond_0

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

.method public final isExpandingOrCollapsing()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mQsController:Lcom/android/systemui/shade/QuickSettingsControllerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->computeExpansionFraction()F

    move-result v0

    iget-boolean p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mIsExpandingOrCollapsing:Z

    if-nez p0, :cond_1

    const/4 p0, 0x0

    cmpg-float p0, p0, v0

    if-gez p0, :cond_0

    const/high16 p0, 0x3f800000    # 1.0f

    cmpg-float p0, v0, p0

    if-gez p0, :cond_0

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

.method public isFlinging()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mIsFlinging:Z

    return p0
.end method

.method public final isFullyCollapsed()Z
    .locals 1

    iget p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mExpandedFraction:F

    const/4 v0, 0x0

    cmpg-float p0, p0, v0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isFullyExpanded()Z
    .locals 1

    iget v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mExpandedHeight:F

    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->getMaxPanelTransitionDistance()I

    move-result p0

    int-to-float p0, p0

    cmpl-float p0, v0, p0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isInContentBounds$1(FF)Z
    .locals 4

    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    iget v1, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mSidePaddings:I

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getX()F

    move-result v0

    add-float/2addr v0, v1

    sub-float v2, p1, v0

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v3, v2, p2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->isBelowLastNotification(FF)Z

    move-result p2

    if-nez p2, :cond_0

    cmpg-float p2, v0, p1

    if-gez p2, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result p0

    int-to-float p0, p0

    add-float/2addr p0, v0

    const/high16 p2, 0x40000000    # 2.0f

    mul-float/2addr v1, p2

    sub-float/2addr p0, v1

    cmpg-float p0, p1, p0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isInFaceWidgetContainer(Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    iget-boolean p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mIsFaceWidgetOnTouchDown:Z

    iput-boolean v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mIsFaceWidgetOnTouchDown:Z

    return p1

    :cond_0
    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardStatusViewController:Lcom/android/keyguard/KeyguardStatusViewController;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget-object v0, v0, Lcom/android/keyguard/KeyguardStatusViewController;->mKeyguardStatusBase:Lcom/android/systemui/facewidget/plugin/FaceWidgetContainerWrapper;

    if-nez v0, :cond_2

    :cond_1
    move p1, v1

    goto :goto_0

    :cond_2
    iget-object v0, v0, Lcom/android/systemui/facewidget/plugin/FaceWidgetContainerWrapper;->mPluginKeyguardStatusView:Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardStatusView;

    if-eqz v0, :cond_1

    invoke-interface {v0, v3, p1}, Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardStatusView;->isInContentBounds(FF)Z

    move-result p1

    :goto_0
    if-eqz p1, :cond_3

    iput-boolean v2, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mIsFaceWidgetOnTouchDown:Z

    goto :goto_1

    :cond_3
    iput-boolean v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mIsFaceWidgetOnTouchDown:Z

    :cond_4
    :goto_1
    iget-boolean p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mIsFaceWidgetOnTouchDown:Z

    return p0
.end method

.method public final isInLockStarContainer(Landroid/view/MotionEvent;)Z
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mPluginLockStarManagerLazy:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    iget-boolean p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mIsLockStarOnTouchDown:Z

    iput-boolean v2, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mIsLockStarOnTouchDown:Z

    return p1

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    if-nez v1, :cond_3

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/lockstar/PluginLockStarManager;

    invoke-virtual {v0, p1}, Lcom/android/systemui/lockstar/PluginLockStarManager;->isTouchable(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_2

    iput-boolean v3, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mIsLockStarOnTouchDown:Z

    goto :goto_0

    :cond_2
    iput-boolean v2, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mIsLockStarOnTouchDown:Z

    :cond_3
    :goto_0
    iget-boolean p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mIsLockStarOnTouchDown:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "isInLockStarContainer() error "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "NotificationPanelView"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public final isKeyguardShowing$2()Z
    .locals 1

    iget p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mBarState:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isLaunchTransitionFinished()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mIsLaunchTransitionFinished:Z

    return p0
.end method

.method public final isLaunchTransitionRunning()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mIsLaunchTransitionRunning:Z

    return p0
.end method

.method public final isLaunchingActivity$1()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mShadeAnimationInteractor:Lcom/android/systemui/shade/domain/interactor/ShadeAnimationInteractor;

    iget-object p0, p0, Lcom/android/systemui/shade/domain/interactor/ShadeAnimationInteractor;->isLaunchingActivity:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object p0, p0, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {p0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final isNoUnlockNeed(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardBottomAreaViewController:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaViewController;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/android/systemui/pluginlock/PluginLockBottomAreaCallback;->isNoUnlockNeed(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isOnKeyguard$1()Z
    .locals 1

    iget p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mBarState:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isPanelExpanded()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mShadeRepository:Lcom/android/systemui/shade/data/repository/ShadeRepository;

    check-cast p0, Lcom/android/systemui/shade/data/repository/ShadeRepositoryImpl;

    iget-object p0, p0, Lcom/android/systemui/shade/data/repository/ShadeRepositoryImpl;->legacyExpandedOrAwaitingInputTransfer:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object p0, p0, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {p0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final isPanelVisibleBecauseOfHeadsUp()Z
    .locals 1

    sget-object v0, Lcom/android/systemui/statusbar/notification/shared/NotificationsHeadsUpRefactor;->INSTANCE:Lcom/android/systemui/statusbar/notification/shared/NotificationsHeadsUpRefactor;

    invoke-static {}, Lcom/android/systemui/Flags;->notificationsHeadsUpRefactor()V

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    if-eqz v0, :cond_0

    check-cast v0, Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager;->mHasPinnedNotification:Z

    if-nez v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mHeadsUpAnimatingAway:Z

    if-eqz v0, :cond_2

    :cond_1
    iget p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mBarState:I

    if-nez p0, :cond_2

    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isSecure()Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "isSecure mUpdateMonitor: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NotificationPanelView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isSecure()Z

    move-result p0

    return p0
.end method

.method public final isShadeFullyExpanded()Z
    .locals 3

    iget v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mBarState:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->isFullyExpanded()Z

    move-result p0

    return p0

    :cond_0
    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    return v2

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mQsController:Lcom/android/systemui/shade/QuickSettingsControllerImpl;

    invoke-virtual {p0}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->computeExpansionFraction()F

    move-result p0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p0, p0, v0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public final isTouchOnEmptyArea(Landroid/view/MotionEvent;)Z
    .locals 11

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mPluginLockStarManagerLazy:Ldagger/Lazy;

    const-string v1, "NotificationPanelView"

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardStatusViewController:Lcom/android/keyguard/KeyguardStatusViewController;

    iget-object v4, v4, Lcom/android/keyguard/KeyguardStatusViewController;->mKeyguardStatusBase:Lcom/android/systemui/facewidget/plugin/FaceWidgetContainerWrapper;

    const/4 v5, 0x0

    if-nez v4, :cond_1

    :cond_0
    move v4, v5

    goto :goto_0

    :cond_1
    iget-object v4, v4, Lcom/android/systemui/facewidget/plugin/FaceWidgetContainerWrapper;->mPluginKeyguardStatusView:Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardStatusView;

    if-eqz v4, :cond_0

    invoke-interface {v4, v2, v3}, Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardStatusView;->isInContentBounds(FF)Z

    move-result v4

    :goto_0
    if-eqz v4, :cond_2

    return v5

    :cond_2
    iget-object v4, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    invoke-virtual {v4, v5}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId(Z)I

    move-result v4

    iget-object v6, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v6, v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserHasTrust(I)Z

    move-result v4

    if-eqz v4, :cond_5

    :cond_3
    iget-object v4, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mView:Lcom/android/systemui/shade/NotificationPanelView;

    const v6, 0x7f0a0aaa

    invoke-virtual {v4, v6}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {v4}, Landroid/view/View;->getX()F

    move-result v6

    invoke-virtual {v4}, Landroid/view/View;->getY()F

    move-result v7

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-nez v8, :cond_5

    cmpg-float v8, v6, v2

    if-gez v8, :cond_5

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v6, v8

    cmpg-float v6, v2, v6

    if-gez v6, :cond_5

    cmpg-float v6, v7, v3

    if-gez v6, :cond_5

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v7, v4

    cmpg-float v4, v3, v7

    if-gez v4, :cond_5

    return v5

    :cond_5
    :goto_1
    sget-boolean v4, Lcom/android/systemui/CscRune;->KEYGUARD_DCM_LIVE_UX:Z

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mMascotViewContainer:Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v6

    if-nez v6, :cond_6

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getX()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getY()F

    move-result v7

    float-to-int v7, v7

    int-to-float v8, v6

    cmpg-float v8, v8, v2

    if-gez v8, :cond_6

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v8

    add-int/2addr v8, v6

    int-to-float v6, v8

    cmpg-float v6, v2, v6

    if-gez v6, :cond_6

    int-to-float v6, v7

    cmpg-float v6, v6, v3

    if-gez v6, :cond_6

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v4

    add-int/2addr v4, v7

    int-to-float v4, v4

    cmpg-float v4, v3, v4

    if-gez v4, :cond_6

    return v5

    :cond_6
    :try_start_0
    iget-boolean v4, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mLockStarEnabled:Z

    if-eqz v4, :cond_7

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_7

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/lockstar/PluginLockStarManager;

    invoke-virtual {v0, p1}, Lcom/android/systemui/lockstar/PluginLockStarManager;->isTouchable(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_7

    const-string p1, "isTouchOnEmptyArea on lockstar item"

    new-array v0, v5, [Ljava/lang/Object;

    invoke-static {v1, p1, v0}, Lcom/android/systemui/util/LogUtil;->dm(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v5

    :catchall_0
    const-string p1, "isTouchOnEmptyArea() error in Lockstar"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    iget-object p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mClockPositionResult:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;

    iget p1, p1, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->clockY:I

    int-to-float p1, p1

    cmpg-float p1, v3, p1

    const/4 v0, 0x1

    if-gez p1, :cond_8

    move p1, v0

    goto :goto_2

    :cond_8
    move p1, v5

    :goto_2
    iget-boolean v4, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mLockStarEnabled:Z

    if-eqz v4, :cond_9

    const-string p1, "isTouchOnEmptyArea belowClock false"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v1, p1, v4}, Lcom/android/systemui/util/LogUtil;->dm(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move p1, v5

    :cond_9
    sget-object v4, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v6, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v4, v6}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v4}, Lcom/android/systemui/util/SettingsHelper;->isShowNotificationOnKeyguard()Z

    move-result v4

    if-nez v4, :cond_a

    const-string p0, "isTouchOnEmptyArea returns true"

    new-array p1, v5, [Ljava/lang/Object;

    invoke-static {v1, p0, p1}, Lcom/android/systemui/util/LogUtil;->dm(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v0

    :cond_a
    iget-object v4, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    iget-object v6, v4, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    sub-int/2addr v6, v0

    move v7, v0

    :goto_3
    if-ltz v6, :cond_c

    iget-object v8, v4, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v8, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    instance-of v9, v8, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v9, :cond_b

    check-cast v8, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v9

    const/16 v10, 0x8

    if-eq v9, v10, :cond_b

    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getY()F

    move-result v8

    cmpg-float v8, v8, v3

    if-gez v8, :cond_b

    move v7, v5

    :cond_b
    add-int/lit8 v6, v6, -0x1

    goto :goto_3

    :cond_c
    if-eqz v7, :cond_d

    if-nez p1, :cond_d

    move v6, v0

    goto :goto_4

    :cond_d
    move v6, v5

    :goto_4
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->getNotGoneChildCount()I

    move-result v4

    invoke-virtual {p0, v2, v3}, Lcom/android/systemui/shade/NotificationPanelViewController;->isInContentBounds$1(FF)Z

    move-result p0

    if-lez v4, :cond_e

    if-eqz p0, :cond_e

    if-nez p1, :cond_e

    if-eqz v6, :cond_f

    :cond_e
    move v5, v0

    :cond_f
    if-nez v5, :cond_10

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    filled-new-array {p1, v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "isTouchOnEmptyArea return %s: notGoneChildCount() %s, isInContentBounds %s"

    invoke-static {v1, p1, p0}, Lcom/android/systemui/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_10
    return v5
.end method

.method public final isTouchableArea(Landroid/view/MotionEvent;)Z
    .locals 1

    sget-boolean v0, Lcom/android/systemui/CscRune;->LOCKUI_BOTTOM_USIM_TEXT:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->isInEmergencyButtonArea(Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isTracking()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mShadeRepository:Lcom/android/systemui/shade/data/repository/ShadeRepository;

    check-cast p0, Lcom/android/systemui/shade/data/repository/ShadeRepositoryImpl;

    iget-object p0, p0, Lcom/android/systemui/shade/data/repository/ShadeRepositoryImpl;->legacyShadeTracking:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object p0, p0, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {p0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final isViewEnabled()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mView:Lcom/android/systemui/shade/NotificationPanelView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isEnabled()Z

    move-result p0

    return p0
.end method

.method public loadDimens()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mView:Lcom/android/systemui/shade/NotificationPanelView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    iput v2, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mTouchSlop:I

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledAmbiguousGestureMultiplier()F

    move-result v1

    iput v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mSlopMultiplier:F

    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f070466

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mHintDistance:F

    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f070c84

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mPanelFlingOvershootAmount:F

    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mFlingAnimationUtilsBuilder:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/animation/FlingAnimationUtils$Builder;

    const v2, 0x3ecccccd    # 0.4f

    iput v2, v1, Lcom/android/wm/shell/animation/FlingAnimationUtils$Builder;->mMaxLengthSeconds:F

    invoke-virtual {v1}, Lcom/android/wm/shell/animation/FlingAnimationUtils$Builder;->build()Lcom/android/wm/shell/animation/FlingAnimationUtils;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mFlingAnimationUtils:Lcom/android/wm/shell/animation/FlingAnimationUtils;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/policy/SystemBarUtils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mStatusBarMinHeight:I

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/util/Utils;->getStatusBarHeaderHeightKeyguard(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mStatusBarHeaderHeightKeyguard:I

    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mClockPositionAlgorithm:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->loadDimens(Landroid/content/Context;Landroid/content/res/Resources;)V

    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0704b0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mIndicationBottomPadding:I

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/policy/SystemBarUtils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f070459

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mHeadsUpInset:I

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f070d13

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mMaxOverscrollAmountForPulse:I

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f07176c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mUdfpsMaxYBurnInOffset:F

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f07145e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mSplitShadeScrimTransitionDistance:I

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f070399

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mDreamingToLockscreenTransitionTranslationY:I

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f070766

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mLockscreenToDreamingTransitionTranslationY:I

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f070440

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mGoneToDreamingTransitionTranslationY:I

    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mQsController:Lcom/android/systemui/shade/QuickSettingsControllerImpl;

    iget-object v0, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mPanelView:Lcom/android/systemui/shade/NotificationPanelView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    iput v2, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mTouchSlop:I

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledAmbiguousGestureMultiplier()F

    move-result v1

    iput v1, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mSlopMultiplier:F

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/policy/SystemBarUtils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mStatusBarMinHeight:I

    iget-object v1, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f070b9f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mScrimCornerRadius:I

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/policy/ScreenDecorationsUtils;->getWindowCornerRadius(Landroid/content/Context;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mScreenCornerRadius:I

    iget-object v0, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f070da8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mFalsingThreshold:I

    iget-object v0, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f070bb9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mLockscreenNotificationPadding:I

    iget-object v0, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f070761

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mDistanceForFullShadeTransition:I

    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mResources:Landroid/content/res/Resources;

    const v0, 0x7f07102f

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mResources:Landroid/content/res/Resources;

    const v0, 0x7f07102e

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    :goto_0
    return-void
.end method

.method public final makeExpandedInvisible()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mView:Lcom/android/systemui/shade/NotificationPanelView;

    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mHideExpandedRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public maybeAnimateBottomAreaAlpha()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mBottomAreaShadeAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    iget v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mBarState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mBottomAreaShadeAlphaAnimator:Landroid/animation/ValueAnimator;

    iget v2, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mBottomAreaShadeAlpha:F

    new-array v1, v1, [F

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mBottomAreaShadeAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mBottomAreaShadeAlpha:F

    :goto_0
    return-void
.end method

.method public final maybeVibrateOnOpening(Z)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mVibrateOnOpening:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mBarState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mHasVibratedOnOpen:Z

    if-nez p1, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mVibratorHelper:Lcom/android/systemui/statusbar/VibratorHelper;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mView:Lcom/android/systemui/shade/NotificationPanelView;

    const/16 v0, 0xc

    invoke-virtual {p1, v0}, Landroid/view/View;->performHapticFeedback(I)Z

    iput-boolean v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mHasVibratedOnOpen:Z

    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mShadeLog:Lcom/android/systemui/shade/ShadeLogger;

    const-string p1, "Vibrating on opening, mHasVibratedOnOpen=true"

    invoke-virtual {p0, p1}, Lcom/android/systemui/shade/ShadeLogger;->v(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final notifyExpandingFinished()V
    .locals 8

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->endClosing()V

    iget-boolean v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mExpanding:Z

    if-eqz v1, :cond_15

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mExpanding:Z

    sget v2, Lcom/android/systemui/scene/shared/flag/SceneContainerFlag;->$r8$clinit:I

    invoke-static {}, Lcom/android/systemui/Flags;->sceneContainer()V

    iget-object v2, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/systemui/scene/shared/flag/SceneContainerFlag;->assertInLegacyMode()V

    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    iput-boolean v1, v2, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mCheckForLeavebehind:Z

    iput-boolean v1, v2, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIsExpansionChanging:Z

    iget-object v3, v2, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    iput-boolean v1, v3, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mExpansionChanging:Z

    iget-boolean v3, v2, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    if-nez v3, :cond_4

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->resetScrollPosition()V

    iget-object v3, v2, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mResetUserExpandedStatesRunnable:Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    iget-object v3, v2, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mSwipeCancelledView:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->clear()V

    const-string v3, "clearTemporaryViews"

    invoke-virtual {v2, v2, v3}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->clearTemporaryViewsInGroup(Landroid/view/ViewGroup;Ljava/lang/String;)V

    move v3, v1

    :goto_0
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_1

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    instance-of v5, v4, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v5, :cond_0

    check-cast v4, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-object v4, v4, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;

    const-string v5, "clearTemporaryViewsInGroup(row.getChildrenContainer())"

    invoke-virtual {v2, v4, v5}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->clearTemporaryViewsInGroup(Landroid/view/ViewGroup;Ljava/lang/String;)V

    :cond_0
    add-int/2addr v3, v0

    goto :goto_0

    :cond_1
    move v3, v1

    :goto_1
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_3

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    instance-of v5, v4, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v5, :cond_2

    check-cast v4, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v4, v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setUserLocked(Z)V

    :cond_2
    add-int/2addr v3, v0

    goto :goto_1

    :cond_3
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->resetAllSwipeState()V

    :cond_4
    iget v3, v2, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mLastSentExpandedHeight:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_5

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->clearHeadsUpDisappearRunning()V

    :cond_5
    iget-object v2, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    check-cast v2, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    iget-boolean v3, v2, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mReleaseOnExpandFinish:Z

    if-eqz v3, :cond_6

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager;->releaseAllImmediately()V

    iput-boolean v1, v2, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mReleaseOnExpandFinish:Z

    goto :goto_3

    :cond_6
    iget-object v3, v2, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mEntriesToRemoveAfterExpand:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_7
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object v6, v5, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    invoke-virtual {v2, v6}, Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager;->isHeadsUpEntry(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    const-string v6, "onExpandingFinished"

    iget-object v5, v5, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager;->removeEntry(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_8
    :goto_3
    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mEntriesToRemoveAfterExpand:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    iget-object v2, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mConversationNotificationManager:Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;

    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->isFullyCollapsed()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;->onNotificationPanelExpandStateChanged(Z)V

    iput-boolean v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mIsExpandingOrCollapsing:Z

    sget-boolean v2, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->DEBUG_DISABLE_SHOW_NEW_NOTIF_ONLY:Z

    iget-object v3, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mQsController:Lcom/android/systemui/shade/QuickSettingsControllerImpl;

    if-nez v2, :cond_a

    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->isPanelExpanded()Z

    move-result v2

    if-eqz v2, :cond_a

    iget v2, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mBarState:I

    if-eq v2, v0, :cond_a

    invoke-static {}, Lcom/android/systemui/shade/SecPanelSplitHelper;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mPanelSplitHelper:Lcom/android/systemui/shade/SecPanelSplitHelper;

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Lcom/android/systemui/shade/SecPanelSplitHelper;->isShadeState()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->updateEntrySetRead()V

    goto :goto_4

    :cond_9
    invoke-virtual {v3}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->getExpanded$1()Z

    move-result v2

    if-nez v2, :cond_a

    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->updateEntrySetRead()V

    :cond_a
    :goto_4
    iget-object v2, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mMediaHierarchyManager:Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;

    iget-boolean v5, v2, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->collapsingShadeFromQS:Z

    if-eqz v5, :cond_b

    iput-boolean v1, v2, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->collapsingShadeFromQS:Z

    const/4 v5, 0x2

    invoke-static {v2, v0, v5}, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->updateDesiredLocation$default(Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;ZI)V

    :cond_b
    invoke-virtual {v3}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->getExpanded$1()Z

    move-result v5

    invoke-virtual {v2, v5}, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->setQsExpanded(Z)V

    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->isFullyCollapsed()Z

    move-result v2

    iget-object v5, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mView:Lcom/android/systemui/shade/NotificationPanelView;

    if-eqz v2, :cond_c

    new-instance v2, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda37;

    const/4 v6, 0x6

    invoke-direct {v2, p0, v6}, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda37;-><init>(Ljava/lang/Object;I)V

    invoke-static {v2}, Lcom/android/systemui/DejankUtils;->postAfterTraversal(Ljava/lang/Runnable;)V

    new-instance v2, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda37;

    const/4 v6, 0x7

    invoke-direct {v2, p0, v6}, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda37;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v5, v2}, Landroid/widget/FrameLayout;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_5

    :cond_c
    invoke-virtual {p0, v0}, Lcom/android/systemui/shade/NotificationPanelViewController;->setListening$3(Z)V

    :goto_5
    iget v2, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mBarState:I

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mShadeLog:Lcom/android/systemui/shade/ShadeLogger;

    const-string v6, "onExpandingFinished called"

    invoke-virtual {v2, v6}, Lcom/android/systemui/shade/ShadeLogger;->d(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->setExpandImmediate(Z)V

    :cond_d
    invoke-virtual {p0, v1}, Lcom/android/systemui/shade/NotificationPanelViewController;->setShowShelfOnly(Z)V

    iput-boolean v1, v3, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mTwoFingerExpandPossible:Z

    iget-object v2, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mShadeHeadsUpTracker:Lcom/android/systemui/shade/NotificationPanelViewController$ShadeHeadsUpTrackerImpl;

    iget-object v2, v2, Lcom/android/systemui/shade/NotificationPanelViewController$ShadeHeadsUpTrackerImpl;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/android/systemui/shade/NotificationPanelViewController;->mTrackedHeadsUpNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move v6, v1

    :goto_6
    iget-object v7, v2, Lcom/android/systemui/shade/NotificationPanelViewController;->mTrackingHeadsUpListeners:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_e

    iget-object v7, v2, Lcom/android/systemui/shade/NotificationPanelViewController;->mTrackingHeadsUpListeners:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/function/Consumer;

    invoke-interface {v7, v3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/2addr v6, v0

    goto :goto_6

    :cond_e
    iput-boolean v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mExpandingFromHeadsUp:Z

    invoke-virtual {p0, v4}, Lcom/android/systemui/shade/NotificationPanelViewController;->setPanelScrimMinFraction(F)V

    const/high16 v0, -0x40800000    # -1.0f

    invoke-virtual {p0, v0}, Lcom/android/systemui/shade/NotificationPanelViewController;->setKeyguardStatusBarAlpha(F)V

    invoke-virtual {p0, v1}, Lcom/android/systemui/shade/NotificationPanelViewController;->setExpandSettingsPanel$1(Z)V

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mSecNotificationPanelViewController:Lcom/android/systemui/shade/SecNotificationPanelViewController;

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->isKeyguardShowing$2()Z

    move-result v2

    iget-object v4, v0, Lcom/android/systemui/shade/SecNotificationPanelViewController;->secQuickSettingsControllerImpl:Lcom/android/systemui/shade/SecQuickSettingsControllerImpl;

    if-eqz v4, :cond_13

    iget-object v6, v0, Lcom/android/systemui/shade/SecNotificationPanelViewController;->shadeRepository:Lcom/android/systemui/shade/data/repository/ShadeRepository;

    check-cast v6, Lcom/android/systemui/shade/data/repository/ShadeRepositoryImpl;

    iget-object v6, v6, Lcom/android/systemui/shade/data/repository/ShadeRepositoryImpl;->legacyExpandedOrAwaitingInputTransfer:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v6, v6, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {v6}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_11

    iget-object v4, v4, Lcom/android/systemui/shade/SecQuickSettingsControllerImpl;->qsSupplier:Ljava/util/function/Supplier;

    invoke-interface {v4}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v4

    instance-of v7, v4, Lcom/android/systemui/qs/QSFragmentLegacy;

    if-eqz v7, :cond_f

    check-cast v4, Lcom/android/systemui/qs/QSFragmentLegacy;

    goto :goto_7

    :cond_f
    move-object v4, v3

    :goto_7
    if-eqz v4, :cond_10

    iget-object v4, v4, Lcom/android/systemui/qs/QSFragmentLegacy;->mQsImpl:Lcom/android/systemui/qs/QSImpl;

    if-eqz v4, :cond_10

    iget-object v4, v4, Lcom/android/systemui/qs/QSImpl;->mSecQSImpl:Lcom/android/systemui/qs/SecQSImpl;

    if-eqz v4, :cond_10

    iget-object v4, v4, Lcom/android/systemui/qs/SecQSImpl;->secQSImplAnimatorManager:Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager;

    if-eqz v4, :cond_10

    invoke-virtual {v4}, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager;->onPanelClosed$1()V

    :cond_10
    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->setMotionAborted()V

    :cond_11
    sget-object v4, Lcom/android/systemui/shade/SecPanelSplitHelper;->Companion:Lcom/android/systemui/shade/SecPanelSplitHelper$Companion;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v4, Lcom/android/systemui/shade/SecPanelSplitHelper;->isEnabled:Z

    if-nez v4, :cond_13

    if-eqz v2, :cond_12

    goto :goto_8

    :cond_12
    if-eqz v6, :cond_13

    iget-object v2, v0, Lcom/android/systemui/shade/SecNotificationPanelViewController;->quickSettingsController:Lcom/android/systemui/shade/QuickSettingsControllerImpl;

    invoke-virtual {v2}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->getExpanded$1()Z

    move-result v2

    if-eqz v2, :cond_13

    iget-object v0, v0, Lcom/android/systemui/shade/SecNotificationPanelViewController;->panelSAStatusLogInteractor:Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor;

    if-eqz v0, :cond_13

    iget-object v0, v0, Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor;->repository:Lcom/android/systemui/shade/data/repository/SecPanelSAStatusLogRepository;

    iget-object v0, v0, Lcom/android/systemui/shade/data/repository/SecPanelSAStatusLogRepository;->_openQuickPanelFrom2Depth:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    const-wide/16 v6, 0x1

    invoke-static {v2, v6, v7, v0, v3}, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/Number;JLkotlinx/coroutines/flow/StateFlowImpl;Ljava/lang/Object;)V

    :cond_13
    :goto_8
    iput-boolean v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mHeadsUpVisibleOnDown:Z

    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->isPanelExpanded()Z

    move-result v0

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getRootView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v2

    iget p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mBarState:I

    if-nez p0, :cond_14

    move v1, v0

    :cond_14
    new-instance p0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {p0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    invoke-virtual {v2, p0, v1}, Landroid/view/ViewRootImpl;->setDisableSuperHdr(Landroid/view/SurfaceControl$Transaction;Z)V

    :cond_15
    return-void
.end method

.method public notifyExpandingStarted()V
    .locals 5

    iget-boolean v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mExpanding:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mView:Lcom/android/systemui/shade/NotificationPanelView;

    const-string v1, "notifyExpandingStarted"

    invoke-static {v0, v1}, Lcom/android/systemui/DejankUtils;->notifyRendererOfExpensiveFrame(Landroid/view/View;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mExpanding:Z

    iput-boolean v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mIsExpandingOrCollapsing:Z

    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mQsController:Lcom/android/systemui/shade/QuickSettingsControllerImpl;

    iget-boolean v2, v1, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mFullyExpanded:Z

    sget v3, Lcom/android/systemui/scene/shared/flag/SceneContainerFlag;->$r8$clinit:I

    invoke-static {}, Lcom/android/systemui/Flags;->sceneContainer()V

    iget-object v3, v1, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/systemui/scene/shared/flag/SceneContainerFlag;->assertInLegacyMode()V

    iget-object v4, v3, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    iput-boolean v0, v4, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIsExpansionChanging:Z

    iget-object v4, v4, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    iput-boolean v0, v4, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mExpansionChanging:Z

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->checkSnoozeLeavebehind()V

    iput-boolean v2, v1, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mExpandedWhenExpandingStarted:Z

    if-eqz v2, :cond_0

    iget-boolean v2, v1, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mAnimating:Z

    if-nez v2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iget-object v3, v1, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mMediaHierarchyManager:Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;

    iget-boolean v4, v3, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->collapsingShadeFromQS:Z

    if-eq v4, v2, :cond_1

    iput-boolean v2, v3, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->collapsingShadeFromQS:Z

    const/4 v2, 0x2

    invoke-static {v3, v0, v2}, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->updateDesiredLocation$default(Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;ZI)V

    :cond_1
    invoke-virtual {v1}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->getExpanded$1()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->onExpansionStarted$1()V

    :cond_2
    iget-object v1, v1, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mQs:Lcom/android/systemui/plugins/qs/QS;

    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    invoke-interface {v1, v0}, Lcom/android/systemui/plugins/qs/QS;->setHeaderListening(Z)V

    :goto_1
    iget v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mBarState:I

    if-nez v0, :cond_4

    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mHasDelayedForceLayout:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHandler()Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHandler()Landroid/os/Handler;

    move-result-object v1

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mForceLayoutTimeOutRunnable:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$1;

    invoke-virtual {v1, p0}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$1;->run()V

    :cond_4
    return-void
.end method

.method public final onAffordanceLaunchEnded()V
    .locals 5

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mLaunchingAffordance:Z

    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardAffordanceHelperCallback:Lcom/android/systemui/shade/NotificationPanelViewController$KeyguardAffordanceHelperCallback;

    iget-object v2, v1, Lcom/android/systemui/shade/NotificationPanelViewController$KeyguardAffordanceHelperCallback;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v3, v2, Lcom/android/systemui/shade/NotificationPanelViewController;->mView:Lcom/android/systemui/shade/NotificationPanelView;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getLayoutDirection()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    iget-object v2, v2, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getRightView()Landroid/widget/ImageView;

    move-result-object v2

    goto :goto_0

    :cond_0
    iget-object v2, v2, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getLeftView()Landroid/widget/ImageView;

    move-result-object v2

    :goto_0
    check-cast v2, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v1, Lcom/android/systemui/shade/NotificationPanelViewController$KeyguardAffordanceHelperCallback;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v2, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mView:Lcom/android/systemui/shade/NotificationPanelView;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getLayoutDirection()I

    move-result v2

    if-ne v2, v4, :cond_1

    iget-object v1, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getLeftView()Landroid/widget/ImageView;

    move-result-object v1

    goto :goto_1

    :cond_1
    iget-object v1, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getRightView()Landroid/widget/ImageView;

    move-result-object v1

    :goto_1
    check-cast v1, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->launchingAffordance:Z

    return-void
.end method

.method public final onBackPressed()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->closeQsIfPossible()V

    return-void
.end method

.method public final onBarStateChanged(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onBarStateChanged() to "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NotificationPanelView"

    invoke-static {v1, v0}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mPluginLockMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    invoke-interface {p0, p1}, Lcom/android/systemui/pluginlock/PluginLockMediator;->onBarStateChanged(I)V

    return-void
.end method

.method public final onDismissCancelled()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardStatusViewController:Lcom/android/keyguard/KeyguardStatusViewController;

    iget p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mBarState:I

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p0, v1, v1}, Lcom/android/keyguard/KeyguardStatusViewController;->setKeyguardStatusViewVisibility(IIZZ)V

    return-void
.end method

.method public final onDragDownAmountChanged(F)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardStatusBarViewController:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;

    iput p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mDraggedFraction:F

    return-void
.end method

.method public final onEmptySpaceClick(FF)V
    .locals 5

    invoke-static {}, Lcom/android/systemui/shade/SecPanelSplitHelper;->isEnabled()Z

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mQsController:Lcom/android/systemui/shade/QuickSettingsControllerImpl;

    iget-object v2, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mView:Lcom/android/systemui/shade/NotificationPanelView;

    iget-object v3, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mPanelSplitHelper:Lcom/android/systemui/shade/SecPanelSplitHelper;

    invoke-virtual {v0}, Lcom/android/systemui/shade/SecPanelSplitHelper;->isShadeState()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, v3, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v4, p1, p2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->isBelowLastNotification(FF)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->isLeftOrRightOutOfNSSL(F)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mPostCollapseRunnable:Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda37;

    invoke-virtual {v2, p0}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/android/systemui/shade/SecPanelSplitHelper;->isQSState()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v1, p1, p2}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->isOutOfQsContents(FF)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mPostCollapseRunnable:Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda37;

    invoke-virtual {v2, p0}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->onMiddleClicked()V

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mBarState:I

    if-nez v0, :cond_5

    iget-object v0, v3, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->isBelowLastNotification(FF)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {v3, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->isLeftOrRightOutOfNSSL(F)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {v1, p1, p2}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->isOutOfQsContents(FF)Z

    move-result p1

    if-eqz p1, :cond_5

    :cond_4
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mPostCollapseRunnable:Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda37;

    invoke-virtual {v2, p0}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->onMiddleClicked()V

    :goto_0
    return-void
.end method

.method public onFinishInflate()V
    .locals 26

    move-object/from16 v0, p0

    const/4 v1, 0x5

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->loadDimens()V

    iget-object v4, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mView:Lcom/android/systemui/shade/NotificationPanelView;

    const v5, 0x7f0a0593

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    iput-object v6, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    iget-boolean v6, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardUserSwitcherEnabled:Z

    const/4 v7, 0x0

    if-eqz v6, :cond_1

    iget-object v6, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mUserManager:Landroid/os/UserManager;

    iget-object v8, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mResources:Landroid/content/res/Resources;

    const v9, 0x7f05007a

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    invoke-virtual {v6, v8}, Landroid/os/UserManager;->isUserSwitcherEnabled(Z)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-boolean v6, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardQsUserSwitchEnabled:Z

    if-eqz v6, :cond_0

    const v6, 0x7f0a05b4

    invoke-virtual {v4, v6}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewStub;

    invoke-virtual {v6}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout;

    move-object v8, v7

    goto :goto_0

    :cond_0
    const v6, 0x7f0a05d0

    invoke-virtual {v4, v6}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewStub;

    invoke-virtual {v6}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherView;

    move-object v8, v6

    move-object v6, v7

    goto :goto_0

    :cond_1
    move-object v6, v7

    move-object v8, v6

    :goto_0
    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    iget-object v9, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mShadeViewStateProvider:Lcom/android/systemui/shade/NotificationPanelViewController$16;

    iget-object v10, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardStatusBarViewComponentFactory:Lcom/android/keyguard/dagger/KeyguardStatusBarViewComponent$Factory;

    invoke-interface {v10, v5, v9}, Lcom/android/keyguard/dagger/KeyguardStatusBarViewComponent$Factory;->build(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;Lcom/android/systemui/shade/ShadeViewStateProvider;)Lcom/android/keyguard/dagger/KeyguardStatusBarViewComponent;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/keyguard/dagger/KeyguardStatusBarViewComponent;->getKeyguardStatusBarViewController()Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;

    move-result-object v5

    iput-object v5, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardStatusBarViewController:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;

    invoke-virtual {v5}, Lcom/android/systemui/util/ViewController;->init()V

    sget-object v5, Lcom/android/systemui/keyguard/KeyguardBottomAreaRefactor;->INSTANCE:Lcom/android/systemui/keyguard/KeyguardBottomAreaRefactor;

    invoke-static {}, Lcom/android/systemui/Flags;->keyguardBottomAreaRefactor()V

    iget-object v5, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardBottomAreaViewController:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaViewController;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaViewController;->getView()Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    move-result-object v9

    iput-object v9, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    new-instance v10, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda9;

    invoke-direct {v10, v5, v2}, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda9;-><init>(Lcom/android/systemui/Dumpable;I)V

    iget-object v5, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    iput-object v10, v5, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mUpdatePosition:Ljava/util/function/Consumer;

    const v10, 0x7f0a0597

    invoke-virtual {v9, v10}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup;

    invoke-virtual {v5, v9}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->setIndicationArea(Landroid/view/ViewGroup;)V

    iget-object v9, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    const v10, 0x7f0a05ce

    invoke-virtual {v9, v10}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    invoke-virtual {v5, v9}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->setUpperTextView(Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;)V

    sget-boolean v5, Lcom/android/systemui/CscRune;->LOCKUI_BOTTOM_USIM_TEXT:Z

    if-eqz v5, :cond_2

    iget-object v5, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    iget-object v9, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mEmergencyButtonControllerFactory:Lcom/android/keyguard/EmergencyButtonController$Factory;

    invoke-virtual {v5, v9}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->initEmergencyButton(Lcom/android/keyguard/EmergencyButtonController$Factory;)V

    :cond_2
    iget-object v5, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    iget-object v9, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mPluginLockData:Lcom/android/systemui/pluginlock/PluginLockData;

    iput-object v9, v5, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->pluginLockData:Lcom/android/systemui/pluginlock/PluginLockData;

    iget-object v5, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    iget-object v9, v5, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    iget-object v9, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mLockscreenNotificationManager:Lcom/android/systemui/statusbar/LockscreenNotificationManager;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->initBottomArea()V

    sget-boolean v10, Lcom/android/systemui/LsRune;->SECURITY_PUNCH_HOLE_FACE_VI:Z

    if-eqz v10, :cond_3

    const v10, 0x7f0a05b3

    invoke-virtual {v4, v10}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/view/ViewStub;

    const v11, 0x7f0d0173

    invoke-virtual {v10, v11}, Landroid/view/ViewStub;->setLayoutResource(I)V

    invoke-virtual {v10}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;

    iput-object v10, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardPunchHoleVIView:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;

    if-eqz v10, :cond_3

    iget-object v11, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mPunchHoleVIViewControllerFactory:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController$Factory;

    invoke-virtual {v11, v10}, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController$Factory;->create(Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;)Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/systemui/util/ViewController;->init()V

    iget-object v10, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardPunchHoleVIView:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;

    invoke-virtual {v10}, Landroid/widget/FrameLayout;->bringToFront()V

    :cond_3
    sget-boolean v10, Lcom/android/systemui/LsRune;->SECURITY_CONTINUITY_LOCKSCREEN_VI:Z

    if-eqz v10, :cond_4

    const v10, 0x7f0a059a

    invoke-virtual {v4, v10}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/android/keyguard/KeyguardContinuityLockscreenAffordanceArea;

    iput-object v10, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mContinuityLockScreenContainer:Lcom/android/keyguard/KeyguardContinuityLockscreenAffordanceArea;

    invoke-virtual {v10}, Landroid/widget/LinearLayout;->bringToFront()V

    new-instance v10, Lcom/android/keyguard/KeyguardContinuityLockscreenAffordanceController;

    iget-object v12, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mContinuityLockScreenContainer:Lcom/android/keyguard/KeyguardContinuityLockscreenAffordanceArea;

    iget-object v13, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v14, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    iget-object v15, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-object v11, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    move-object/from16 v16, v11

    move-object v11, v10

    invoke-direct/range {v11 .. v16}, Lcom/android/keyguard/KeyguardContinuityLockscreenAffordanceController;-><init>(Lcom/android/keyguard/KeyguardContinuityLockscreenAffordanceArea;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;)V

    iput-object v10, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mContinuityLockScreenContainerController:Lcom/android/keyguard/KeyguardContinuityLockscreenAffordanceController;

    invoke-virtual {v10}, Lcom/android/systemui/util/ViewController;->init()V

    :cond_4
    const v10, 0x7f0a07fa

    invoke-virtual {v4, v10}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/android/systemui/shade/NotificationsQuickSettingsContainer;

    iput-object v10, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mNotificationContainerParent:Lcom/android/systemui/shade/NotificationsQuickSettingsContainer;

    iget-object v10, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardStatusViewController:Lcom/android/keyguard/KeyguardStatusViewController;

    if-eqz v10, :cond_5

    iget-object v11, v10, Lcom/android/keyguard/KeyguardStatusViewController;->mDumpManager:Lcom/android/systemui/dump/DumpManager;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "KeyguardStatusViewController#"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/lang/Object;->hashCode()I

    move-result v10

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v10}, Lcom/android/systemui/dump/DumpManager;->unregisterDumpable(Ljava/lang/String;)V

    :cond_5
    sget-object v10, Lcom/android/systemui/keyguard/MigrateClocksToBlueprint;->INSTANCE:Lcom/android/systemui/keyguard/MigrateClocksToBlueprint;

    invoke-static {}, Lcom/android/systemui/Flags;->migrateClocksToBlueprint()V

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getRootView()Landroid/view/View;

    move-result-object v10

    const v11, 0x7f0a05ca

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/android/keyguard/KeyguardStatusView;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v12

    iget-object v13, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardStatusViewComponentFactory:Lcom/android/keyguard/dagger/KeyguardStatusViewComponent$Factory;

    invoke-interface {v13, v10, v12}, Lcom/android/keyguard/dagger/KeyguardStatusViewComponent$Factory;->build(Lcom/android/keyguard/KeyguardStatusView;Landroid/view/Display;)Lcom/android/keyguard/dagger/KeyguardStatusViewComponent;

    move-result-object v10

    invoke-interface {v10}, Lcom/android/keyguard/dagger/KeyguardStatusViewComponent;->getKeyguardStatusViewController()Lcom/android/keyguard/KeyguardStatusViewController;

    move-result-object v10

    iput-object v10, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardStatusViewController:Lcom/android/keyguard/KeyguardStatusViewController;

    invoke-virtual {v10}, Lcom/android/systemui/util/ViewController;->init()V

    iget-object v10, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardStatusViewController:Lcom/android/keyguard/KeyguardStatusViewController;

    iget-object v10, v10, Lcom/android/keyguard/KeyguardStatusViewController;->mLockscreenShadeTransitonCallback:Lcom/android/keyguard/KeyguardStatusViewController$3;

    iget-object v12, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mLockscreenShadeTransitionController:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

    invoke-virtual {v12, v10}, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->addCallback(Lcom/android/systemui/statusbar/LockscreenShadeTransitionController$Callback;)V

    iget-object v10, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardStatusViewController:Lcom/android/keyguard/KeyguardStatusViewController;

    iget-object v12, v10, Lcom/android/keyguard/KeyguardStatusViewController;->mKeyguardClockSwitchController:Lcom/android/keyguard/KeyguardClockSwitchController;

    iget-object v12, v12, Lcom/android/keyguard/KeyguardClockSwitchController;->mSmartspaceController:Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;

    iput-boolean v3, v12, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->mSplitShadeEnabled:Z

    iget-object v12, v12, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->smartspaceViews:Ljava/util/Set;

    check-cast v12, Ljava/lang/Iterable;

    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_6

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceView;

    invoke-interface {v13, v3}, Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceView;->setSplitShadeEnabled(Z)V

    goto :goto_1

    :cond_6
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    iput-object v12, v10, Lcom/android/keyguard/KeyguardStatusViewController;->mSplitShadeEnabled:Ljava/lang/Boolean;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->updateClockAppearance()V

    iget-object v10, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardUserSwitcherController:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;

    if-eqz v10, :cond_7

    invoke-virtual {v10, v3}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->closeSwitcherIfOpenAndNotSimple(Z)Z

    :cond_7
    iput-object v7, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardQsUserSwitchController:Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;

    iput-object v7, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardUserSwitcherController:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;

    invoke-virtual {v4, v11}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v10

    if-eqz v10, :cond_8

    invoke-virtual {v4, v10}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    :cond_8
    const v10, 0x7f0a0582

    invoke-virtual {v4, v10}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v10

    if-eqz v10, :cond_9

    invoke-virtual {v4, v10}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    :cond_9
    sget-object v10, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v11, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;

    invoke-virtual {v10, v11}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;

    if-nez v10, :cond_a

    const-string v10, "NotificationPanelView"

    const-string v11, "Failed to get PluginFaceWidgetManager"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v10, v7

    goto :goto_2

    :cond_a
    iget-object v10, v10, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mFaceWidgetContainerWrapper:Lcom/android/systemui/facewidget/plugin/FaceWidgetContainerWrapper;

    if-eqz v10, :cond_c

    new-instance v12, Lcom/android/systemui/shade/NotificationPanelViewController$10;

    invoke-direct {v12, v0}, Lcom/android/systemui/shade/NotificationPanelViewController$10;-><init>(Lcom/android/systemui/shade/NotificationPanelViewController;)V

    sget-object v13, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v13, v11}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;

    if-nez v11, :cond_b

    goto :goto_2

    :cond_b
    iget-object v11, v11, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mKeyguardStatusCallbackWrapper:Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardStatusCallbackWrapper;

    instance-of v13, v11, Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardStatusCallbackWrapper;

    if-eqz v13, :cond_c

    iput-object v12, v11, Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardStatusCallbackWrapper;->mStatusCallback:Lcom/android/systemui/shade/NotificationPanelViewController$10;

    :cond_c
    :goto_2
    iget-object v11, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardStatusViewController:Lcom/android/keyguard/KeyguardStatusViewController;

    iput-object v10, v11, Lcom/android/keyguard/KeyguardStatusViewController;->mKeyguardStatusBase:Lcom/android/systemui/facewidget/plugin/FaceWidgetContainerWrapper;

    new-instance v10, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda1;

    invoke-direct {v10, v0, v1}, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/shade/NotificationPanelViewController;I)V

    iput-object v10, v11, Lcom/android/keyguard/KeyguardStatusViewController;->mIsDLSViewEnabledSupplier:Ljava/util/function/Supplier;

    iget-object v10, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mQsController:Lcom/android/systemui/shade/QuickSettingsControllerImpl;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v6, :cond_d

    iget-object v11, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardQsUserSwitchComponentFactory:Lcom/android/keyguard/dagger/KeyguardQsUserSwitchComponent$Factory;

    invoke-interface {v11, v6}, Lcom/android/keyguard/dagger/KeyguardQsUserSwitchComponent$Factory;->build(Landroid/widget/FrameLayout;)Lcom/android/keyguard/dagger/KeyguardQsUserSwitchComponent;

    move-result-object v11

    invoke-interface {v11}, Lcom/android/keyguard/dagger/KeyguardQsUserSwitchComponent;->getKeyguardQsUserSwitchController()Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;

    move-result-object v11

    iput-object v11, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardQsUserSwitchController:Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;

    invoke-virtual {v11}, Lcom/android/systemui/util/ViewController;->init()V

    iget-object v11, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardStatusBarViewController:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;

    invoke-virtual {v11, v2}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->setKeyguardUserSwitcherEnabled(Z)V

    goto :goto_3

    :cond_d
    if-eqz v8, :cond_e

    iget-object v11, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardUserSwitcherComponentFactory:Lcom/android/keyguard/dagger/KeyguardUserSwitcherComponent$Factory;

    invoke-interface {v11, v8}, Lcom/android/keyguard/dagger/KeyguardUserSwitcherComponent$Factory;->build(Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherView;)Lcom/android/keyguard/dagger/KeyguardUserSwitcherComponent;

    move-result-object v11

    invoke-interface {v11}, Lcom/android/keyguard/dagger/KeyguardUserSwitcherComponent;->getKeyguardUserSwitcherController()Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;

    move-result-object v11

    iput-object v11, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardUserSwitcherController:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;

    invoke-virtual {v11}, Lcom/android/systemui/util/ViewController;->init()V

    iget-object v11, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardStatusBarViewController:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;

    invoke-virtual {v11, v2}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->setKeyguardUserSwitcherEnabled(Z)V

    goto :goto_3

    :cond_e
    iget-object v11, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardStatusBarViewController:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;

    invoke-virtual {v11, v3}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->setKeyguardUserSwitcherEnabled(Z)V

    :goto_3
    invoke-virtual {v0, v6, v8}, Lcom/android/systemui/shade/NotificationPanelViewController;->updateUserSwitcherViewControllers(Landroid/widget/FrameLayout;Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherView;)V

    new-instance v6, Lcom/android/systemui/shade/NotificationPanelViewController$NsslHeightChangedListener;

    invoke-direct {v6, v0, v3}, Lcom/android/systemui/shade/NotificationPanelViewController$NsslHeightChangedListener;-><init>(Lcom/android/systemui/shade/NotificationPanelViewController;I)V

    iget-object v8, v5, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    iput-object v6, v8, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mOnHeightChangedListener:Lcom/android/systemui/statusbar/notification/row/ExpandableView$OnHeightChangedListener;

    iget-object v6, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mOnEmptySpaceClickListener:Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda8;

    iput-object v6, v8, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mOnEmptySpaceClickListener:Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda8;

    new-instance v6, Lcom/android/systemui/shade/QuickSettingsControllerImpl$NsslOverscrollTopChangedListener;

    invoke-direct {v6, v10, v3}, Lcom/android/systemui/shade/QuickSettingsControllerImpl$NsslOverscrollTopChangedListener;-><init>(Lcom/android/systemui/shade/QuickSettingsControllerImpl;I)V

    iget-object v8, v10, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    iget-object v8, v8, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    iput-object v6, v8, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mOverscrollTopChangedListener:Lcom/android/systemui/shade/QuickSettingsControllerImpl$NsslOverscrollTopChangedListener;

    new-instance v6, Lcom/android/systemui/shade/QuickSettingsControllerImpl$$ExternalSyntheticLambda23;

    const/4 v11, 0x4

    invoke-direct {v6, v10, v11}, Lcom/android/systemui/shade/QuickSettingsControllerImpl$$ExternalSyntheticLambda23;-><init>(Lcom/android/systemui/shade/QuickSettingsControllerImpl;I)V

    iput-object v6, v8, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mOnStackYChanged:Ljava/util/function/Consumer;

    new-instance v6, Lcom/android/systemui/shade/QuickSettingsControllerImpl$$ExternalSyntheticLambda23;

    invoke-direct {v6, v10, v1}, Lcom/android/systemui/shade/QuickSettingsControllerImpl$$ExternalSyntheticLambda23;-><init>(Lcom/android/systemui/shade/QuickSettingsControllerImpl;I)V

    iput-object v6, v8, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mScrollListener:Ljava/util/function/Consumer;

    iget-object v1, v10, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mShadeInteractor:Lcom/android/systemui/shade/domain/interactor/ShadeInteractor;

    check-cast v1, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorImpl;

    iget-object v1, v1, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorImpl;->isExpandToQsEnabled:Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$3;

    new-instance v6, Lcom/android/systemui/shade/QuickSettingsControllerImpl$$ExternalSyntheticLambda23;

    const/4 v8, 0x2

    invoke-direct {v6, v10, v8}, Lcom/android/systemui/shade/QuickSettingsControllerImpl$$ExternalSyntheticLambda23;-><init>(Lcom/android/systemui/shade/QuickSettingsControllerImpl;I)V

    iget-object v8, v10, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mJavaAdapter:Lcom/android/systemui/util/kotlin/JavaAdapter;

    invoke-virtual {v8, v1, v6}, Lcom/android/systemui/util/kotlin/JavaAdapter;->alwaysCollectFlow(Lkotlinx/coroutines/flow/Flow;Ljava/util/function/Consumer;)Lkotlinx/coroutines/Job;

    iget-object v1, v10, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mCommunalTransitionViewModelLazy:Ldagger/Lazy;

    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/communal/ui/viewmodel/CommunalTransitionViewModel;

    iget-object v1, v1, Lcom/android/systemui/communal/ui/viewmodel/CommunalTransitionViewModel;->isUmoOnCommunal:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance v6, Lcom/android/systemui/shade/QuickSettingsControllerImpl$$ExternalSyntheticLambda23;

    const/4 v11, 0x3

    invoke-direct {v6, v10, v11}, Lcom/android/systemui/shade/QuickSettingsControllerImpl$$ExternalSyntheticLambda23;-><init>(Lcom/android/systemui/shade/QuickSettingsControllerImpl;I)V

    invoke-virtual {v8, v1, v6}, Lcom/android/systemui/util/kotlin/JavaAdapter;->alwaysCollectFlow(Lkotlinx/coroutines/flow/Flow;Ljava/util/function/Consumer;)Lkotlinx/coroutines/Job;

    new-instance v1, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda9;

    invoke-direct {v1, v5, v3}, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda9;-><init>(Lcom/android/systemui/Dumpable;I)V

    iget-object v6, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mShadeHeadsUpTracker:Lcom/android/systemui/shade/NotificationPanelViewController$ShadeHeadsUpTrackerImpl;

    invoke-virtual {v6, v1}, Lcom/android/systemui/shade/NotificationPanelViewController$ShadeHeadsUpTrackerImpl;->addTrackingHeadsUpListener(Ljava/util/function/Consumer;)V

    sget-boolean v1, Lcom/android/systemui/LsRune;->SECURITY_FINGERPRINT_GUIDE_POPUP:Z

    if-eqz v1, :cond_f

    const v1, 0x7f0a058c

    invoke-virtual {v4, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    const v6, 0x7f0d0156

    invoke-virtual {v1, v6}, Landroid/view/ViewStub;->setLayoutResource(I)V

    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;

    if-eqz v1, :cond_f

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->bringToFront()V

    :cond_f
    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mWakeUpCoordinator:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;

    iput-object v5, v1, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mStackScrollerController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    iget-object v6, v5, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    iget-object v6, v6, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isPulseExpanding()Z

    move-result v6

    iput-boolean v6, v1, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->pulseExpanding:Z

    new-instance v6, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator$setStackScroller$1;

    invoke-direct {v6, v1}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator$setStackScroller$1;-><init>(Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;)V

    iget-object v8, v5, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    iget-object v8, v8, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    iput-object v6, v8, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mOnPulseHeightChangedListener:Ljava/lang/Runnable;

    iget-object v6, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mPulseExpansionHandler:Lcom/android/systemui/statusbar/PulseExpansionHandler;

    iput-object v5, v6, Lcom/android/systemui/statusbar/PulseExpansionHandler;->stackScrollerController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    new-instance v6, Lcom/android/systemui/shade/NotificationPanelViewController$8;

    invoke-direct {v6, v0}, Lcom/android/systemui/shade/NotificationPanelViewController$8;-><init>(Lcom/android/systemui/shade/NotificationPanelViewController;)V

    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->wakeUpListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda8;

    invoke-direct {v1, v0}, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda8;-><init>(Lcom/android/systemui/shade/NotificationPanelViewController;)V

    iput-object v1, v4, Lcom/android/systemui/shade/NotificationPanelView;->mRtlChangeListener:Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda8;

    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mAccessibilityDelegate:Lcom/android/systemui/shade/NotificationPanelViewController$ShadeAccessibilityDelegate;

    invoke-virtual {v4, v1}, Landroid/widget/FrameLayout;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    sget-boolean v1, Lcom/android/systemui/CscRune;->KEYGUARD_DCM_LIVE_UX:Z

    if-eqz v1, :cond_12

    new-instance v1, Lcom/android/systemui/shade/NotificationPanelViewController$9;

    invoke-direct {v1, v0}, Lcom/android/systemui/shade/NotificationPanelViewController$9;-><init>(Lcom/android/systemui/shade/NotificationPanelViewController;)V

    iget-object v6, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mMascotViewContainer:Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;

    iput-object v1, v6, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->injector:Lcom/android/systemui/shade/NotificationPanelViewController$9;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->updateRes()V

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v8, -0x1

    iget v10, v6, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->mascotHeight:I

    invoke-direct {v1, v8, v10}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v8, 0x7f0b00cb

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-virtual {v6, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget-object v1, v6, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->injector:Lcom/android/systemui/shade/NotificationPanelViewController$9;

    if-nez v1, :cond_10

    goto :goto_4

    :cond_10
    move-object v7, v1

    :goto_4
    iget-object v1, v7, Lcom/android/systemui/shade/NotificationPanelViewController$9;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v1, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mNotificationContainerParent:Lcom/android/systemui/shade/NotificationsQuickSettingsContainer;

    invoke-virtual {v1, v6, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    iget-object v10, v6, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object v11, v6, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->broadcastReceiver:Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer$broadcastReceiver$1;

    new-instance v12, Landroid/content/IntentFilter;

    const-string v1, "jp.co.nttdocomo.carriermail.APP_LINK_RECEIVED_MESSAGE"

    invoke-direct {v12, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v17, 0x3c

    invoke-static/range {v10 .. v17}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver$default(Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;ILjava/lang/String;I)V

    iget-object v1, v6, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object v7, v6, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->broadcastReceiver:Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer$broadcastReceiver$1;

    new-instance v8, Landroid/content/IntentFilter;

    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    const-string v10, "com.nttdocomo.android.mascot.KEYGUARD_UPDATE"

    invoke-virtual {v8, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v10, "com.android.internal.policy.impl.CARRIERMAIL_COUNT_UPDATE"

    invoke-virtual {v8, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v10, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v8, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v10, "com.nttdocomo.android.mascot.widget.LockScreenMascotWidget.ACTION_SCREEN_UNLOCK"

    invoke-virtual {v8, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v10, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    const/16 v23, 0x0

    const-string v24, "com.nttdocomo.android.screenlockservice.DCM_SCREEN"

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v25, 0x1c

    move-object/from16 v18, v1

    move-object/from16 v19, v7

    move-object/from16 v20, v8

    invoke-static/range {v18 .. v25}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver$default(Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;ILjava/lang/String;I)V

    iget-boolean v1, v6, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->isBootCompleted:Z

    if-eqz v1, :cond_11

    iget-object v1, v6, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->remoteViews:Landroid/widget/RemoteViews;

    invoke-virtual {v6, v1}, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->setMascotRemoteViews(Landroid/widget/RemoteViews;)V

    goto :goto_5

    :cond_11
    iput-boolean v2, v6, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->isWaitingForBootComplete:Z

    :goto_5
    iget-object v1, v6, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->bgExecutor:Ljava/util/concurrent/Executor;

    new-instance v7, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer$sendUnreadCountBroadcast$1;

    invoke-direct {v7, v6}, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer$sendUnreadCountBroadcast$1;-><init>(Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;)V

    invoke-interface {v1, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    iget-object v1, v6, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->updateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v6, v6, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->updateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v1, v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    :cond_12
    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mTapAgainViewController:Lcom/android/systemui/statusbar/phone/TapAgainViewController;

    invoke-virtual {v1}, Lcom/android/systemui/util/ViewController;->init()V

    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mShadeHeaderController:Lcom/android/systemui/shade/ShadeHeaderController;

    invoke-virtual {v1}, Lcom/android/systemui/util/ViewController;->init()V

    sget-object v1, Lcom/android/systemui/keyguard/shared/model/Edge;->Companion:Lcom/android/systemui/keyguard/shared/model/Edge$Companion;

    sget-object v6, Lcom/android/systemui/keyguard/shared/model/KeyguardState;->DREAMING:Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    sget-object v7, Lcom/android/systemui/keyguard/shared/model/KeyguardState;->LOCKSCREEN:Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    invoke-static {v1, v6, v7}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor$2$1$$ExternalSyntheticOutline0;->m(Lcom/android/systemui/keyguard/shared/model/Edge$Companion;Lcom/android/systemui/keyguard/shared/model/KeyguardState;Lcom/android/systemui/keyguard/shared/model/KeyguardState;)Lcom/android/systemui/keyguard/shared/model/Edge$StateToState;

    move-result-object v1

    iget-object v8, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardTransitionInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;

    invoke-virtual {v8, v1}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;->transition(Lcom/android/systemui/keyguard/shared/model/Edge;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v1

    iget-object v10, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mDreamingToLockscreenTransition:Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda11;

    iget-object v11, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mMainDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    invoke-static {v4, v1, v10, v11}, Lcom/android/systemui/util/kotlin/JavaAdapterKt;->collectFlow(Landroid/view/View;Lkotlinx/coroutines/flow/Flow;Ljava/util/function/Consumer;Lkotlin/coroutines/CoroutineContext;)V

    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mDreamingToLockscreenTransitionViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/DreamingToLockscreenTransitionViewModel;

    iget-object v10, v1, Lcom/android/systemui/keyguard/ui/viewmodel/DreamingToLockscreenTransitionViewModel;->lockscreenAlpha:Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$FlowBuilder$sharedFlow-74qcysc$$inlined$mapNotNull$1;

    new-instance v12, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda52;

    invoke-direct {v12, v0, v5, v2}, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda52;-><init>(Lcom/android/systemui/shade/NotificationPanelViewController;Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;I)V

    invoke-static {v4, v10, v12, v11}, Lcom/android/systemui/util/kotlin/JavaAdapterKt;->collectFlow(Landroid/view/View;Lkotlinx/coroutines/flow/Flow;Ljava/util/function/Consumer;Lkotlin/coroutines/CoroutineContext;)V

    iget v10, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mDreamingToLockscreenTransitionTranslationY:I

    invoke-virtual {v1, v10}, Lcom/android/systemui/keyguard/ui/viewmodel/DreamingToLockscreenTransitionViewModel;->lockscreenTranslationY(I)Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$FlowBuilder$sharedFlow-74qcysc$$inlined$mapNotNull$1;

    move-result-object v1

    new-instance v10, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda52;

    invoke-direct {v10, v0, v5, v3}, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda52;-><init>(Lcom/android/systemui/shade/NotificationPanelViewController;Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;I)V

    invoke-static {v4, v1, v10, v11}, Lcom/android/systemui/util/kotlin/JavaAdapterKt;->collectFlow(Landroid/view/View;Lkotlinx/coroutines/flow/Flow;Ljava/util/function/Consumer;Lkotlin/coroutines/CoroutineContext;)V

    sget-object v1, Lcom/android/systemui/scene/shared/model/Scenes;->Gone:Lcom/android/compose/animation/scene/SceneKey;

    sget-object v10, Lcom/android/systemui/keyguard/shared/model/KeyguardState;->DREAMING_LOCKSCREEN_HOSTED:Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    new-instance v12, Lcom/android/systemui/keyguard/shared/model/Edge$SceneToState;

    invoke-direct {v12, v1, v10}, Lcom/android/systemui/keyguard/shared/model/Edge$SceneToState;-><init>(Lcom/android/compose/animation/scene/SceneKey;Lcom/android/systemui/keyguard/shared/model/KeyguardState;)V

    sget-object v12, Lcom/android/systemui/keyguard/shared/model/KeyguardState;->GONE:Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    new-instance v13, Lcom/android/systemui/keyguard/shared/model/Edge$StateToState;

    invoke-direct {v13, v12, v10}, Lcom/android/systemui/keyguard/shared/model/Edge$StateToState;-><init>(Lcom/android/systemui/keyguard/shared/model/KeyguardState;Lcom/android/systemui/keyguard/shared/model/KeyguardState;)V

    invoke-virtual {v8, v13}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;->transition(Lcom/android/systemui/keyguard/shared/model/Edge$StateToState;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v13

    iget-object v14, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mGoneToDreamingLockscreenHostedTransition:Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda11;

    invoke-static {v4, v13, v14, v11}, Lcom/android/systemui/util/kotlin/JavaAdapterKt;->collectFlow(Landroid/view/View;Lkotlinx/coroutines/flow/Flow;Ljava/util/function/Consumer;Lkotlin/coroutines/CoroutineContext;)V

    iget-object v13, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mGoneToDreamingLockscreenHostedTransitionViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/GoneToDreamingLockscreenHostedTransitionViewModel;

    iget-object v13, v13, Lcom/android/systemui/keyguard/ui/viewmodel/GoneToDreamingLockscreenHostedTransitionViewModel;->lockscreenAlpha:Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$FlowBuilder$sharedFlow-74qcysc$$inlined$mapNotNull$1;

    new-instance v14, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda56;

    invoke-direct {v14, v0, v3, v5}, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda56;-><init>(Lcom/android/systemui/shade/NotificationPanelViewController;ZLcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;)V

    invoke-static {v4, v13, v14, v11}, Lcom/android/systemui/util/kotlin/JavaAdapterKt;->collectFlow(Landroid/view/View;Lkotlinx/coroutines/flow/Flow;Ljava/util/function/Consumer;Lkotlin/coroutines/CoroutineContext;)V

    new-instance v13, Lcom/android/systemui/keyguard/shared/model/Edge$StateToState;

    invoke-direct {v13, v7, v10}, Lcom/android/systemui/keyguard/shared/model/Edge$StateToState;-><init>(Lcom/android/systemui/keyguard/shared/model/KeyguardState;Lcom/android/systemui/keyguard/shared/model/KeyguardState;)V

    invoke-virtual {v8, v13}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;->transition(Lcom/android/systemui/keyguard/shared/model/Edge;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v13

    iget-object v14, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mLockscreenToDreamingLockscreenHostedTransition:Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda11;

    invoke-static {v4, v13, v14, v11}, Lcom/android/systemui/util/kotlin/JavaAdapterKt;->collectFlow(Landroid/view/View;Lkotlinx/coroutines/flow/Flow;Ljava/util/function/Consumer;Lkotlin/coroutines/CoroutineContext;)V

    new-instance v13, Lcom/android/systemui/keyguard/shared/model/Edge$StateToState;

    invoke-direct {v13, v10, v7}, Lcom/android/systemui/keyguard/shared/model/Edge$StateToState;-><init>(Lcom/android/systemui/keyguard/shared/model/KeyguardState;Lcom/android/systemui/keyguard/shared/model/KeyguardState;)V

    invoke-virtual {v8, v13}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;->transition(Lcom/android/systemui/keyguard/shared/model/Edge;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v10

    iget-object v13, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mDreamingLockscreenHostedToLockscreenTransition:Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda11;

    invoke-static {v4, v10, v13, v11}, Lcom/android/systemui/util/kotlin/JavaAdapterKt;->collectFlow(Landroid/view/View;Lkotlinx/coroutines/flow/Flow;Ljava/util/function/Consumer;Lkotlin/coroutines/CoroutineContext;)V

    sget-object v10, Lcom/android/systemui/keyguard/shared/model/KeyguardState;->OCCLUDED:Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    new-instance v13, Lcom/android/systemui/keyguard/shared/model/Edge$StateToState;

    invoke-direct {v13, v10, v7}, Lcom/android/systemui/keyguard/shared/model/Edge$StateToState;-><init>(Lcom/android/systemui/keyguard/shared/model/KeyguardState;Lcom/android/systemui/keyguard/shared/model/KeyguardState;)V

    invoke-virtual {v8, v13}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;->transition(Lcom/android/systemui/keyguard/shared/model/Edge;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v13

    iget-object v14, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mOccludedToLockscreenTransition:Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda11;

    invoke-static {v4, v13, v14, v11}, Lcom/android/systemui/util/kotlin/JavaAdapterKt;->collectFlow(Landroid/view/View;Lkotlinx/coroutines/flow/Flow;Ljava/util/function/Consumer;Lkotlin/coroutines/CoroutineContext;)V

    invoke-static {}, Lcom/android/systemui/Flags;->migrateClocksToBlueprint()V

    iget-object v13, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mOccludedToLockscreenTransitionViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/OccludedToLockscreenTransitionViewModel;

    iget-object v14, v13, Lcom/android/systemui/keyguard/ui/viewmodel/OccludedToLockscreenTransitionViewModel;->lockscreenAlpha:Lkotlinx/coroutines/flow/internal/ChannelLimitedFlowMerge;

    new-instance v15, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda56;

    invoke-direct {v15, v0, v3, v5}, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda56;-><init>(Lcom/android/systemui/shade/NotificationPanelViewController;ZLcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;)V

    invoke-static {v4, v14, v15, v11}, Lcom/android/systemui/util/kotlin/JavaAdapterKt;->collectFlow(Landroid/view/View;Lkotlinx/coroutines/flow/Flow;Ljava/util/function/Consumer;Lkotlin/coroutines/CoroutineContext;)V

    new-instance v14, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda52;

    invoke-direct {v14, v0, v5, v3}, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda52;-><init>(Lcom/android/systemui/shade/NotificationPanelViewController;Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;I)V

    iget-object v13, v13, Lcom/android/systemui/keyguard/ui/viewmodel/OccludedToLockscreenTransitionViewModel;->lockscreenTranslationY:Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    invoke-static {v4, v13, v14, v11}, Lcom/android/systemui/util/kotlin/JavaAdapterKt;->collectFlow(Landroid/view/View;Lkotlinx/coroutines/flow/Flow;Ljava/util/function/Consumer;Lkotlin/coroutines/CoroutineContext;)V

    new-instance v13, Lcom/android/systemui/keyguard/shared/model/Edge$StateToState;

    invoke-direct {v13, v7, v6}, Lcom/android/systemui/keyguard/shared/model/Edge$StateToState;-><init>(Lcom/android/systemui/keyguard/shared/model/KeyguardState;Lcom/android/systemui/keyguard/shared/model/KeyguardState;)V

    invoke-virtual {v8, v13}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;->transition(Lcom/android/systemui/keyguard/shared/model/Edge;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v13

    iget-object v14, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mLockscreenToDreamingTransition:Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda11;

    invoke-static {v4, v13, v14, v11}, Lcom/android/systemui/util/kotlin/JavaAdapterKt;->collectFlow(Landroid/view/View;Lkotlinx/coroutines/flow/Flow;Ljava/util/function/Consumer;Lkotlin/coroutines/CoroutineContext;)V

    invoke-static {}, Lcom/android/systemui/Flags;->migrateClocksToBlueprint()V

    iget-object v13, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mLockscreenToDreamingTransitionViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/LockscreenToDreamingTransitionViewModel;

    iget-object v14, v13, Lcom/android/systemui/keyguard/ui/viewmodel/LockscreenToDreamingTransitionViewModel;->lockscreenAlpha:Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$FlowBuilder$sharedFlow-74qcysc$$inlined$mapNotNull$1;

    new-instance v15, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda52;

    invoke-direct {v15, v0, v5, v2}, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda52;-><init>(Lcom/android/systemui/shade/NotificationPanelViewController;Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;I)V

    invoke-static {v4, v14, v15, v11}, Lcom/android/systemui/util/kotlin/JavaAdapterKt;->collectFlow(Landroid/view/View;Lkotlinx/coroutines/flow/Flow;Ljava/util/function/Consumer;Lkotlin/coroutines/CoroutineContext;)V

    iget v14, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mLockscreenToDreamingTransitionTranslationY:I

    invoke-virtual {v13, v14}, Lcom/android/systemui/keyguard/ui/viewmodel/LockscreenToDreamingTransitionViewModel;->lockscreenTranslationY(I)Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$FlowBuilder$sharedFlow-74qcysc$$inlined$mapNotNull$1;

    move-result-object v13

    new-instance v14, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda52;

    invoke-direct {v14, v0, v5, v3}, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda52;-><init>(Lcom/android/systemui/shade/NotificationPanelViewController;Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;I)V

    invoke-static {v4, v13, v14, v11}, Lcom/android/systemui/util/kotlin/JavaAdapterKt;->collectFlow(Landroid/view/View;Lkotlinx/coroutines/flow/Flow;Ljava/util/function/Consumer;Lkotlin/coroutines/CoroutineContext;)V

    new-instance v13, Lcom/android/systemui/keyguard/shared/model/Edge$SceneToState;

    invoke-direct {v13, v1, v6}, Lcom/android/systemui/keyguard/shared/model/Edge$SceneToState;-><init>(Lcom/android/compose/animation/scene/SceneKey;Lcom/android/systemui/keyguard/shared/model/KeyguardState;)V

    new-instance v1, Lcom/android/systemui/keyguard/shared/model/Edge$StateToState;

    invoke-direct {v1, v12, v6}, Lcom/android/systemui/keyguard/shared/model/Edge$StateToState;-><init>(Lcom/android/systemui/keyguard/shared/model/KeyguardState;Lcom/android/systemui/keyguard/shared/model/KeyguardState;)V

    invoke-virtual {v8, v1}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;->transition(Lcom/android/systemui/keyguard/shared/model/Edge$StateToState;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v1

    iget-object v6, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mGoneToDreamingTransition:Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda11;

    invoke-static {v4, v1, v6, v11}, Lcom/android/systemui/util/kotlin/JavaAdapterKt;->collectFlow(Landroid/view/View;Lkotlinx/coroutines/flow/Flow;Ljava/util/function/Consumer;Lkotlin/coroutines/CoroutineContext;)V

    invoke-static {}, Lcom/android/systemui/Flags;->migrateClocksToBlueprint()V

    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mGoneToDreamingTransitionViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/GoneToDreamingTransitionViewModel;

    iget-object v6, v1, Lcom/android/systemui/keyguard/ui/viewmodel/GoneToDreamingTransitionViewModel;->lockscreenAlpha:Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$FlowBuilder$sharedFlow-74qcysc$$inlined$mapNotNull$1;

    new-instance v12, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda56;

    invoke-direct {v12, v0, v3, v5}, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda56;-><init>(Lcom/android/systemui/shade/NotificationPanelViewController;ZLcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;)V

    invoke-static {v4, v6, v12, v11}, Lcom/android/systemui/util/kotlin/JavaAdapterKt;->collectFlow(Landroid/view/View;Lkotlinx/coroutines/flow/Flow;Ljava/util/function/Consumer;Lkotlin/coroutines/CoroutineContext;)V

    iget v6, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mGoneToDreamingTransitionTranslationY:I

    invoke-virtual {v1, v6}, Lcom/android/systemui/keyguard/ui/viewmodel/GoneToDreamingTransitionViewModel;->lockscreenTranslationY(I)Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$FlowBuilder$sharedFlow-74qcysc$$inlined$mapNotNull$1;

    move-result-object v1

    new-instance v6, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda52;

    invoke-direct {v6, v0, v5, v3}, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda52;-><init>(Lcom/android/systemui/shade/NotificationPanelViewController;Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;I)V

    invoke-static {v4, v1, v6, v11}, Lcom/android/systemui/util/kotlin/JavaAdapterKt;->collectFlow(Landroid/view/View;Lkotlinx/coroutines/flow/Flow;Ljava/util/function/Consumer;Lkotlin/coroutines/CoroutineContext;)V

    new-instance v1, Lcom/android/systemui/keyguard/shared/model/Edge$StateToState;

    invoke-direct {v1, v7, v10}, Lcom/android/systemui/keyguard/shared/model/Edge$StateToState;-><init>(Lcom/android/systemui/keyguard/shared/model/KeyguardState;Lcom/android/systemui/keyguard/shared/model/KeyguardState;)V

    invoke-virtual {v8, v1}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;->transition(Lcom/android/systemui/keyguard/shared/model/Edge;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v1

    iget-object v6, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mLockscreenToOccludedTransition:Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda11;

    invoke-static {v4, v1, v6, v11}, Lcom/android/systemui/util/kotlin/JavaAdapterKt;->collectFlow(Landroid/view/View;Lkotlinx/coroutines/flow/Flow;Ljava/util/function/Consumer;Lkotlin/coroutines/CoroutineContext;)V

    invoke-static {}, Lcom/android/systemui/Flags;->migrateClocksToBlueprint()V

    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mLockscreenToOccludedTransitionViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/LockscreenToOccludedTransitionViewModel;

    iget-object v6, v1, Lcom/android/systemui/keyguard/ui/viewmodel/LockscreenToOccludedTransitionViewModel;->lockscreenAlpha:Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$FlowBuilder$sharedFlow-74qcysc$$inlined$mapNotNull$1;

    new-instance v7, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda56;

    invoke-direct {v7, v0, v3, v5}, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda56;-><init>(Lcom/android/systemui/shade/NotificationPanelViewController;ZLcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;)V

    invoke-static {v4, v6, v7, v11}, Lcom/android/systemui/util/kotlin/JavaAdapterKt;->collectFlow(Landroid/view/View;Lkotlinx/coroutines/flow/Flow;Ljava/util/function/Consumer;Lkotlin/coroutines/CoroutineContext;)V

    new-instance v6, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda52;

    invoke-direct {v6, v0, v5, v3}, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda52;-><init>(Lcom/android/systemui/shade/NotificationPanelViewController;Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;I)V

    iget-object v1, v1, Lcom/android/systemui/keyguard/ui/viewmodel/LockscreenToOccludedTransitionViewModel;->lockscreenTranslationY:Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    invoke-static {v4, v1, v6, v11}, Lcom/android/systemui/util/kotlin/JavaAdapterKt;->collectFlow(Landroid/view/View;Lkotlinx/coroutines/flow/Flow;Ljava/util/function/Consumer;Lkotlin/coroutines/CoroutineContext;)V

    invoke-static {}, Lcom/android/systemui/Flags;->migrateClocksToBlueprint()V

    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mPrimaryBouncerToGoneTransitionViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/PrimaryBouncerToGoneTransitionViewModel;

    iget-object v6, v1, Lcom/android/systemui/keyguard/ui/viewmodel/PrimaryBouncerToGoneTransitionViewModel;->lockscreenAlpha:Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$FlowBuilder$sharedFlow-74qcysc$$inlined$mapNotNull$1;

    new-instance v7, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda56;

    invoke-direct {v7, v0, v2, v5}, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda56;-><init>(Lcom/android/systemui/shade/NotificationPanelViewController;ZLcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;)V

    invoke-static {v4, v6, v7, v11}, Lcom/android/systemui/util/kotlin/JavaAdapterKt;->collectFlow(Landroid/view/View;Lkotlinx/coroutines/flow/Flow;Ljava/util/function/Consumer;Lkotlin/coroutines/CoroutineContext;)V

    new-instance v5, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda11;

    invoke-direct {v5, v0, v3}, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda11;-><init>(Lcom/android/systemui/shade/NotificationPanelViewController;I)V

    iget-object v1, v1, Lcom/android/systemui/keyguard/ui/viewmodel/PrimaryBouncerToGoneTransitionViewModel;->notificationAlpha:Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$FlowBuilder$sharedFlow-74qcysc$$inlined$mapNotNull$1;

    invoke-static {v4, v1, v5, v11}, Lcom/android/systemui/util/kotlin/JavaAdapterKt;->collectFlow(Landroid/view/View;Lkotlinx/coroutines/flow/Flow;Ljava/util/function/Consumer;Lkotlin/coroutines/CoroutineContext;)V

    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mShadeAnimationInteractor:Lcom/android/systemui/shade/domain/interactor/ShadeAnimationInteractor;

    iget-object v1, v1, Lcom/android/systemui/shade/domain/interactor/ShadeAnimationInteractor;->isLaunchingActivity:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance v5, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda11;

    invoke-direct {v5, v0, v2}, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda11;-><init>(Lcom/android/systemui/shade/NotificationPanelViewController;I)V

    invoke-static {v4, v1, v5, v11}, Lcom/android/systemui/util/kotlin/JavaAdapterKt;->collectFlow(Landroid/view/View;Lkotlinx/coroutines/flow/Flow;Ljava/util/function/Consumer;Lkotlin/coroutines/CoroutineContext;)V

    sget-object v1, Lcom/android/systemui/statusbar/notification/shared/NotificationsHeadsUpRefactor;->INSTANCE:Lcom/android/systemui/statusbar/notification/shared/NotificationsHeadsUpRefactor;

    invoke-static {}, Lcom/android/systemui/Flags;->notificationsHeadsUpRefactor()V

    const v1, 0x7f0a0586

    invoke-virtual {v4, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mEditModeContainer:Landroid/view/View;

    const v1, 0x7f0a082b

    invoke-virtual {v4, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mNowBarContainer:Landroid/view/View;

    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mLockscreenNotificationIconsOnlyController:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v9, v1}, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->addCallback(Lcom/android/systemui/statusbar/LockscreenNotificationManager$Callback;)V

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/util/DeviceState;->shouldEnableKeyguardScreenRotation(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-static {}, Lcom/android/systemui/util/DeviceState;->isTablet()Z

    move-result v1

    if-nez v1, :cond_13

    sget-boolean v1, Lcom/android/systemui/LsRune;->LOCKUI_SUB_DISPLAY_LOCK:Z

    if-nez v1, :cond_13

    goto :goto_6

    :cond_13
    move v2, v3

    :goto_6
    iput-boolean v2, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mIsKeyguardSupportLandscapePhone:Z

    return-void
.end method

.method public onFlingEnd(Z)V
    .locals 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mIsFlinging:Z

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/shade/NotificationPanelViewController;->setOverExpansionInternal(FZ)V

    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mSecNotificationPanelViewController:Lcom/android/systemui/shade/SecNotificationPanelViewController;

    if-eqz v1, :cond_1

    iget-object v1, v1, Lcom/android/systemui/shade/SecNotificationPanelViewController;->panelSplitHelper:Lcom/android/systemui/shade/SecPanelSplitHelper;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iput-boolean v0, v1, Lcom/android/systemui/shade/SecPanelSplitHelper;->isOnceOverExpanded:Z

    :cond_1
    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/systemui/shade/NotificationPanelViewController;->setAnimator$1(Landroid/animation/ValueAnimator;)V

    iget-object v2, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iput-boolean v0, v2, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mFlingingToDismissKeyguard:Z

    iput-boolean v0, v2, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mFlingingToDismissKeyguardDuringSwipeGesture:Z

    iput-boolean v0, v2, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mSnappingKeyguardBackAfterSwipe:Z

    iget-object v2, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mQsController:Lcom/android/systemui/shade/QuickSettingsControllerImpl;

    if-nez p1, :cond_3

    iget-object p1, v2, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mInteractionJankMonitorLazy:Ldagger/Lazy;

    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/jank/InteractionJankMonitor;

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p1, v0}, Lcom/android/internal/jank/InteractionJankMonitor;->end(I)Z

    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->notifyExpandingFinished()V

    goto :goto_2

    :cond_3
    iget-object p1, v2, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mInteractionJankMonitorLazy:Ldagger/Lazy;

    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/jank/InteractionJankMonitor;

    if-nez p1, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {p1, v0}, Lcom/android/internal/jank/InteractionJankMonitor;->cancel(I)Z

    :goto_2
    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->updateExpansionAndVisibility()V

    iget-object p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->setPanelFlinging(Z)V

    iget-object p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mShadeLog:Lcom/android/systemui/shade/ShadeLogger;

    const-string v3, "onFlingEnd called"

    invoke-virtual {p1, v3}, Lcom/android/systemui/shade/ShadeLogger;->d(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->setExpandImmediate(Z)V

    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mShadeRepository:Lcom/android/systemui/shade/data/repository/ShadeRepository;

    check-cast p0, Lcom/android/systemui/shade/data/repository/ShadeRepositoryImpl;

    iget-object p0, p0, Lcom/android/systemui/shade/data/repository/ShadeRepositoryImpl;->_currentFling:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {p0, v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final onLockStarEnabled(Z)V
    .locals 1

    const-string p0, "onLockStarEnabled : "

    invoke-static {p0, p1}, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger$allowFingerprintOnCurrentOccludingActivityChanged$2$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "NotificationPanelView"

    invoke-static {v0, p0, p1}, Lcom/android/systemui/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final onMiddleClicked()V
    .locals 3

    iget v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mBarState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mQsController:Lcom/android/systemui/shade/QuickSettingsControllerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->getExpanded$1()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    invoke-interface {p0, v1}, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;->setState(I)V

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mDozingOnDown:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mShadeLog:Lcom/android/systemui/shade/ShadeLogger;

    const-string v1, "onMiddleClicked on Keyguard, mDozingOnDown: false"

    invoke-virtual {v0, v1}, Lcom/android/systemui/shade/ShadeLogger;->v(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mDeviceEntryFaceAuthInteractor:Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryFaceAuthInteractor;

    invoke-interface {v0}, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryFaceAuthInteractor;->onNotificationPanelClicked()V

    invoke-interface {v0}, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryFaceAuthInteractor;->canFaceAuthRun()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/keyguard/ActiveUnlockConfig$ActiveUnlockRequestOrigin;->UNLOCK_INTENT_LEGACY:Lcom/android/keyguard/ActiveUnlockConfig$ActiveUnlockRequestOrigin;

    const-string v1, "lockScreenEmptySpaceTap"

    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->requestActiveUnlock(Lcom/android/keyguard/ActiveUnlockConfig$ActiveUnlockRequestOrigin;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mLockscreenGestureLogger:Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;

    const/4 v1, 0x0

    const/16 v2, 0xbc

    invoke-virtual {v0, v2, v1, v1}, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;->write(III)V

    sget-object v0, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger$LockscreenUiEvent;->LOCKSCREEN_LOCK_SHOW_HINT:Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger$LockscreenUiEvent;

    new-instance v1, Lcom/android/internal/logging/UiEventLoggerImpl;

    invoke-direct {v1}, Lcom/android/internal/logging/UiEventLoggerImpl;-><init>()V

    invoke-virtual {v1, v0}, Lcom/android/internal/logging/UiEventLoggerImpl;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->showActionToUnlock()V

    :cond_3
    :goto_0
    return-void
.end method

.method public onQsSetExpansionHeightCalled(Z)V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/shade/NotificationPanelViewController;->requestScrollerTopPaddingUpdate(Z)V

    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardStatusBarViewController:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->updateViewState()V

    iget v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mBarState:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->updateKeyguardBottomAreaAlpha()V

    invoke-virtual {p0, v0}, Lcom/android/systemui/shade/NotificationPanelViewController;->positionClockAndNotifications(Z)V

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mView:Lcom/android/systemui/shade/NotificationPanelView;

    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->determineAccessibilityPaneTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setAccessibilityPaneTitle(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {v1}, Lcom/android/systemui/plugins/FalsingManager;->isUnlockingDisabled()Z

    move-result v1

    if-nez v1, :cond_3

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mFalsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_3
    sget-boolean p1, Lcom/android/systemui/QpRune;->QUICK_DATA_USAGE_LABEL:Z

    if-eqz p1, :cond_4

    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mDataUsageLabelManagerLazy:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager;->updateLabelVisibility(Z)V

    :cond_4
    return-void
.end method

.method public final onScreenTurningOn()V
    .locals 1

    sget-object v0, Lcom/android/systemui/keyguard/MigrateClocksToBlueprint;->INSTANCE:Lcom/android/systemui/keyguard/MigrateClocksToBlueprint;

    invoke-static {}, Lcom/android/systemui/Flags;->migrateClocksToBlueprint()V

    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardStatusViewController:Lcom/android/keyguard/KeyguardStatusViewController;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardStatusViewController;->refreshTime()V

    iget-object p0, p0, Lcom/android/keyguard/KeyguardStatusViewController;->mKeyguardSliceViewController:Lcom/android/keyguard/KeyguardSliceViewController;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSliceViewController;->refresh()V

    return-void
.end method

.method public final onThemeChanged()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mConfigurationListener:Lcom/android/systemui/shade/NotificationPanelViewController$ConfigurationListener;

    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController$ConfigurationListener;->onThemeChanged()V

    return-void
.end method

.method public final onTrackingStarted()V
    .locals 5

    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->endClosing()V

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mQuickPanelLogger:Lcom/android/systemui/log/QuickPanelLogger;

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onTrackingStarted: isTracking(): "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->isTracking()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " -> true"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/log/QuickPanelLogger;->logPanelState(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mShadeRepository:Lcom/android/systemui/shade/data/repository/ShadeRepository;

    check-cast v0, Lcom/android/systemui/shade/data/repository/ShadeRepositoryImpl;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v2, 0x0

    iget-object v0, v0, Lcom/android/systemui/shade/data/repository/ShadeRepositoryImpl;->_legacyShadeTracking:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {v0, v2, v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mTouchDownOnHeadsUpPinnded:Z

    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mTrackingStartedListener:Lcom/android/systemui/shade/ShadeControllerImpl$$ExternalSyntheticLambda4;

    if-eqz v1, :cond_1

    iget-object v1, v1, Lcom/android/systemui/shade/ShadeControllerImpl$$ExternalSyntheticLambda4;->f$0:Lcom/android/systemui/shade/ShadeControllerImpl;

    invoke-virtual {v1}, Lcom/android/systemui/shade/BaseShadeControllerImpl;->runPostCollapseActions()V

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->notifyExpandingStarted()V

    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->updateExpansionAndVisibility()V

    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    iget-object v2, v1, Lcom/android/systemui/statusbar/phone/ScrimController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast v2, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mCanDismissLockScreen:Z

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    iput-boolean v2, v1, Lcom/android/systemui/statusbar/phone/ScrimController;->mDarkenWhileDragging:Z

    iget-object v2, v1, Lcom/android/systemui/statusbar/phone/ScrimController;->mKeyguardUnlockAnimationController:Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;

    iget-boolean v2, v2, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->playingCannedUnlockAnimation:Z

    if-nez v2, :cond_2

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/phone/ScrimController;->mAnimatingPanelExpansionOnUnlock:Z

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mQsController:Lcom/android/systemui/shade/QuickSettingsControllerImpl;

    iget-boolean v2, v1, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mFullyExpanded:Z

    if-eqz v2, :cond_3

    invoke-virtual {v1, v3}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->setExpandImmediate(Z)V

    invoke-virtual {p0, v3}, Lcom/android/systemui/shade/NotificationPanelViewController;->setShowShelfOnly(Z)V

    :cond_3
    iget v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mBarState:I

    if-eq v1, v3, :cond_4

    const/4 v2, 0x2

    if-ne v1, v2, :cond_5

    :cond_4
    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mSecAffordanceHelper:Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper;

    iget-object v2, v1, Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

    const/4 v4, 0x0

    invoke-static {v2, v4, v3, v0}, Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper;->updateIcon(Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;FZZ)V

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

    invoke-static {v1, v4, v3, v0}, Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper;->updateIcon(Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;FZZ)V

    :cond_5
    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    iput-boolean v3, v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mPanelTracking:Z

    iget-object v2, v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    iput-boolean v3, v2, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mPanelTracking:Z

    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mSwipeHelper:Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;

    invoke-virtual {v1, v3, v3}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->resetExposedMenuView(ZZ)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/shade/NotificationPanelViewController;->cancelPendingCollapse(Z)V

    return-void
.end method

.method public final onTrackingStopped(Z)V
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mQuickPanelLogger:Lcom/android/systemui/log/QuickPanelLogger;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mQuickPanelLogBuilder:Ljava/lang/StringBuilder;

    if-eqz v2, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string v3, "onTrackingStopped: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "expand: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isTracking(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->isTracking()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " -> false"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/log/QuickPanelLogger;->logPanelState(Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mShadeRepository:Lcom/android/systemui/shade/data/repository/ShadeRepository;

    check-cast v1, Lcom/android/systemui/shade/data/repository/ShadeRepositoryImpl;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v3, 0x0

    iget-object v1, v1, Lcom/android/systemui/shade/data/repository/ShadeRepositoryImpl;->_legacyShadeTracking:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {v1, v3, v2}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    iput-boolean v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mTouchDownOnHeadsUpPinnded:Z

    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->updateExpansionAndVisibility()V

    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    const/4 v2, 0x1

    if-eqz p1, :cond_1

    iget-object v3, v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v2, v2, v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setOverScrollAmount(FZZZ)V

    :cond_1
    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mPanelTracking:Z

    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mPanelTracking:Z

    if-eqz p1, :cond_3

    iget p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mBarState:I

    if-eq p1, v2, :cond_2

    const/4 v1, 0x2

    if-ne p1, v1, :cond_3

    :cond_2
    iget-boolean p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mHintAnimationRunning:Z

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mSecAffordanceHelper:Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper;

    invoke-virtual {p1, v2}, Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper;->reset(Z)V

    :cond_3
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mDepthController:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->blursDisabledForUnlock:Z

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->blursDisabledForUnlock:Z

    :goto_0
    return-void
.end method

.method public final onUiInfoRequested(Z)Landroid/os/Bundle;
    .locals 5

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardBottomAreaViewController:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaViewController;

    invoke-interface {v0, p1}, Lcom/android/systemui/pluginlock/PluginLockBottomAreaCallback;->onUiInfoRequested(Z)Landroid/os/Bundle;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mView:Lcom/android/systemui/shade/NotificationPanelView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lockscreen_minimizing_notification"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const-string v3, "noti_type"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "lock_screen_show_notifications"

    invoke-static {v1, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const-string v3, "noti_visibility"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "noti_top"

    invoke-virtual {p0, p1}, Lcom/android/systemui/shade/NotificationPanelViewController;->getNotificationTopMargin(Z)I

    move-result v3

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    if-nez v2, :cond_0

    const-string p1, "noti_number"

    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->computeMaxKeyguardNotifications()I

    move-result p0

    invoke-virtual {v0, p1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/shade/NotificationPanelViewController;->getNotificationTopMargin(Z)I

    move-result v1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mResources:Landroid/content/res/Resources;

    const p1, 0x7f0704b8

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mResources:Landroid/content/res/Resources;

    const p1, 0x7f0704b7

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    :goto_0
    add-int/2addr v1, p0

    const-string p0, "noti_bottom"

    invoke-virtual {v0, p0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "onUiInfoRequested bottom: "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "NotificationPanelView"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public final onUnNeedLockAppStarted(Landroid/content/ComponentName;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardBottomAreaViewController:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaViewController;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/android/systemui/pluginlock/PluginLockBottomAreaCallback;->launchApp(Landroid/content/ComponentName;)V

    :cond_0
    return-void
.end method

.method public final onUserActivity()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    check-cast p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->userActivity()V

    return-void
.end method

.method public final onViewModeChanged(I)V
    .locals 3

    const-string v0, "onViewModeChanged : "

    invoke-static {p1, v0}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "NotificationPanelView"

    invoke-static {v2, v0, v1}, Lcom/android/systemui/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/android/systemui/shade/NotificationPanelViewController;->setViewMode(I)V

    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mSpeedBumpIndexDirty:Z

    return-void
.end method

.method public final positionClockAndNotifications(Z)V
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    sget v2, Lcom/android/systemui/scene/shared/flag/SceneContainerFlag;->$r8$clinit:I

    invoke-static {}, Lcom/android/systemui/Flags;->sceneContainer()V

    iget-object v2, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->isAddOrRemoveAnimationPending()Z

    move-result v3

    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->isKeyguardShowing$2()Z

    move-result v4

    if-nez v4, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->updateClockAppearance()V

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mLockscreenNotificationIconsOnlyController:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mQsController:Lcom/android/systemui/shade/QuickSettingsControllerImpl;

    invoke-virtual {v4}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->getHeaderHeight()I

    move-result v4

    goto :goto_2

    :cond_2
    iget-object v4, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mClockPositionResult:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;

    iget v5, v4, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->stackScrollerPaddingExpanded:I

    sget-boolean v6, Lcom/android/systemui/CscRune;->KEYGUARD_DCM_LIVE_UX:Z

    if-eqz v6, :cond_3

    iget v4, v4, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->stackScrollerPadding:I

    goto :goto_0

    :cond_3
    move v4, v5

    :goto_0
    if-eqz v6, :cond_5

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->getIconContainer()Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->getIconContainer()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    goto :goto_1

    :cond_4
    move v5, v1

    :goto_1
    iget-object v6, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mMascotViewContainer:Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;

    invoke-virtual {v6, v4, v5}, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->updatePosition(II)I

    move-result v5

    add-int/2addr v4, v5

    :cond_5
    :goto_2
    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    iput v4, v2, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIntrinsicPadding:I

    iget v2, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mStackScrollerMeasuringPass:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mStackScrollerMeasuringPass:I

    const-string v4, "NotificationPanelView"

    const/4 v5, 0x2

    if-le v2, v5, :cond_6

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "increased StackScrollerMeasuringPass : "

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mStackScrollerMeasuringPass:I

    invoke-static {v6, v4, v2}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    :cond_6
    invoke-virtual {p0, v3}, Lcom/android/systemui/shade/NotificationPanelViewController;->requestScrollerTopPaddingUpdate(Z)V

    iget v2, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mStackScrollerMeasuringPass:I

    if-le v2, v5, :cond_7

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "reset StackScrollerMeasuringPass from "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mStackScrollerMeasuringPass:I

    invoke-static {v3, v4, v2}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    :cond_7
    iput v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mStackScrollerMeasuringPass:I

    iput-boolean v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mAnimateNextPositionUpdate:Z

    if-eqz p1, :cond_a

    iget-boolean v2, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mDozing:Z

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getAlwaysOn()Z

    move-result v2

    if-eqz v2, :cond_8

    move v1, v0

    :cond_8
    if-nez v1, :cond_9

    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mLockscreenNotificationManager:Lcom/android/systemui/statusbar/LockscreenNotificationManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->isNotificationIconsOnlyShowing()Z

    move-result v1

    if-nez v1, :cond_9

    sget v1, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mCurrentNotificationType:I

    if-nez v1, :cond_a

    iget p0, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mSettingNotificationType:I

    if-ne p0, v0, :cond_a

    :cond_9
    iget-object p0, p1, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mFaceWidgetNotificationController:Lcom/android/systemui/facewidget/FaceWidgetNotificationController;

    if-eqz p0, :cond_a

    check-cast p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;

    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;->mNotificationController:Lcom/android/systemui/plugins/keyguardstatusview/PluginNotificationController;

    if-eqz p0, :cond_a

    invoke-interface {p0}, Lcom/android/systemui/plugins/keyguardstatusview/PluginNotificationController;->updateNotificationIconsOnlyPosition()Landroid/graphics/Point;

    :cond_a
    return-void
.end method

.method public final reInflateStub(IIIZ)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mView:Lcom/android/systemui/shade/NotificationPanelView;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->indexOfChild(Landroid/view/View;)I

    move-result v1

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    if-eqz p4, :cond_0

    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mLayoutInflater:Landroid/view/LayoutInflater;

    const/4 p1, 0x0

    invoke-virtual {p0, p3, v0, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-virtual {v0, p0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    :goto_0
    move-object p1, p0

    goto :goto_1

    :cond_0
    new-instance p0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p3}, Landroid/view/ViewStub;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p0, p2}, Landroid/view/ViewStub;->setId(I)V

    invoke-virtual {v0, p0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    if-eqz p4, :cond_2

    invoke-virtual {v0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewStub;

    invoke-virtual {p0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p1

    :cond_2
    :goto_1
    return-object p1
.end method

.method public reInflateViews()V
    .locals 6

    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->updateUserSwitcherFlags()V

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mUserManager:Landroid/os/UserManager;

    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f05007a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->isUserSwitcherEnabled(Z)Z

    move-result v0

    iget-boolean v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardQsUserSwitchEnabled:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardUserSwitcherEnabled:Z

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    const v0, 0x7f0d0174

    const v1, 0x7f0a05b5

    const v5, 0x7f0a05b4

    invoke-virtual {p0, v1, v5, v0, v4}, Lcom/android/systemui/shade/NotificationPanelViewController;->reInflateStub(IIIZ)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    const v1, 0x7f0d019c

    const v4, 0x7f0a05d1

    const v5, 0x7f0a05d0

    invoke-virtual {p0, v4, v5, v1, v2}, Lcom/android/systemui/shade/NotificationPanelViewController;->reInflateStub(IIIZ)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherView;

    sget-boolean v2, Lcom/android/systemui/LsRune;->LOCKUI_MULTI_USER:Z

    if-eqz v2, :cond_2

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/shade/NotificationPanelViewController;->updateUserSwitcherViewControllers(Landroid/widget/FrameLayout;Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherView;)V

    :cond_2
    sget-object v0, Lcom/android/systemui/keyguard/KeyguardBottomAreaRefactor;->INSTANCE:Lcom/android/systemui/keyguard/KeyguardBottomAreaRefactor;

    invoke-static {}, Lcom/android/systemui/Flags;->keyguardBottomAreaRefactor()V

    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->initBottomArea()V

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    const v1, 0x7f0a0597

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->setIndicationArea(Landroid/view/ViewGroup;)V

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    const v2, 0x7f0a05ce

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->setUpperTextView(Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;)V

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    check-cast v0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    iget v1, v0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mDozeAmount:F

    iget-object v0, v0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mDozeInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v0, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mStatusBarStateListener:Lcom/android/systemui/shade/NotificationPanelViewController$StatusBarStateListener;

    invoke-virtual {v2, v1, v0}, Lcom/android/systemui/shade/NotificationPanelViewController$StatusBarStateListener;->onDozeAmountChanged(FF)V

    sget-object v0, Lcom/android/systemui/keyguard/MigrateClocksToBlueprint;->INSTANCE:Lcom/android/systemui/keyguard/MigrateClocksToBlueprint;

    invoke-static {}, Lcom/android/systemui/Flags;->migrateClocksToBlueprint()V

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardStatusViewController:Lcom/android/keyguard/KeyguardStatusViewController;

    iget v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mBarState:I

    invoke-virtual {v0, v1, v1, v3, v3}, Lcom/android/keyguard/KeyguardStatusViewController;->setKeyguardStatusViewVisibility(IIZZ)V

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardQsUserSwitchController:Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;

    if-eqz v0, :cond_3

    iget v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mBarState:I

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->mKeyguardVisibilityHelper:Lcom/android/keyguard/KeyguardVisibilityHelper;

    invoke-virtual {v0, v1, v1, v3, v3}, Lcom/android/keyguard/KeyguardVisibilityHelper;->setViewVisibility(IIZZ)V

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardUserSwitcherController:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;

    if-eqz v0, :cond_4

    iget v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mBarState:I

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mKeyguardVisibilityHelper:Lcom/android/keyguard/KeyguardVisibilityHelper;

    invoke-virtual {v0, v1, v1, v3, v3}, Lcom/android/keyguard/KeyguardVisibilityHelper;->setViewVisibility(IIZZ)V

    :cond_4
    invoke-static {}, Lcom/android/systemui/Flags;->keyguardBottomAreaRefactor()V

    iget v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mBarState:I

    invoke-virtual {p0, v0, v3}, Lcom/android/systemui/shade/NotificationPanelViewController;->setKeyguardBottomAreaVisibility(IZ)V

    return-void
.end method

.method public final registerAODDoubleTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mAODDoubleTouchListener:Landroid/view/View$OnTouchListener;

    return-void
.end method

.method public final requestScrollerTopPaddingUpdate(Z)V
    .locals 7

    sget v0, Lcom/android/systemui/scene/shared/flag/SceneContainerFlag;->$r8$clinit:I

    invoke-static {}, Lcom/android/systemui/Flags;->sceneContainer()V

    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->getKeyguardNotificationStaticPadding()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mQsController:Lcom/android/systemui/shade/QuickSettingsControllerImpl;

    invoke-virtual {v1, v0}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->calculateNotificationsTopPadding(I)F

    move-result v0

    sget-object v2, Lcom/android/systemui/keyguard/MigrateClocksToBlueprint;->INSTANCE:Lcom/android/systemui/keyguard/MigrateClocksToBlueprint;

    invoke-static {}, Lcom/android/systemui/Flags;->migrateClocksToBlueprint()V

    iget-object v2, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/systemui/scene/shared/flag/SceneContainerFlag;->assertInLegacyMode()V

    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    float-to-int v0, v0

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getLayoutMinHeight()I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getHeight()I

    move-result v4

    if-le v3, v4, :cond_0

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iput v3, v2, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mTopPaddingOverflow:F

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    iput v3, v2, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mTopPaddingOverflow:F

    :goto_0
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz p1, :cond_1

    iget-boolean p1, v2, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mKeyguardBypassEnabled:Z

    if-nez p1, :cond_1

    move p1, v4

    goto :goto_1

    :cond_1
    move p1, v3

    :goto_1
    iget-object v5, v2, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    iget v6, v5, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mTopPadding:I

    if-eq v6, v0, :cond_4

    iput v0, v5, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mTopPadding:I

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateAlgorithmHeightAndPadding()V

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateContentHeight()V

    iget-object v0, v2, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isOnKeyguard()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, v2, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mShouldSkipTopPaddingAnimationAfterFold:Z

    if-eqz v0, :cond_2

    iput-boolean v3, v2, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mShouldSkipTopPaddingAnimationAfterFold:Z

    goto :goto_2

    :cond_2
    if-eqz p1, :cond_3

    iget-boolean v0, v2, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAnimationsEnabled:Z

    if-eqz v0, :cond_3

    iget-boolean v0, v2, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    if-eqz v0, :cond_3

    iput-boolean v4, v2, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mTopPaddingNeedsAnimation:Z

    iput-boolean v4, v2, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mNeedsAnimation:Z

    :cond_3
    :goto_2
    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateStackPosition(Z)V

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    const/4 v0, 0x0

    invoke-virtual {v2, v0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->notifyHeightChangeListener(Lcom/android/systemui/statusbar/notification/row/ExpandableView;Z)V

    iget p1, v2, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    if-lez p1, :cond_4

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getScrollAmountToScrollBoundary()I

    move-result v0

    if-ge p1, v0, :cond_4

    iget-boolean p1, v2, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIsChangedOrientation:Z

    if-eqz p1, :cond_4

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getScrollAmountToScrollBoundary()I

    move-result p1

    invoke-virtual {v2, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setOwnScrollY(I)V

    iput-boolean v3, v2, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIsChangedOrientation:Z

    :cond_4
    iget p1, v2, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mExpandedHeight:F

    invoke-virtual {v2, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setExpandedHeight(F)V

    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->isKeyguardShowing$2()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result p0

    if-eqz p0, :cond_5

    invoke-virtual {v1}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->updateExpansion()V

    :cond_5
    return-void
.end method

.method public final resetAlpha()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mView:Lcom/android/systemui/shade/NotificationPanelView;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    return-void
.end method

.method public final resetDynamicLock()V
    .locals 2

    const-string v0, "NotificationPanelView"

    const-string v1, "resetDynamicLock()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isKeyguardVisible()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_0
    iget v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mBarState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->setVisible(Z)V

    return-void
.end method

.method public final resetTranslation()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mView:Lcom/android/systemui/shade/NotificationPanelView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    return-void
.end method

.method public final resetViewGroupFade()V
    .locals 11

    sget-object v0, Lcom/android/systemui/statusbar/notification/ViewGroupFadeHelper;->Companion:Lcom/android/systemui/statusbar/notification/ViewGroupFadeHelper$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mView:Lcom/android/systemui/shade/NotificationPanelView;

    const v0, 0x7f0a0e18

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lkotlin/jvm/internal/markers/KMappedMarker;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    instance-of v2, v1, Lkotlin/jvm/internal/markers/KMutableSet;

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "kotlin.collections.MutableSet"

    invoke-static {v1, p0}, Lkotlin/jvm/internal/TypeIntrinsics;->throwCce(Ljava/lang/Object;Ljava/lang/String;)V

    throw v3

    :cond_1
    :goto_0
    :try_start_0
    check-cast v1, Ljava/util/Set;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    const v2, 0x7f0a0e16

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/animation/Animator;

    if-eqz v1, :cond_7

    if-nez v4, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v4}, Landroid/animation/Animator;->cancel()V

    const v4, 0x7f0a0e19

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    const v7, 0x7f0a0e1a

    invoke-virtual {v6, v7}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Float;

    if-nez v8, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v6}, Landroid/view/View;->getAlpha()F

    move-result v9

    invoke-static {v5, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Float;F)Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    invoke-virtual {v6, v8}, Landroid/view/View;->setAlpha(F)V

    :cond_4
    const v8, 0x7f0a0e17

    invoke-virtual {v6, v8}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    sget-object v10, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    const/4 v9, 0x0

    invoke-virtual {v6, v9, v3}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    invoke-virtual {v6, v8, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_5
    invoke-virtual {v6, v7, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    goto :goto_1

    :cond_6
    invoke-virtual {p0, v0, v3}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    invoke-virtual {p0, v4, v3}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    invoke-virtual {p0, v2, v3}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    :cond_7
    :goto_2
    return-void

    :catch_0
    move-exception p0

    const-class v0, Lkotlin/jvm/internal/TypeIntrinsics;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->sanitizeStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p0
.end method

.method public final resetViews(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/shade/NotificationPanelViewController;->resetViews(ZZ)V

    return-void
.end method

.method public final resetViews(ZZ)V
    .locals 6

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mIsLaunchTransitionFinished:Z

    iget-boolean v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mLaunchingAffordance:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mSecAffordanceHelper:Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper;->reset(Z)V

    const/4 v1, 0x3

    iput v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mLastCameraLaunchSource:I

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mSecAffordanceHelper:Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper;

    iget-boolean v2, v1, Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper;->isShortcutPreviewSwipingInProgress:Z

    if-eqz v2, :cond_1

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper;->reset(Z)V

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mGutsManager:Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v2, v2, v2}, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->closeAndSaveGuts(ZZZZ)V

    iget v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mBarState:I

    if-eq v1, v2, :cond_3

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->isFullyCollapsed()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0, v2}, Lcom/android/systemui/shade/NotificationPanelViewController;->animateCollapseQs(Z)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->closeQsIfPossible()V

    :cond_3
    :goto_0
    xor-int/lit8 v1, p1, 0x1

    iget-object v3, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    iget-object v4, v3, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v2, p1, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setOverScrollAmount(FZZZ)V

    iget-object p1, v3, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->resetScrollPosition()V

    iget-object p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardTouchAnimator:Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;

    invoke-virtual {p1, v0}, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->setIntercept(Z)V

    invoke-virtual {p1, p2}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->reset(Z)V

    iput-boolean v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mHintAnimationRunning:Z

    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mSecAffordanceHelper:Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper;

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper;->isShortcutPreviewSwipingInProgress:Z

    return-void
.end method

.method public final setAlpha(IZ)V
    .locals 2

    iget v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mPanelAlpha:I

    if-eq v0, p1, :cond_1

    iput p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mPanelAlpha:I

    int-to-float v0, p1

    const/16 v1, 0xff

    if-ne p1, v1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mPanelAlphaInPropertiesAnimator:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mPanelAlphaOutPropertiesAnimator:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mView:Lcom/android/systemui/shade/NotificationPanelView;

    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mPanelAlphaAnimator:Lcom/android/systemui/statusbar/notification/AnimatableProperty$6;

    invoke-static {v1, p0, v0, p1, p2}, Lcom/android/systemui/statusbar/notification/PropertyAnimator;->setProperty(Landroid/view/View;Lcom/android/systemui/statusbar/notification/AnimatableProperty;FLcom/android/systemui/statusbar/notification/stack/AnimationProperties;Z)V

    :cond_1
    return-void
.end method

.method public final setAlphaChangeAnimationEndAction(Lcom/android/systemui/statusbar/policy/BrightnessMirrorController$$ExternalSyntheticLambda0;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mPanelAlphaEndAction:Ljava/lang/Runnable;

    return-void
.end method

.method public final setAnimator$1(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mTestSetOfAnimatorsUsed:Ljava/util/Set;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    iput-object p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mHeightAnimator:Landroid/animation/ValueAnimator;

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mPanelUpdateWhenAnimatorEnds:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mPanelUpdateWhenAnimatorEnds:Z

    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->updateExpandedHeightToMaxHeight()V

    :cond_1
    return-void
.end method

.method public final setBouncerShowing(Z)V
    .locals 3

    iput-boolean p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mBouncerShowing:Z

    sget v0, Lcom/android/systemui/statusbar/notification/footer/shared/FooterViewRefactor;->$r8$clinit:I

    invoke-static {}, Lcom/android/systemui/Flags;->notificationsFooterViewRefactor()V

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->updateShowEmptyShadeView()V

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mMediaNowBarExpandState:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda37;

    const/16 v1, 0x9

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda37;-><init>(Ljava/lang/Object;I)V

    const-wide/16 v1, 0x64

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->updateVisibility$6()V

    :goto_0
    return-void
.end method

.method public setClosing(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mShadeRepository:Lcom/android/systemui/shade/data/repository/ShadeRepository;

    check-cast v0, Lcom/android/systemui/shade/data/repository/ShadeRepositoryImpl;

    iget-object v0, v0, Lcom/android/systemui/shade/data/repository/ShadeRepositoryImpl;->_legacyIsClosing:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mIsClosing:Z

    return-void
.end method

.method public final setDozing(ZZ)V
    .locals 5

    iget-boolean v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mDozing:Z

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mView:Lcom/android/systemui/shade/NotificationPanelView;

    iput-boolean p1, v0, Lcom/android/systemui/shade/NotificationPanelView;->mDozing:Z

    iput-boolean p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mDozing:Z

    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/systemui/scene/shared/flag/SceneContainerFlag;->assertInLegacyMode()V

    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    iget-object v2, v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    iget-boolean v3, v2, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mDozing:Z

    if-ne v3, p1, :cond_1

    goto :goto_0

    :cond_1
    iput-boolean p1, v2, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mDozing:Z

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    iget-object v2, v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->notifyHeightChangeListener(Lcom/android/systemui/statusbar/notification/row/ExpandableView;Z)V

    :goto_0
    sget-object v1, Lcom/android/systemui/keyguard/KeyguardBottomAreaRefactor;->INSTANCE:Lcom/android/systemui/keyguard/KeyguardBottomAreaRefactor;

    invoke-static {}, Lcom/android/systemui/Flags;->keyguardBottomAreaRefactor()V

    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardBottomAreaInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardBottomAreaInteractor;

    iget-object v1, v1, Lcom/android/systemui/keyguard/domain/interactor/KeyguardBottomAreaInteractor;->repository:Lcom/android/systemui/keyguard/data/repository/KeyguardRepository;

    check-cast v1, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v1, v1, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;->_animateBottomAreaDozingTransitions:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {v1, v3, v2}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardBottomAreaViewController:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaViewController;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaViewController;->setDozing(Z)V

    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardStatusBarViewController:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;

    iget-boolean v2, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mDozing:Z

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->isMigrationEnabled()V

    iput-boolean v2, v1, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mDozing:Z

    iget-boolean v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mDozing:Z

    iget-object v2, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mQsController:Lcom/android/systemui/shade/QuickSettingsControllerImpl;

    iput-boolean v1, v2, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mDozing:Z

    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mBottomAreaShadeAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_2
    iget v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mBarState:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    :cond_3
    invoke-virtual {p0, p2}, Lcom/android/systemui/shade/NotificationPanelViewController;->updateDozingVisibilities(Z)V

    :cond_4
    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz p1, :cond_5

    move p1, v2

    goto :goto_1

    :cond_5
    move p1, v1

    :goto_1
    iget-object v3, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    check-cast v3, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    iget-object v4, v3, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mDarkAnimator:Landroid/animation/ValueAnimator;

    if-eqz v4, :cond_7

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v4

    if-eqz v4, :cond_7

    if-eqz p2, :cond_6

    iget v4, v3, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mDozeAmountTarget:F

    cmpl-float v4, v4, p1

    if-nez v4, :cond_6

    goto :goto_3

    :cond_6
    iget-object v4, v3, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mDarkAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_7
    iget-object v4, v3, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mView:Landroid/view/View;

    if-eqz v4, :cond_8

    invoke-virtual {v4}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v4

    if-nez v4, :cond_9

    :cond_8
    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v4

    if-eqz v4, :cond_9

    iput-object v0, v3, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mView:Landroid/view/View;

    const v4, 0x7f0a0582

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardClockSwitch;

    iput-object v0, v3, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mClockSwitchView:Lcom/android/keyguard/KeyguardClockSwitch;

    :cond_9
    iput p1, v3, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mDozeAmountTarget:F

    if-eqz p2, :cond_e

    iget p1, v3, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mDozeAmount:F

    cmpl-float v0, p1, v1

    if-eqz v0, :cond_a

    cmpl-float v0, p1, v2

    if-nez v0, :cond_c

    :cond_a
    iget-boolean v0, v3, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mIsDozing:Z

    if-eqz v0, :cond_b

    sget-object v0, Lcom/android/app/animation/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    goto :goto_2

    :cond_b
    sget-object v0, Lcom/android/app/animation/Interpolators;->TOUCH_RESPONSE_REVERSE:Landroid/view/animation/Interpolator;

    :goto_2
    iput-object v0, v3, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mDozeInterpolator:Landroid/view/animation/Interpolator;

    :cond_c
    cmpl-float p1, p1, v2

    if-nez p1, :cond_d

    iget-boolean p1, v3, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mIsDozing:Z

    if-nez p1, :cond_d

    const p1, 0x3f7d70a4    # 0.99f

    invoke-virtual {v3, p1}, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->setDozeAmountInternal(F)V

    :cond_d
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->createDarkAnimator()Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, v3, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mDarkAnimator:Landroid/animation/ValueAnimator;

    goto :goto_3

    :cond_e
    invoke-virtual {v3, p1}, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->setDozeAmountInternal(F)V

    :goto_3
    invoke-virtual {p0, p2}, Lcom/android/systemui/shade/NotificationPanelViewController;->updateKeyguardStatusViewAlignment(Z)V

    return-void
.end method

.method public final setDynamicLockData(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->fromJSon(Ljava/lang/String;)Lcom/android/systemui/pluginlock/model/DynamicLockData;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getNotificationData()Lcom/android/systemui/pluginlock/model/NotificationData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/model/NotificationData;->getCardData()Lcom/android/systemui/pluginlock/model/NotificationData$NotificationCardData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/model/NotificationData$NotificationCardData;->getNotiCardNumbers()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mNotiCardCount:I

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "setDynamicLockData card numbers: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mNotiCardCount:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "NotificationPanelView"

    invoke-static {v0, p0, p1}, Lcom/android/systemui/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public final setExpandSettingsPanel$1(Z)V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    check-cast p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mQSPanelController:Lcom/android/systemui/qs/SecQSPanelController;

    iget-boolean v1, v0, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mExpandSettingsPanel:Z

    if-eq p1, v1, :cond_0

    iput-boolean p1, v0, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mExpandSettingsPanel:Z

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mQuickQSPanelController:Lcom/android/systemui/qs/SecQuickQSPanelController;

    iget-boolean v0, p0, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mExpandSettingsPanel:Z

    if-eq p1, v0, :cond_1

    iput-boolean p1, p0, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mExpandSettingsPanel:Z

    :cond_1
    return-void
.end method

.method public setExpandedFraction(F)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->getMaxPanelTransitionDistance()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/android/systemui/shade/NotificationPanelViewController;->setExpandedHeight(F)V

    return-void
.end method

.method public setExpandedHeight(F)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/systemui/shade/NotificationPanelViewController;->setExpandedHeightInternal(F)V

    return-void
.end method

.method public final setExpandedHeightInternal(F)V
    .locals 2

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "NotificationPanelView"

    const-string v1, "ExpandedHeight set to NaN"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda13;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda13;-><init>(Lcom/android/systemui/shade/NotificationPanelViewController;F)V

    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    check-cast p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;

    invoke-virtual {p0, v0}, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->batchApplyWindowLayoutParams(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setForceFlingAnimationForTest(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mForceFlingAnimationForTest:Z

    return-void
.end method

.method public setHeadsUpDraggingStartingHeight(I)V
    .locals 2

    iput p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mHeadsUpStartHeight:I

    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->getMaxPanelHeight()I

    move-result p1

    int-to-float p1, p1

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-lez v1, :cond_0

    iget v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mHeadsUpStartHeight:I

    int-to-float v0, v0

    div-float/2addr v0, p1

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/shade/NotificationPanelViewController;->setPanelScrimMinFraction(F)V

    return-void
.end method

.method public final setImportantForAccessibility(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mView:Lcom/android/systemui/shade/NotificationPanelView;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setImportantForAccessibility(I)V

    return-void
.end method

.method public final setKeyguardBottomAreaVisibility(IZ)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-wide v0, p2, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mKeyguardFadingAwayDelay:J

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v0, p2, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mKeyguardFadingAwayDuration:J

    const-wide/16 v2, 0x2

    div-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget-object p2, Lcom/android/app/animation/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mAnimateKeyguardBottomAreaInvisibleEndRunnable:Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda37;

    invoke-virtual {p1, p0}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    iget-object p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-boolean p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mIsOcclusionTransitionRunning:Z

    if-nez p1, :cond_2

    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final setKeyguardStatusBarAlpha(F)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardStatusBarViewController:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->setAlpha(F)V

    return-void
.end method

.method public final setKeyguardTransitionProgress(F)V
    .locals 2

    sget-object v0, Lcom/android/app/animation/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    check-cast v0, Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, p1}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    move-result p1

    iput p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardOnlyContentAlpha:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardOnlyTransitionTranslationY:I

    iget v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mBarState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iput p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mBottomAreaShadeAlpha:F

    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->updateKeyguardBottomAreaAlpha()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->updateClock$1()V

    return-void
.end method

.method public final setListening$3(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardStatusBarViewController:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->isMigrationEnabled()V

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mBatteryListening:Z

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mBatteryListening:Z

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mBatteryStateChangeCallback:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController$3;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    if-eqz p1, :cond_1

    check-cast v0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->addCallback(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    check-cast v0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->removeCallback(Ljava/lang/Object;)V

    :goto_0
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mQsController:Lcom/android/systemui/shade/QuickSettingsControllerImpl;

    iget-object p0, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mQs:Lcom/android/systemui/plugins/qs/QS;

    if-eqz p0, :cond_2

    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/qs/QS;->setListening(Z)V

    :cond_2
    return-void
.end method

.method public setMaxDisplayedNotifications(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mMaxAllowedKeyguardNotifications:I

    return-void
.end method

.method public final setMotionAborted()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mMotionAborted:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "NotificationPanelView"

    const-string/jumbo v1, "setMotionAborted"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mMotionAborted:Z

    return-void
.end method

.method public final setOnStatusBarDownEvent(Landroid/view/MotionEvent;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setOnStatusBarDownEvent null ? "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "NotificationPanelView"

    invoke-static {v0, v1, v2}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    iput-object p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mDownEventFromOverView:Landroid/view/MotionEvent;

    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mPanelSplitHelper:Lcom/android/systemui/shade/SecPanelSplitHelper;

    iput-object p1, p0, Lcom/android/systemui/shade/SecPanelSplitHelper;->synthesizedActionDown:Landroid/view/MotionEvent;

    return-void
.end method

.method public setOverExpansion(F)V
    .locals 2

    invoke-static {}, Lcom/android/systemui/shade/SecPanelSplitHelper;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mOverExpansion:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iput p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mOverExpansion:F

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mQsController:Lcom/android/systemui/shade/QuickSettingsControllerImpl;

    iget-object v1, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mPanelViewControllerLazy:Ldagger/Lazy;

    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/shade/NotificationPanelViewController;

    iget v1, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mNavigationBarBottomHeight:I

    iget-object v1, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    iget v1, v1, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mStackTopMargin:I

    iget-object v0, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mQsFrameTranslateController:Lcom/android/systemui/statusbar/QsFrameTranslateController;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->setOverExpansion(F)V

    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mSecNotificationPanelViewController:Lcom/android/systemui/shade/SecNotificationPanelViewController;

    if-eqz p0, :cond_3

    float-to-int p1, p1

    int-to-float p1, p1

    float-to-int v0, p1

    iget-object v1, p0, Lcom/android/systemui/shade/SecNotificationPanelViewController;->quickSettingsController:Lcom/android/systemui/shade/QuickSettingsControllerImpl;

    iget-object v1, v1, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mQs:Lcom/android/systemui/plugins/qs/QS;

    if-eqz v1, :cond_1

    invoke-interface {v1, v0}, Lcom/android/systemui/plugins/qs/QS;->setOverScrollAmount(I)V

    :cond_1
    const/high16 v0, 0x41700000    # 15.0f

    cmpl-float p1, p1, v0

    if-lez p1, :cond_3

    iget-object p0, p0, Lcom/android/systemui/shade/SecNotificationPanelViewController;->panelSplitHelper:Lcom/android/systemui/shade/SecPanelSplitHelper;

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/shade/SecPanelSplitHelper;->isOnceOverExpanded:Z

    :cond_3
    :goto_0
    return-void
.end method

.method public final setOverExpansionInternal(FZ)V
    .locals 2

    if-nez p2, :cond_0

    const/high16 p2, -0x40800000    # -1.0f

    iput p2, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mLastGesturedOverExpansion:F

    invoke-virtual {p0, p1}, Lcom/android/systemui/shade/NotificationPanelViewController;->setOverExpansion(F)V

    goto :goto_0

    :cond_0
    iget p2, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mLastGesturedOverExpansion:F

    cmpl-float p2, p2, p1

    if-eqz p2, :cond_2

    iput p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mLastGesturedOverExpansion:F

    iget-object p2, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mView:Lcom/android/systemui/shade/NotificationPanelView;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p2

    int-to-float p2, p2

    const/high16 v0, 0x40400000    # 3.0f

    div-float/2addr p2, v0

    div-float/2addr p1, p2

    invoke-static {p1}, Landroid/util/MathUtils;->saturate(F)F

    move-result p1

    sget-object p2, Lcom/android/app/animation/Interpolators;->EMPHASIZED:Landroid/view/animation/Interpolator;

    const/high16 p2, -0x3f800000    # -4.0f

    mul-float/2addr p1, p2

    float-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Math;->exp(D)D

    move-result-wide p1

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, p1

    double-to-float p1, v0

    const/4 p2, 0x0

    cmpl-float v0, p2, p1

    if-lez v0, :cond_1

    move p1, p2

    :cond_1
    iget p2, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mPanelFlingOvershootAmount:F

    mul-float/2addr p1, p2

    const/high16 p2, 0x3fc00000    # 1.5f

    mul-float/2addr p1, p2

    invoke-virtual {p0, p1}, Lcom/android/systemui/shade/NotificationPanelViewController;->setOverExpansion(F)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final setOverStretchAmount(F)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mView:Lcom/android/systemui/shade/NotificationPanelView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    sget-object v0, Lcom/android/app/animation/Interpolators;->EMPHASIZED:Landroid/view/animation/Interpolator;

    const/high16 v0, -0x3f800000    # -4.0f

    mul-float/2addr p1, v0

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, v0

    double-to-float p1, v2

    const/4 v0, 0x0

    cmpl-float v1, v0, p1

    if-lez v1, :cond_0

    move p1, v0

    :cond_0
    iget v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mMaxOverscrollAmountForPulse:I

    int-to-float v0, v0

    mul-float/2addr p1, v0

    iput p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mOverStretchAmount:F

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/systemui/shade/NotificationPanelViewController;->positionClockAndNotifications(Z)V

    return-void
.end method

.method public final setPanelScrimMinFraction(F)V
    .locals 1

    iput p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mMinFraction:F

    iget-object p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mDepthController:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mMinFraction:F

    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_0

    iput p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mPanelScrimMinFraction:F

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->calculateAndUpdatePanelExpansion()V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "minFraction should not be NaN"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final setPluginLock(Lcom/samsung/systemui/splugins/pluginlock/PluginLock;)V
    .locals 2

    const-string v0, "NotificationPanelView"

    const-string/jumbo v1, "setPluginLock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mPluginLock:Lcom/samsung/systemui/splugins/pluginlock/PluginLock;

    return-void
.end method

.method public final setPulsing(Z)V
    .locals 4

    iput-boolean p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mPulsing:Z

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getDisplayNeedsBlanking()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getAlwaysOn()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_1

    iput-boolean v3, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mAnimateNextPositionUpdate:Z

    :cond_1
    iget-boolean v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mPulsing:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mDozing:Z

    if-nez v1, :cond_2

    iput-boolean v2, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mAnimateNextPositionUpdate:Z

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    iget-boolean v2, v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mPulsing:Z

    if-nez v2, :cond_3

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    iput-boolean p1, v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mPulsing:Z

    iget-object v2, v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    iput-boolean p1, v2, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mPulsing:Z

    iget-object v2, v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mSwipeHelper:Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;

    iput-boolean p1, v2, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->mPulsing:Z

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateNotificationAnimationStates()V

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateAlgorithmHeightAndPadding()V

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateContentHeight()V

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    const/4 p1, 0x0

    invoke-virtual {v1, p1, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->notifyHeightChangeListener(Lcom/android/systemui/statusbar/notification/row/ExpandableView;Z)V

    :goto_1
    invoke-virtual {p0, v3}, Lcom/android/systemui/shade/NotificationPanelViewController;->updateKeyguardStatusViewAlignment(Z)V

    return-void
.end method

.method public final setQsScrimEnabled(Z)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mQsController:Lcom/android/systemui/shade/QuickSettingsControllerImpl;

    iget-boolean v0, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mScrimEnabled:Z

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mScrimEnabled:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->updateQsState$1$1()V

    :cond_1
    return-void
.end method

.method public final setShowShelfOnly(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mShouldShowShelfOnly:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateAlgorithmLayoutMinHeight()V

    return-void
.end method

.method public final setTouchAndAnimationDisabled(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mQuickPanelLogger:Lcom/android/systemui/log/QuickPanelLogger;

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setTouchAndAnimationDisabled: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mTouchDisabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/log/QuickPanelLogger;->logPanelState(Ljava/lang/String;)V

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mTouchDisabled:Z

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mSecAffordanceHelper:Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->cancelHeightAnimator()V

    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->isTracking()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/systemui/shade/NotificationPanelViewController;->onTrackingStopped(Z)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->notifyExpandingFinished()V

    :cond_2
    xor-int/2addr p1, v0

    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAnimationsEnabled:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateNotificationAnimationStates()V

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mSwipedOutViews:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mChildrenToRemoveAnimated:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    const-string/jumbo p1, "setAnimationsEnabled"

    invoke-virtual {p0, p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->clearTemporaryViewsInGroup(Landroid/view/ViewGroup;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public setTouchSlopExceeded(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mTouchSlopExceeded:Z

    return-void
.end method

.method public final setUserSetupComplete$1(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mUserSetupComplete:Z

    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardBottomAreaViewController:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaViewController;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaViewController;->setUserSetupComplete$1(Z)V

    return-void
.end method

.method public final setViewMode(I)V
    .locals 9

    const-string/jumbo v0, "setViewMode, newMode:"

    const-string v1, ", oldMode:"

    invoke-static {p1, v0, v1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mPluginLockViewMode:I

    const-string v2, "NotificationPanelView"

    invoke-static {v1, v2, v0}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardBottomAreaViewController:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaViewController;

    invoke-interface {v0, p1}, Lcom/android/systemui/pluginlock/PluginLockBottomAreaCallback;->onViewModeChanged(I)V

    iget v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mPluginLockViewMode:I

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    if-ne p1, v1, :cond_e

    :cond_0
    iput p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mPluginLockViewMode:I

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    if-ne p1, v1, :cond_1

    if-ne p1, v1, :cond_1

    move v4, v1

    goto :goto_0

    :cond_1
    move v4, v3

    :goto_0
    check-cast v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    const-string/jumbo v5, "setDlsOverLay() : "

    const-string v6, "CentralSurfaces"

    invoke-static {v5, v6, v4}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    iput-boolean v4, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mIsDlsOverlay:Z

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mMascotViewContainer:Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;

    iget-object v4, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mView:Lcom/android/systemui/shade/NotificationPanelView;

    iget-object v5, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mSystemUIWidgetCallback:Lcom/android/systemui/shade/NotificationPanelViewController$17;

    if-nez p1, :cond_6

    iget-object v6, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    if-eqz v6, :cond_3

    check-cast v6, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    iget-boolean v6, v6, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mBouncerShowing:Z

    if-nez v6, :cond_4

    :cond_3
    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v4

    if-nez v4, :cond_8

    :cond_4
    iget v4, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mBarState:I

    if-eqz v4, :cond_8

    sget-boolean v4, Lcom/android/systemui/CscRune;->KEYGUARD_DCM_LIVE_UX:Z

    if-eqz v4, :cond_5

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->isMascotEnabled()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->mainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    new-instance v6, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer$updateDelayed$1;

    invoke-direct {v6, v0}, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer$updateDelayed$1;-><init>(Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;)V

    const/16 v0, 0xfa

    int-to-long v7, v0

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v4, v6, v7, v8, v0}, Lcom/android/systemui/util/concurrency/DelayableExecutor;->executeDelayed(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Runnable;

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "setViewMode, removeSystemUIWidgetCallback:"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v5}, Lcom/android/systemui/wallpaper/WallpaperUtils;->removeSystemUIWidgetCallback(Lcom/android/systemui/widget/SystemUIWidgetCallback;)V

    goto :goto_1

    :cond_6
    if-ne p1, v1, :cond_8

    invoke-virtual {v4, v3}, Landroid/widget/FrameLayout;->setClickable(Z)V

    sget-boolean v2, Lcom/android/systemui/CscRune;->KEYGUARD_DCM_LIVE_UX:Z

    if-eqz v2, :cond_7

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->setMascotViewVisible(I)V

    :cond_7
    const-wide/16 v6, 0x100

    invoke-static {v5, v6, v7}, Lcom/android/systemui/wallpaper/WallpaperUtils;->registerSystemUIWidgetCallback(Lcom/android/systemui/widget/SystemUIWidgetCallback;J)V

    :cond_8
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mPluginLockStarContainer:Landroid/view/View;

    if-eqz v0, :cond_a

    if-nez p1, :cond_9

    move v2, v3

    goto :goto_2

    :cond_9
    const/4 v2, 0x4

    :goto_2
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_a
    sget-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_BLUR:Z

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/ScrimController;->mSecLsScrimControlHelper:Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;

    if-ne p1, v1, :cond_b

    move v3, v1

    :cond_b
    iget-boolean v2, v0, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;->mIsDLSOverlayView:Z

    if-eq v2, v3, :cond_c

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "setDLSOverlayView("

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v4, v0, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;->mIsDLSOverlayView:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " -> "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "ScrimController"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v3, v0, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;->mIsDLSOverlayView:Z

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;->mProvider:Lcom/android/systemui/statusbar/phone/SecLsScrimControlProvider;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/SecLsScrimControlProvider;->mUpdateScrimsRunnable:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;->setScrimAlphaForKeyguard(Z)V

    :cond_c
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    if-eqz v0, :cond_d

    check-cast v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardViewController;->updateDlsNaviBarVisibility()V

    :cond_d
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {p0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->dispatchDlsViewMode(I)V

    :cond_e
    return-void
.end method

.method public final setWillPlayDelayedDozeAmountAnimation(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mWillPlayDelayedDozeAmountAnimation:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mWillPlayDelayedDozeAmountAnimation:Z

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mWakeUpCoordinator:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->logDelayingClockWakeUpAnimation(Z)V

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardMediaController:Lcom/android/systemui/media/controls/ui/controller/KeyguardMediaController;

    iput-boolean p1, v0, Lcom/android/systemui/media/controls/ui/controller/KeyguardMediaController;->isDozeWakeUpAnimationWaiting:Z

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/shade/NotificationPanelViewController;->positionClockAndNotifications(Z)V

    return-void
.end method

.method public final shouldHideStatusBarIconsWhenExpanded()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->isLaunchingActivity$1()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mHeadsUpAppearanceController:Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->shouldBeVisible$1()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iget-boolean p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mShowIconsWhenExpanded:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final showAodUi()V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/shade/NotificationPanelViewController;->setDozing(ZZ)V

    iget-object v2, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    check-cast v2, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v3, Lcom/android/systemui/scene/shared/flag/SceneContainerFlag;->$r8$clinit:I

    invoke-static {}, Lcom/android/systemui/Flags;->sceneContainer()V

    iget v3, v2, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mState:I

    invoke-virtual {v2, v0, v3, v0}, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->recordHistoricalState(IIZ)V

    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->updateUpcomingState(I)V

    sget-object v2, Lcom/android/systemui/keyguard/MigrateClocksToBlueprint;->INSTANCE:Lcom/android/systemui/keyguard/MigrateClocksToBlueprint;

    invoke-static {}, Lcom/android/systemui/Flags;->migrateClocksToBlueprint()V

    iget-object v2, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mStatusBarStateListener:Lcom/android/systemui/shade/NotificationPanelViewController$StatusBarStateListener;

    invoke-virtual {v2, v0}, Lcom/android/systemui/shade/NotificationPanelViewController$StatusBarStateListener;->onStateChanged(I)V

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3, v3}, Lcom/android/systemui/shade/NotificationPanelViewController$StatusBarStateListener;->onDozeAmountChanged(FF)V

    sget-boolean v2, Lcom/android/systemui/LsRune;->AOD_FULLSCREEN:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mPluginAODManagerLazy:Ldagger/Lazy;

    invoke-interface {v2}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/doze/PluginAODManager;

    iget-object v4, v4, Lcom/android/systemui/doze/PluginAODManager;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    iget-boolean v4, v4, Lcom/android/systemui/statusbar/phone/DozeParameters;->mControlScreenOffAnimation:Z

    if-eqz v4, :cond_0

    const-string v4, "NotificationPanelView"

    const-string/jumbo v5, "showAodUi: setIsDozing set true"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v2}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/doze/PluginAODManager;

    invoke-virtual {v2, v0, v1}, Lcom/android/systemui/doze/PluginAODManager;->setIsDozing(ZZ)V

    :cond_0
    invoke-virtual {p0, v3}, Lcom/android/systemui/shade/NotificationPanelViewController;->setExpandedFraction(F)V

    return-void
.end method

.method public final startBouncerPreHideAnimation()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardQsUserSwitchController:Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget v3, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mBarState:I

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->mKeyguardVisibilityHelper:Lcom/android/keyguard/KeyguardVisibilityHelper;

    invoke-virtual {v0, v3, v3, v2, v1}, Lcom/android/keyguard/KeyguardVisibilityHelper;->setViewVisibility(IIZZ)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardUserSwitcherController:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;

    if-eqz v0, :cond_1

    iget p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mBarState:I

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mKeyguardVisibilityHelper:Lcom/android/keyguard/KeyguardVisibilityHelper;

    invoke-virtual {v0, p0, p0, v2, v1}, Lcom/android/keyguard/KeyguardVisibilityHelper;->setViewVisibility(IIZZ)V

    :cond_1
    return-void
.end method

.method public final startExpandLatencyTracking()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    invoke-virtual {v0}, Lcom/android/internal/util/LatencyTracker;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/util/LatencyTracker;->onActionStart(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mExpandLatencyTracking:Z

    :cond_0
    return-void
.end method

.method public final startInputFocusTransfer()V
    .locals 2

    const-string v0, "NotificationPanelView"

    const-string/jumbo v1, "startInputFocusTransfer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/CommandQueue;->panelsEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->isFullyCollapsed()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mExpectingSynthesizedDown:Z

    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->onTrackingStarted()V

    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->updatePanelExpanded()V

    invoke-static {}, Lcom/android/systemui/shade/SecPanelSplitHelper;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mPanelSplitHelper:Lcom/android/systemui/shade/SecPanelSplitHelper;

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mDownEventFromOverView:Landroid/view/MotionEvent;

    if-eqz p0, :cond_2

    invoke-virtual {v0, p0}, Lcom/android/systemui/shade/SecPanelSplitHelper;->shouldQSDown(Landroid/view/MotionEvent;)Z

    :cond_2
    return-void
.end method

.method public final startPendingIntentDismissingKeyguard(Landroid/app/PendingIntent;)V
    .locals 2

    const-string v0, "NotificationPanelView"

    const-string/jumbo v1, "startPendingIntentDismissingKeyguard"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/ActivityStarter;->startPendingIntentDismissingKeyguard(Landroid/app/PendingIntent;)V

    :cond_0
    return-void
.end method

.method public final transitionToExpandedShade(JZ)V
    .locals 1

    sget-boolean v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->DEBUG_DISABLE_SHOW_NEW_NOTIF_ONLY:Z

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/systemui/shade/SecPanelSplitHelper;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mPanelSplitHelper:Lcom/android/systemui/shade/SecPanelSplitHelper;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/systemui/shade/SecPanelSplitHelper;->isShadeState()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->updateEntrySetRead()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->updateEntrySetRead()V

    :cond_1
    :goto_0
    const/4 v0, 0x1

    if-nez p3, :cond_2

    iget-object p3, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    iget-object p3, p3, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    iput-boolean v0, p3, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mGoToFullShadeNeedsAnimation:Z

    iput-wide p1, p3, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mGoToFullShadeDelay:J

    iput-boolean v0, p3, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mNeedsAnimation:Z

    invoke-virtual {p3}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    :cond_2
    iget-object p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mView:Lcom/android/systemui/shade/NotificationPanelView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->requestLayout()V

    iput-boolean v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mAnimateNextPositionUpdate:Z

    return-void
.end method

.method public final unregisterAODDoubleTouchListener()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mAODDoubleTouchListener:Landroid/view/View$OnTouchListener;

    return-void
.end method

.method public final updateClock$1()V
    .locals 9

    iget-boolean v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mIsOcclusionTransitionRunning:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mSecAffordanceHelper:Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper;->isShortcutPreviewSwipingInProgress:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mClockPositionResult:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;

    iget v1, v0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->clockAlpha:F

    iget v2, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardOnlyContentAlpha:F

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mLockscreenShadeTransitionController:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->getFractionToShade()F

    move-result v3

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_3

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardStatusViewController:Lcom/android/keyguard/KeyguardStatusViewController;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->getFractionToShade()F

    move-result v2

    float-to-double v5, v2

    const-wide/high16 v7, 0x3fe0000000000000L    # 0.5

    cmpl-double v3, v5, v7

    const/high16 v5, 0x3f800000    # 1.0f

    if-lez v3, :cond_2

    move v2, v5

    goto :goto_0

    :cond_2
    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    :goto_0
    invoke-static {v5, v4, v2}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/keyguard/KeyguardStatusViewController;->setAlpha(F)V

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardTouchAnimator:Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;

    invoke-virtual {v2}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->isViRunning()Z

    move-result v2

    if-nez v2, :cond_4

    iget v0, v0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->clockAlpha:F

    cmpl-float v2, v0, v4

    if-ltz v2, :cond_4

    iget-object v2, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardStatusViewController:Lcom/android/keyguard/KeyguardStatusViewController;

    invoke-virtual {v2, v0}, Lcom/android/keyguard/KeyguardStatusViewController;->setAlpha(F)V

    :cond_4
    :goto_1
    sget-object v0, Lcom/android/systemui/keyguard/MigrateClocksToBlueprint;->INSTANCE:Lcom/android/systemui/keyguard/MigrateClocksToBlueprint;

    invoke-static {}, Lcom/android/systemui/Flags;->migrateClocksToBlueprint()V

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardQsUserSwitchController:Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;

    if-eqz v0, :cond_5

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->setAlpha(F)V

    :cond_5
    sget-boolean v0, Lcom/android/systemui/LsRune;->LOCKUI_MULTI_USER:Z

    if-nez v0, :cond_6

    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardUserSwitcherController:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;

    if-eqz p0, :cond_6

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->setAlpha(F)V

    :cond_6
    return-void
.end method

.method public final updateClockAppearance()V
    .locals 18

    move-object/from16 v0, p0

    const/4 v1, 0x4

    iget-object v2, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v5, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    iget-object v5, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mScreenOffAnimationController:Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;

    iget-object v6, v5, Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;->animations:Ljava/util/List;

    instance-of v7, v6, Ljava/util/Collection;

    if-eqz v7, :cond_1

    move-object v7, v6

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    :cond_0
    move v6, v3

    goto :goto_0

    :cond_1
    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/statusbar/phone/ScreenOffAnimation;

    invoke-interface {v7}, Lcom/android/systemui/statusbar/phone/ScreenOffAnimation;->shouldAnimateClockChange()Z

    move-result v7

    if-nez v7, :cond_2

    move v6, v4

    :goto_0
    sget-object v7, Lcom/android/systemui/keyguard/MigrateClocksToBlueprint;->INSTANCE:Lcom/android/systemui/keyguard/MigrateClocksToBlueprint;

    invoke-static {}, Lcom/android/systemui/Flags;->migrateClocksToBlueprint()V

    iget-object v7, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardStatusViewController:Lcom/android/keyguard/KeyguardStatusViewController;

    sget-object v8, Lcom/android/systemui/flags/Flags;->INSTANCE:Lcom/android/systemui/flags/Flags;

    iget-object v8, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mFeatureFlags:Lcom/android/systemui/flags/FeatureFlags;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v8, Lcom/android/systemui/statusbar/notification/footer/shared/FooterViewRefactor;->$r8$clinit:I

    invoke-static {}, Lcom/android/systemui/Flags;->notificationsFooterViewRefactor()V

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->getVisibleNotificationCount()I

    move-result v8

    if-nez v8, :cond_4

    iget-object v8, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mMediaDataManager:Lcom/android/systemui/media/controls/domain/pipeline/MediaDataManager;

    invoke-interface {v8}, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataManager;->hasActiveMediaOrRecommendation()Z

    move-result v8

    if-eqz v8, :cond_3

    goto :goto_1

    :cond_3
    move v8, v4

    goto :goto_2

    :cond_4
    :goto_1
    move v8, v3

    :goto_2
    iget-object v7, v7, Lcom/android/keyguard/KeyguardStatusViewController;->mKeyguardClockSwitchController:Lcom/android/keyguard/KeyguardClockSwitchController;

    invoke-virtual {v7, v8, v6}, Lcom/android/keyguard/KeyguardClockSwitchController;->displayClock(IZ)V

    iget-boolean v7, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mIsGoneToDreamingLockscreenHostedTransitionRunning:Z

    xor-int/2addr v7, v3

    invoke-virtual {v0, v7}, Lcom/android/systemui/shade/NotificationPanelViewController;->updateKeyguardStatusViewAlignment(Z)V

    iget-object v7, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardQsUserSwitchController:Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;

    if-eqz v7, :cond_5

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->getUserIconHeight()V

    :cond_5
    iget-object v7, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardUserSwitcherController:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;

    if-eqz v7, :cond_6

    iget-object v7, v7, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mListView:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherListView;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getHeight()I

    :cond_6
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;->shouldExpandNotifications()Z

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;->shouldExpandNotifications()Z

    iget-object v5, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUdfpsEnrolled()Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v5, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mAuthController:Lcom/android/systemui/biometrics/AuthController;

    invoke-virtual {v5}, Lcom/android/systemui/biometrics/AuthController;->getUdfpsLocation()Landroid/graphics/Point;

    move-result-object v7

    if-eqz v7, :cond_7

    invoke-virtual {v5}, Lcom/android/systemui/biometrics/AuthController;->getUdfpsLocation()Landroid/graphics/Point;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Point;->y:I

    invoke-virtual {v5}, Lcom/android/systemui/biometrics/AuthController;->getUdfpsRadius()F

    :cond_7
    iget-object v5, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mView:Lcom/android/systemui/shade/NotificationPanelView;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v14

    sget-object v7, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v8, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v7, v8}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v7}, Lcom/android/systemui/util/SettingsHelper;->isShowNotificationOnKeyguard()Z

    move-result v8

    if-eqz v8, :cond_e

    invoke-virtual {v7}, Lcom/android/systemui/util/SettingsHelper;->isNotificationIconsOnlyOn()Z

    move-result v8

    if-nez v8, :cond_b

    iget-boolean v8, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mIsKeyguardSupportLandscapePhone:Z

    const/4 v9, 0x2

    if-eqz v8, :cond_8

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v8, v8, Landroid/content/res/Configuration;->orientation:I

    if-ne v8, v9, :cond_8

    iget v8, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mBarState:I

    if-ne v8, v3, :cond_8

    goto :goto_5

    :cond_8
    invoke-virtual {v7}, Lcom/android/systemui/util/SettingsHelper;->isNotificationAsDot()Z

    move-result v7

    if-eqz v7, :cond_9

    goto :goto_3

    :cond_9
    move v9, v4

    :goto_3
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->getNotGoneChildCount()I

    move-result v7

    if-lez v7, :cond_a

    iget-object v7, v2, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    iget v7, v7, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIntrinsicContentHeight:F

    float-to-int v7, v7

    goto :goto_4

    :cond_a
    move v7, v4

    :goto_4
    move v12, v7

    move v15, v9

    goto :goto_7

    :cond_b
    :goto_5
    iget-object v7, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mLockscreenNotificationIconsOnlyController:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;

    if-eqz v7, :cond_d

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->getIconContainer()Landroid/view/View;

    move-result-object v8

    if-eqz v8, :cond_c

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->getIconContainer()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    goto :goto_6

    :cond_c
    move v7, v4

    :goto_6
    move v15, v3

    move v12, v7

    goto :goto_7

    :cond_d
    move v15, v3

    move v12, v4

    goto :goto_7

    :cond_e
    move v12, v4

    move v15, v12

    :goto_7
    iget-object v7, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mClockPositionAlgorithm:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;

    iget v8, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mStatusBarMinHeight:I

    iget-object v9, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mLockscreenShadeTransitionController:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->getFractionToShade()F

    move-result v9

    iget-object v10, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardStatusViewController:Lcom/android/keyguard/KeyguardStatusViewController;

    invoke-virtual {v10}, Lcom/android/keyguard/KeyguardStatusViewController;->getHeight()I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->getKeyguardNotificationStaticPadding()I

    move-result v11

    iget-object v13, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mQsController:Lcom/android/systemui/shade/QuickSettingsControllerImpl;

    invoke-virtual {v13, v11}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->calculateNotificationsTopPadding(I)F

    move-result v11

    float-to-int v11, v11

    iget v13, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mInterpolatedDarkAmount:F

    iget-object v3, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardStatusViewController:Lcom/android/keyguard/KeyguardStatusViewController;

    iget-object v3, v3, Lcom/android/keyguard/KeyguardStatusViewController;->mKeyguardStatusBase:Lcom/android/systemui/facewidget/plugin/FaceWidgetContainerWrapper;

    if-eqz v3, :cond_10

    iget-object v3, v3, Lcom/android/systemui/facewidget/plugin/FaceWidgetContainerWrapper;->mPluginKeyguardStatusView:Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardStatusView;

    if-eqz v3, :cond_f

    invoke-interface {v3}, Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardStatusView;->getCurrentClockType()I

    move-result v3

    goto :goto_8

    :cond_f
    move v3, v4

    :goto_8
    move/from16 v16, v3

    goto :goto_9

    :cond_10
    move/from16 v16, v4

    :goto_9
    new-instance v3, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda1;

    invoke-direct {v3, v0, v1}, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/shade/NotificationPanelViewController;I)V

    move-object/from16 v17, v3

    invoke-virtual/range {v7 .. v17}, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->setup(IFIIIFIIILcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda1;)V

    iget-object v3, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mClockPositionAlgorithm:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;

    iget-object v7, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mClockPositionResult:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;

    invoke-virtual {v3, v7}, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->run(Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;)V

    invoke-static {}, Lcom/android/systemui/Flags;->migrateClocksToBlueprint()V

    iget-object v3, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardStatusViewController:Lcom/android/keyguard/KeyguardStatusViewController;

    iget-object v8, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mClockPositionAlgorithm:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;

    iget-boolean v9, v8, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mIsSplitShade:Z

    if-eqz v9, :cond_11

    iget v8, v8, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mSplitShadeTargetTopMargin:I

    goto :goto_a

    :cond_11
    iget v8, v8, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mMinTopMargin:I

    :goto_a
    iget-object v3, v3, Lcom/android/keyguard/KeyguardStatusViewController;->mKeyguardClockSwitchController:Lcom/android/keyguard/KeyguardClockSwitchController;

    invoke-virtual {v3, v8}, Lcom/android/keyguard/KeyguardClockSwitchController;->setLockscreenClockY(I)V

    invoke-static {}, Lcom/android/systemui/Flags;->migrateClocksToBlueprint()V

    sget-object v3, Lcom/android/systemui/keyguard/KeyguardBottomAreaRefactor;->INSTANCE:Lcom/android/systemui/keyguard/KeyguardBottomAreaRefactor;

    invoke-static {}, Lcom/android/systemui/Flags;->keyguardBottomAreaRefactor()V

    iget v3, v7, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->clockX:I

    iget v8, v7, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->clockY:I

    iget-object v9, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardBottomAreaInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardBottomAreaInteractor;

    iget-object v9, v9, Lcom/android/systemui/keyguard/domain/interactor/KeyguardBottomAreaInteractor;->_clockPosition:Lkotlinx/coroutines/flow/StateFlowImpl;

    new-instance v10, Lcom/android/systemui/common/shared/model/Position;

    invoke-direct {v10, v3, v8}, Lcom/android/systemui/common/shared/model/Position;-><init>(II)V

    const/4 v3, 0x0

    invoke-virtual {v9, v3, v10}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v3, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mPluginLockStarManagerLazy:Ldagger/Lazy;

    if-eqz v3, :cond_15

    invoke-interface {v3}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v8

    const-string v9, "Notification"

    if-eqz v8, :cond_13

    invoke-interface {v3}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/lockstar/PluginLockStarManager;

    invoke-virtual {v8}, Lcom/android/systemui/lockstar/PluginLockStarManager;->isLockStarEnabled()Z

    move-result v8

    if-eqz v8, :cond_13

    invoke-interface {v3}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/lockstar/PluginLockStarManager;

    iget-object v8, v8, Lcom/android/systemui/lockstar/PluginLockStarManager;->mPluginLockStar:Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;

    if-nez v8, :cond_12

    :catchall_0
    move v8, v4

    goto :goto_b

    :cond_12
    :try_start_0
    invoke-interface {v8, v9}, Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;->isPositionSynchronized(Ljava/lang/String;)Z

    move-result v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_b
    if-nez v8, :cond_13

    invoke-interface {v3}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/lockstar/PluginLockStarManager;

    invoke-virtual {v1}, Lcom/android/systemui/lockstar/PluginLockStarManager;->getLockStarValues()Lcom/samsung/systemui/splugins/lockstar/LockStarValues;

    move-result-object v1

    if-eqz v1, :cond_15

    invoke-interface {v1}, Lcom/samsung/systemui/splugins/lockstar/LockStarValues;->getNotificationTopMargin()I

    move-result v3

    iput v3, v7, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->stackScrollerPadding:I

    invoke-interface {v1}, Lcom/samsung/systemui/splugins/lockstar/LockStarValues;->getNotificationTranslationX()I

    move-result v1

    int-to-float v1, v1

    iget-object v3, v2, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->setTranslationX(F)V

    goto :goto_d

    :cond_13
    iget-object v8, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mPluginLockData:Lcom/android/systemui/pluginlock/PluginLockData;

    if-eqz v8, :cond_15

    invoke-interface {v8}, Lcom/android/systemui/pluginlock/PluginLockData;->isAvailable()Z

    move-result v10

    if-eqz v10, :cond_15

    invoke-interface {v3}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/lockstar/PluginLockStarManager;

    iget-object v3, v3, Lcom/android/systemui/lockstar/PluginLockStarManager;->mPluginLockStar:Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;

    if-nez v3, :cond_14

    :catchall_1
    move v3, v4

    goto :goto_c

    :cond_14
    :try_start_1
    invoke-interface {v3, v9}, Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;->isPositionSynchronized(Ljava/lang/String;)Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_c
    if-nez v3, :cond_15

    const/4 v3, 0x3

    invoke-interface {v8, v3}, Lcom/android/systemui/pluginlock/PluginLockData;->getTop(I)I

    move-result v3

    iput v3, v7, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->stackScrollerPadding:I

    invoke-interface {v8, v1}, Lcom/android/systemui/pluginlock/PluginLockData;->getTop(I)I

    invoke-interface {v8, v1}, Lcom/android/systemui/pluginlock/PluginLockData;->getPaddingStart(I)I

    move-result v1

    int-to-float v1, v1

    iget-object v3, v2, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->setTranslationX(F)V

    :cond_15
    :goto_d
    sget-boolean v1, Lcom/android/systemui/LsRune;->LOCKUI_MULTI_USER:Z

    if-eqz v1, :cond_16

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/policy/SystemBarUtils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v1

    iput v1, v7, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->userSwitchY:I

    :cond_16
    invoke-static {}, Lcom/android/systemui/Flags;->sceneContainer()V

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->isAddOrRemoveAnimationPending()Z

    move-result v1

    if-eqz v1, :cond_17

    goto :goto_e

    :cond_17
    iget-boolean v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mAnimateNextPositionUpdate:Z

    if-eqz v1, :cond_18

    :goto_e
    if-eqz v6, :cond_18

    const/4 v3, 0x1

    goto :goto_f

    :cond_18
    move v3, v4

    :goto_f
    invoke-static {}, Lcom/android/systemui/Flags;->migrateClocksToBlueprint()V

    iget-object v8, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardStatusViewController:Lcom/android/keyguard/KeyguardStatusViewController;

    iget v9, v7, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->clockX:I

    iget v10, v7, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->clockY:I

    iget v11, v7, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->clockScale:F

    iget-object v13, v7, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->contentsContainerPosition:Ljava/util/List;

    move v12, v3

    invoke-virtual/range {v8 .. v13}, Lcom/android/keyguard/KeyguardStatusViewController;->updatePosition(IIFZLjava/util/List;)V

    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardQsUserSwitchController:Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;

    if-eqz v1, :cond_19

    iget v2, v7, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->clockX:I

    iget v4, v7, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->userSwitchY:I

    invoke-virtual {v1, v2, v4, v3}, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->updatePosition(IIZ)V

    :cond_19
    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardUserSwitcherController:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;

    if-eqz v1, :cond_1a

    iget v2, v7, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->clockX:I

    iget v4, v7, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->userSwitchY:I

    invoke-virtual {v1, v2, v4, v3}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->updatePosition(IIZ)V

    :cond_1a
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->updateNotificationTranslucency()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->updateClock$1()V

    return-void
.end method

.method public final updateDozingVisibilities(Z)V
    .locals 2

    sget-object v0, Lcom/android/systemui/keyguard/KeyguardBottomAreaRefactor;->INSTANCE:Lcom/android/systemui/keyguard/KeyguardBottomAreaRefactor;

    invoke-static {}, Lcom/android/systemui/Flags;->keyguardBottomAreaRefactor()V

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-boolean v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mDozing:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardStatusBarViewController:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->animateKeyguardStatusBarIn()V

    :cond_0
    sget-boolean p1, Lcom/android/systemui/CscRune;->KEYGUARD_DCM_LIVE_UX:Z

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mDozing:Z

    if-eqz p1, :cond_1

    const/16 v1, 0x8

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mMascotViewContainer:Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->setMascotViewVisible(I)V

    :cond_2
    return-void
.end method

.method public final updateDynamicLockData(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardBottomAreaViewController:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaViewController;

    invoke-interface {p0}, Lcom/android/systemui/pluginlock/PluginLockBottomAreaCallback;->updateBottomView()V

    return-void
.end method

.method public final updateEntrySetRead()V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    iget-object v2, v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    instance-of v2, v1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-object v2, v1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mIsReaded:Z

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mLoggingKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " isReaded = true"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "NotificationPanelView"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mIsReaded:Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mNewNotifReadListener:Lcom/android/systemui/shade/NotificationPanelViewController$NewNotifReadListener;

    if-eqz p0, :cond_2

    invoke-interface {p0}, Lcom/android/systemui/shade/NotificationPanelViewController$NewNotifReadListener;->onNewNotificationRead()V

    :cond_2
    return-void
.end method

.method public final updateExpandedHeight(F)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->isTracking()Z

    move-result v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v3, 0x3e8

    invoke-virtual {v0, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    iget-boolean v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mIsTrackpadReverseScroll:Z

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    int-to-float v0, v0

    iget-object v3, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v3

    mul-float/2addr v3, v0

    iget-object v0, v2, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    iput v3, v0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mExpandingVelocity:F

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->isKeyguardShowing$2()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->getMaxPanelHeight()I

    move-result p1

    int-to-float p1, p1

    :cond_2
    sget-boolean v0, Lcom/android/systemui/NotiRune;->NOTI_LOCKSCREEN_ALWAYS_HIDE_SENSITIVE:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardTouchAnimator:Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->isViRunning()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/systemui/scene/shared/flag/SceneContainerFlag;->assertInLegacyMode()V

    iget-object v0, v2, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setExpandedHeight(F)V

    goto :goto_1

    :cond_3
    sget v0, Lcom/android/systemui/scene/shared/flag/SceneContainerFlag;->$r8$clinit:I

    invoke-static {}, Lcom/android/systemui/Flags;->sceneContainer()V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/systemui/scene/shared/flag/SceneContainerFlag;->assertInLegacyMode()V

    iget-object v0, v2, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setExpandedHeight(F)V

    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->updateKeyguardBottomAreaAlpha()V

    iget p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mExpandedHeight:F

    iget-object v0, v2, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v2, Lcom/android/systemui/NotiRune;->NOTI_AOSP_DISABLE_EMPTY_SHADE_VIEW:Z

    if-nez v2, :cond_6

    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mEmptyShadeView:Lcom/android/systemui/statusbar/EmptyShadeView;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_5

    goto :goto_3

    :cond_5
    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    iget v0, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mWaterfallTopInset:I

    :goto_2
    add-int/2addr v2, v0

    int-to-float v0, v2

    goto :goto_4

    :cond_6
    :goto_3
    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    iget v0, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mWaterfallTopInset:I

    goto :goto_2

    :goto_4
    cmpg-float p1, p1, v0

    const/4 v0, 0x0

    if-gez p1, :cond_7

    goto :goto_5

    :cond_7
    move v1, v0

    :goto_5
    iget p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mBarState:I

    if-nez p1, :cond_8

    iget p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mExpandedFraction:F

    const/4 v2, 0x0

    cmpl-float p1, p1, v2

    if-lez p1, :cond_8

    move v1, v0

    :cond_8
    if-eqz v1, :cond_9

    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->isKeyguardShowing$2()Z

    move-result p1

    if-eqz p1, :cond_9

    move v1, v0

    :cond_9
    if-eqz v1, :cond_a

    iget p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mBarState:I

    const/4 v2, 0x2

    if-ne p1, v2, :cond_a

    move v1, v0

    :cond_a
    iget-boolean p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mShowIconsWhenExpanded:Z

    if-eq v1, p1, :cond_b

    iput-boolean v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mShowIconsWhenExpanded:Z

    iget-object p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    iget p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mDisplayId:I

    invoke-virtual {p1, p0, v0}, Lcom/android/systemui/statusbar/CommandQueue;->recomputeDisableFlags(IZ)V

    :cond_b
    return-void
.end method

.method public final updateExpandedHeightToMaxHeight()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->getMaxPanelHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->isFullyCollapsed()Z

    move-result v1

    if-nez v1, :cond_6

    iget-boolean v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mTouchDownOnHeadsUpPinnded:Z

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    iget v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mExpandedHeight:F

    cmpl-float v1, v0, v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->isTracking()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mHeadsUpTouchHelper:Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mTrackingHeadsUp:Z

    if-eqz v1, :cond_4

    :cond_2
    iget-boolean v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mBlockingExpansionForCurrentTouch:Z

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mQsController:Lcom/android/systemui/shade/QuickSettingsControllerImpl;

    iget-boolean v2, v1, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mConflictingExpansionGesture:Z

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->getExpanded$1()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    return-void

    :cond_4
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mHeightAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mIsSpringBackAnimation:Z

    if-nez v1, :cond_5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mPanelUpdateWhenAnimatorEnds:Z

    return-void

    :cond_5
    invoke-virtual {p0, v0}, Lcom/android/systemui/shade/NotificationPanelViewController;->setExpandedHeight(F)V

    :cond_6
    :goto_1
    return-void
.end method

.method public final updateExpansionAndVisibility()V
    .locals 13

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    const/4 v2, 0x1

    sget v3, Lcom/android/systemui/scene/shared/flag/SceneContainerFlag;->$r8$clinit:I

    invoke-static {}, Lcom/android/systemui/Flags;->sceneContainer()V

    iget v3, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mExpandedFraction:F

    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->isExpanded()Z

    move-result v4

    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->isTracking()Z

    move-result v5

    iget-object v6, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mShadeExpansionStateManager:Lcom/android/systemui/shade/ShadeExpansionStateManager;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v7

    xor-int/2addr v7, v2

    if-eqz v7, :cond_e

    iget v7, v6, Lcom/android/systemui/shade/ShadeExpansionStateManager;->state:I

    iput v3, v6, Lcom/android/systemui/shade/ShadeExpansionStateManager;->fraction:F

    iput-boolean v4, v6, Lcom/android/systemui/shade/ShadeExpansionStateManager;->expanded:Z

    iput-boolean v5, v6, Lcom/android/systemui/shade/ShadeExpansionStateManager;->tracking:Z

    if-eqz v4, :cond_2

    if-nez v7, :cond_0

    invoke-virtual {v6, v2}, Lcom/android/systemui/shade/ShadeExpansionStateManager;->updateStateInternal(I)V

    :cond_0
    cmpl-float v8, v3, v0

    if-ltz v8, :cond_1

    move v8, v2

    goto :goto_0

    :cond_1
    move v8, v1

    :goto_0
    move v9, v1

    goto :goto_1

    :cond_2
    move v8, v1

    move v9, v2

    :goto_1
    if-eqz v8, :cond_3

    if-nez v5, :cond_3

    const/4 v8, 0x2

    invoke-virtual {v6, v8}, Lcom/android/systemui/shade/ShadeExpansionStateManager;->updateStateInternal(I)V

    goto :goto_2

    :cond_3
    if-eqz v9, :cond_4

    if-nez v5, :cond_4

    iget v8, v6, Lcom/android/systemui/shade/ShadeExpansionStateManager;->state:I

    if-eqz v8, :cond_4

    invoke-virtual {v6, v1}, Lcom/android/systemui/shade/ShadeExpansionStateManager;->updateStateInternal(I)V

    :cond_4
    :goto_2
    invoke-static {v7}, Lcom/android/systemui/shade/ShadeExpansionStateManagerKt;->panelStateToString(I)Ljava/lang/String;

    iget v8, v6, Lcom/android/systemui/shade/ShadeExpansionStateManager;->state:I

    invoke-static {v8}, Lcom/android/systemui/shade/ShadeExpansionStateManagerKt;->panelStateToString(I)Ljava/lang/String;

    iget v8, v6, Lcom/android/systemui/shade/ShadeExpansionStateManager;->state:I

    const-string v9, "onPanelExpansionChanged: "

    if-eq v7, v8, :cond_5

    sget-object v8, Lcom/android/systemui/shade/ShadeExpansionStateManagerKt;->TAG:Ljava/lang/String;

    invoke-static {v7}, Lcom/android/systemui/shade/ShadeExpansionStateManagerKt;->panelStateToString(I)Ljava/lang/String;

    move-result-object v10

    iget v11, v6, Lcom/android/systemui/shade/ShadeExpansionStateManager;->state:I

    invoke-static {v11}, Lcom/android/systemui/shade/ShadeExpansionStateManagerKt;->panelStateToString(I)Ljava/lang/String;

    move-result-object v11

    const-string v12, " -> "

    invoke-static {v9, v10, v12, v11, v8}, Lcom/android/systemui/bixby2/controller/MWBixbyController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    const-wide/16 v10, 0x1000

    invoke-static {v10, v11}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v8

    if-eqz v8, :cond_6

    const/16 v8, 0x64

    int-to-float v8, v8

    mul-float/2addr v8, v3

    float-to-int v8, v8

    const-string v12, "panel_expansion"

    invoke-static {v10, v11, v12, v8}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    iget v8, v6, Lcom/android/systemui/shade/ShadeExpansionStateManager;->state:I

    if-eq v8, v7, :cond_6

    const-string v7, "ShadeExpansionState"

    invoke-static {v10, v11, v7, v1}, Landroid/os/Trace;->asyncTraceForTrackEnd(JLjava/lang/String;I)V

    iget v8, v6, Lcom/android/systemui/shade/ShadeExpansionStateManager;->state:I

    invoke-static {v8}, Lcom/android/systemui/shade/ShadeExpansionStateManagerKt;->panelStateToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v11, v7, v8, v1}, Landroid/os/Trace;->asyncTraceForTrackBegin(JLjava/lang/String;Ljava/lang/String;I)V

    :cond_6
    new-instance v7, Lcom/android/systemui/shade/ShadeExpansionChangeEvent;

    invoke-direct {v7, v3, v4, v5}, Lcom/android/systemui/shade/ShadeExpansionChangeEvent;-><init>(FZZ)V

    iget v4, v6, Lcom/android/systemui/shade/ShadeExpansionStateManager;->oldFraction:F

    cmpg-float v4, v4, v3

    if-nez v4, :cond_7

    move v4, v2

    goto :goto_3

    :cond_7
    move v4, v1

    :goto_3
    xor-int/2addr v4, v2

    if-eqz v4, :cond_8

    move-object v4, v7

    goto :goto_4

    :cond_8
    const/4 v4, 0x0

    :goto_4
    if-eqz v4, :cond_9

    iput v3, v6, Lcom/android/systemui/shade/ShadeExpansionStateManager;->oldFraction:F

    sget-object v3, Lcom/android/systemui/shade/ShadeExpansionStateManagerKt;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    iget-object v3, v6, Lcom/android/systemui/shade/ShadeExpansionStateManager;->expansionListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/shade/ShadeExpansionListener;

    invoke-interface {v4, v7}, Lcom/android/systemui/shade/ShadeExpansionListener;->onPanelExpansionChanged(Lcom/android/systemui/shade/ShadeExpansionChangeEvent;)V

    goto :goto_5

    :cond_a
    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->updateVisibility$6()V

    iget-object v3, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mQuickPanelLogger:Lcom/android/systemui/log/QuickPanelLogger;

    if-eqz v3, :cond_d

    iget-object v4, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mQuickPanelLogBuilder:Ljava/lang/StringBuilder;

    if-eqz v4, :cond_d

    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->isExpanded()Z

    move-result v5

    if-eqz v5, :cond_d

    iget v5, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mExpandedFraction:F

    const/4 v6, 0x0

    invoke-static {v5, v6}, Ljava/lang/Float;->compare(FF)I

    move-result v5

    if-eqz v5, :cond_b

    iget v5, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mExpandedFraction:F

    invoke-static {v5, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_d

    :cond_b
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string/jumbo v0, "updateExpansionAndVisibility: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "mExpandedFraction: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mExpandedFraction:F

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", mInstantExpanding: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mInstantExpanding:Z

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", isPanelVisibleBecauseOfHeadsUp: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->isPanelVisibleBecauseOfHeadsUp()Z

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", isTracking(): "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->isTracking()Z

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", mIsSpringBackAnimation: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mIsSpringBackAnimation:Z

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", isExpanded: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->isExpanded()Z

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", isFullyExpanded: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->isFullyExpanded()Z

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", isFullyCollapsed: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->isFullyCollapsed()Z

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", mHeightAnimator is null: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mHeightAnimator:Landroid/animation/ValueAnimator;

    if-nez p0, :cond_c

    move v1, v2

    :cond_c
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Lcom/android/systemui/log/QuickPanelLogger;->logPanelState(Ljava/lang/String;)V

    :cond_d
    return-void

    :cond_e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "fraction cannot be NaN"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final updateGestureExclusionRect()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mStatusBarTouchableRegionManager:Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;->calculateTouchableRegion()Landroid/graphics/Region;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->isFullyCollapsed()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/android/systemui/shade/NotificationPanelViewController;->EMPTY_RECT:Landroid/graphics/Rect;

    :goto_1
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_2

    :cond_2
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :goto_2
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mView:Lcom/android/systemui/shade/NotificationPanelView;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setSystemGestureExclusionRects(Ljava/util/List;)V

    return-void
.end method

.method public final updateKeyguardBottomAreaAlpha()V
    .locals 8

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mSecAffordanceHelper:Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper;->isShortcutPreviewSwipingInProgress:Z

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mKeyguardGoingAway:Z

    if-nez v0, :cond_c

    iget v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mBarState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto/16 :goto_2

    :cond_0
    sget-object v0, Lcom/android/systemui/keyguard/MigrateClocksToBlueprint;->INSTANCE:Lcom/android/systemui/keyguard/MigrateClocksToBlueprint;

    invoke-static {}, Lcom/android/systemui/Flags;->migrateClocksToBlueprint()V

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardTouchAnimator:Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->isViRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mIsOcclusionTransitionRunning:Z

    if-eqz v0, :cond_2

    return-void

    :cond_2
    iget v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mExpandedFraction:F

    const v2, 0x3f733333    # 0.95f

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v3, v4, v2, v4, v0}, Landroid/util/MathUtils;->constrainedMap(FFFFF)F

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mLockscreenShadeTransitionController:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->getFractionToShade()F

    move-result v5

    sub-float v5, v4, v5

    invoke-static {v0, v5}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget-object v5, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mSecAffordanceHelper:Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper;

    iget-boolean v6, v5, Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper;->mPreviewAnimationStarted:Z

    const/4 v7, 0x0

    if-nez v6, :cond_5

    iget-object v6, v5, Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v6, v6, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mShortcutLaunchAnimator:Landroid/animation/Animator;

    if-eqz v6, :cond_3

    goto :goto_0

    :cond_3
    iget-object v5, v5, Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v5, v5, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mShortcutLaunchAnimator:Landroid/animation/Animator;

    if-eqz v5, :cond_4

    goto :goto_0

    :cond_4
    iget-object v5, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mSecAffordanceHelper:Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper;

    iget-object v6, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getLeftView()Landroid/widget/ImageView;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4, v0}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-virtual {v6, v5, v7}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->setImageAlpha(FZ)V

    invoke-virtual {v6, v4, v7}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->setImageScale(FZ)V

    iget-object v5, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mSecAffordanceHelper:Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper;

    iget-object v6, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getRightView()Landroid/widget/ImageView;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-virtual {v6, v0, v7}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->setImageAlpha(FZ)V

    invoke-virtual {v6, v4, v7}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->setImageScale(FZ)V

    :cond_5
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->getFaceWidgetAlpha()F

    move-result v0

    cmpg-float v3, v0, v3

    if-gez v3, :cond_6

    return-void

    :cond_6
    iget-object v3, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mNowBarContainer:Landroid/view/View;

    if-eqz v3, :cond_7

    invoke-virtual {v3, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_7
    sget-object v3, Lcom/android/systemui/keyguard/KeyguardBottomAreaRefactor;->INSTANCE:Lcom/android/systemui/keyguard/KeyguardBottomAreaRefactor;

    invoke-static {}, Lcom/android/systemui/Flags;->keyguardBottomAreaRefactor()V

    iget-object v3, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardBottomAreaViewController:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaViewController;

    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaViewController;->setAffordanceAlpha(F)V

    iget-object v3, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardBottomAreaInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardBottomAreaInteractor;

    iget-object v3, v3, Lcom/android/systemui/keyguard/domain/interactor/KeyguardBottomAreaInteractor;->repository:Lcom/android/systemui/keyguard/data/repository/KeyguardRepository;

    check-cast v3, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    iget-object v3, v3, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;->_bottomAreaAlpha:Lkotlinx/coroutines/flow/StateFlowImpl;

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v4}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mLockIconViewController:Lcom/android/keyguard/SecLockIconViewController;

    iget-object v3, v3, Lcom/android/keyguard/SecLockIconViewController;->mView:Lcom/android/keyguard/SecLockIconView;

    invoke-virtual {v3, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    sget-boolean v3, Lcom/android/systemui/LsRune;->SECURITY_CONTINUITY_LOCKSCREEN_VI:Z

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mContinuityLockScreenContainer:Lcom/android/keyguard/KeyguardContinuityLockscreenAffordanceArea;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setAlpha(F)V

    :cond_8
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->getFractionToShade()F

    move-result v2

    const/high16 v3, 0x3f000000    # 0.5f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_9

    goto :goto_1

    :cond_9
    move v1, v7

    :goto_1
    iget-boolean v2, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mPanelExpandForBiometric:Z

    if-eq v2, v1, :cond_a

    iput-boolean v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mPanelExpandForBiometric:Z

    iget-object v2, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v2, v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->setPanelExpandingStarted(Z)V

    :cond_a
    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mPluginLockStarContainer:Landroid/view/View;

    if-eqz v1, :cond_b

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_b
    sget-boolean v1, Lcom/android/systemui/LsRune;->LOCKUI_MULTI_USER:Z

    if-eqz v1, :cond_c

    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardUserSwitcherController:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;

    if-eqz p0, :cond_c

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->setAlpha(F)V

    :cond_c
    :goto_2
    return-void
.end method

.method public final updateKeyguardStatusViewAlignment(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardUnfoldTransition:Ljava/util/Optional;

    new-instance v1, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda7;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda7;-><init>(Z)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    sget-object v0, Lcom/android/systemui/keyguard/MigrateClocksToBlueprint;->INSTANCE:Lcom/android/systemui/keyguard/MigrateClocksToBlueprint;

    invoke-static {}, Lcom/android/systemui/Flags;->migrateClocksToBlueprint()V

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mNotificationContainerParent:Lcom/android/systemui/shade/NotificationsQuickSettingsContainer;

    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardStatusViewController:Lcom/android/keyguard/KeyguardStatusViewController;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/android/keyguard/KeyguardStatusViewController;->updateAlignment(Landroidx/constraintlayout/widget/ConstraintLayout;ZZZ)V

    return-void
.end method

.method public final updateLockStarContainer()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "updateLockStarContainer: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mLockStarEnabled:Z

    const-string v2, "NotificationPanelView"

    invoke-static {v0, v1, v2}, Lcom/android/keyguard/KeyguardSecPasswordViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mLockStarEnabled:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v1, Lcom/android/systemui/lockstar/PluginLockStarManager;

    invoke-virtual {v0, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/lockstar/PluginLockStarManager;

    const-string v1, "lockstarContainer"

    invoke-virtual {v0, v1}, Lcom/android/systemui/lockstar/PluginLockStarManager;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mPluginLockStarContainer:Landroid/view/View;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "updateLockStarContainer: ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mPluginLockStarContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mPluginLockStarContainer:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->isOnKeyguard$1()Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "updateLockStarContainer: hide container "

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mPluginLockStarContainer:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mPluginLockStarContainer:Landroid/view/View;

    if-eqz v0, :cond_1

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mPluginLockStarContainer:Landroid/view/View;

    :cond_1
    :goto_0
    return-void
.end method

.method public final updateMaxDisplayedNotifications(Z)V
    .locals 6

    sget-object v0, Lcom/android/systemui/keyguard/MigrateClocksToBlueprint;->INSTANCE:Lcom/android/systemui/keyguard/MigrateClocksToBlueprint;

    invoke-static {}, Lcom/android/systemui/Flags;->migrateClocksToBlueprint()V

    if-eqz p1, :cond_3

    iget p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mCountOfUpdateDisplayedNotifications:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mCountOfUpdateDisplayedNotifications:I

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mCountOfUpdateDisplayedNotificationsCurrentMill:J

    goto :goto_0

    :cond_0
    const/16 v0, 0x28

    if-lt p1, v0, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mCountOfUpdateDisplayedNotificationsCurrentMill:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    cmp-long p1, v2, v4

    if-gez p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "too much call updateMaxDisplayedNotifications >>> "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "NotificationPanelView"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iput v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mCountOfUpdateDisplayedNotifications:I

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->computeMaxKeyguardNotifications()I

    move-result p1

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/shade/NotificationPanelViewController;->setMaxDisplayedNotifications(I)V

    const-string p1, "Recompute"

    iput-object p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mRecomputedMaxCountNotification:Ljava/lang/String;

    goto :goto_1

    :cond_3
    const-string p1, "Skip"

    iput-object p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mRecomputedMaxCountNotification:Ljava/lang/String;

    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->isKeyguardShowing$2()Z

    move-result p1

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    iget-boolean p1, p1, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mDragDownOnKeyguard:Z

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result p1

    if-nez p1, :cond_4

    iget p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mMaxAllowedKeyguardNotifications:I

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->setMaxDisplayedNotifications(I)V

    iget-object p0, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_2

    :cond_4
    const/4 p0, -0x1

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->setMaxDisplayedNotifications(I)V

    iget-object p0, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_2
    return-void
.end method

.method public final updateMaxHeadsUpTranslation()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mView:Lcom/android/systemui/shade/NotificationPanelView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mNavigationBarBottomHeight:I

    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    sub-int v1, v0, v1

    int-to-float v1, v1

    iput v1, v2, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mMaxHeadsUpTranslation:F

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mStackScrollAlgorithm:Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;

    iput v0, v1, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mHeadsUpAppearHeightBottom:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mStateAnimator:Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;

    iput v0, v1, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mHeadsUpAppearHeightBottom:I

    iget v0, v2, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mStackTopMargin:I

    iput v0, v1, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mStackTopMargin:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    return-void
.end method

.method public final updateNotificationTranslucency()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mSecAffordanceHelper:Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper;->isShortcutPreviewSwipingInProgress:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardTouchAnimator:Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->isViRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardEditModeController:Lcom/android/systemui/keyguard/KeyguardEditModeController;

    if-eqz v0, :cond_2

    check-cast v0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->getVIRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mIsOcclusionTransitionRunning:Z

    if-eqz v0, :cond_3

    return-void

    :cond_3
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mQsController:Lcom/android/systemui/shade/QuickSettingsControllerImpl;

    invoke-virtual {p0}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->getExpanded$1()Z

    move-result p0

    if-eqz p0, :cond_4

    return-void

    :cond_4
    sget-object p0, Lcom/android/systemui/keyguard/MigrateClocksToBlueprint;->INSTANCE:Lcom/android/systemui/keyguard/MigrateClocksToBlueprint;

    invoke-static {}, Lcom/android/systemui/Flags;->migrateClocksToBlueprint()V

    return-void
.end method

.method public final updatePanelExpanded()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->isFullyCollapsed()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mExpectingSynthesizedDown:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->isPanelExpanded()Z

    move-result v1

    if-eq v1, v0, :cond_3

    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mSecNotificationPanelViewController:Lcom/android/systemui/shade/SecNotificationPanelViewController;

    if-eqz v1, :cond_2

    iget-object v1, v1, Lcom/android/systemui/shade/SecNotificationPanelViewController;->shadeHeaderController:Lcom/android/systemui/shade/ShadeHeaderController;

    iput-boolean v0, v1, Lcom/android/systemui/shade/ShadeHeaderController;->panelExpanded:Z

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mShadeRepository:Lcom/android/systemui/shade/data/repository/ShadeRepository;

    check-cast v1, Lcom/android/systemui/shade/data/repository/ShadeRepositoryImpl;

    iget-object v1, v1, Lcom/android/systemui/shade/data/repository/ShadeRepositoryImpl;->_legacyExpandedOrAwaitingInputTransfer:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->updateSystemUiStateFlags()V

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mQsController:Lcom/android/systemui/shade/QuickSettingsControllerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->closeQsCustomizer()V

    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->isKeyguardShowing$2()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardTouchAnimator:Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;

    iget v0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->notiScale:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "current noti scale : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->notiScale:F

    const-string v1, "NotificationPanelView"

    invoke-static {v0, p0, v1}, Landroidx/picker3/widget/SeslColorSpectrumView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/lang/String;)V

    :cond_4
    return-void
.end method

.method public final updateResources$1()V
    .locals 7

    const-string v0, "NSSLC#updateResources"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mSplitShadeStateController:Lcom/android/systemui/statusbar/policy/SplitShadeStateController;

    check-cast v0, Lcom/android/systemui/statusbar/policy/SplitShadeStateControllerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/SplitShadeStateControllerImpl;->shouldUseSplitNotificationShade()V

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mQsController:Lcom/android/systemui/shade/QuickSettingsControllerImpl;

    iget-object v1, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mResources:Landroid/content/res/Resources;

    iget-object v1, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mSplitShadeStateController:Lcom/android/systemui/statusbar/policy/SplitShadeStateController;

    check-cast v1, Lcom/android/systemui/statusbar/policy/SplitShadeStateControllerImpl;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/SplitShadeStateControllerImpl;->shouldUseSplitNotificationShade()V

    iget-object v1, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mQs:Lcom/android/systemui/plugins/qs/QS;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v1, v2}, Lcom/android/systemui/plugins/qs/QS;->setInSplitShade(Z)V

    :cond_0
    iget-object v1, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f07145d

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mSplitShadeNotificationsScrimMarginBottom:I

    iget-object v1, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mPanelView:Lcom/android/systemui/shade/NotificationPanelView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3}, Lcom/android/systemui/util/LargeScreenUtils;->shouldUseLargeScreenShadeHeader(Landroid/content/res/Resources;)Z

    move-result v3

    iput-boolean v3, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mUseLargeScreenShadeHeader:Z

    if-eqz v3, :cond_1

    move v3, v2

    goto :goto_0

    :cond_1
    iget-object v3, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f070b99

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    :goto_0
    iget-boolean v4, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mUseLargeScreenShadeHeader:Z

    iget-object v5, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mShadeHeaderController:Lcom/android/systemui/shade/ShadeHeaderController;

    iget-boolean v6, v5, Lcom/android/systemui/shade/ShadeHeaderController;->largeScreenActive:Z

    if-ne v6, v4, :cond_2

    goto :goto_1

    :cond_2
    iput-boolean v4, v5, Lcom/android/systemui/shade/ShadeHeaderController;->largeScreenActive:Z

    invoke-virtual {v5}, Lcom/android/systemui/shade/ShadeHeaderController;->updateTransition()V

    :goto_1
    iget-object v4, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    iput v3, v4, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mStackTopMargin:I

    int-to-float v3, v2

    iput v3, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mQuickQsHeaderHeight:F

    iget-object v3, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f050079

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mEnableClipping:Z

    iget-object v3, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mPanelView:Lcom/android/systemui/shade/NotificationPanelView;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Landroid/view/WindowManager;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/WindowMetrics;->getWindowInsets()Landroid/view/WindowInsets;

    move-result-object v4

    invoke-static {}, Landroid/view/WindowInsets$Type;->systemGestures()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object v4

    iput-object v4, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mCachedGestureInsets:Landroid/graphics/Insets;

    invoke-virtual {v3}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    iput v3, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mCachedWindowWidth:I

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/policy/SystemBarUtils;->getQuickQsOffsetHeight(Landroid/content/Context;)I

    move-result v1

    iput v1, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mQuickQsOffsetHeight:I

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mNotificationsQSContainerController:Lcom/android/systemui/shade/NotificationsQSContainerController;

    invoke-virtual {v0}, Lcom/android/systemui/shade/NotificationsQSContainerController;->updateResources$1()V

    invoke-virtual {p0, v2}, Lcom/android/systemui/shade/NotificationPanelViewController;->updateKeyguardStatusViewAlignment(Z)V

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardMediaController:Lcom/android/systemui/media/controls/ui/controller/KeyguardMediaController;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f07145c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mSplitShadeFullTransitionDistance:I

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public final updateSystemUiStateFlags()V
    .locals 8

    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->isPanelExpanded()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->isCollapsing()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const-wide/32 v3, 0x40000000

    iget-object v5, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mSysUiState:Lcom/android/systemui/model/SysUiState;

    invoke-virtual {v5, v3, v4, v0}, Lcom/android/systemui/model/SysUiState;->setFlag(JZ)V

    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->isFullyExpanded()Z

    move-result v0

    iget-object v3, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mQsController:Lcom/android/systemui/shade/QuickSettingsControllerImpl;

    if-eqz v0, :cond_1

    invoke-virtual {v3}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->getExpanded$1()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    const-wide/16 v6, 0x4

    invoke-virtual {v5, v6, v7, v0}, Lcom/android/systemui/model/SysUiState;->setFlag(JZ)V

    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->isFullyExpanded()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v3}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->getExpanded$1()Z

    move-result v0

    if-eqz v0, :cond_2

    move v1, v2

    :cond_2
    const-wide/16 v2, 0x800

    invoke-virtual {v5, v2, v3, v1}, Lcom/android/systemui/model/SysUiState;->setFlag(JZ)V

    iget p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mDisplayId:I

    invoke-virtual {v5, p0}, Lcom/android/systemui/model/SysUiState;->commitUpdate(I)V

    return-void
.end method

.method public final updateTouchableRegion()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mView:Lcom/android/systemui/shade/NotificationPanelView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->requestLayout()V

    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    check-cast v1, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;

    iget-object v2, v1, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mCurrentState:Lcom/android/systemui/shade/NotificationShadeWindowState;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/systemui/shade/NotificationShadeWindowState;->forceWindowCollapsed:Z

    invoke-virtual {v1, v2}, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->apply(Lcom/android/systemui/shade/NotificationShadeWindowState;)V

    new-instance v1, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda37;

    const/16 v2, 0xa

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda37;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final updateUserSwitcherFlags()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mResources:Landroid/content/res/Resources;

    const v1, 0x11101c5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/systemui/LsRune;->LOCKUI_MULTI_USER:Z

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardUserSwitcherEnabled:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/systemui/flags/Flags;->QS_USER_DETAIL_SHORTCUT:Lcom/android/systemui/flags/ResourceBooleanFlag;

    iget-object v3, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mFeatureFlags:Lcom/android/systemui/flags/FeatureFlags;

    check-cast v3, Lcom/android/systemui/flags/FeatureFlagsClassicRelease;

    invoke-virtual {v3, v0}, Lcom/android/systemui/flags/FeatureFlagsClassicRelease;->isEnabled(Lcom/android/systemui/flags/ResourceBooleanFlag;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v1, v2

    :cond_1
    iput-boolean v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardQsUserSwitchEnabled:Z

    return-void
.end method

.method public final updateUserSwitcherViewControllers(Landroid/widget/FrameLayout;Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherView;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardQsUserSwitchController:Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;

    iput-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardUserSwitcherController:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardQsUserSwitchComponentFactory:Lcom/android/keyguard/dagger/KeyguardQsUserSwitchComponent$Factory;

    invoke-interface {p2, p1}, Lcom/android/keyguard/dagger/KeyguardQsUserSwitchComponent$Factory;->build(Landroid/widget/FrameLayout;)Lcom/android/keyguard/dagger/KeyguardQsUserSwitchComponent;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/keyguard/dagger/KeyguardQsUserSwitchComponent;->getKeyguardQsUserSwitchController()Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardQsUserSwitchController:Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;

    invoke-virtual {p1}, Lcom/android/systemui/util/ViewController;->init()V

    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardStatusBarViewController:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->setKeyguardUserSwitcherEnabled(Z)V

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    iget-object p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardUserSwitcherComponentFactory:Lcom/android/keyguard/dagger/KeyguardUserSwitcherComponent$Factory;

    invoke-interface {p1, p2}, Lcom/android/keyguard/dagger/KeyguardUserSwitcherComponent$Factory;->build(Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherView;)Lcom/android/keyguard/dagger/KeyguardUserSwitcherComponent;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/keyguard/dagger/KeyguardUserSwitcherComponent;->getKeyguardUserSwitcherController()Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardUserSwitcherController:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;

    invoke-virtual {p1}, Lcom/android/systemui/util/ViewController;->init()V

    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardStatusBarViewController:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->setKeyguardUserSwitcherEnabled(Z)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardStatusBarViewController:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->setKeyguardUserSwitcherEnabled(Z)V

    :goto_0
    return-void
.end method

.method public final updateVisibility$6()V
    .locals 7

    sget-object v0, Lcom/android/systemui/statusbar/notification/shared/NotificationsHeadsUpRefactor;->INSTANCE:Lcom/android/systemui/statusbar/notification/shared/NotificationsHeadsUpRefactor;

    invoke-static {}, Lcom/android/systemui/Flags;->notificationsHeadsUpRefactor()V

    iget-boolean v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mHeadsUpAnimatingAway:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mHeadsUpPinnedMode:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    iget v3, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mPanelInVisibleReason:I

    const/4 v4, -0x1

    iput v4, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mPanelInVisibleReason:I

    if-nez v0, :cond_8

    iput v4, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mPanelInVisibleReason:I

    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->isExpanded()Z

    move-result v4

    if-nez v4, :cond_2

    iput v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mPanelInVisibleReason:I

    :cond_2
    iget-boolean v5, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mBouncerShowing:Z

    if-eqz v5, :cond_3

    iput v2, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mPanelInVisibleReason:I

    move v4, v1

    :cond_3
    sget-boolean v5, Lcom/android/systemui/LsRune;->KEYGUARD_SUB_DISPLAY_LOCK:Z

    if-eqz v5, :cond_4

    if-eqz v4, :cond_4

    sget-object v5, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v6, Lcom/android/systemui/keyguard/KeyguardFoldController;

    invoke-virtual {v5, v6}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/keyguard/KeyguardFoldController;

    check-cast v5, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;

    invoke-virtual {v5}, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->isUnlockOnFoldOpened()Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v4, 0x2

    iput v4, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mPanelInVisibleReason:I

    move v4, v1

    :cond_4
    sget-boolean v5, Lcom/android/systemui/LsRune;->SECURITY_SWIPE_BOUNCER:Z

    if-eqz v5, :cond_5

    if-eqz v4, :cond_5

    sget-object v5, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v6, Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-virtual {v5, v6}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast v5, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->isShownSwipeBouncer()Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v4, 0x3

    iput v4, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mPanelInVisibleReason:I

    move v4, v1

    :cond_5
    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->isKeyguardShowing$2()Z

    move-result v5

    if-eqz v5, :cond_6

    iget-boolean v5, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mFullScreenModeEnabled:Z

    if-eqz v5, :cond_6

    const/4 v4, 0x5

    iput v4, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mPanelInVisibleReason:I

    move v4, v1

    :cond_6
    if-eqz v4, :cond_7

    goto :goto_2

    :cond_7
    move v4, v1

    goto :goto_3

    :cond_8
    :goto_2
    move v4, v2

    :goto_3
    iget v5, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mPanelInVisibleReason:I

    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mView:Lcom/android/systemui/shade/NotificationPanelView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v6

    if-nez v6, :cond_9

    goto :goto_4

    :cond_9
    move v2, v1

    :goto_4
    if-ne v2, v4, :cond_a

    if-nez v4, :cond_b

    if-eq v3, v5, :cond_b

    :cond_a
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v2, v0, v3}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "KeyguardVisible"

    const-string/jumbo v3, "shouldPanelBeVisible %b / headUpVisible=%b, why=%d"

    invoke-static {v2, v3, v0}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_b
    if-eqz v4, :cond_c

    goto :goto_5

    :cond_c
    const/4 v1, 0x4

    :goto_5
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method
