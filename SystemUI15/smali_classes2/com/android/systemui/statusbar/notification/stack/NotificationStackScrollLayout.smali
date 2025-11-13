.class public Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;
.super Landroid/view/ViewGroup;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/Dumpable;
.implements Lcom/android/systemui/statusbar/notification/stack/ui/view/NotificationScrollView;
.implements Lcom/android/systemui/logging/PanelScreenShotLogger$LogProvider;


# static fields
.field public static final DEBUG_DISABLE_SHOW_NEW_NOTIF_ONLY:Z

.field static final RUBBER_BAND_FACTOR_NORMAL:F = 0.1f


# instance fields
.field public final collectVisibleLocationsCallable:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$4;

.field public mActivePointerId:I

.field public mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field public final mAddedHeadsUpChildren:Ljava/util/ArrayList;

.field public final mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

.field public mAnimateStackYForContentHeightChange:Z

.field public final mAnimationEvents:Ljava/util/ArrayList;

.field public final mAnimationFinishedRunnables:Ljava/util/HashSet;

.field public mAnimationRunning:Z

.field public mAnimationsEnabled:Z

.field public final mBackgroundAnimationRect:Landroid/graphics/Rect;

.field public mBackgroundXFactor:F

.field public mBackwardScrollable:Z

.field public final mBgCornerRadii:[F

.field public mBottomPadding:I

.field public mChangePositionInProgress:Z

.field public mCheckForLeavebehind:Z

.field public mChildTransferInProgress:Z

.field public final mChildrenChangingPositions:Ljava/util/ArrayList;

.field public final mChildrenToAddAnimated:Ljava/util/HashSet;

.field public final mChildrenToRemoveAnimated:Ljava/util/ArrayList;

.field public mChildrenUpdateRequested:Z

.field public final mChildrenUpdater:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$1;

.field public mClearAllAnimationListener:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$$ExternalSyntheticLambda6;

.field public mClearAllFinishedWhilePanelExpandedRunnable:Ljava/lang/Runnable;

.field public mClearAllInProgress:Z

.field public mClearAllListener:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$$ExternalSyntheticLambda6;

.field public final mClearTransientViewsWhenFinished:Ljava/util/HashSet;

.field public final mClipRect:Landroid/graphics/Rect;

.field public mCollapseShadeDelayedWhenNoViewsToAnimateAwayRunnable:Ljava/lang/Runnable;

.field public mContentHeight:I

.field public mContinuousShadowUpdate:Z

.field public mController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

.field public mCornerRadius:I

.field public mCurrentStackHeight:I

.field public mDisallowDismissInThisMotion:Z

.field public mDisallowScrollingInThisMotion:Z

.field public mDismissUsingRowTranslationX:Z

.field public final mDisplayListener:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$5;

.field public final mDisplayManager:Landroid/hardware/display/DisplayManager;

.field public mDisplayState:I

.field public mDndStatus:I

.field public mDndStatusView:Lcom/android/systemui/statusbar/DndStatusView;

.field public mDontClampNextScroll:Z

.field public mDontReportNextOverScroll:Z

.field public mDownX:I

.field public mEmptyShadeView:Lcom/android/systemui/statusbar/EmptyShadeView;

.field public mEverythingNeedsAnimation:Z

.field public final mExpandHelper:Lcom/android/systemui/ExpandHelper;

.field public final mExpandHelperCallback:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$15;

.field public mExpandedGroupView:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

.field public mExpandedHeight:F

.field public final mExpandedHeightListeners:Ljava/util/ArrayList;

.field public mExpandedInThisMotion:Z

.field public mExpandingNotification:Z

.field public mExpandingNotificationRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

.field public mExtraTopInsetForFullShadeTransition:F

.field public mFinishScrollingCallback:Ljava/lang/Runnable;

.field public mFlingAfterUpEvent:Z

.field public mFooterClearAllListener:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$$ExternalSyntheticLambda6;

.field public mFooterView:Lcom/android/systemui/statusbar/notification/footer/ui/view/FooterView;

.field public mForceLayoutFirstMeasure:Z

.field public mForceNoOverlappingRendering:Z

.field public mForcedScroll:Landroid/view/View;

.field public mForwardScrollable:Z

.field public final mFromMoreCardAdditions:Ljava/util/HashSet;

.field public final mFullExpansionPanelNotiAlphaController:Lcom/android/systemui/notification/FullExpansionPanelNotiAlphaController;

.field public mGoToFullShadeDelay:J

.field public mGoToFullShadeNeedsAnimation:Z

.field public final mGroupExpansionManager:Lcom/android/systemui/statusbar/notification/collection/render/GroupExpansionManager;

.field public final mGroupMembershipManager:Lcom/android/systemui/statusbar/notification/collection/render/GroupMembershipManager;

.field public mHasFilteredOutSeenNotifications:Z

.field mHeadsUpAnimatingAway:Z

.field public final mHeadsUpAnimatingAwayListener:Ljava/util/function/Consumer;

.field public mHeadsUpAppearanceController:Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;

.field public final mHeadsUpCallback:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$13;

.field public final mHeadsUpChangeAnimations:Ljava/util/HashSet;

.field public mHeadsUpGoingAwayAnimationsAllowed:Z

.field public final mHeadsUpHeightChangedListeners:Lcom/android/systemui/util/ListenerSet;

.field public mHeadsUpInset:I

.field public mHideSensitiveNeedsAnimation:Z

.field public mHideXInterpolator:Landroid/view/animation/Interpolator;

.field public mHighPriorityBeforeSpeedBump:Z

.field mImeInset:I

.field public mInHeadsUpPinnedMode:Z

.field public mInitialTouchX:F

.field public mInitialTouchY:F

.field public final mInsetsCallback:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$6;

.field public mInterpolatedHideAmount:F

.field public mIntrinsicContentHeight:F

.field public mIntrinsicPadding:I

.field public mIsBeingDragged:Z

.field public mIsChangedOrientation:Z

.field public mIsClipped:Z

.field public mIsCurrentUserSetup:Z

.field public mIsExpanded:Z

.field public mIsExpansionChanging:Z

.field public mIsInsetAnimationRunning:Z

.field public mIsRemoteInputActive:Z

.field public mIsVisibleFromGone:Z

.field public mKeyguardBypassEnabled:Z

.field public final mKeyguardFoldController:Lcom/android/systemui/keyguard/KeyguardFoldController;

.field public mLastGoneCallTrace:Ljava/lang/String;

.field public mLastInitViewDumpString:Ljava/lang/String;

.field public mLastInitViewElapsedRealtime:J

.field public mLastMotionY:I

.field public mLastSentAppear:F

.field public mLastSentExpandedHeight:F

.field public mLastUpdateSidePaddingDumpString:Ljava/lang/String;

.field public mLastUpdateSidePaddingElapsedRealtime:J

.field public mLaunchAnimationParams:Lcom/android/systemui/statusbar/notification/LaunchAnimationParameters;

.field public final mLaunchedNotificationClipPath:Landroid/graphics/Path;

.field public final mLaunchedNotificationRadii:[F

.field public mLaunchingNotification:Z

.field public mLaunchingNotificationNeedsToBeClipped:Z

.field public mLinearHideAmount:F

.field public mListener:Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$$ExternalSyntheticLambda2;

.field public mLogger:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLogger;

.field public mManageButtonClickListener:Landroid/view/View$OnClickListener;

.field public mMaxDisplayedNotifications:I

.field public mMaxLayoutHeight:I

.field public mMaxOverScroll:F

.field public mMaxScrollAfterExpand:I

.field public mMaxTopPadding:I

.field public mMaximumVelocity:I

.field public mMediaHost:Lcom/android/systemui/media/SecMediaHost;

.field public mMinInteractionHeight:I

.field public mMinTopOverScrollToEscape:F

.field public mMinimumPaddings:I

.field public mMinimumVelocity:I

.field public mNeedToUpdateProgress:Z

.field public mNeedViewResizeAnimation:Z

.field public mNeedsAnimation:Z

.field public mNotificationStackSizeCalculator:Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator;

.field public final mOnChildHeightChangedListener:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$7;

.field public final mOnChildSensitivityChangedListener:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$8;

.field public mOnEmptySpaceClickListener:Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda8;

.field public mOnHeightChangedListener:Lcom/android/systemui/statusbar/notification/row/ExpandableView$OnHeightChangedListener;

.field public final mOnHeightChangedRunnable:Ljava/lang/Runnable;

.field public mOnStackYChanged:Ljava/util/function/Consumer;

.field public mOnlyScrollingInThisMotion:Z

.field public mOrientation:I

.field public final mOutlineProvider:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$3;

.field public mOverScrolledBottomPixels:F

.field public mOverScrolledTopPixels:F

.field public mOverflingDistance:I

.field public mOverscrollTopChangedListener:Lcom/android/systemui/shade/QuickSettingsControllerImpl$NsslOverscrollTopChangedListener;

.field public mOwnScrollY:I

.field public mPaddingBetweenElements:I

.field public mPanelSplitHelper:Lcom/android/systemui/shade/SecPanelSplitHelper;

.field public mPanelTracking:Z

.field public mPulsing:Z

.field public mQsExpansionFraction:F

.field public mQsFullScreen:Z

.field public mQsHeader:Landroid/view/ViewGroup;

.field public final mQsHeaderBound:Landroid/graphics/Rect;

.field public mQsMinHeight:I

.field public mQsTilePadding:I

.field public final mQuickPanelLogBuilder:Ljava/lang/StringBuilder;

.field public final mQuickPanelLogger:Lcom/android/systemui/log/QuickPanelLogger;

.field public final mReflingAndAnimateScroll:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$$ExternalSyntheticLambda4;

.field public mRequestedClipBounds:Landroid/graphics/Rect;

.field public mResetUserExpandedStatesRunnable:Ljava/lang/Runnable;

.field public final mRoundedClipPath:Landroid/graphics/Path;

.field public mRoundedRectClippingBottom:I

.field public mRoundedRectClippingLeft:I

.field public mRoundedRectClippingRight:I

.field public mRoundedRectClippingTop:I

.field public mRoundedRectClippingYTranslation:I

.field public final mRunningAnimationUpdater:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$2;

.field public final mScreenOffAnimationController:Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;

.field public final mScrollAdapter:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$9;

.field public mScrollChangedConsumer:Ljava/util/function/Consumer;

.field public mScrollListener:Ljava/util/function/Consumer;

.field public final mScrollViewFields:Lcom/android/systemui/statusbar/notification/stack/ScrollViewFields;

.field public mScrollable:Z

.field public mScrolledToTopOnFirstDown:Z

.field public mScroller:Landroid/widget/OverScroller;

.field public mScrollingEnabled:Z

.field public final mSections:[Lcom/android/systemui/statusbar/notification/stack/NotificationSection;

.field public final mSectionsManager:Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;

.field public mSemDisplayDeviceType:I

.field public mShadeNeedsToClose:Z

.field public final mShadowUpdater:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$$ExternalSyntheticLambda2;

.field public mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

.field public mShelfAlphaInAnimating:Z

.field public mShelfAlphaOutAnimating:Z

.field public mShelfManager:Lcom/android/systemui/statusbar/NotificationShelfManager;

.field public mShouldShowShelfOnly:Z

.field public mShouldSkipTopPaddingAnimationAfterFold:Z

.field public mShouldUseRoundedRectClipping:Z

.field public mSidePaddings:I

.field public mSkinnyNotifsInLandscape:Z

.field public mSlopMultiplier:F

.field public mSpeedBumpIndex:I

.field public mSpeedBumpIndexDirty:Z

.field public final mSplitShadeMinContentHeight:I

.field public mSplitShadeStateController:Lcom/android/systemui/statusbar/policy/SplitShadeStateController;

.field public final mStackHeightChangedListeners:Lcom/android/systemui/util/ListenerSet;

.field public final mStackScrollAlgorithm:Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;

.field public final mStateAnimator:Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;

.field mStatusBarHeight:I

.field public mStatusBarState:I

.field public mSuppressChildrenMeasureAndLayout:Z

.field public final mSwipeCancelledView:Ljava/util/HashSet;

.field public mSwipeHelper:Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;

.field public final mSwipedOutViews:Ljava/util/ArrayList;

.field public final mSystemUIWidgetCallback:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$16;

.field public final mTempInt2:[I

.field public final mTmpList:Ljava/util/ArrayList;

.field public final mTmpRect:Landroid/graphics/Rect;

.field public final mTmpSortedChildren:Ljava/util/ArrayList;

.field public mTopHeadsUpRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

.field public mTopPaddingNeedsAnimation:Z

.field public mTopPaddingOverflow:F

.field public mTouchHandler:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$TouchHandler;

.field public mTouchIsClick:Z

.field public mTouchSlop:I

.field public mUpcomingStatusBarState:I

.field public mVelocityTracker:Landroid/view/VelocityTracker;

.field public final mViewPositionComparator:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$$ExternalSyntheticLambda3;

.field public mWaterfallTopInset:I

.field public mWillExpand:Z

.field public mYDiff:I

.field public mZenModeController:Lcom/android/systemui/statusbar/policy/ZenModeController;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "debug.noti.disable_new_notif_only"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->DEBUG_DISABLE_SHOW_NEW_NOTIF_ONLY:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 12

    const/4 v0, 0x1

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, v2, v2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mShadeNeedsToClose:Z

    const p2, 0x7fffffff

    iput p2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mCurrentStackHeight:I

    new-instance p2, Lcom/android/systemui/log/QuickPanelLogger;

    const-string v3, "NSSL"

    invoke-direct {p2, v3}, Lcom/android/systemui/log/QuickPanelLogger;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mQuickPanelLogger:Lcom/android/systemui/log/QuickPanelLogger;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mQuickPanelLogBuilder:Ljava/lang/StringBuilder;

    const/4 p2, -0x1

    iput p2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mActivePointerId:I

    iput v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mImeInset:I

    new-instance v3, Lcom/android/systemui/statusbar/notification/stack/ScrollViewFields;

    invoke-direct {v3}, Lcom/android/systemui/statusbar/notification/stack/ScrollViewFields;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mScrollViewFields:Lcom/android/systemui/statusbar/notification/stack/ScrollViewFields;

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mChildrenToAddAnimated:Ljava/util/HashSet;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAddedHeadsUpChildren:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mChildrenToRemoveAnimated:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mChildrenChangingPositions:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mFromMoreCardAdditions:Ljava/util/HashSet;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAnimationEvents:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mSwipedOutViews:Ljava/util/ArrayList;

    sget v3, Lcom/android/systemui/scene/shared/flag/SceneContainerFlag;->$r8$clinit:I

    invoke-static {}, Lcom/android/systemui/Flags;->sceneContainer()V

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAnimationsEnabled:Z

    iput p2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mSpeedBumpIndex:I

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mSpeedBumpIndexDirty:Z

    new-instance v3, Lcom/android/systemui/util/ListenerSet;

    invoke-direct {v3}, Lcom/android/systemui/util/ListenerSet;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mStackHeightChangedListeners:Lcom/android/systemui/util/ListenerSet;

    new-instance v3, Lcom/android/systemui/util/ListenerSet;

    invoke-direct {v3}, Lcom/android/systemui/util/ListenerSet;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mHeadsUpHeightChangedListeners:Lcom/android/systemui/util/ListenerSet;

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    new-instance v3, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$1;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$1;-><init>(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mChildrenUpdater:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$1;

    new-array v3, v1, [I

    iput-object v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mTempInt2:[I

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAnimationFinishedRunnables:Ljava/util/HashSet;

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mClearTransientViewsWhenFinished:Ljava/util/HashSet;

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mHeadsUpChangeAnimations:Ljava/util/HashSet;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mTmpList:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$2;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$2;-><init>(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mRunningAnimationUpdater:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$2;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mTmpSortedChildren:Ljava/util/ArrayList;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mQsHeaderBound:Landroid/graphics/Rect;

    new-instance v3, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mShadowUpdater:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$$ExternalSyntheticLambda2;

    new-instance v3, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$$ExternalSyntheticLambda3;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mViewPositionComparator:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$$ExternalSyntheticLambda3;

    new-instance v3, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$3;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$3;-><init>(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mOutlineProvider:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$3;

    new-instance v3, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$4;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$4;-><init>(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)V

    new-instance v3, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$5;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$5;-><init>(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mDisplayListener:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$5;

    new-instance v3, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$6;

    invoke-direct {v3, p0, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$6;-><init>(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;I)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mInsetsCallback:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$6;

    const/4 v3, 0x0

    iput v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mInterpolatedHideAmount:F

    iput v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mLinearHideAmount:F

    const/high16 v4, 0x3f800000    # 1.0f

    iput v4, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mBackgroundXFactor:F

    iput p2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mMaxDisplayedNotifications:I

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mClipRect:Landroid/graphics/Rect;

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mHeadsUpGoingAwayAnimationsAllowed:Z

    new-instance p2, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$$ExternalSyntheticLambda4;

    invoke-direct {p2, p0, v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;I)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mReflingAndAnimateScroll:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$$ExternalSyntheticLambda4;

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mBackgroundAnimationRect:Landroid/graphics/Rect;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mExpandedHeightListeners:Ljava/util/ArrayList;

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mTmpRect:Landroid/graphics/Rect;

    sget-object p2, Lcom/android/app/animation/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mHideXInterpolator:Landroid/view/animation/Interpolator;

    new-instance p2, Landroid/graphics/Path;

    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mRoundedClipPath:Landroid/graphics/Path;

    new-instance p2, Landroid/graphics/Path;

    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mLaunchedNotificationClipPath:Landroid/graphics/Path;

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mShouldUseRoundedRectClipping:Z

    const/16 p2, 0x8

    new-array v4, p2, [F

    iput-object v4, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mBgCornerRadii:[F

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAnimateStackYForContentHeightChange:Z

    new-array v4, p2, [F

    iput-object v4, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mLaunchedNotificationRadii:[F

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mDismissUsingRowTranslationX:Z

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mShouldSkipTopPaddingAnimationAfterFold:Z

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mSplitShadeStateController:Lcom/android/systemui/statusbar/policy/SplitShadeStateController;

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    iput-object v4, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mSwipeCancelledView:Ljava/util/HashSet;

    new-instance v4, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$7;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$7;-><init>(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)V

    iput-object v4, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mOnChildHeightChangedListener:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$7;

    new-instance v4, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$8;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$8;-><init>(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)V

    iput-object v4, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mOnChildSensitivityChangedListener:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$8;

    new-instance v4, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$9;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$9;-><init>(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)V

    iput-object v4, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mScrollAdapter:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$9;

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mSuppressChildrenMeasureAndLayout:Z

    new-instance v4, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$12;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$12;-><init>(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)V

    new-instance v4, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$13;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$13;-><init>(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)V

    iput-object v4, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mHeadsUpCallback:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$13;

    new-instance v4, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$15;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$15;-><init>(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)V

    iput-object v4, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mExpandHelperCallback:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$15;

    new-instance v4, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$16;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$16;-><init>(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)V

    iput-object v4, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mSystemUIWidgetCallback:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$16;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-class v5, Lcom/android/systemui/flags/FeatureFlags;

    sget-object v6, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v6, v5}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/flags/FeatureFlags;

    sget-object v6, Lcom/android/systemui/flags/Flags;->INSTANCE:Lcom/android/systemui/flags/Flags;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v6, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;

    invoke-virtual {v5, v6}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;

    iput-object v5, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mSectionsManager:Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;

    sget-object v6, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v7, Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;

    invoke-virtual {v6, v7}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;

    iput-object v6, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mScreenOffAnimationController:Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;

    iget-boolean v6, v5, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->initialized:Z

    xor-int/2addr v6, v0

    if-eqz v6, :cond_2

    iput-boolean v0, v5, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->initialized:Z

    iput-object p0, v5, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->parent:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->reinflateViews()V

    iget-object v6, v5, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    check-cast v6, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    iget-object v7, v5, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->configurationListener:Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$configurationListener$1;

    invoke-virtual {v6, v7}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->addCallback(Ljava/lang/Object;)V

    iget-object v5, v5, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->sectionsFeatureManager:Lcom/android/systemui/statusbar/notification/NotificationSectionsFeatureManager;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, Lcom/android/systemui/Flags;->FEATURE_FLAGS:Lcom/android/systemui/FeatureFlagsImpl;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/systemui/Flags;->notificationMinimalismPrototype()V

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/NotificationSectionsFeatureManager;->isFilteringEnabled()Z

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/NotificationSectionsFeatureManager;->isFilteringEnabled()Z

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/NotificationSectionsFeatureManager;->isFilteringEnabled()Z

    move-result v5

    const/16 v6, 0xd

    const/16 v7, 0xc

    const/4 v8, 0x3

    const/4 v9, 0x6

    const/4 v10, 0x5

    const/4 v11, 0x4

    if-eqz v5, :cond_0

    const/16 v5, 0xa

    new-array v5, v5, [I

    aput v11, v5, v2

    aput v1, v5, v0

    aput v10, v5, v1

    aput v9, v5, v8

    const/4 v8, 0x7

    aput v8, v5, v11

    aput p2, v5, v10

    const/16 v10, 0x9

    aput v10, v5, v9

    const/16 v9, 0xb

    aput v9, v5, v8

    aput v7, v5, p2

    aput v6, v5, v10

    goto :goto_0

    :cond_0
    new-array v5, v9, [I

    aput v11, v5, v2

    aput v1, v5, v0

    aput v10, v5, v1

    aput v9, v5, v8

    aput v7, v5, v11

    aput v6, v5, v10

    :goto_0
    new-instance p2, Ljava/util/ArrayList;

    array-length v6, v5

    invoke-direct {p2, v6}, Ljava/util/ArrayList;-><init>(I)V

    array-length v6, v5

    move v7, v2

    :goto_1
    if-ge v7, v6, :cond_1

    aget v8, v5, v7

    new-instance v9, Lcom/android/systemui/statusbar/notification/stack/NotificationSection;

    invoke-direct {v9, v8}, Lcom/android/systemui/statusbar/notification/stack/NotificationSection;-><init>(I)V

    invoke-virtual {p2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/2addr v7, v0

    goto :goto_1

    :cond_1
    new-array v5, v2, [Lcom/android/systemui/statusbar/notification/stack/NotificationSection;

    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lcom/android/systemui/statusbar/notification/stack/NotificationSection;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mSections:[Lcom/android/systemui/statusbar/notification/stack/NotificationSection;

    sget-object p2, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v5, Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {p2, v5}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    const v5, 0x7f070b8d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    const v6, 0x7f070b85

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    const v7, 0x7f070bcb

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    new-instance v4, Lcom/android/systemui/ExpandHelper;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v7

    iget-object v8, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mExpandHelperCallback:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$15;

    invoke-direct {v4, v7, v8, v5, v6}, Lcom/android/systemui/ExpandHelper;-><init>(Landroid/content/Context;Lcom/android/systemui/ExpandHelper$Callback;II)V

    iput-object v4, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mExpandHelper:Lcom/android/systemui/ExpandHelper;

    iput-object p0, v4, Lcom/android/systemui/ExpandHelper;->mEventSource:Landroid/view/View;

    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mScrollAdapter:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$9;

    iput-object v5, v4, Lcom/android/systemui/ExpandHelper;->mScrollAdapter:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$9;

    new-instance v4, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;

    invoke-direct {v4, p1, p0}, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;)V

    iput-object v4, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mStackScrollAlgorithm:Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;

    new-instance v4, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;

    invoke-direct {v4, p1, p0}, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)V

    iput-object v4, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mStateAnimator:Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mOutlineProvider:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$3;

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    invoke-static {}, Lcom/android/systemui/Flags;->sceneContainer()V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setWillNotDraw(Z)V

    sget-object v4, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v5, Lcom/android/systemui/statusbar/notification/collection/render/GroupMembershipManager;

    invoke-virtual {v4, v5}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/notification/collection/render/GroupMembershipManager;

    iput-object v4, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mGroupMembershipManager:Lcom/android/systemui/statusbar/notification/collection/render/GroupMembershipManager;

    sget-object v4, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v5, Lcom/android/systemui/statusbar/notification/collection/render/GroupExpansionManager;

    invoke-virtual {v4, v5}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/notification/collection/render/GroupExpansionManager;

    iput-object v4, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mGroupExpansionManager:Lcom/android/systemui/statusbar/notification/collection/render/GroupExpansionManager;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setImportantForAccessibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mInsetsCallback:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$6;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setWindowInsetsAnimationCallback(Landroid/view/WindowInsetsAnimation$Callback;)V

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v4, Lcom/android/systemui/notification/FullExpansionPanelNotiAlphaController;

    invoke-virtual {v0, v4}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/notification/FullExpansionPanelNotiAlphaController;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mFullExpansionPanelNotiAlphaController:Lcom/android/systemui/notification/FullExpansionPanelNotiAlphaController;

    iput-object p0, v0, Lcom/android/systemui/notification/FullExpansionPanelNotiAlphaController;->mStackScrollLayout:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    new-instance v4, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v4}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    iget-object v5, v0, Lcom/android/systemui/notification/FullExpansionPanelNotiAlphaController;->mStackScrollLayout:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    new-array v6, v1, [F

    fill-array-data v6, :array_0

    const-string v7, "alpha"

    invoke-virtual {v4, v5, v7, v6}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    iput v3, v4, Lcom/android/systemui/qs/TouchAnimator$Builder;->mStartDelay:F

    const/high16 v3, 0x3f000000    # 0.5f

    iput v3, v4, Lcom/android/systemui/qs/TouchAnimator$Builder;->mEndDelay:F

    iget-object v3, v0, Lcom/android/systemui/notification/FullExpansionPanelNotiAlphaController;->mSineInOut33:Landroid/view/animation/Interpolator;

    iput-object v3, v4, Lcom/android/systemui/qs/TouchAnimator$Builder;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v4}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v3

    iput-object v3, v0, Lcom/android/systemui/notification/FullExpansionPanelNotiAlphaController;->mStackScrollerAlphaAnimator:Lcom/android/systemui/qs/TouchAnimator;

    new-instance v3, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v3}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    iget-object v0, v0, Lcom/android/systemui/notification/FullExpansionPanelNotiAlphaController;->mStackScrollLayout:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    new-array v1, v1, [F

    fill-array-data v1, :array_1

    invoke-virtual {v3, v0, v7, v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    const v0, 0x3f4ccccd    # 0.8f

    iput v0, v3, Lcom/android/systemui/qs/TouchAnimator$Builder;->mEndDelay:F

    invoke-virtual {v3}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    sget-object v0, Lcom/android/systemui/Dependency;->BG_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    sget-object v1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v1, v0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    const-string v1, "display"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/display/DisplayManager;

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mDisplayListener:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$5;

    invoke-virtual {p1, v1, v0}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    sget-object p1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v0, Lcom/android/systemui/keyguard/KeyguardFoldController;

    invoke-virtual {p1, v0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/keyguard/KeyguardFoldController;

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mKeyguardFoldController:Lcom/android/systemui/keyguard/KeyguardFoldController;

    sget-object p1, Lcom/android/systemui/logging/PanelScreenShotLogger;->INSTANCE:Lcom/android/systemui/logging/PanelScreenShotLogger;

    const-string v0, "AmbientState"

    invoke-virtual {p1, v0, p2}, Lcom/android/systemui/logging/PanelScreenShotLogger;->addLogProvider(Ljava/lang/String;Lcom/android/systemui/logging/PanelScreenShotLogger$LogProvider;)V

    const-string p2, "StackScroller"

    invoke-virtual {p1, p2, p0}, Lcom/android/systemui/logging/PanelScreenShotLogger;->addLogProvider(Ljava/lang/String;Lcom/android/systemui/logging/PanelScreenShotLogger$LogProvider;)V

    sget-object p1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class p2, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    invoke-virtual {p1, p2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mSystemUIWidgetCallback:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$16;

    const-wide/16 v0, 0x200

    invoke-virtual {p1, v2, p0, v0, v1}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->registerCallback(ZLcom/android/systemui/widget/SystemUIWidgetCallback;J)V

    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "NotificationSectionsManager already initialized"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public static synthetic access$000(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)I
    .locals 0

    iget p0, p0, Landroid/view/ViewGroup;->mScrollX:I

    return p0
.end method

.method public static synthetic access$100(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static getApplicationNameFromPackage(Lcom/android/systemui/statusbar/policy/ZenModeController;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    check-cast p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static includeChildInClearAll(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;I)Z
    .locals 4

    instance-of v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->areGutsExposed()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->hasFinishedInitialization()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->canViewBeCleared()Z

    move-result v0

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    if-eqz v0, :cond_8

    const/4 v0, 0x1

    if-eqz p1, :cond_7

    const/16 v2, 0xd

    if-eq p1, v0, :cond_6

    const/4 v3, 0x2

    if-eq p1, v3, :cond_4

    const/4 v2, 0x3

    if-ne p1, v2, :cond_3

    sget-object p1, Lcom/android/systemui/noticenter/NotiCenterPlugin;->INSTANCE:Lcom/android/systemui/noticenter/NotiCenterPlugin;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lcom/android/systemui/noticenter/NotiCenterPlugin;->noclearAppList:Ljava/util/HashSet;

    if-eqz p1, :cond_2

    invoke-virtual {p1, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    goto :goto_2

    :cond_2
    move p0, v1

    :goto_2
    xor-int/2addr p0, v0

    goto :goto_4

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unknown selection: "

    invoke-static {p1, v0}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mBucket:I

    if-ne p0, v2, :cond_5

    goto :goto_3

    :cond_5
    move p0, v1

    goto :goto_4

    :cond_6
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mBucket:I

    if-ge p0, v2, :cond_5

    :cond_7
    :goto_3
    move p0, v0

    :goto_4
    if-eqz p0, :cond_8

    move v1, v0

    :cond_8
    return v1
.end method

.method public static isPinnedHeadsUp(Landroid/view/View;)Z
    .locals 2

    instance-of v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsHeadsUp:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsPinned:Z

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static updateNotification(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .locals 3

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v1, Lnoticolorpicker/NotificationColorPicker;

    invoke-virtual {v0, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnoticolorpicker/NotificationColorPicker;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mDimmed:Z

    invoke-virtual {v0, p0, v1}, Lnoticolorpicker/NotificationColorPicker;->updateAllTextViewColors(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Z)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->getNotificationChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mAttachedChildren:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-static {v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateNotification(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final addTransientView(Landroid/view/View;I)V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mLogger:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLogger;

    if-eqz v0, :cond_0

    instance-of v1, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v1, :cond_0

    move-object v1, p1

    check-cast v1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    new-instance v3, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v3}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    iget-object v4, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    sget-object v4, Lcom/android/systemui/log/core/LogLevel;->INFO:Lcom/android/systemui/log/core/LogLevel;

    new-instance v5, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLogger$addTransientRow$2;

    invoke-direct {v5, v3, v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLogger$addTransientRow$2;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    const-string v2, "NotificationStackScroll"

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLogger;->notificationRenderBuffer:Lcom/android/systemui/log/LogBuffer;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v4, v5, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v2

    invoke-static {v1}, Lcom/android/systemui/statusbar/notification/NotificationUtilsKt;->getLogKey(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)Ljava/lang/String;

    move-result-object v1

    move-object v3, v2

    check-cast v3, Lcom/android/systemui/log/LogMessageImpl;

    iput-object v1, v3, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    iput p2, v3, Lcom/android/systemui/log/LogMessageImpl;->int1:I

    invoke-virtual {v0, v2}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->addTransientView(Landroid/view/View;I)V

    return-void
.end method

.method public final animateScroll()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v1

    if-eq v0, v1, :cond_4

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getScrollRange$1()I

    move-result v2

    if-gez v1, :cond_0

    if-gez v0, :cond_1

    :cond_0
    if-le v1, v2, :cond_2

    if-gt v0, v2, :cond_2

    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v3}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v3

    iget v4, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mMinimumVelocity:I

    int-to-float v4, v4

    cmpl-float v4, v3, v4

    if-ltz v4, :cond_2

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v4, 0x447a0000    # 1000.0f

    div-float/2addr v3, v4

    iget v4, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mOverflingDistance:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    iput v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mMaxOverScroll:F

    :cond_2
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mDontClampNextScroll:Z

    if-eqz v3, :cond_3

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    :cond_3
    sub-int/2addr v1, v0

    iget v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mMaxOverScroll:F

    float-to-int v3, v3

    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->customOverScrollBy(IIII)V

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mReflingAndAnimateScroll:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$$ExternalSyntheticLambda4;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mDontClampNextScroll:Z

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mFinishScrollingCallback:Ljava/lang/Runnable;

    if-eqz p0, :cond_6

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_6
    :goto_0
    return-void
.end method

.method public final applyCurrentState()V
    .locals 6

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    iget-object v4, v3, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mViewState:Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    iget-boolean v5, v4, Lcom/android/systemui/statusbar/notification/stack/ViewState;->gone:Z

    if-nez v5, :cond_0

    invoke-virtual {v4, v3}, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->applyToView(Landroid/view/View;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/android/systemui/shade/SecPanelSplitHelper;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getPanelSplitHelper()Lcom/android/systemui/shade/SecPanelSplitHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/shade/SecPanelSplitHelper;->isShadeState()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mQsFullScreen:Z

    if-nez v0, :cond_3

    :goto_1
    sget v0, Lcom/android/systemui/statusbar/notification/shared/NotificationsLiveDataStoreRefactor;->$r8$clinit:I

    invoke-static {}, Lcom/android/systemui/Flags;->notificationsLiveDataStoreRefactor()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mListener:Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$$ExternalSyntheticLambda2;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->onChildLocationsChanged()V

    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->runAnimationFinishedRunnables()V

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setAnimationRunning(Z)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateViewShadows()V

    return-void
.end method

.method public final calculateAppearFraction(F)F
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->isHeadsUpTransition()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/android/systemui/statusbar/notification/footer/shared/FooterViewRefactor;->$r8$clinit:I

    invoke-static {}, Lcom/android/systemui/Flags;->notificationsFooterViewRefactor()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getAppearEndPositionLegacy()F

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getAppearStartPosition()F

    move-result p0

    sub-float/2addr p1, p0

    sub-float/2addr v0, p0

    div-float/2addr p1, v0

    const/high16 p0, -0x40800000    # -1.0f

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, p0, v0}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result p0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    iget p0, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mExpansionFraction:F

    return p0
.end method

.method public final calculateGapHeight(Lcom/android/systemui/statusbar/notification/row/ExpandableView;Lcom/android/systemui/statusbar/notification/row/ExpandableView;I)F
    .locals 4

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->onKeyguard()Z

    move-result p3

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    iget-object p3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {p3}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isNeedsToExpandLocksNoti()Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    return v0

    :cond_1
    :goto_0
    iget-object p3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mStackScrollAlgorithm:Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mSectionsManager:Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    iget v2, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mFractionToShade:F

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isOnKeyguard()Z

    move-result p0

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v3, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    if-eqz v3, :cond_3

    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->getPreviousGroupExpandFraction(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)F

    move-result v3

    cmpl-float v3, v3, v0

    if-lez v3, :cond_3

    invoke-virtual {p3, v1, p2, p1}, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->childNeedsGapHeight(Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$SectionProvider;Landroid/view/View;Landroid/view/View;)Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {p3, v2, p0}, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->getGapForLocation(FZ)F

    move-result p0

    goto :goto_1

    :cond_2
    move p0, v0

    :goto_1
    iget p2, p3, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mMaxGroupExpandedBottomGap:F

    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->getPreviousGroupExpandFraction(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)F

    move-result p1

    invoke-static {v0, p2, p1}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result p1

    add-float v0, p1, p0

    goto :goto_2

    :cond_3
    invoke-virtual {p3, v1, p2, p1}, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->childNeedsGapHeight(Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$SectionProvider;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p3, v2, p0}, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->getGapForLocation(FZ)F

    move-result v0

    :cond_4
    :goto_2
    return v0
.end method

.method public final cancelLongPress()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mSwipeHelper:Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;

    invoke-virtual {p0}, Lcom/android/systemui/SwipeHelper;->cancelLongPress()V

    return-void
.end method

.method public final changeViewPosition(Lcom/android/systemui/statusbar/notification/row/ExpandableView;I)V
    .locals 4

    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mChangePositionInProgress:Z

    if-nez v0, :cond_5

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_3

    instance-of p2, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz p2, :cond_0

    iget-object p2, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mTransientContainer:Landroid/view/ViewGroup;

    if-eqz p2, :cond_0

    move v2, v3

    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Attempting to re-position "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v2, :cond_1

    const-string/jumbo v0, "transient"

    goto :goto_0

    :cond_1
    const-string v0, ""

    :goto_0
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " view {"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "}"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "StackScroller"

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    instance-of p1, p1, Lcom/android/systemui/statusbar/NotificationShelf;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    if-eqz p1, :cond_2

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_2
    return-void

    :cond_3
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-ne v1, p0, :cond_4

    if-eq v0, p2, :cond_4

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mChangePositionInProgress:Z

    iput-boolean v3, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mChangingPosition:Z

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    iput-boolean v2, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mChangingPosition:Z

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mChangePositionInProgress:Z

    iget-boolean p2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    if-eqz p2, :cond_4

    iget-boolean p2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAnimationsEnabled:Z

    if-eqz p2, :cond_4

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p2

    const/16 v0, 0x8

    if-eq p2, v0, :cond_4

    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mChildrenChangingPositions:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mNeedsAnimation:Z

    :cond_4
    return-void

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Reentrant call to changeViewPosition"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final clampScrollPosition()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getScrollRange$1()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mClearAllInProgress:Z

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getScrollAmountToScrollBoundary()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAnimateStackYForContentHeightChange:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setOwnScrollY(IZ)V

    :cond_1
    return-void
.end method

.method public final clearChildFocus(Landroid/view/View;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->clearChildFocus(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mForcedScroll:Landroid/view/View;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mForcedScroll:Landroid/view/View;

    :cond_0
    return-void
.end method

.method public final clearHeadsUpDisappearRunning()V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v3, :cond_0

    check-cast v2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setHeadsUpAnimatingAway(Z)V

    iget-boolean v3, v2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getAttachedChildren()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setHeadsUpAnimatingAway(Z)V

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final clearNotifications(IZ)V
    .locals 3

    invoke-static {}, Lcom/android/systemui/statusbar/notification/footer/shared/FooterViewRefactor;->assertInLegacyMode()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->hasNotifications(IZ)Z

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->clearNotifications$1(IZ)V

    return-void
.end method

.method public final clearNotifications$1(IZ)V
    .locals 22

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v3, :cond_3

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    instance-of v8, v7, Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;

    instance-of v8, v7, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v8, :cond_2

    check-cast v7, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v0, v7}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->isVisible(Landroid/view/View;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-static {v7, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->includeChildInClearAll(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;I)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {v7}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getAttachedChildren()Ljava/util/List;

    move-result-object v8

    invoke-virtual {v0, v7}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->isVisible(Landroid/view/View;)Z

    move-result v9

    if-eqz v9, :cond_2

    if-eqz v8, :cond_2

    iget-boolean v8, v7, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildrenExpanded:Z

    if-eqz v8, :cond_2

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getAttachedChildren()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v0, v8}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->isVisible(Landroid/view/View;)Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-static {v8, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->includeChildInClearAll(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;I)Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v3}, Ljava/util/ArrayList;-><init>(I)V

    move v7, v5

    :goto_2
    if-ge v7, v3, :cond_a

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    instance-of v9, v8, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v9, :cond_9

    check-cast v8, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-static {v8, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->includeChildInClearAll(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;I)Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    invoke-virtual {v8}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isInsignificantSummary()Z

    move-result v9

    if-eqz v9, :cond_7

    iget-object v9, v8, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mInsigificantChildrenList:Ljava/util/List;

    check-cast v9, Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_5

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object v9, v9, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    invoke-virtual {v8}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getAttachedChildren()Ljava/util/List;

    move-result-object v9

    invoke-virtual {v0, v8}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->isVisible(Landroid/view/View;)Z

    move-result v10

    if-eqz v10, :cond_9

    if-eqz v9, :cond_9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_6
    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-static {v8, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->includeChildInClearAll(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;I)Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_7
    invoke-virtual {v8}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getAttachedChildren()Ljava/util/List;

    move-result-object v9

    invoke-virtual {v0, v8}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->isVisible(Landroid/view/View;)Z

    move-result v10

    if-eqz v10, :cond_9

    if-eqz v9, :cond_9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_8
    :goto_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-static {v8, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->includeChildInClearAll(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;I)Z

    move-result v11

    if-eqz v11, :cond_8

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_9
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_2

    :cond_a
    iget-object v3, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mClearAllListener:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$$ExternalSyntheticLambda6;

    const/4 v7, 0x2

    if-eqz v3, :cond_d

    iget-object v3, v3, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$$ExternalSyntheticLambda6;->f$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    iget-object v3, v3, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    if-nez v1, :cond_b

    sget-object v8, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$NotificationPanelEvent;->DISMISS_ALL_NOTIFICATIONS_PANEL:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$NotificationPanelEvent;

    goto :goto_6

    :cond_b
    if-ne v1, v7, :cond_c

    sget-object v8, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$NotificationPanelEvent;->DISMISS_SILENT_NOTIFICATIONS_PANEL:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$NotificationPanelEvent;

    goto :goto_6

    :cond_c
    sget-object v8, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$NotificationPanelEvent;->INVALID:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$NotificationPanelEvent;

    :goto_6
    invoke-interface {v3, v8}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    :cond_d
    new-instance v3, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$$ExternalSyntheticLambda5;

    invoke-direct {v3, v0, v6, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$$ExternalSyntheticLambda5;-><init>(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;Ljava/util/ArrayList;I)V

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_f

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v3, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$$ExternalSyntheticLambda5;->accept(Ljava/lang/Object;)V

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    if-eqz v1, :cond_e

    if-eqz v2, :cond_e

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mCollapseShadeDelayedWhenNoViewsToAnimateAwayRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_e
    return-void

    :cond_f
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setClearAllInProgress(Z)V

    iput-boolean v2, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mShadeNeedsToClose:Z

    invoke-static {}, Lcom/android/internal/jank/InteractionJankMonitor;->getInstance()Lcom/android/internal/jank/InteractionJankMonitor;

    move-result-object v2

    const/16 v8, 0x3e

    invoke-virtual {v2, v0, v8}, Lcom/android/internal/jank/InteractionJankMonitor;->begin(Landroid/view/View;I)Z

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v8, v2, -0x1

    const/16 v9, 0x3c

    move v10, v5

    :goto_7
    if-ltz v8, :cond_13

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    move-object v13, v11

    check-cast v13, Landroid/view/View;

    if-nez v8, :cond_10

    move-object v15, v3

    goto :goto_8

    :cond_10
    const/4 v11, 0x0

    move-object v15, v11

    :goto_8
    if-eq v1, v7, :cond_11

    move/from16 v21, v6

    goto :goto_9

    :cond_11
    move/from16 v21, v5

    :goto_9
    instance-of v11, v13, Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;

    if-eqz v11, :cond_12

    check-cast v13, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;

    invoke-virtual {v13, v5, v6, v15}, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->setContentVisible(ZZLjava/util/function/Consumer;)V

    goto :goto_a

    :cond_12
    iget-object v12, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mSwipeHelper:Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;

    int-to-long v5, v10

    const/4 v14, 0x0

    const-wide/16 v19, 0xc8

    const/16 v18, 0x1

    move-wide/from16 v16, v5

    invoke-virtual/range {v12 .. v21}, Lcom/android/systemui/SwipeHelper;->dismissChild(Landroid/view/View;FLcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$$ExternalSyntheticLambda5;JZJZ)V

    :goto_a
    add-int/lit8 v9, v9, -0x5

    const/16 v5, 0x1e

    invoke-static {v5, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    add-int/2addr v10, v9

    add-int/lit8 v8, v8, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    goto :goto_7

    :cond_13
    if-nez v1, :cond_14

    const-string v0, "all"

    :goto_b
    move-object v6, v0

    goto :goto_c

    :cond_14
    const-string/jumbo v0, "silent"

    goto :goto_b

    :goto_c
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    const-string v3, "QPN001"

    const-string v4, "QPNE0026"

    const-string/jumbo v5, "type"

    const-string v7, "count"

    invoke-static/range {v3 .. v8}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventCDLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final clearTemporaryViewsInGroup(Landroid/view/ViewGroup;Ljava/lang/String;)V
    .locals 6

    :cond_0
    :goto_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getTransientViewCount()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getTransientView(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeTransientView(Landroid/view/View;)V

    instance-of v1, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mTransientContainer:Landroid/view/ViewGroup;

    instance-of v1, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mLogger:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLogger;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    sget-object v3, Lcom/android/systemui/log/core/LogLevel;->INFO:Lcom/android/systemui/log/core/LogLevel;

    sget-object v4, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLogger$transientNotificationRowTraversalCleaned$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLogger$transientNotificationRowTraversalCleaned$2;

    const-string v5, "NotificationStackScroll"

    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLogger;->notificationRenderBuffer:Lcom/android/systemui/log/LogBuffer;

    invoke-virtual {v1, v5, v3, v4, v2}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v2

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/NotificationUtilsKt;->getLogKey(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)Ljava/lang/String;

    move-result-object v0

    move-object v3, v2

    check-cast v3, Lcom/android/systemui/log/LogMessageImpl;

    iput-object v0, v3, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    iput-object p2, v3, Lcom/android/systemui/log/LogMessageImpl;->str2:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final customOverScrollBy(IIII)V
    .locals 2

    add-int/2addr p2, p1

    neg-int p1, p4

    add-int/2addr p4, p3

    const/4 p3, 0x1

    const/4 v0, 0x0

    if-le p2, p4, :cond_0

    move p1, p3

    move p2, p4

    goto :goto_0

    :cond_0
    if-ge p2, p1, :cond_1

    move p2, p1

    move p1, p3

    goto :goto_0

    :cond_1
    move p1, v0

    :goto_0
    iget-object p4, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {p4}, Landroid/widget/OverScroller;->isFinished()Z

    move-result p4

    if-nez p4, :cond_8

    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setOwnScrollY(I)V

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getScrollRange$1()I

    move-result p1

    iget p2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    if-gtz p2, :cond_2

    move p4, p3

    goto :goto_1

    :cond_2
    move p4, v0

    :goto_1
    if-lt p2, p1, :cond_3

    move v1, p3

    goto :goto_2

    :cond_3
    move v1, v0

    :goto_2
    if-nez p4, :cond_4

    if-eqz v1, :cond_9

    :cond_4
    if-eqz p4, :cond_5

    neg-int p1, p2

    int-to-float p1, p1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setOwnScrollY(I)V

    iput-boolean p3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mDontReportNextOverScroll:Z

    move p2, p3

    goto :goto_3

    :cond_5
    sub-int/2addr p2, p1

    int-to-float p2, p2

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setOwnScrollY(I)V

    move p1, p2

    move p2, v0

    :goto_3
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setOverScrollAmount(FZZZ)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p2, p3, p3}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setOverScrollAmount(FZZZ)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {p0, p3}, Landroid/widget/OverScroller;->forceFinished(Z)V

    goto :goto_4

    :cond_6
    invoke-virtual {p0, p3}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getCurrentOverScrollAmount(Z)F

    move-result p1

    iget p2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    if-gez p2, :cond_7

    neg-int p1, p2

    int-to-float p1, p1

    invoke-virtual {p0, p3}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->isRubberbanded(Z)Z

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->notifyOverscrollTopListener(FZ)V

    goto :goto_4

    :cond_7
    invoke-virtual {p0, p3}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->isRubberbanded(Z)Z

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->notifyOverscrollTopListener(FZ)V

    goto :goto_4

    :cond_8
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setOwnScrollY(I)V

    :cond_9
    :goto_4
    return-void
.end method

.method public final dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1

    invoke-static {}, Lcom/android/systemui/shade/SecPanelSplitHelper;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mShouldUseRoundedRectClipping:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mLaunchingNotification:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mRoundedClipPath:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    :cond_1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public final dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 8

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const/4 v3, 0x0

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    const/16 v5, 0x13

    if-ne v4, v5, :cond_9

    invoke-virtual {p0}, Landroid/view/ViewGroup;->findFocus()Landroid/view/View;

    move-result-object v0

    instance-of v4, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v4, :cond_7

    check-cast v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    :goto_1
    if-ge v1, v4, :cond_2

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    instance-of v6, v5, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v6, :cond_1

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-eq v6, v7, :cond_1

    iget-object v6, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    if-eq v5, v6, :cond_1

    check-cast v5, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    goto :goto_2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    move-object v5, v3

    :goto_2
    if-eqz v0, :cond_3

    invoke-virtual {v0, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0

    :cond_3
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    move v1, v2

    :goto_3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    sub-int/2addr v4, v0

    if-ge v1, v4, :cond_6

    sub-int v4, v0, v1

    if-gez v4, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_5

    goto :goto_4

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_6
    :goto_4
    if-eqz v3, :cond_1a

    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    return v2

    :cond_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    sub-int/2addr v0, v2

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1a

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getScrollRange$1()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAnimationsEnabled:Z

    if-eqz p1, :cond_8

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mNeedsAnimation:Z

    :cond_8
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    new-instance p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$$ExternalSyntheticLambda4;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$$ExternalSyntheticLambda4;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return v2

    :cond_9
    if-eqz v0, :cond_a

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v4, 0x14

    if-eq v1, v4, :cond_b

    :cond_a
    if-eqz v0, :cond_1a

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x3d

    if-ne v0, v1, :cond_1a

    :cond_b
    invoke-virtual {p0}, Landroid/view/ViewGroup;->findFocus()Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v1, :cond_13

    check-cast v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    move v1, v2

    :goto_5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    sub-int/2addr v4, v0

    if-ge v1, v4, :cond_e

    add-int v4, v0, v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-lt v4, v5, :cond_c

    goto :goto_6

    :cond_c
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_d

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_d

    goto :goto_6

    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_e
    :goto_6
    if-eqz v3, :cond_12

    instance-of v1, v3, Lcom/android/systemui/statusbar/NotificationShelf;

    if-nez v1, :cond_12

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->scrollAmountForKeyboardFocus(I)I

    move-result p1

    if-eqz p1, :cond_11

    iget v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    add-int/2addr v0, p1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getScrollRange$1()I

    move-result v1

    if-le v0, v1, :cond_f

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getScrollRange$1()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    goto :goto_7

    :cond_f
    iget v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    :goto_7
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAnimationsEnabled:Z

    if-eqz p1, :cond_10

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mNeedsAnimation:Z

    :cond_10
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    :cond_11
    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    return v2

    :cond_12
    if-eqz v3, :cond_1a

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestFocus()Z

    return v2

    :cond_13
    instance-of v1, v0, Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;

    if-eqz v1, :cond_1a

    check-cast v0, Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    move v1, v2

    :goto_8
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    sub-int/2addr v4, v0

    if-ge v1, v4, :cond_16

    add-int v4, v0, v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-lt v4, v5, :cond_14

    goto :goto_9

    :cond_14
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_15

    goto :goto_9

    :cond_15
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_16
    :goto_9
    if-eqz v3, :cond_1a

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->scrollAmountForKeyboardFocus(I)I

    move-result p1

    if-eqz p1, :cond_19

    iget v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    add-int/2addr v0, p1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getScrollRange$1()I

    move-result v1

    if-le v0, v1, :cond_17

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getScrollRange$1()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    goto :goto_a

    :cond_17
    iget v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    :goto_a
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAnimationsEnabled:Z

    if-eqz p1, :cond_18

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mNeedsAnimation:Z

    :cond_18
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    :cond_19
    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    return v2

    :cond_1a
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    sget v0, Lcom/android/systemui/scene/shared/flag/SceneContainerFlag;->$r8$clinit:I

    invoke-static {}, Lcom/android/systemui/Flags;->sceneContainer()V

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    sget-object v0, Lcom/android/systemui/shade/TouchLogger;->Companion:Lcom/android/systemui/shade/TouchLogger$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "StackScroller"

    invoke-static {p1, v0, p0}, Lcom/android/systemui/shade/TouchLogger$Companion;->logDispatchTouch(Landroid/view/MotionEvent;Ljava/lang/String;Z)V

    return p0
.end method

.method public final drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mShouldUseRoundedRectClipping:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mLaunchingNotification:Z

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-object v0, p2

    check-cast v0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->isExpandAnimationRunning()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->hasExpandingChild()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mRoundedClipPath:Landroid/graphics/Path;

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_2

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    :cond_2
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return p0

    :cond_3
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p0

    return p0
.end method

.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 7

    invoke-static {p1}, Lcom/android/systemui/util/DumpUtilsKt;->asIndenting(Ljava/io/PrintWriter;)Landroid/util/IndentingPrintWriter;

    move-result-object p1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    const-string v0, "Internal state:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance v6, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$$ExternalSyntheticLambda6;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$$ExternalSyntheticLambda6;-><init>(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;Landroid/util/IndentingPrintWriter;J[Ljava/lang/String;)V

    invoke-static {p1, v6}, Lcom/android/systemui/util/DumpUtilsKt;->withIncreasedIndent(Landroid/util/IndentingPrintWriter;Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    const-string v0, "Contents:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$$ExternalSyntheticLambda7;-><init>(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;Landroid/util/IndentingPrintWriter;[Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/android/systemui/util/DumpUtilsKt;->withIncreasedIndent(Landroid/util/IndentingPrintWriter;Ljava/lang/Runnable;)V

    return-void
.end method

.method public final endDrag$1()V
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setIsBeingDragged(Z)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getCurrentOverScrollAmount(Z)F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    invoke-virtual {p0, v3, v1, v1, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setOverScrollAmount(FZZZ)V

    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getCurrentOverScrollAmount(Z)F

    move-result v2

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    invoke-virtual {p0, v3, v0, v1, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setOverScrollAmount(FZZZ)V

    :cond_2
    return-void
.end method

.method public final finalizeClearAllAnimation()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mClearAllInProgress:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setClearAllInProgress(Z)V

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mShadeNeedsToClose:Z

    if-eqz v1, :cond_0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mShadeNeedsToClose:Z

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mClearAllFinishedWhilePanelExpandedRunnable:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public final gatherState()Ljava/util/ArrayList;
    .locals 12

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lcom/android/systemui/logging/PanelScreenShotLogger;->INSTANCE:Lcom/android/systemui/logging/PanelScreenShotLogger;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "NotificationStackScrollLayout"

    invoke-static {v1, v0}, Lcom/android/systemui/logging/PanelScreenShotLogger;->addHeaderLine(Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getAlpha()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "alpha"

    invoke-static {v0, v2, v1}, Lcom/android/systemui/logging/PanelScreenShotLogger;->addLogItem(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/Object;)V

    iget v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "mOwnScrollY"

    invoke-static {v0, v3, v1}, Lcom/android/systemui/logging/PanelScreenShotLogger;->addLogItem(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "getHeight"

    invoke-static {v0, v3, v1}, Lcom/android/systemui/logging/PanelScreenShotLogger;->addLogItem(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/Object;)V

    iget v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mTopPaddingOverflow:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v3, "mTopPaddingOverflow"

    invoke-static {v0, v3, v1}, Lcom/android/systemui/logging/PanelScreenShotLogger;->addLogItem(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/Object;)V

    iget v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mCurrentStackHeight:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "mCurrentStackHeight"

    invoke-static {v0, v3, v1}, Lcom/android/systemui/logging/PanelScreenShotLogger;->addLogItem(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/Object;)V

    iget v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mExpandedHeight:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v3, "mExpandedHeight"

    invoke-static {v0, v3, v1}, Lcom/android/systemui/logging/PanelScreenShotLogger;->addLogItem(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getAppearStartPosition()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v3, "getAppearStartPosition"

    invoke-static {v0, v3, v1}, Lcom/android/systemui/logging/PanelScreenShotLogger;->addLogItem(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/systemui/statusbar/notification/footer/shared/FooterViewRefactor;->isUnexpectedlyInLegacyMode()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getAppearEndPositionLegacy()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v3, "getAppearEndPosition"

    invoke-static {v0, v3, v1}, Lcom/android/systemui/logging/PanelScreenShotLogger;->addLogItem(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/Object;)V

    iget v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mExtraTopInsetForFullShadeTransition:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v3, "mExtraTopInsetForFullShadeTransition"

    invoke-static {v0, v3, v1}, Lcom/android/systemui/logging/PanelScreenShotLogger;->addLogItem(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/Object;)V

    iget v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIntrinsicPadding:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "mIntrinsicPadding"

    invoke-static {v0, v3, v1}, Lcom/android/systemui/logging/PanelScreenShotLogger;->addLogItem(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/Object;)V

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mShouldShowShelfOnly:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v3, "mShouldShowShelfOnly"

    invoke-static {v0, v3, v1}, Lcom/android/systemui/logging/PanelScreenShotLogger;->addLogItem(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "getVisibility"

    invoke-static {v0, v3, v1}, Lcom/android/systemui/logging/PanelScreenShotLogger;->addLogItem(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mLastGoneCallTrace:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, "NULL"

    :cond_0
    const-string v3, "mLastGoneCallTrace"

    invoke-static {v0, v3, v1}, Lcom/android/systemui/logging/PanelScreenShotLogger;->addLogItem(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f0604d5

    invoke-virtual {v1, v3}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "appIconColor"

    invoke-static {v0, v3, v1}, Lcom/android/systemui/logging/PanelScreenShotLogger;->addLogItem(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "\n\n"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_5

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v4, v3, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    const-string v5, "intrinsicHeight"

    const-string/jumbo v6, "visibility"

    const-string/jumbo v7, "y"

    const-string/jumbo v8, "x"

    if-eqz v4, :cond_3

    move-object v4, v3

    check-cast v4, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-object v9, v4, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mViewState:Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    sget-object v10, Lcom/android/systemui/logging/PanelScreenShotLogger;->INSTANCE:Lcom/android/systemui/logging/PanelScreenShotLogger;

    iget-object v11, v4, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mLoggingKey:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v10, "key"

    invoke-static {v0, v10, v11}, Lcom/android/systemui/logging/PanelScreenShotLogger;->addLogItem(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getX()F

    move-result v10

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    invoke-static {v0, v8, v10}, Lcom/android/systemui/logging/PanelScreenShotLogger;->addLogItem(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getY()F

    move-result v10

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    invoke-static {v0, v7, v10}, Lcom/android/systemui/logging/PanelScreenShotLogger;->addLogItem(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v10

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    invoke-static {v0, v2, v10}, Lcom/android/systemui/logging/PanelScreenShotLogger;->addLogItem(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v0, v6, v10}, Lcom/android/systemui/logging/PanelScreenShotLogger;->addLogItem(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getIntrinsicHeight()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v0, v5, v10}, Lcom/android/systemui/logging/PanelScreenShotLogger;->addLogItem(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/Object;)V

    iget v10, v4, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mClipTopAmount:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v11, "clipTop"

    invoke-static {v0, v11, v10}, Lcom/android/systemui/logging/PanelScreenShotLogger;->addLogItem(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/Object;)V

    iget v10, v4, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mClipBottomAmount:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v11, "clipBottom"

    invoke-static {v0, v11, v10}, Lcom/android/systemui/logging/PanelScreenShotLogger;->addLogItem(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v10, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v11, "removed"

    invoke-static {v0, v11, v10}, Lcom/android/systemui/logging/PanelScreenShotLogger;->addLogItem(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/Object;)V

    iget-boolean v10, v4, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mKeepInParentForDismissAnimation:Z

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    const-string v11, "keepInParentForDismissAnimation"

    invoke-static {v0, v11, v10}, Lcom/android/systemui/logging/PanelScreenShotLogger;->addLogItem(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/Object;)V

    iget-boolean v10, v4, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mDismissed:Z

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    const-string v11, "dismissed"

    invoke-static {v0, v11, v10}, Lcom/android/systemui/logging/PanelScreenShotLogger;->addLogItem(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v10, v4, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    if-eqz v10, :cond_1

    iget-object v10, v10, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    if-eqz v10, :cond_1

    invoke-virtual {v10}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v10

    if-eqz v10, :cond_1

    iget-object v10, v4, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object v10, v10, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v10}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v10

    iget-wide v10, v10, Landroid/app/Notification;->when:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    const-string/jumbo v11, "when"

    invoke-static {v0, v11, v10}, Lcom/android/systemui/logging/PanelScreenShotLogger;->addLogItem(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v10, v4, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object v10, v10, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v10}, Landroid/service/notification/StatusBarNotification;->getPostTime()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    const-string v11, "postTime"

    invoke-static {v0, v11, v10}, Lcom/android/systemui/logging/PanelScreenShotLogger;->addLogItem(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    if-eqz v9, :cond_2

    iget v10, v9, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->location:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v11, "location"

    invoke-static {v0, v11, v10}, Lcom/android/systemui/logging/PanelScreenShotLogger;->addLogItem(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/Object;)V

    iget-boolean v10, v9, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->inShelf:Z

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    const-string v11, "inShelf"

    invoke-static {v0, v11, v10}, Lcom/android/systemui/logging/PanelScreenShotLogger;->addLogItem(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/Object;)V

    iget-boolean v10, v9, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->hideSensitive:Z

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    const-string v11, "hideSensitive"

    invoke-static {v0, v11, v10}, Lcom/android/systemui/logging/PanelScreenShotLogger;->addLogItem(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/Object;)V

    iget-boolean v9, v9, Lcom/android/systemui/statusbar/notification/stack/ViewState;->gone:Z

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    const-string v10, "gone"

    invoke-static {v0, v10, v9}, Lcom/android/systemui/logging/PanelScreenShotLogger;->addLogItem(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->gatherState()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const-string v4, "\n"

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    instance-of v4, v3, Lcom/android/systemui/statusbar/NotificationShelf;

    if-eqz v4, :cond_4

    check-cast v3, Lcom/android/systemui/statusbar/NotificationShelf;

    sget-object v4, Lcom/android/systemui/logging/PanelScreenShotLogger;->INSTANCE:Lcom/android/systemui/logging/PanelScreenShotLogger;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v4, "SHELF"

    const-string v9, "NOTIFICATION_SHELF"

    invoke-static {v0, v4, v9}, Lcom/android/systemui/logging/PanelScreenShotLogger;->addLogItem(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getX()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {v0, v8, v4}, Lcom/android/systemui/logging/PanelScreenShotLogger;->addLogItem(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getY()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {v0, v7, v4}, Lcom/android/systemui/logging/PanelScreenShotLogger;->addLogItem(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {v0, v2, v4}, Lcom/android/systemui/logging/PanelScreenShotLogger;->addLogItem(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0, v6, v4}, Lcom/android/systemui/logging/PanelScreenShotLogger;->addLogItem(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v5, v3}, Lcom/android/systemui/logging/PanelScreenShotLogger;->addLogItem(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_5
    return-object v0
.end method

.method public final generateHeadsUpAnimation(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Z)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAnimationsEnabled:Z

    if-eqz v0, :cond_3

    if-nez p2, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mHeadsUpGoingAwayAnimationsAllowed:Z

    if-eqz v0, :cond_3

    :cond_0
    if-nez p2, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mHeadsUpChangeAnimations:Ljava/util/HashSet;

    new-instance v1, Landroid/util/Pair;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {v1, p1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p2, "previous hun appear animation cancelled"

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->logHunAnimationSkipped(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mHeadsUpChangeAnimations:Ljava/util/HashSet;

    new-instance v1, Landroid/util/Pair;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mNeedsAnimation:Z

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mWillExpand:Z

    if-nez v1, :cond_2

    if-nez p2, :cond_2

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setHeadsUpAnimatingAway(Z)V

    sget-object p1, Lcom/android/systemui/statusbar/notification/shared/NotificationsHeadsUpRefactor;->INSTANCE:Lcom/android/systemui/statusbar/notification/shared/NotificationsHeadsUpRefactor;

    invoke-static {}, Lcom/android/systemui/Flags;->notificationsHeadsUpRefactor()V

    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    :cond_3
    return-void
.end method

.method public final getAppearEndPositionLegacy()F
    .locals 4

    invoke-static {}, Lcom/android/systemui/statusbar/notification/footer/shared/FooterViewRefactor;->assertInLegacyMode()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    iget v0, v0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mStackTopMargin:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->getVisibleNotificationCount()I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mEmptyShadeView:Lcom/android/systemui/statusbar/EmptyShadeView;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_3

    if-lez v1, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->isHeadsUpTransition()Z

    move-result v2

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mInHeadsUpPinnedMode:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mDozing:Z

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v1

    if-eq v1, v3, :cond_4

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v2

    if-eq v2, v3, :cond_2

    const/4 v2, 0x1

    if-le v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    iget v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mPaddingBetweenElements:I

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getTopHeadsUpPinnedHeight()I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getTrackedHeadsUpRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getPositionInLinearLayout(Landroid/view/View;)I

    move-result v2

    add-int/2addr v2, v1

    add-int/2addr v0, v2

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mEmptyShadeView:Lcom/android/systemui/statusbar/EmptyShadeView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->onKeyguard()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    iget p0, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mTopPadding:I

    goto :goto_2

    :cond_5
    iget p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIntrinsicPadding:I

    :goto_2
    add-int/2addr v0, p0

    int-to-float p0, v0

    return p0
.end method

.method public final getAppearStartPosition()F
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->isHeadsUpTransition()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getFirstVisibleSection()Lcom/android/systemui/statusbar/notification/stack/NotificationSection;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationSection;->mFirstVisibleChild:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getPinnedHeadsUpHeight()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mHeadsUpInset:I

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    iget p0, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mStackTopMargin:I

    sub-int/2addr v1, p0

    add-int/2addr v1, v0

    int-to-float p0, v1

    return p0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    iget p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mWaterfallTopInset:I

    add-int/2addr v0, p0

    int-to-float p0, v0

    return p0
.end method

.method public final getChildAtPosition(FFZZ)Lcom/android/systemui/statusbar/notification/row/ExpandableView;
    .locals 10

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_5

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v4

    if-nez v4, :cond_4

    if-eqz p4, :cond_0

    instance-of v4, v3, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v4

    iget v5, v3, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mClipTopAmount:I

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v4

    iget v6, v3, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mActualHeight:I

    int-to-float v6, v6

    add-float/2addr v6, v4

    iget v7, v3, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mClipBottomAmount:I

    int-to-float v7, v7

    sub-float/2addr v6, v7

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v7

    sub-float v8, v6, v5

    iget v9, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mMinInteractionHeight:I

    int-to-float v9, v9

    cmpl-float v8, v8, v9

    if-gez v8, :cond_1

    if-nez p3, :cond_4

    :cond_1
    cmpl-float v5, p2, v5

    if-ltz v5, :cond_4

    cmpg-float v5, p2, v6

    if-gtz v5, :cond_4

    int-to-float v5, v1

    cmpl-float v5, p1, v5

    if-ltz v5, :cond_4

    int-to-float v5, v7

    cmpg-float v5, p1, v5

    if-gtz v5, :cond_4

    instance-of v5, v3, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v5, :cond_3

    check-cast v3, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-object v5, v3, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    if-nez v6, :cond_2

    iget-boolean v6, v3, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsHeadsUp:Z

    if-eqz v6, :cond_2

    iget-boolean v6, v3, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsPinned:Z

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mTopHeadsUpRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eq v6, v3, :cond_2

    iget-object v7, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mGroupMembershipManager:Lcom/android/systemui/statusbar/notification/collection/render/GroupMembershipManager;

    iget-object v6, v6, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    check-cast v7, Lcom/android/systemui/statusbar/notification/collection/render/GroupMembershipManagerImpl;

    invoke-virtual {v7, v6}, Lcom/android/systemui/statusbar/notification/collection/render/GroupMembershipManagerImpl;->getGroupSummary(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v6

    if-eq v6, v5, :cond_2

    goto :goto_1

    :cond_2
    sub-float/2addr p2, v4

    invoke-virtual {v3, p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getViewAtPosition(F)Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object p0

    return-object p0

    :cond_3
    return-object v3

    :cond_4
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getChildAtRawPosition(FF)Lcom/android/systemui/statusbar/notification/row/ExpandableView;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mTempInt2:[I

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mTempInt2:[I

    const/4 v1, 0x0

    aget v1, v0, v1

    int-to-float v1, v1

    sub-float/2addr p1, v1

    const/4 v1, 0x1

    aget v0, v0, v1

    int-to-float v0, v0

    sub-float/2addr p2, v0

    invoke-virtual {p0, p1, p2, v1, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getChildAtPosition(FFZZ)Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    move-result-object p0

    return-object p0
.end method

.method public final getChildrenWithBackground()Ljava/util/List;
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_0

    instance-of v4, v3, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    if-eq v3, v4, :cond_0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public final getCurrentOverScrollAmount(Z)F
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    if-eqz p1, :cond_0

    iget p0, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mOverScrollTopAmount:F

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mOverScrollBottomAmount:F

    :goto_0
    return p0
.end method

.method public final getDndStatusText(Lcom/android/systemui/statusbar/policy/ZenModeController;)Ljava/lang/String;
    .locals 7

    const-string v0, ""

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    move-object v1, p1

    check-cast v1, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mConfig:Landroid/service/notification/ZenModeConfig;

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    iget-object v2, v1, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    if-eqz v2, :cond_3

    iget-object v3, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    if-nez v3, :cond_3

    iget-object v0, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->enabler:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getApplicationNameFromPackage(Lcom/android/systemui/statusbar/policy/ZenModeController;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    const v0, 0x7f131105

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4

    :cond_2
    iget-object p0, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    const p1, 0x7f13159f

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4

    :cond_3
    if-eqz v2, :cond_5

    iget-object v2, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    if-eqz v2, :cond_5

    invoke-static {v2}, Landroid/service/notification/ZenModeConfig;->isValidCountdownConditionId(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object p1, v1, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object p1, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    invoke-static {p1}, Landroid/service/notification/ZenModeConfig;->tryParseCountdownConditionId(Landroid/net/Uri;)J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/service/notification/ZenModeConfig;->isToday(J)Z

    move-result p1

    iget-object v2, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v3

    invoke-static {v2, v0, v1, p1, v3}, Landroid/service/notification/ZenModeConfig;->getFormattedTime(Landroid/content/Context;JZI)Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz p1, :cond_4

    iget-object p0, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    const p1, 0x7f131106

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    move-object v0, p0

    goto/16 :goto_4

    :cond_4
    iget-object p0, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    const p1, 0x7f131107

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_5
    iget-object v2, v1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    if-eqz v2, :cond_b

    invoke-virtual {v2}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_b

    iget-object v2, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v2, v3, v1, v4}, Landroid/service/notification/ZenModeConfig;->getDescription(Landroid/content/Context;ZLandroid/service/notification/ZenModeConfig;Z)Ljava/lang/String;

    move-result-object v2

    iget-object v1, v1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-virtual {v5}, Landroid/service/notification/ZenModeConfig$ZenRule;->isAutomaticActive()Z

    move-result v6

    if-eqz v6, :cond_6

    if-eqz v2, :cond_6

    iget-object v6, v5, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v0, v5, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    invoke-static {v0}, Landroid/service/notification/ZenModeConfig;->isValidScheduleConditionId(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object p1, v5, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    invoke-static {p1}, Landroid/service/notification/ZenModeConfig;->toScheduleCalendar(Landroid/net/Uri;)Landroid/service/notification/ScheduleCalendar;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/service/notification/ScheduleCalendar;->getNextChangeTime(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/service/notification/ZenModeConfig;->isToday(J)Z

    move-result p1

    iget-object v2, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v4

    invoke-static {v2, v0, v1, p1, v4}, Landroid/service/notification/ZenModeConfig;->getFormattedTime(Landroid/content/Context;JZI)Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz p1, :cond_7

    iget-object p1, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    const v1, 0x7f130546

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_1
    move-object v0, p1

    goto :goto_3

    :cond_7
    iget-object p1, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    const v1, 0x7f130545

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_8
    iget-object v0, v5, Landroid/service/notification/ZenModeConfig$ZenRule;->pkg:Ljava/lang/String;

    const-string v1, "com.android.settings"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "com.samsung.android.app.routines"

    goto :goto_2

    :cond_9
    iget-object v0, v5, Landroid/service/notification/ZenModeConfig$ZenRule;->pkg:Ljava/lang/String;

    :goto_2
    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getApplicationNameFromPackage(Lcom/android/systemui/statusbar/policy/ZenModeController;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    const v1, 0x7f131104

    filled-new-array {p1, v2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_a
    move v3, v4

    :goto_3
    if-nez v3, :cond_b

    iget-object p0, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    const p1, 0x7f130ef0

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_b
    :goto_4
    return-object v0
.end method

.method public final getEmptyBottomMargin()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mContentHeight:I

    iget p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mMaxLayoutHeight:I

    sub-int/2addr p0, v0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public final getFirstChildBelowTranlsationY(F)Landroid/view/View;
    .locals 5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->getTranslationY()F

    move-result v3

    cmpl-float v3, v3, p1

    if-ltz v3, :cond_1

    return-object v2

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getFirstChildNotGone()Lcom/android/systemui/statusbar/notification/row/ExpandableView;
    .locals 5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    if-eq v2, v3, :cond_0

    check-cast v2, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getFirstVisibleSection()Lcom/android/systemui/statusbar/notification/stack/NotificationSection;
    .locals 4

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mSections:[Lcom/android/systemui/statusbar/notification/stack/NotificationSection;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    iget-object v3, v2, Lcom/android/systemui/statusbar/notification/stack/NotificationSection;->mFirstVisibleChild:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    if-eqz v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getIsBeingDragged()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIsBeingDragged:Z

    return p0
.end method

.method public final getLastVisibleSection()Lcom/android/systemui/statusbar/notification/stack/NotificationSection;
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mSections:[Lcom/android/systemui/statusbar/notification/stack/NotificationSection;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mSections:[Lcom/android/systemui/statusbar/notification/stack/NotificationSection;

    aget-object v1, v1, v0

    iget-object v2, v1, Lcom/android/systemui/statusbar/notification/stack/NotificationSection;->mLastVisibleChild:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getLayoutMinHeight()I
    .locals 3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->isHeadsUpTransition()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getTrackedHeadsUpRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isAboveShelf()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getPositionInLinearLayout(Landroid/view/View;)I

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    iget v2, v2, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mAppearFraction:F

    invoke-static {v1, v0, v2}, Landroid/util/MathUtils;->lerp(IIF)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getTopHeadsUpPinnedHeight()I

    move-result p0

    add-int/2addr p0, v0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getTopHeadsUpPinnedHeight()I

    move-result p0

    return p0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    const/16 v2, 0x8

    if-ne v0, v2, :cond_2

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    :goto_0
    return v1
.end method

.method public final getPanelSplitHelper()Lcom/android/systemui/shade/SecPanelSplitHelper;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mPanelSplitHelper:Lcom/android/systemui/shade/SecPanelSplitHelper;

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v1, Lcom/android/systemui/shade/SecPanelSplitHelper;

    invoke-virtual {v0, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/shade/SecPanelSplitHelper;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mPanelSplitHelper:Lcom/android/systemui/shade/SecPanelSplitHelper;

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mPanelSplitHelper:Lcom/android/systemui/shade/SecPanelSplitHelper;

    return-object p0
.end method

.method public final getPositionInLinearLayout(Landroid/view/View;)I
    .locals 14

    instance-of v0, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mGroupMembershipManager:Lcom/android/systemui/statusbar/notification/collection/render/GroupMembershipManager;

    move-object v2, p1

    check-cast v2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-object v3, v2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    check-cast v0, Lcom/android/systemui/statusbar/notification/collection/render/GroupMembershipManagerImpl;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/notification/collection/render/GroupMembershipManagerImpl;->isGroupSummary(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->getParent()Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    move-result-object v0

    sget-object v4, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;->ROOT_ENTRY:Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    if-ne v0, v4, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->getParent()Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object p1, v2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mNotificationParent:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-object v0, p1

    goto :goto_1

    :cond_1
    :goto_0
    move-object v0, v1

    move-object v2, v0

    :goto_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isOnKeyguard()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x0

    goto :goto_2

    :cond_2
    iget v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mMinimumPaddings:I

    int-to-float v3, v3

    :goto_2
    float-to-int v4, v3

    const/4 v5, 0x0

    const/4 v6, -0x1

    move v7, v5

    :goto_3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    if-ge v7, v8, :cond_10

    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v9

    const/4 v10, 0x1

    const/16 v11, 0x8

    if-eq v9, v11, :cond_3

    move v9, v10

    goto :goto_4

    :cond_3
    move v9, v5

    :goto_4
    if-eqz v9, :cond_4

    add-int/lit8 v6, v6, 0x1

    :cond_4
    if-eqz v9, :cond_6

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->hasNoContentHeight()Z

    move-result v12

    if-nez v12, :cond_6

    int-to-float v12, v4

    cmpl-float v13, v12, v3

    if-eqz v13, :cond_6

    if-eqz v1, :cond_5

    invoke-virtual {p0, v1, v8, v6}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->calculateGapHeight(Lcom/android/systemui/statusbar/notification/row/ExpandableView;Lcom/android/systemui/statusbar/notification/row/ExpandableView;I)F

    move-result v4

    add-float/2addr v4, v12

    float-to-int v4, v4

    :cond_5
    iget v12, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mPaddingBetweenElements:I

    add-int/2addr v4, v12

    :cond_6
    if-ne v8, p1, :cond_e

    if-eqz v0, :cond_d

    iget-boolean p0, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz p0, :cond_c

    iget-object p0, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isGroupExpanded()Z

    move-result p1

    if-eqz p1, :cond_7

    iget p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mHeaderExpandedHeight:I

    goto :goto_5

    :cond_7
    move p1, v5

    :goto_5
    iget v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationTopPadding:I

    add-int/2addr p1, v0

    move v0, v5

    :goto_6
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mAttachedChildren:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_c

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mAttachedChildren:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v3

    if-eq v3, v11, :cond_8

    move v3, v10

    goto :goto_7

    :cond_8
    move v3, v5

    :goto_7
    if-eqz v3, :cond_9

    iget v6, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mDividerHeight:I

    add-int/2addr p1, v6

    :cond_9
    if-ne v1, v2, :cond_a

    move v5, p1

    goto :goto_8

    :cond_a
    if-eqz v3, :cond_b

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getIntrinsicHeight()I

    move-result v1

    add-int/2addr v1, p1

    move p1, v1

    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_c
    :goto_8
    add-int/2addr v4, v5

    :cond_d
    return v4

    :cond_e
    if-eqz v9, :cond_f

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getIntrinsicHeight()I

    move-result v1

    add-int/2addr v1, v4

    move v4, v1

    move-object v1, v8

    :cond_f
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_3

    :cond_10
    return v5
.end method

.method public final getRubberBandFactor(Z)F
    .locals 1

    const v0, 0x3dcccccd    # 0.1f

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mExpandedInThisMotion:Z

    if-eqz p1, :cond_1

    const p0, 0x3e19999a    # 0.15f

    return p0

    :cond_1
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIsExpansionChanging:Z

    if-nez p1, :cond_5

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mPanelTracking:Z

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mScrolledToTopOnFirstDown:Z

    if-eqz p1, :cond_4

    invoke-static {}, Lcom/android/systemui/shade/SecPanelSplitHelper;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getPanelSplitHelper()Lcom/android/systemui/shade/SecPanelSplitHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/shade/SecPanelSplitHelper;->isShadeState()Z

    move-result p0

    if-nez p0, :cond_4

    :cond_3
    const/high16 p0, 0x3f800000    # 1.0f

    return p0

    :cond_4
    return v0

    :cond_5
    :goto_0
    const p0, 0x3e570a3d    # 0.21f

    return p0
.end method

.method public final getScrollAmountToScrollBoundary()I
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    iget p0, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mTopPadding:I

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v1, Lcom/android/systemui/shade/ShadeHeaderController;

    invoke-virtual {v0, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/shade/ShadeHeaderController;

    iget-object v0, v0, Lcom/android/systemui/shade/ShadeHeaderController;->header:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    sub-int/2addr p0, v0

    return p0
.end method

.method public final getScrollRange$1()I
    .locals 7

    iget v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mContentHeight:I

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mInHeadsUpPinnedMode:Z

    if-eqz v1, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mHeadsUpInset:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getTopHeadsUpPinnedHeight()I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mMaxLayoutHeight:I

    sub-int v1, v0, v1

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mImeInset:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getRootView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLocationOnScreen()[I

    move-result-object v5

    const/4 v6, 0x1

    aget v5, v5, v6

    sub-int/2addr v4, v5

    sub-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v4

    sub-int/2addr v4, v3

    sub-int/2addr v0, v4

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    add-int/2addr v0, v1

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getScrollAmountToScrollBoundary()I

    move-result p0

    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    :cond_1
    return v0
.end method

.method public final getSpeedBumpIndex$1()I
    .locals 8

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mSpeedBumpIndexDirty:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mSpeedBumpIndexDirty:Z

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    move v2, v0

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v2, v1, :cond_3

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-eq v6, v7, :cond_2

    instance-of v6, v5, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v6, :cond_2

    check-cast v5, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    add-int/lit8 v4, v4, 0x1

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mHighPriorityBeforeSpeedBump:Z

    const/4 v7, 0x1

    if-eqz v6, :cond_1

    iget-object v5, v5, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget v5, v5, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mBucket:I

    const/16 v6, 0xd

    if-ge v5, v6, :cond_0

    goto :goto_1

    :cond_0
    move v7, v0

    goto :goto_1

    :cond_1
    iget-object v5, v5, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object v5, v5, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v5}, Landroid/service/notification/NotificationListenerService$Ranking;->isAmbient()Z

    move-result v5

    xor-int/2addr v7, v5

    :goto_1
    if-eqz v7, :cond_2

    move v3, v4

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    iput v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mSpeedBumpIndex:I

    :cond_4
    iget p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mSpeedBumpIndex:I

    return p0
.end method

.method public final getTopHeadsUpPinnedHeight()I
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mTopHeadsUpRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isChildInGroup()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mGroupMembershipManager:Lcom/android/systemui/statusbar/notification/collection/render/GroupMembershipManager;

    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    check-cast p0, Lcom/android/systemui/statusbar/notification/collection/render/GroupMembershipManagerImpl;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/notification/collection/render/GroupMembershipManagerImpl;->getGroupSummary(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object p0

    if-eqz p0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    :cond_1
    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getPinnedHeadsUpHeight(Z)I

    move-result p0

    return p0
.end method

.method public final getTouchSlop$2(Landroid/view/MotionEvent;)F
    .locals 1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getClassification()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mTouchSlop:I

    int-to-float p1, p1

    iget p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mSlopMultiplier:F

    mul-float/2addr p1, p0

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mTouchSlop:I

    int-to-float p1, p0

    :goto_0
    return p1
.end method

.method public final handleEmptySpaceClick(Landroid/view/MotionEvent;)V
    .locals 9

    iget v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mInitialTouchX:F

    iget v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mInitialTouchY:F

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->isBelowLastNotification(FF)Z

    move-result v0

    iget v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mStatusBarState:I

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mTouchIsClick:Z

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mLogger:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLogger;

    const-string v4, "NotificationStackScroll"

    const/4 v5, 0x0

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v6

    invoke-static {v6}, Landroid/view/MotionEvent;->actionToString(I)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    sget-object v8, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLogger$logEmptySpaceClick$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLogger$logEmptySpaceClick$2;

    iget-object v3, v3, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLogger;->shadeLogBuffer:Lcom/android/systemui/log/LogBuffer;

    invoke-virtual {v3, v4, v7, v8, v5}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Lcom/android/systemui/log/LogMessageImpl;

    iput v1, v8, Lcom/android/systemui/log/LogMessageImpl;->int1:I

    iput-boolean v2, v8, Lcom/android/systemui/log/LogMessageImpl;->bool1:Z

    iput-boolean v0, v8, Lcom/android/systemui/log/LogMessageImpl;->bool2:Z

    iput-object v6, v8, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    invoke-virtual {v3, v7}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mLogger:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLogger;

    if-nez p0, :cond_1

    goto/16 :goto_2

    :cond_1
    sget-object p1, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLogger;->shadeLogBuffer:Lcom/android/systemui/log/LogBuffer;

    const-string v0, "handleEmptySpaceClick: MotionEvent ignored"

    invoke-virtual {p0, v4, p1, v0, v5}, Lcom/android/systemui/log/LogBuffer;->log(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getTouchSlop$2(Landroid/view/MotionEvent;)F

    move-result v0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mTouchIsClick:Z

    if-eqz v1, :cond_7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mInitialTouchY:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, v0

    if-gtz v1, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iget v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mInitialTouchX:F

    sub-float/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, p1, v0

    if-lez p1, :cond_7

    :cond_3
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mTouchIsClick:Z

    goto :goto_2

    :cond_4
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mStateAnimator:Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p0, "StackScroller"

    const-string p1, "onEmptySpaceClicked is ignored by notification Animating.."

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_5
    iget p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mStatusBarState:I

    if-eq p1, v1, :cond_7

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mTouchIsClick:Z

    if-eqz p1, :cond_7

    iget p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mInitialTouchX:F

    iget v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mInitialTouchY:F

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->isBelowLastNotification(FF)Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mLogger:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLogger;

    if-nez p1, :cond_6

    goto :goto_1

    :cond_6
    sget-object v0, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLogger;->shadeLogBuffer:Lcom/android/systemui/log/LogBuffer;

    const-string v1, "handleEmptySpaceClick: touch event propagated further"

    invoke-virtual {p1, v4, v0, v1, v5}, Lcom/android/systemui/log/LogBuffer;->log(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mOnEmptySpaceClickListener:Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda8;

    iget v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mInitialTouchX:F

    iget p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mInitialTouchY:F

    iget-object p1, p1, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda8;->f$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    invoke-virtual {p1, v0, p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->onEmptySpaceClick(FF)V

    :cond_7
    :goto_2
    return-void
.end method

.method public final hasOverlappingRendering()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mForceNoOverlappingRendering:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/view/ViewGroup;->hasOverlappingRendering()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final inflateDndView()V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mDndStatusView:Lcom/android/systemui/statusbar/DndStatusView;

    iget-object v1, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0d045e

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/DndStatusView;

    const v2, 0x7f0a07fd

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v4, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$$ExternalSyntheticLambda1;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;I)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mDndStatusView:Lcom/android/systemui/statusbar/DndStatusView;

    if-eqz v2, :cond_1

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v2

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mDndStatusView:Lcom/android/systemui/statusbar/DndStatusView;

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mDndStatusView:Lcom/android/systemui/statusbar/DndStatusView;

    invoke-virtual {p0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    if-eqz v0, :cond_2

    iget-boolean p0, v0, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->mIsVisible:Z

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    goto :goto_1

    :cond_2
    move p0, v3

    :goto_1
    invoke-virtual {v1, p0, v3}, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->setVisible(ZZ)V

    return-void
.end method

.method public final inflateEmptyShadeView()V
    .locals 5

    sget-boolean v0, Lcom/android/systemui/NotiRune;->NOTI_AOSP_DISABLE_EMPTY_SHADE_VIEW:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mEmptyShadeView:Lcom/android/systemui/statusbar/EmptyShadeView;

    iget-object v1, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0d045d

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/EmptyShadeView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mEmptyShadeView:Lcom/android/systemui/statusbar/EmptyShadeView;

    if-eqz v2, :cond_1

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v2

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mEmptyShadeView:Lcom/android/systemui/statusbar/EmptyShadeView;

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    const/4 v2, -0x1

    :goto_0
    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mEmptyShadeView:Lcom/android/systemui/statusbar/EmptyShadeView;

    invoke-virtual {p0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    if-eqz v0, :cond_2

    iget-boolean v2, v0, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->mIsVisible:Z

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_1
    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->setVisible(ZZ)V

    if-nez v0, :cond_3

    const v1, 0x7f1305c7

    goto :goto_2

    :cond_3
    iget v1, v0, Lcom/android/systemui/statusbar/EmptyShadeView;->mText:I

    :goto_2
    if-nez v0, :cond_4

    move v2, v3

    goto :goto_3

    :cond_4
    iget v2, v0, Lcom/android/systemui/statusbar/EmptyShadeView;->mFooterText:I

    :goto_3
    if-nez v0, :cond_5

    goto :goto_4

    :cond_5
    iget v3, v0, Lcom/android/systemui/statusbar/EmptyShadeView;->mFooterIcon:I

    :goto_4
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateEmptyShadeViewResources(III)V

    return-void
.end method

.method public inflateFooterView()V
    .locals 0

    return-void
.end method

.method public final initView(Landroid/content/Context;Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator;)V
    .locals 5

    new-instance v0, Landroid/widget/OverScroller;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mScroller:Landroid/widget/OverScroller;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mSwipeHelper:Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;

    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mNotificationStackSizeCalculator:Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator;

    const/high16 p2, 0x40000

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mTouchSlop:I

    invoke-virtual {p3}, Landroid/view/ViewConfiguration;->getScaledAmbiguousGestureMultiplier()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mSlopMultiplier:F

    invoke-virtual {p3}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mMinimumVelocity:I

    invoke-virtual {p3}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mMaximumVelocity:I

    invoke-virtual {p3}, Landroid/view/ViewConfiguration;->getScaledOverflingDistance()I

    move-result p3

    iput p3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mOverflingDistance:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f05006e

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    const v1, 0x7f050049

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mSkinnyNotifsInLandscape:Z

    const-string v2, "mIsSmallLandscapeLockscreenEnabled=false isSmallScreenLandscape="

    const-string v3, " useSmallLandscapeLockscreenResources="

    const-string v4, " skinnyNotifsInLandscape="

    invoke-static {v2, v3, v4, v0, p2}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " mSkinnyNotifsInLandscape="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mSkinnyNotifsInLandscape:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mLastInitViewDumpString:Ljava/lang/String;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mLastInitViewElapsedRealtime:J

    const p2, 0x7f070ba1

    invoke-virtual {p3, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mStackScrollAlgorithm:Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;

    invoke-virtual {p2, p1}, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->initView(Landroid/content/Context;)V

    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mStateAnimator:Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;

    invoke-virtual {p2, p1}, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->initView(Landroid/content/Context;)V

    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0718c2

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    const/4 v0, 0x1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p2, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mZDistanceBetweenElements:I

    const p1, 0x7f070b33

    invoke-virtual {p3, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mPaddingBetweenElements:I

    const p1, 0x7f0709ab

    invoke-virtual {p3, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mMinTopOverScrollToEscape:F

    iget-object p1, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/internal/policy/SystemBarUtils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mStatusBarHeight:I

    const p1, 0x7f070b9b

    invoke-virtual {p3, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mBottomPadding:I

    const p1, 0x7f070ba0

    invoke-virtual {p3, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mMinimumPaddings:I

    const p1, 0x7f070e6a

    invoke-virtual {p3, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mQsTilePadding:I

    iget p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mMinimumPaddings:I

    iput p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mSidePaddings:I

    const p1, 0x7f070b92

    invoke-virtual {p3, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mMinInteractionHeight:I

    const p1, 0x7f070b30

    invoke-virtual {p3, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mCornerRadius:I

    iget p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mStatusBarHeight:I

    const p2, 0x7f070459

    invoke-virtual {p3, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    add-int/2addr p2, p1

    iput p2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mHeadsUpInset:I

    iget-object p1, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/internal/policy/SystemBarUtils;->getQuickQsOffsetHeight(Landroid/content/Context;)I

    const p1, 0x7f070eb8

    invoke-virtual {p3, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    const p2, 0x3fa66666    # 1.3f

    mul-float/2addr p1, p2

    float-to-int p1, p1

    iput p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mYDiff:I

    return-void
.end method

.method public final isBelowLastNotification(FF)Z
    .locals 9

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mStatusBarState:I

    const-string v2, "StackScroller"

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v1, v4, :cond_2

    iget v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mQsMinHeight:I

    int-to-float v1, v1

    cmpl-float v1, v1, p2

    if-gtz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result v5

    cmpg-float v5, v5, p1

    if-gez v5, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result v5

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    cmpg-float v5, p1, v5

    if-gez v5, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v5

    cmpg-float v5, v5, p2

    if-gez v5, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v5

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v5, v1

    cmpg-float v1, p2, v5

    if-gez v1, :cond_2

    :cond_1
    const-string p0, "isBelowLastNotification false : Shelf is visible, touch inside of shelf"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_2
    :goto_0
    sub-int/2addr v0, v4

    :goto_1
    if-ltz v0, :cond_d

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_c

    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mEmptyShadeView:Lcom/android/systemui/statusbar/EmptyShadeView;

    if-ne v1, v5, :cond_3

    const-string p0, "isBelowLastNotification true : EmptyShadeView is Visible"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_3
    iget v5, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mStatusBarState:I

    if-eq v5, v4, :cond_4

    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    if-ne v1, v5, :cond_4

    goto/16 :goto_3

    :cond_4
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getY()F

    move-result v5

    cmpl-float v6, v5, p2

    if-lez v6, :cond_6

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->onKeyguard()Z

    move-result p0

    if-eqz p0, :cond_5

    instance-of p0, v1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz p0, :cond_5

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "isBelowLastNotification false : child top , "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " of "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast v1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-object p1, v1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mLoggingKey:Ljava/lang/String;

    invoke-static {p0, p1, v2}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    return v3

    :cond_6
    iget v6, v1, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mActualHeight:I

    int-to-float v6, v6

    add-float/2addr v6, v5

    iget v7, v1, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mClipBottomAmount:I

    int-to-float v7, v7

    sub-float/2addr v6, v7

    cmpl-float v6, p2, v6

    if-lez v6, :cond_7

    move v6, v4

    goto :goto_2

    :cond_7
    move v6, v3

    :goto_2
    iget-object v7, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mFooterView:Lcom/android/systemui/statusbar/notification/footer/ui/view/FooterView;

    if-ne v1, v7, :cond_9

    if-nez v6, :cond_c

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getX()F

    move-result v1

    sub-float v1, p1, v1

    sub-float v5, p2, v5

    iget-object v6, v7, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->mContent:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getX()F

    move-result v6

    cmpg-float v6, v1, v6

    if-ltz v6, :cond_c

    iget-object v6, v7, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->mContent:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getX()F

    move-result v6

    iget-object v8, v7, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->mContent:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v6, v8

    cmpl-float v1, v1, v6

    if-gtz v1, :cond_c

    iget-object v1, v7, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->mContent:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v1

    cmpg-float v1, v5, v1

    if-ltz v1, :cond_c

    iget-object v1, v7, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->mContent:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v1

    iget-object v6, v7, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->mContent:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v1, v6

    cmpl-float v1, v5, v1

    if-lez v1, :cond_8

    goto :goto_3

    :cond_8
    return v3

    :cond_9
    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mEmptyShadeView:Lcom/android/systemui/statusbar/EmptyShadeView;

    if-ne v1, v5, :cond_a

    return v4

    :cond_a
    if-nez v6, :cond_c

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->onKeyguard()Z

    move-result p0

    if-eqz p0, :cond_b

    instance-of p0, v1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz p0, :cond_b

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "isBelowLastNotification false : !belowChild of "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    check-cast v1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-object p1, v1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mLoggingKey:Ljava/lang/String;

    invoke-static {p0, p1, v2}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    return v3

    :cond_c
    :goto_3
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_1

    :cond_d
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->onKeyguard()Z

    move-result p1

    if-eqz p1, :cond_e

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "isBelowLastNotification return :  of touchY : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " , topPadding : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    iget v0, v0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mTopPadding:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " , getStackTranslation : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    iget v0, v0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mStackTranslation:F

    invoke-static {p1, v0, v2}, Landroidx/picker3/widget/SeslColorSpectrumView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/lang/String;)V

    :cond_e
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    iget p1, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mTopPadding:I

    int-to-float p1, p1

    iget p0, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mStackTranslation:F

    add-float/2addr p1, p0

    cmpl-float p0, p2, p1

    if-lez p0, :cond_f

    move v3, v4

    :cond_f
    return v3
.end method

.method public final isFullySwipedOut(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)Z
    .locals 2

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getTranslation()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mDismissUsingRowTranslationX:Z

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p0

    int-to-float p0, p0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result p0

    int-to-float p0, p0

    sub-float p1, p0, p1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr p1, v1

    sub-float/2addr p0, p1

    :goto_0
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    cmpl-float p0, v0, p0

    if-ltz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public final isHeadsUpTransition()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getTrackedHeadsUpRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isInsideQsHeader(Landroid/view/MotionEvent;)Z
    .locals 3

    sget v0, Lcom/android/systemui/scene/shared/flag/SceneContainerFlag;->$r8$clinit:I

    invoke-static {}, Lcom/android/systemui/Flags;->sceneContainer()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    iget v0, v0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mNotificationScrimTop:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mQsHeader:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mQsHeaderBound:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getBoundsOnScreen(Landroid/graphics/Rect;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mQsHeader:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLeft()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mQsHeaderBound:Landroid/graphics/Rect;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mQsHeaderBound:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0, v0, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result p0

    return p0
.end method

.method public final isRubberbanded(Z)Z
    .locals 0

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mExpandedInThisMotion:Z

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIsExpansionChanging:Z

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mPanelTracking:Z

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mScrolledToTopOnFirstDown:Z

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/android/systemui/shade/SecPanelSplitHelper;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getPanelSplitHelper()Lcom/android/systemui/shade/SecPanelSplitHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/shade/SecPanelSplitHelper;->isShadeState()Z

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

.method public isVisible(Landroid/view/View;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getClipBounds(Landroid/graphics/Rect;)Z

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    if-lez p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final logHunAnimationSkipped(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Ljava/lang/String;)V
    .locals 4

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mLogger:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLogger;

    if-nez p0, :cond_0

    return-void

    :cond_0
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    sget-object v0, Lcom/android/systemui/log/core/LogLevel;->INFO:Lcom/android/systemui/log/core/LogLevel;

    sget-object v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLogger$hunAnimationSkipped$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLogger$hunAnimationSkipped$2;

    const/4 v2, 0x0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    const-string v3, "NotificationStackScroll"

    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v0

    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/NotificationUtilsKt;->getLogKey(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)Ljava/lang/String;

    move-result-object p1

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/log/LogMessageImpl;

    iput-object p1, v1, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    iput-object p2, v1, Lcom/android/systemui/log/LogMessageImpl;->str2:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    return-void
.end method

.method public final notifyAppearChangedListeners()V
    .locals 6

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mKeyguardBypassEnabled:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->onKeyguard()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    iget v0, v0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mPulseHeight:F

    const v1, 0x47c35000    # 100000.0f

    cmpl-float v2, v0, v1

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move v0, v3

    :cond_0
    iget v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIntrinsicPadding:I

    int-to-float v2, v2

    invoke-static {v3, v2, v0}, Landroid/util/MathUtils;->smoothStep(FFF)F

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    iget v2, v2, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mPulseHeight:F

    cmpl-float v1, v2, v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    move v3, v2

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mExpandedHeight:F

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->calculateAppearFraction(F)F

    move-result v0

    invoke-static {v0}, Landroid/util/MathUtils;->saturate(F)F

    move-result v0

    iget v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mExpandedHeight:F

    :goto_0
    iget v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mLastSentAppear:F

    cmpl-float v1, v0, v1

    if-nez v1, :cond_3

    iget v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mLastSentExpandedHeight:F

    cmpl-float v1, v3, v1

    if-eqz v1, :cond_4

    :cond_3
    iput v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mLastSentAppear:F

    iput v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mLastSentExpandedHeight:F

    const/4 v1, 0x0

    :goto_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mExpandedHeightListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mExpandedHeightListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/function/BiConsumer;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method public final notifyHeightChangeListener(Lcom/android/systemui/statusbar/notification/row/ExpandableView;Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mOnHeightChangedListener:Lcom/android/systemui/statusbar/notification/row/ExpandableView$OnHeightChangedListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableView$OnHeightChangedListener;->onHeightChanged(Lcom/android/systemui/statusbar/notification/row/ExpandableView;Z)V

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mOnHeightChangedRunnable:Ljava/lang/Runnable;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_1
    return-void
.end method

.method public final notifyOverscrollTopListener(FZ)V
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mExpandHelper:Lcom/android/systemui/ExpandHelper;

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, p1, v1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-lez v2, :cond_0

    move v5, v3

    goto :goto_0

    :cond_0
    move v5, v4

    :goto_0
    iput-boolean v5, v0, Lcom/android/systemui/ExpandHelper;->mOnlyMovements:Z

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mDontReportNextOverScroll:Z

    if-eqz v0, :cond_1

    iput-boolean v4, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mDontReportNextOverScroll:Z

    return-void

    :cond_1
    const/4 v0, 0x0

    if-ltz v2, :cond_2

    move v2, p1

    goto :goto_1

    :cond_2
    move v2, v0

    :goto_1
    sget-object v5, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v6, Lcom/android/systemui/notification/FullExpansionPanelNotiAlphaController;

    invoke-virtual {v5, v6}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/notification/FullExpansionPanelNotiAlphaController;

    cmpl-float v2, v2, v0

    if-eqz v2, :cond_3

    if-eqz p2, :cond_3

    move v2, v3

    goto :goto_2

    :cond_3
    move v2, v4

    :goto_2
    iput-boolean v2, v5, Lcom/android/systemui/notification/FullExpansionPanelNotiAlphaController;->mStackScrollerOverscrolling:Z

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mOverscrollTopChangedListener:Lcom/android/systemui/shade/QuickSettingsControllerImpl$NsslOverscrollTopChangedListener;

    if-eqz p0, :cond_b

    iget-object p0, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl$NsslOverscrollTopChangedListener;->this$0:Lcom/android/systemui/shade/QuickSettingsControllerImpl;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v2, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mAmount:F

    cmpl-float v2, v2, p1

    if-nez v2, :cond_4

    iget-boolean v2, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mIsRubberBanded:Z

    if-ne v2, p2, :cond_4

    goto :goto_6

    :cond_4
    iput p1, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mAmount:F

    iput-boolean p2, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mIsRubberBanded:Z

    iget-object v2, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mExpansionAnimator:Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_5
    invoke-virtual {p0}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->isExpansionEnabled()Z

    move-result v2

    if-nez v2, :cond_6

    move p1, v0

    :cond_6
    cmpl-float v1, p1, v1

    if-ltz v1, :cond_7

    goto :goto_3

    :cond_7
    move p1, v0

    :goto_3
    cmpl-float v0, p1, v0

    if-eqz v0, :cond_8

    if-eqz p2, :cond_8

    move p2, v3

    goto :goto_4

    :cond_8
    move p2, v4

    :goto_4
    iput-boolean p2, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mStackScrollerOverscrolling:Z

    iget-object v1, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mQs:Lcom/android/systemui/plugins/qs/QS;

    if-eqz v1, :cond_9

    invoke-interface {v1, p2}, Lcom/android/systemui/plugins/qs/QS;->setOverscrolling(Z)V

    :cond_9
    if-eqz v0, :cond_a

    goto :goto_5

    :cond_a
    move v3, v4

    :goto_5
    iput-boolean v3, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mExpansionFromOverscroll:Z

    iput p1, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mLastOverscroll:F

    invoke-virtual {p0}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->updateQsState$1$1()V

    iget p2, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mMinExpansionHeight:I

    int-to-float p2, p2

    add-float/2addr p2, p1

    invoke-virtual {p0, p2}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->setExpansionHeight(F)V

    :cond_b
    :goto_6
    return-void
.end method

.method public final onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mWaterfallTopInset:I

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getWaterfallInsets()Landroid/graphics/Insets;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Insets;->top:I

    iput v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mWaterfallTopInset:I

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIsInsetAnimationRunning:Z

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateImeInset(Landroid/view/WindowInsets;)V

    :cond_1
    return-object p1
.end method

.method public final onChildHeightChanged(Lcom/android/systemui/statusbar/notification/row/ExpandableView;Z)V
    .locals 7

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAnimateStackYForContentHeightChange:Z

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAnimateStackYForContentHeightChange:Z

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateContentHeight()V

    iget v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    const/4 v3, 0x0

    if-lez v2, :cond_5

    instance-of v2, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v2, :cond_5

    move-object v2, p1

    check-cast v2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->onKeyguard()Z

    move-result v4

    if-nez v4, :cond_5

    iget-boolean v4, v2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mUserLocked:Z

    if-eqz v4, :cond_5

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getFirstChildNotGone()Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    move-result-object v4

    if-eq v2, v4, :cond_5

    iget-boolean v4, v2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v4

    iget v5, v2, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mActualHeight:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isChildInGroup()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, v2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mNotificationParent:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v5

    add-float/2addr v4, v5

    :cond_2
    iget v5, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mMaxLayoutHeight:I

    iget-object v6, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    iget v6, v6, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mStackTranslation:F

    float-to-int v6, v6

    add-int/2addr v5, v6

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getLastVisibleSection()Lcom/android/systemui/statusbar/notification/stack/NotificationSection;

    move-result-object v6

    if-nez v6, :cond_3

    move-object v6, v3

    goto :goto_0

    :cond_3
    iget-object v6, v6, Lcom/android/systemui/statusbar/notification/stack/NotificationSection;->mLastVisibleChild:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    :goto_0
    if-eq v2, v6, :cond_4

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v2

    const/16 v6, 0x8

    if-eq v2, v6, :cond_4

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    iget v6, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mPaddingBetweenElements:I

    add-int/2addr v2, v6

    sub-int/2addr v5, v2

    :cond_4
    int-to-float v2, v5

    cmpl-float v5, v4, v2

    if-lez v5, :cond_5

    sget v5, Lcom/android/systemui/scene/shared/flag/SceneContainerFlag;->$r8$clinit:I

    invoke-static {}, Lcom/android/systemui/Flags;->sceneContainer()V

    iget v5, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    int-to-float v5, v5

    add-float/2addr v5, v4

    sub-float/2addr v5, v2

    float-to-int v2, v5

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setOwnScrollY(I)V

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mDisallowScrollingInThisMotion:Z

    :cond_5
    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->clampScrollPosition()V

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->notifyHeightChangeListener(Lcom/android/systemui/statusbar/notification/row/ExpandableView;Z)V

    instance-of v2, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v2, :cond_6

    move-object v2, p1

    check-cast v2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    goto :goto_2

    :cond_6
    move-object v2, v3

    :goto_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getFirstVisibleSection()Lcom/android/systemui/statusbar/notification/stack/NotificationSection;

    move-result-object v4

    if-nez v4, :cond_7

    goto :goto_3

    :cond_7
    iget-object v3, v4, Lcom/android/systemui/statusbar/notification/stack/NotificationSection;->mFirstVisibleChild:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    :goto_3
    if-eqz v2, :cond_9

    if-eq v2, v3, :cond_8

    iget-object v4, v2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mNotificationParent:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-ne v4, v3, :cond_9

    :cond_8
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateAlgorithmLayoutMinHeight()V

    :cond_9
    if-eqz p2, :cond_b

    iget-boolean p2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAnimationsEnabled:Z

    if-eqz p2, :cond_b

    iget-boolean p2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    if-nez p2, :cond_a

    if-eqz v2, :cond_b

    iget-boolean p2, v2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsPinned:Z

    if-eqz p2, :cond_b

    :cond_a
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mNeedViewResizeAnimation:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mNeedsAnimation:Z

    :cond_b
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mTopHeadsUpRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-ne p2, p1, :cond_c

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mHeadsUpHeightChangedListeners:Lcom/android/systemui/util/ListenerSet;

    invoke-virtual {p1}, Lcom/android/systemui/util/ListenerSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Runnable;

    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    goto :goto_4

    :cond_c
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAnimateStackYForContentHeightChange:Z

    return-void
.end method

.method public final onClearAllAnimationsEnd(ILjava/util/List;)V
    .locals 7

    invoke-static {}, Lcom/android/internal/jank/InteractionJankMonitor;->getInstance()Lcom/android/internal/jank/InteractionJankMonitor;

    move-result-object v0

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Lcom/android/internal/jank/InteractionJankMonitor;->end(I)Z

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mClearAllAnimationListener:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$$ExternalSyntheticLambda6;

    if-eqz p0, :cond_5

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$$ExternalSyntheticLambda6;->f$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mNotifCollection:Lcom/android/systemui/statusbar/notification/collection/NotifCollection;

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    check-cast p1, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;

    iget p1, p1, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mCurrentUserId:I

    const/4 p2, 0x0

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->dismissAllNotifications(IZ)V

    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    iget-object p1, v0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->mReadOnlyNotificationSet:Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object p2, p2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mIsPlayingMediaOngoingActivity:Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_1

    :cond_1
    const-string p1, "StackScrollerController"

    const-string p2, "dismiss media data by all clear"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mMediaHost:Lcom/android/systemui/media/SecMediaHost;

    sget-object p2, Lcom/android/systemui/media/MediaType;->ENR:Lcom/android/systemui/media/MediaType;

    invoke-virtual {p1, p2}, Lcom/android/systemui/media/SecMediaHost;->getMediaPlayerData(Lcom/android/systemui/media/MediaType;)Lcom/android/systemui/media/SecMediaPlayerData;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/android/systemui/media/SecMediaPlayerData;->getMediaData()Ljava/lang/Iterable;

    move-result-object p1

    new-instance p2, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$$ExternalSyntheticLambda7;

    const/4 v0, 0x1

    invoke-direct {p2, p0, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$$ExternalSyntheticLambda7;-><init>(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;I)V

    invoke-interface {p1, p2}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    new-instance v2, Landroid/util/Pair;

    new-instance v3, Lcom/android/systemui/statusbar/notification/collection/notifcollection/DismissedByUserStats;

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mVisibilityProvider:Lcom/android/systemui/statusbar/notification/collection/render/NotificationVisibilityProvider;

    check-cast v4, Lcom/android/systemui/statusbar/notification/collection/provider/NotificationVisibilityProviderImpl;

    invoke-virtual {v4, v1}, Lcom/android/systemui/statusbar/notification/collection/provider/NotificationVisibilityProviderImpl;->obtain(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Lcom/android/internal/statusbar/NotificationVisibility;

    move-result-object v4

    const/4 v5, 0x3

    const/4 v6, 0x1

    invoke-direct {v3, v5, v6, v4}, Lcom/android/systemui/statusbar/notification/collection/notifcollection/DismissedByUserStats;-><init>(IILcom/android/internal/statusbar/NotificationVisibility;)V

    invoke-direct {v2, v1, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->dismissNotifications(Ljava/util/List;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateSplitNotificationShade()V

    iget-object v1, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/internal/policy/SystemBarUtils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mStatusBarHeight:I

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mSwipeHelper:Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;

    iput v0, v1, Lcom/android/systemui/SwipeHelper;->mDensityScale:F

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mSwipeHelper:Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;

    iput v0, v1, Lcom/android/systemui/SwipeHelper;->mPagingTouchSlop:F

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mSwipeHelper:Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mNotificationStackSizeCalculator:Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator;

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->initView(Landroid/content/Context;Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator;)V

    iget v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIsChangedOrientation:Z

    iput v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mOrientation:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    iput v1, v0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mOrientation:I

    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mSemDisplayDeviceType:I

    iget p1, p1, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    if-eq v0, p1, :cond_1

    iput p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mSemDisplayDeviceType:I

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_1
    iget p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mDndStatus:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mZenModeController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getDndStatusText(Lcom/android/systemui/statusbar/policy/ZenModeController;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateDndView(ILjava/lang/String;)V

    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    sget p0, Lcom/android/systemui/scene/shared/flag/SceneContainerFlag;->$r8$clinit:I

    invoke-static {}, Lcom/android/systemui/Flags;->sceneContainer()V

    return-void
.end method

.method public final onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->inflateEmptyShadeView()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->inflateDndView()V

    sget v0, Lcom/android/systemui/statusbar/notification/footer/shared/FooterViewRefactor;->$r8$clinit:I

    invoke-static {}, Lcom/android/systemui/Flags;->notificationsFooterViewRefactor()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->inflateFooterView()V

    return-void
.end method

.method public final onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mScrollingEnabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mSwipeHelper:Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;

    iget-boolean v0, v0, Lcom/android/systemui/SwipeHelper;->mIsSwiping:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mExpandingNotification:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mDisallowScrollingInThisMotion:Z

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_1

    goto :goto_1

    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIsBeingDragged:Z

    if-nez v0, :cond_4

    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    const/4 v2, 0x0

    cmpl-float v2, v0, v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getVerticalScrollFactor()F

    move-result v2

    mul-float/2addr v0, v2

    float-to-int v0, v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getScrollRange$1()I

    move-result v2

    iget v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    sub-int v0, v3, v0

    if-gez v0, :cond_2

    goto :goto_0

    :cond_2
    if-le v0, v2, :cond_3

    move v1, v2

    goto :goto_0

    :cond_3
    move v1, v0

    :goto_0
    if-eq v1, v3, :cond_4

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setOwnScrollY(I)V

    const/4 p0, 0x1

    return p0

    :cond_4
    :goto_1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_5
    :goto_2
    return v1
.end method

.method public final onInitializeAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mScrollable:Z

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    iget v0, p0, Landroid/view/ViewGroup;->mScrollX:I

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setMaxScrollX(I)V

    iget v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollY(I)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getScrollRange$1()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityEvent;->setMaxScrollY(I)V

    return-void
.end method

.method public final onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mScrollable:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mBackwardScrollable:Z

    if-eqz v0, :cond_0

    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_BACKWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_UP:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    :cond_0
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mForwardScrollable:Z

    if-eqz p0, :cond_1

    sget-object p0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_FORWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    sget-object p0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_DOWN:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    :cond_1
    const-class p0, Landroid/widget/ScrollView;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mTouchHandler:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$TouchHandler;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$TouchHandler;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public final onInterceptTouchEventScroll(Landroid/view/MotionEvent;)Z
    .locals 12

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mScrollingEnabled:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIsBeingDragged:Z

    if-eqz v4, :cond_1

    return v2

    :cond_1
    and-int/lit16 v0, v0, 0xff

    const/4 v4, 0x0

    if-eqz v0, :cond_9

    const/4 v5, -0x1

    if-eq v0, v2, :cond_7

    if-eq v0, v3, :cond_3

    const/4 v2, 0x3

    if-eq v0, v2, :cond_7

    const/4 v1, 0x6

    if-eq v0, v1, :cond_2

    goto/16 :goto_2

    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->onSecondaryPointerUp$1(Landroid/view/MotionEvent;)V

    goto/16 :goto_2

    :cond_3
    iget v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mActivePointerId:I

    if-ne v0, v5, :cond_4

    goto/16 :goto_2

    :cond_4
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    if-ne v1, v5, :cond_5

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Invalid pointerId="

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " in onInterceptTouchEvent"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "StackScroller"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_5
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    float-to-int v1, v1

    iget v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mLastMotionY:I

    sub-int v3, v0, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mDownX:I

    sub-int v4, v1, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    int-to-float v5, v3

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getTouchSlop$2(Landroid/view/MotionEvent;)F

    move-result v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_d

    if-le v3, v4, :cond_d

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setIsBeingDragged(Z)V

    iput v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mLastMotionY:I

    iput v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mDownX:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_6

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    goto/16 :goto_2

    :cond_7
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setIsBeingDragged(Z)V

    iput v5, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mActivePointerId:I

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    iput-object v4, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_8
    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mScroller:Landroid/widget/OverScroller;

    iget v6, p0, Landroid/view/ViewGroup;->mScrollX:I

    iget v7, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getScrollRange$1()I

    move-result v11

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v11}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result p1

    if-eqz p1, :cond_d

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->animateScroll()V

    goto :goto_2

    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mScrollAdapter:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$9;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v5, Lcom/android/systemui/scene/shared/flag/SceneContainerFlag;->$r8$clinit:I

    invoke-static {}, Lcom/android/systemui/Flags;->sceneContainer()V

    iget-object v3, v3, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$9;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    iget v3, v3, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    if-nez v3, :cond_a

    move v3, v2

    goto :goto_0

    :cond_a
    move v3, v1

    :goto_0
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mScrolledToTopOnFirstDown:Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    int-to-float v5, v0

    invoke-virtual {p0, v3, v5, v1, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getChildAtPosition(FFZZ)Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    move-result-object v3

    if-nez v3, :cond_b

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setIsBeingDragged(Z)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_d

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    iput-object v4, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_2

    :cond_b
    iput v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mLastMotionY:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mDownX:I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mActivePointerId:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_c

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_1

    :cond_c
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {p1}, Landroid/widget/OverScroller;->isFinished()Z

    move-result p1

    xor-int/2addr p1, v2

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setIsBeingDragged(Z)V

    :cond_d
    :goto_2
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIsBeingDragged:Z

    return p0
.end method

.method public final onKeyguard()Z
    .locals 1

    iget p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mStatusBarState:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final onLayout(ZIIII)V
    .locals 3

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mSuppressChildrenMeasureAndLayout:Z

    const/4 p2, 0x0

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result p1

    int-to-float p1, p1

    const/high16 p3, 0x40000000    # 2.0f

    div-float/2addr p1, p3

    move p4, p2

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p5

    if-ge p4, p5, :cond_0

    invoke-virtual {p0, p4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p5

    invoke-virtual {p5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, p3

    sub-float v2, p1, v0

    float-to-int v2, v2

    add-float/2addr v0, p1

    float-to-int v0, v0

    float-to-int v1, v1

    invoke-virtual {p5, v2, p2, v0, v1}, Landroid/view/View;->layout(IIII)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_0
    sget p1, Lcom/android/systemui/scene/shared/flag/SceneContainerFlag;->$r8$clinit:I

    invoke-static {}, Lcom/android/systemui/Flags;->sceneContainer()V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mMaxLayoutHeight:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateAlgorithmHeightAndPadding()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateContentHeight()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->clampScrollPosition()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateFirstAndLastBackgroundViews()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateAlgorithmLayoutMinHeight()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateOwnTranslationZ()V

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mStackScrollAlgorithm:Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;

    iget-object p3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mQsHeader:Landroid/view/ViewGroup;

    if-nez p3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getHeight()I

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAnimateStackYForContentHeightChange:Z

    return-void
.end method

.method public final onMeasure(II)V
    .locals 6

    const/4 v0, 0x1

    const-string v1, "NotificationStackScrollLayout#onMeasure"

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mKeyguardFoldController:Lcom/android/systemui/keyguard/KeyguardFoldController;

    check-cast v1, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;

    invoke-virtual {v1}, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->isUnlockOnFoldOpened()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mKeyguardFoldController:Lcom/android/systemui/keyguard/KeyguardFoldController;

    check-cast v1, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;

    invoke-virtual {v1}, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->isBouncerOnFoldOpened()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mHasDelayedForceLayout:Z

    if-eqz v1, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mForceLayoutFirstMeasure:Z

    const-string v2, "StackScroller"

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    const-string/jumbo v1, "stackScroller forcelayout measure!"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mForceLayoutFirstMeasure:Z

    :cond_1
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIsVisibleFromGone:Z

    if-eqz v1, :cond_2

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIsVisibleFromGone:Z

    const-string/jumbo v1, "visible from gone, fisrt measure!"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const-string/jumbo v4, "viewWidth="

    const-string v5, " skinnyNotifsInLandscape="

    invoke-static {v1, v4, v5}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mSkinnyNotifsInLandscape:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " orientation="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mLastUpdateSidePaddingDumpString:Ljava/lang/String;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mLastUpdateSidePaddingElapsedRealtime:J

    sget-object v2, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v4, Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    invoke-virtual {v2, v4}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    iget-object v4, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    iget-object v2, v2, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->resourcePickHelper:Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePickHelper;

    invoke-virtual {v2}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePickHelper;->getTargetPicker()Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePhonePicker;

    move-result-object v2

    invoke-virtual {v2, v4, v0}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePhonePicker;->getNotificationSidePadding(Landroid/content/Context;Z)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mSidePaddings:I

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mSuppressChildrenMeasureAndLayout:Z

    if-eqz v4, :cond_3

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :cond_3
    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    invoke-static {v1, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    invoke-static {p2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    :goto_0
    if-ge v3, v1, :cond_4

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2, p1, p2}, Landroid/view/ViewGroup;->measureChild(Landroid/view/View;II)V

    add-int/2addr v3, v0

    goto :goto_0

    :cond_4
    sget p0, Lcom/android/systemui/scene/shared/flag/SceneContainerFlag;->$r8$clinit:I

    invoke-static {}, Lcom/android/systemui/Flags;->sceneContainer()V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :cond_5
    :goto_1
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mForceLayoutFirstMeasure:Z

    return-void
.end method

.method public final onOverScrollFling(IZ)V
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mOverscrollTopChangedListener:Lcom/android/systemui/shade/QuickSettingsControllerImpl$NsslOverscrollTopChangedListener;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_4

    int-to-float p1, p1

    iget-object v4, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl$NsslOverscrollTopChangedListener;->this$0:Lcom/android/systemui/shade/QuickSettingsControllerImpl;

    iget v5, v4, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mInitialTouchX:F

    invoke-virtual {v4, v5}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->isSplitShadeAndTouchXOutsideQs(F)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    iput v2, v4, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mLastOverscroll:F

    iput-boolean v1, v4, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mExpansionFromOverscroll:Z

    if-eqz p2, :cond_1

    iput-boolean v1, v4, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mStackScrollerOverscrolling:Z

    iget-object v5, v4, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mQs:Lcom/android/systemui/plugins/qs/QS;

    if-eqz v5, :cond_1

    invoke-interface {v5, v1}, Lcom/android/systemui/plugins/qs/QS;->setOverscrolling(Z)V

    :cond_1
    iget v5, v4, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mExpansionHeight:F

    invoke-virtual {v4, v5}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->setExpansionHeight(F)V

    invoke-virtual {v4}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->isExpansionEnabled()Z

    move-result v5

    if-nez v5, :cond_2

    if-eqz p2, :cond_2

    move p1, v2

    :cond_2
    if-eqz p2, :cond_3

    if-eqz v5, :cond_3

    move p2, v1

    goto :goto_0

    :cond_3
    move p2, v3

    :goto_0
    new-instance v5, Lcom/android/systemui/shade/QuickSettingsControllerImpl$$ExternalSyntheticLambda0;

    const/4 v6, 0x5

    invoke-direct {v5, v0, v6}, Lcom/android/systemui/shade/QuickSettingsControllerImpl$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v4, p1, p2, v5, v1}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->flingQs(FILcom/android/systemui/shade/QuickSettingsControllerImpl$$ExternalSyntheticLambda0;Z)V

    :cond_4
    :goto_1
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mDontReportNextOverScroll:Z

    invoke-virtual {p0, v2, v3, v1, v3}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setOverScrollAmount(FZZZ)V

    return-void
.end method

.method public final onScrollTouch(Landroid/view/MotionEvent;)Z
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x1

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mScrollingEnabled:Z

    const/4 v4, 0x0

    if-nez v3, :cond_0

    return v4

    :cond_0
    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->isInsideQsHeader(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIsBeingDragged:Z

    if-nez v3, :cond_2

    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mQuickPanelLogger:Lcom/android/systemui/log/QuickPanelLogger;

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mQuickPanelLogBuilder:Ljava/lang/StringBuilder;

    if-eqz v2, :cond_1

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mQuickPanelLogBuilder:Ljava/lang/StringBuilder;

    const-string v3, "onScrollTouch: inInsideQsHeader : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->isInsideQsHeader(Landroid/view/MotionEvent;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " , mIsBeingDragged : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIsBeingDragged:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mQuickPanelLogger:Lcom/android/systemui/log/QuickPanelLogger;

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mQuickPanelLogBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0, v4}, Lcom/android/systemui/log/QuickPanelLogger;->onTouchEvent(Landroid/view/MotionEvent;Ljava/lang/String;Z)V

    :cond_1
    return v4

    :cond_2
    const/4 v3, 0x0

    iput-object v3, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mForcedScroll:Landroid/view/View;

    iget-object v3, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v3, :cond_3

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v3

    iput-object v3, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_3
    iget-object v3, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    iget v5, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mActivePointerId:I

    invoke-virtual {v1, v5}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v5

    const-string v6, "Invalid pointerId="

    const-string v7, "StackScroller"

    const/4 v8, -0x1

    if-ne v5, v8, :cond_4

    if-eqz v3, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mActivePointerId:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " in onTouchEvent "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    invoke-static {v0}, Landroid/view/MotionEvent;->actionToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_4
    sget v5, Lcom/android/systemui/scene/shared/flag/SceneContainerFlag;->$r8$clinit:I

    invoke-static {}, Lcom/android/systemui/Flags;->sceneContainer()V

    if-eqz v3, :cond_24

    const/4 v5, 0x0

    if-eq v3, v2, :cond_15

    const/4 v9, 0x2

    if-eq v3, v9, :cond_9

    const/4 v4, 0x3

    if-eq v3, v4, :cond_7

    const/4 v4, 0x5

    if-eq v3, v4, :cond_6

    const/4 v4, 0x6

    if-eq v3, v4, :cond_5

    goto/16 :goto_c

    :cond_5
    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->onSecondaryPointerUp$1(Landroid/view/MotionEvent;)V

    iget v3, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mActivePointerId:I

    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mLastMotionY:I

    iget v3, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mActivePointerId:I

    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mDownX:I

    goto/16 :goto_c

    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mLastMotionY:I

    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mDownX:I

    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mActivePointerId:I

    goto/16 :goto_c

    :cond_7
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIsBeingDragged:Z

    if-eqz v1, :cond_27

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-lez v1, :cond_27

    iget-object v9, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mScroller:Landroid/widget/OverScroller;

    iget v10, v0, Landroid/view/ViewGroup;->mScrollX:I

    iget v11, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getScrollRange$1()I

    move-result v15

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {v9 .. v15}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->animateScroll()V

    :cond_8
    iput v8, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mActivePointerId:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->endDrag$1()V

    goto/16 :goto_c

    :cond_9
    iget v3, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mActivePointerId:I

    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v3

    if-ne v3, v8, :cond_a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mActivePointerId:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " in onTouchEvent"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    :cond_a
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    float-to-int v3, v3

    iget v7, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mLastMotionY:I

    sub-int/2addr v7, v6

    iget v8, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mDownX:I

    sub-int/2addr v3, v8

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v8

    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getTouchSlop$2(Landroid/view/MotionEvent;)F

    move-result v1

    iget-boolean v10, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIsBeingDragged:Z

    if-nez v10, :cond_c

    int-to-float v10, v8

    cmpl-float v10, v10, v1

    if-lez v10, :cond_c

    if-le v8, v3, :cond_c

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setIsBeingDragged(Z)V

    if-lez v7, :cond_b

    int-to-float v3, v7

    sub-float/2addr v3, v1

    :goto_0
    float-to-int v7, v3

    goto :goto_1

    :cond_b
    int-to-float v3, v7

    add-float/2addr v3, v1

    goto :goto_0

    :cond_c
    :goto_1
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIsBeingDragged:Z

    if-eqz v1, :cond_27

    invoke-static {}, Lcom/android/systemui/Flags;->sceneContainer()V

    iput v6, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mLastMotionY:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getScrollRange$1()I

    move-result v1

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mExpandedInThisMotion:Z

    if-eqz v3, :cond_d

    iget v3, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mMaxScrollAfterExpand:I

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    :cond_d
    if-gez v7, :cond_10

    invoke-static {v7, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getCurrentOverScrollAmount(Z)F

    move-result v6

    int-to-float v3, v3

    add-float/2addr v3, v6

    cmpl-float v6, v6, v5

    if-lez v6, :cond_e

    invoke-virtual {v0, v3, v4, v4, v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setOverScrollAmount(FZZZ)V

    :cond_e
    cmpg-float v6, v3, v5

    if-gez v6, :cond_f

    goto :goto_2

    :cond_f
    move v3, v5

    :goto_2
    iget v6, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    int-to-float v6, v6

    add-float/2addr v6, v3

    cmpg-float v7, v6, v5

    if-gez v7, :cond_14

    iget v3, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mOverScrolledTopPixels:F

    sub-float/2addr v3, v6

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getRubberBandFactor(Z)F

    move-result v6

    mul-float/2addr v6, v3

    invoke-virtual {v0, v6, v2, v4, v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setOverScrollAmount(FZZZ)V

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setOwnScrollY(I)V

    :goto_3
    move v3, v5

    goto :goto_5

    :cond_10
    invoke-static {v7, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getCurrentOverScrollAmount(Z)F

    move-result v6

    int-to-float v3, v3

    sub-float v3, v6, v3

    cmpl-float v6, v6, v5

    if-lez v6, :cond_11

    invoke-virtual {v0, v3, v2, v4, v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setOverScrollAmount(FZZZ)V

    :cond_11
    cmpg-float v6, v3, v5

    if-gez v6, :cond_12

    neg-float v3, v3

    goto :goto_4

    :cond_12
    move v3, v5

    :goto_4
    iget v6, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    int-to-float v6, v6

    add-float/2addr v6, v3

    int-to-float v7, v1

    cmpl-float v8, v6, v7

    if-lez v8, :cond_14

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mExpandedInThisMotion:Z

    if-nez v3, :cond_13

    iget v3, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mOverScrolledBottomPixels:F

    add-float/2addr v3, v6

    sub-float/2addr v3, v7

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getRubberBandFactor(Z)F

    move-result v6

    mul-float/2addr v6, v3

    invoke-virtual {v0, v6, v4, v4, v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setOverScrollAmount(FZZZ)V

    :cond_13
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setOwnScrollY(I)V

    goto :goto_3

    :cond_14
    :goto_5
    cmpl-float v4, v3, v5

    if-eqz v4, :cond_27

    float-to-int v3, v3

    iget v4, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v5

    div-int/2addr v5, v9

    invoke-virtual {v0, v3, v4, v1, v5}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->customOverScrollBy(IIII)V

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->checkSnoozeLeavebehind()V

    goto/16 :goto_c

    :cond_15
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIsBeingDragged:Z

    if-eqz v1, :cond_27

    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v3, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mMaximumVelocity:I

    int-to-float v3, v3

    const/16 v6, 0x3e8

    invoke-virtual {v1, v6, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    iget v3, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mActivePointerId:I

    invoke-virtual {v1, v3}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getCurrentOverScrollAmount(Z)F

    move-result v3

    iget-boolean v6, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mScrolledToTopOnFirstDown:Z

    if-eqz v6, :cond_18

    invoke-static {}, Lcom/android/systemui/shade/SecPanelSplitHelper;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_16

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getPanelSplitHelper()Lcom/android/systemui/shade/SecPanelSplitHelper;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/systemui/shade/SecPanelSplitHelper;->isShadeState()Z

    move-result v6

    if-nez v6, :cond_18

    :cond_16
    iget-boolean v6, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mExpandedInThisMotion:Z

    if-nez v6, :cond_18

    iget v6, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mMinimumVelocity:I

    if-gt v1, v6, :cond_17

    iget v6, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mMinTopOverScrollToEscape:F

    cmpl-float v3, v3, v6

    if-lez v3, :cond_18

    if-lez v1, :cond_18

    :cond_17
    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->onOverScrollFling(IZ)V

    goto/16 :goto_b

    :cond_18
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-lez v3, :cond_23

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v6, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mMinimumVelocity:I

    if-le v3, v6, :cond_21

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getCurrentOverScrollAmount(Z)F

    move-result v3

    cmpl-float v3, v3, v5

    if-eqz v3, :cond_1a

    if-lez v1, :cond_19

    goto :goto_6

    :cond_19
    invoke-virtual {v0, v1, v4}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->onOverScrollFling(IZ)V

    goto/16 :goto_b

    :cond_1a
    :goto_6
    iput-boolean v2, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mFlingAfterUpEvent:Z

    new-instance v3, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$$ExternalSyntheticLambda4;

    invoke-direct {v3, v0, v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;I)V

    iput-object v3, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mFinishScrollingCallback:Ljava/lang/Runnable;

    neg-int v1, v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-lez v3, :cond_23

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getCurrentOverScrollAmount(Z)F

    move-result v3

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getCurrentOverScrollAmount(Z)F

    move-result v6

    const/high16 v7, 0x447a0000    # 1000.0f

    if-gez v1, :cond_1b

    cmpl-float v9, v3, v5

    if-lez v9, :cond_1b

    iget v6, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    float-to-int v9, v3

    sub-int/2addr v6, v9

    invoke-virtual {v0, v6}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setOwnScrollY(I)V

    iput-boolean v2, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mDontReportNextOverScroll:Z

    invoke-virtual {v0, v5, v2, v4, v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setOverScrollAmount(FZZZ)V

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v7

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getRubberBandFactor(Z)F

    move-result v6

    mul-float/2addr v6, v5

    iget v5, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mOverflingDistance:I

    int-to-float v5, v5

    mul-float/2addr v6, v5

    add-float/2addr v6, v3

    iput v6, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mMaxOverScroll:F

    goto :goto_7

    :cond_1b
    if-lez v1, :cond_1c

    cmpl-float v3, v6, v5

    if-lez v3, :cond_1c

    iget v3, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    int-to-float v3, v3

    add-float/2addr v3, v6

    float-to-int v3, v3

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setOwnScrollY(I)V

    invoke-virtual {v0, v5, v4, v4, v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setOverScrollAmount(FZZZ)V

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v7

    const v5, 0x3dcccccd    # 0.1f

    mul-float/2addr v3, v5

    iget v5, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mOverflingDistance:I

    int-to-float v5, v5

    mul-float/2addr v3, v5

    add-float/2addr v3, v6

    iput v3, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mMaxOverScroll:F

    goto :goto_7

    :cond_1c
    iput v5, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mMaxOverScroll:F

    :goto_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getScrollRange$1()I

    move-result v3

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget-boolean v5, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mExpandedInThisMotion:Z

    if-eqz v5, :cond_1d

    iget v5, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mMaxScrollAfterExpand:I

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    :cond_1d
    move/from16 v17, v3

    iget-object v9, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mScroller:Landroid/widget/OverScroller;

    iget v10, v0, Landroid/view/ViewGroup;->mScrollX:I

    iget v11, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    if-lez v1, :cond_1e

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getScrollAmountToScrollBoundary()I

    move-result v3

    move/from16 v16, v3

    goto :goto_8

    :cond_1e
    move/from16 v16, v4

    :goto_8
    iget-boolean v3, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mExpandedInThisMotion:Z

    if-eqz v3, :cond_1f

    iget v3, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    if-ltz v3, :cond_1f

    :goto_9
    move/from16 v19, v4

    goto :goto_a

    :cond_1f
    const v4, 0x3fffffff    # 1.9999999f

    goto :goto_9

    :goto_a
    const/4 v12, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v18, 0x0

    move v13, v1

    invoke-virtual/range {v9 .. v19}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    if-gez v1, :cond_20

    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getFinalY()I

    move-result v1

    if-lez v1, :cond_20

    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getFinalY()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getScrollAmountToScrollBoundary()I

    move-result v3

    if-ge v1, v3, :cond_20

    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1, v2}, Landroid/widget/OverScroller;->forceFinished(Z)V

    iget-object v9, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mScroller:Landroid/widget/OverScroller;

    iget v10, v0, Landroid/view/ViewGroup;->mScrollX:I

    iget v11, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    neg-int v13, v11

    const/16 v14, 0x41a

    const/4 v12, 0x0

    invoke-virtual/range {v9 .. v14}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    :cond_20
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->animateScroll()V

    goto :goto_b

    :cond_21
    iget-object v15, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mScroller:Landroid/widget/OverScroller;

    iget v1, v0, Landroid/view/ViewGroup;->mScrollX:I

    iget v3, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getScrollRange$1()I

    move-result v21

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move/from16 v16, v1

    move/from16 v17, v3

    invoke-virtual/range {v15 .. v21}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->animateScroll()V

    goto :goto_b

    :cond_22
    iget v1, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    if-lez v1, :cond_23

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getScrollAmountToScrollBoundary()I

    move-result v1

    iget v11, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    if-le v1, v11, :cond_23

    iget-object v9, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mScroller:Landroid/widget/OverScroller;

    iget v10, v0, Landroid/view/ViewGroup;->mScrollX:I

    neg-int v13, v11

    const/16 v14, 0x41a

    const/4 v12, 0x0

    invoke-virtual/range {v9 .. v14}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->animateScroll()V

    :cond_23
    :goto_b
    iput v8, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mActivePointerId:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->endDrag$1()V

    goto :goto_c

    :cond_24
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-eqz v3, :cond_28

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getEmptyBottomMargin()I

    move-result v6

    sub-int/2addr v5, v6

    iget-object v6, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    cmpg-float v3, v3, v5

    if-gez v3, :cond_28

    iget-object v3, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->getVisibleNotificationCount()I

    move-result v3

    if-nez v3, :cond_25

    goto :goto_d

    :cond_25
    iget-object v3, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v3}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v3

    xor-int/2addr v3, v2

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setIsBeingDragged(Z)V

    iget-object v3, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v3}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v3

    if-nez v3, :cond_26

    iget-object v3, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v3, v2}, Landroid/widget/OverScroller;->forceFinished(Z)V

    :cond_26
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    iput v3, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mLastMotionY:I

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    iput v3, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mDownX:I

    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mActivePointerId:I

    :cond_27
    :goto_c
    return v2

    :cond_28
    :goto_d
    return v4
.end method

.method public final onSecondaryPointerUp$1(Landroid/view/MotionEvent;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const v1, 0xff00

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iget v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mActivePointerId:I

    if-ne v1, v2, :cond_1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mLastMotionY:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mActivePointerId:I

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/view/VelocityTracker;->clear()V

    :cond_1
    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mTouchHandler:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$TouchHandler;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$TouchHandler;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    sget v1, Lcom/android/systemui/scene/shared/flag/SceneContainerFlag;->$r8$clinit:I

    invoke-static {}, Lcom/android/systemui/Flags;->sceneContainer()V

    if-eqz v0, :cond_2

    iget p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mOrientation:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    iget p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mInitialTouchX:F

    iget v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mSidePaddings:I

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    iget p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mSidePaddings:I

    sub-int/2addr v0, p0

    int-to-float p0, v0

    cmpl-float p0, p1, p0

    if-lez p0, :cond_1

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public final onViewAdded(Landroid/view/View;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onViewAdded(Landroid/view/View;)V

    instance-of v0, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->onViewAddedInternal(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)V

    :cond_0
    return-void
.end method

.method public final onViewAddedInternal(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mHideSensitive:Z

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setHideSensitiveForIntrinsicHeight(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mOnChildHeightChangedListener:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$7;

    iput-object v0, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mOnHeightChangedListener:Lcom/android/systemui/statusbar/notification/row/ExpandableView$OnHeightChangedListener;

    instance-of v0, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v0, :cond_0

    move-object v1, p1

    check-cast v1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mOnChildSensitivityChangedListener:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$8;

    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mOnSensitivityChangedListeners:Lcom/android/systemui/util/ListenerSet;

    invoke-virtual {v1, v2}, Lcom/android/systemui/util/ListenerSet;->addIfAbsent(Ljava/lang/Object;)Z

    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAnimationsEnabled:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mChangePositionInProgress:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isFullyHidden()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mChildrenToAddAnimated:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mNeedsAnimation:Z

    :cond_1
    const/4 v1, 0x0

    if-eqz v0, :cond_2

    move-object v3, p1

    check-cast v3, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-boolean v3, v3, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsHeadsUp:Z

    goto :goto_0

    :cond_2
    move v3, v1

    :goto_0
    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAnimationsEnabled:Z

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mChangePositionInProgress:Z

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isFullyHidden()Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAddedHeadsUpChildren:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mChildrenToAddAnimated:Ljava/util/HashSet;

    invoke-virtual {v3, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :cond_3
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAnimationsEnabled:Z

    if-nez v3, :cond_4

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mPulsing:Z

    if-eqz v3, :cond_5

    :cond_4
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    if-nez v3, :cond_6

    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->isPinnedHeadsUp(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_1

    :cond_5
    move v2, v1

    :cond_6
    :goto_1
    if-eqz v0, :cond_7

    move-object v1, p1

    check-cast v1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setAnimationRunning(Z)V

    :cond_7
    if-eqz v0, :cond_8

    move-object v1, p1

    check-cast v1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setChronometerRunning(Z)V

    :cond_8
    if-eqz v0, :cond_9

    check-cast p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mDismissUsingRowTranslationX:Z

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setDismissUsingRowTranslationX(Z)V

    :cond_9
    return-void
.end method

.method public final onViewRemoved(Landroid/view/View;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onViewRemoved(Landroid/view/View;)V

    check-cast p1, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mChildTransferInProgress:Z

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->onViewRemovedInternal(Lcom/android/systemui/statusbar/notification/row/ExpandableView;Landroid/view/ViewGroup;)V

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/android/systemui/statusbar/NotificationShelf;->SHELF_SCROLL:Lcom/android/systemui/statusbar/notification/SourceType$Companion$from$1;

    invoke-interface {p1, p0}, Lcom/android/systemui/statusbar/notification/Roundable;->requestRoundnessReset(Lcom/android/systemui/statusbar/notification/SourceType;)V

    return-void
.end method

.method public final onViewRemovedInternal(Lcom/android/systemui/statusbar/notification/row/ExpandableView;Landroid/view/ViewGroup;)V
    .locals 10

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mChangePositionInProgress:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mOnHeightChangedListener:Lcom/android/systemui/statusbar/notification/row/ExpandableView$OnHeightChangedListener;

    instance-of v1, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v1, :cond_1

    move-object v2, p1

    check-cast v2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mOnChildSensitivityChangedListener:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$8;

    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mOnSensitivityChangedListeners:Lcom/android/systemui/util/ListenerSet;

    invoke-virtual {v2, v3}, Lcom/android/systemui/util/ListenerSet;->remove(Ljava/lang/Object;)Z

    :cond_1
    const/4 v2, 0x1

    if-eqz v1, :cond_2

    move-object v3, p1

    check-cast v3, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isInsignificant()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isInsignificantSummary()Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getPositionInLinearLayout(Landroid/view/View;)I

    move-result v3

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getIntrinsicHeight()I

    move-result v4

    iget v5, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mPaddingBetweenElements:I

    add-int/2addr v4, v5

    add-int v5, v3, v4

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getScrollAmountToScrollBoundary()I

    move-result v6

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAnimateStackYForContentHeightChange:Z

    iget v7, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    sub-int v8, v7, v6

    if-gt v5, v8, :cond_3

    sub-int/2addr v7, v4

    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setOwnScrollY(I)V

    goto :goto_0

    :cond_3
    if-ge v3, v8, :cond_4

    add-int/2addr v3, v6

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setOwnScrollY(I)V

    :cond_4
    :goto_0
    const/4 v3, 0x0

    if-eqz p2, :cond_13

    if-eqz v1, :cond_6

    move-object v4, p1

    check-cast v4, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-boolean v5, v4, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mSkipRemovalAnim:Z

    if-eqz v5, :cond_6

    iput-boolean v3, v4, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mSkipRemovalAnim:Z

    :cond_5
    :goto_1
    move v2, v3

    goto/16 :goto_3

    :cond_6
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mHeadsUpChangeAnimations:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v5, v3

    :cond_7
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/Pair;

    iget-object v7, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-object v8, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-ne p1, v7, :cond_7

    iget-object v7, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mTmpList:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/2addr v5, v8

    goto :goto_2

    :cond_8
    if-eqz v5, :cond_9

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mHeadsUpChangeAnimations:Ljava/util/HashSet;

    iget-object v6, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mTmpList:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    move-object v4, p1

    check-cast v4, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v4, v3}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setHeadsUpAnimatingAway(Z)V

    :cond_9
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mTmpList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    if-eqz v5, :cond_a

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAddedHeadsUpChildren:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAddedHeadsUpChildren:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_a
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    if-nez v4, :cond_b

    const v4, 0x7f0a0546

    invoke-virtual {p1, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    if-eqz v4, :cond_b

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_b

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mClearTransientViewsWhenFinished:Ljava/util/HashSet;

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-boolean v2, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mInRemovalAnimation:Z

    goto :goto_3

    :cond_b
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    if-eqz v4, :cond_5

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAnimationsEnabled:Z

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mChildrenToAddAnimated:Ljava/util/HashSet;

    invoke-virtual {v4, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mChildrenToRemoveAnimated:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mNeedsAnimation:Z

    goto :goto_3

    :cond_c
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mChildrenToAddAnimated:Ljava/util/HashSet;

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mFromMoreCardAdditions:Ljava/util/HashSet;

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :goto_3
    if-eqz v2, :cond_13

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mSwipedOutViews:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->isFullySwipedOut(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)Z

    move-result v2

    if-nez v2, :cond_14

    :cond_d
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mSwipeCancelledView:Ljava/util/HashSet;

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    const-string v4, "StackScroller"

    if-nez v2, :cond_12

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mLogger:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLogger;

    if-nez v2, :cond_e

    goto :goto_4

    :cond_e
    if-eqz v1, :cond_11

    instance-of v5, p2, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;

    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLogger;->notificationRenderBuffer:Lcom/android/systemui/log/LogBuffer;

    const-string v6, "NotificationStackScroll"

    if-eqz v5, :cond_f

    move-object v5, p1

    check-cast v5, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-object v5, v5, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-object v7, p2

    check-cast v7, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;

    iget-object v7, v7, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-object v7, v7, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    sget-object v8, Lcom/android/systemui/log/core/LogLevel;->INFO:Lcom/android/systemui/log/core/LogLevel;

    sget-object v9, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLogger$addTransientChildNotificationToChildContainer$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLogger$addTransientChildNotificationToChildContainer$2;

    invoke-virtual {v2, v6, v8, v9, v0}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v0

    invoke-static {v5}, Lcom/android/systemui/statusbar/notification/NotificationUtilsKt;->getLogKey(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)Ljava/lang/String;

    move-result-object v5

    move-object v6, v0

    check-cast v6, Lcom/android/systemui/log/LogMessageImpl;

    iput-object v5, v6, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    invoke-static {v7}, Lcom/android/systemui/statusbar/notification/NotificationUtilsKt;->getLogKey(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v6, Lcom/android/systemui/log/LogMessageImpl;->str2:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    goto :goto_4

    :cond_f
    instance-of v5, p2, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    if-eqz v5, :cond_10

    move-object v5, p1

    check-cast v5, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-object v5, v5, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    sget-object v7, Lcom/android/systemui/log/core/LogLevel;->INFO:Lcom/android/systemui/log/core/LogLevel;

    sget-object v8, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLogger$addTransientChildNotificationToNssl$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLogger$addTransientChildNotificationToNssl$2;

    invoke-virtual {v2, v6, v7, v8, v0}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v0

    invoke-static {v5}, Lcom/android/systemui/statusbar/notification/NotificationUtilsKt;->getLogKey(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)Ljava/lang/String;

    move-result-object v5

    move-object v6, v0

    check-cast v6, Lcom/android/systemui/log/LogMessageImpl;

    iput-object v5, v6, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    goto :goto_4

    :cond_10
    move-object v5, p1

    check-cast v5, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-object v5, v5, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    sget-object v7, Lcom/android/systemui/log/core/LogLevel;->ERROR:Lcom/android/systemui/log/core/LogLevel;

    sget-object v8, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLogger$addTransientChildNotificationToViewGroup$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLogger$addTransientChildNotificationToViewGroup$2;

    invoke-virtual {v2, v6, v7, v8, v0}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v0

    invoke-static {v5}, Lcom/android/systemui/statusbar/notification/NotificationUtilsKt;->getLogKey(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)Ljava/lang/String;

    move-result-object v5

    move-object v6, v0

    check-cast v6, Lcom/android/systemui/log/LogMessageImpl;

    iput-object v5, v6, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v6, Lcom/android/systemui/log/LogMessageImpl;->str2:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    :cond_11
    :goto_4
    invoke-virtual {p2, p1, v3}, Landroid/view/ViewGroup;->addTransientView(Landroid/view/View;I)V

    iput-object p2, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mTransientContainer:Landroid/view/ViewGroup;

    const-string p2, "onViewRemovedInternal enqueue next animation"

    invoke-static {v4, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_12
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mSwipeCancelledView:Ljava/util/HashSet;

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    const-string p2, "onViewRemovedInternal not add to transient container. Reason : swipe cancelled"

    invoke-static {v4, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_13
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mSwipedOutViews:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    if-eqz v1, :cond_14

    move-object p2, p1

    check-cast p2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->removeChildrenWithKeepInParent()V

    :cond_14
    :goto_5
    if-eqz v1, :cond_15

    move-object p2, p1

    check-cast p2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {p2, v3}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setAnimationRunning(Z)V

    :cond_15
    if-eqz v1, :cond_19

    move-object p2, p1

    check-cast p2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-boolean v0, p2, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mRefocusOnDismiss:Z

    if-nez v0, :cond_16

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->isAccessibilityFocused()Z

    move-result v0

    if-eqz v0, :cond_19

    :cond_16
    iget-object v0, p2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildAfterViewWhenDismissed:Landroid/view/View;

    if-nez v0, :cond_18

    iget-object p2, p2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mGroupParentWhenDismissed:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz p2, :cond_17

    invoke-virtual {p2}, Landroid/view/View;->getTranslationY()F

    move-result p1

    goto :goto_6

    :cond_17
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result p1

    :goto_6
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getFirstChildBelowTranlsationY(F)Landroid/view/View;

    move-result-object v0

    :cond_18
    if-eqz v0, :cond_19

    invoke-virtual {v0}, Landroid/view/View;->requestAccessibilityFocus()Z

    :cond_19
    return-void
.end method

.method public final onWindowFocusChanged(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onWindowFocusChanged(Z)V

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->cancelLongPress()V

    :cond_0
    return-void
.end method

.method public final performAccessibilityActionInternal(ILandroid/os/Bundle;)Z
    .locals 4

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->performAccessibilityActionInternal(ILandroid/os/Bundle;)Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isEnabled()Z

    move-result p2

    const/4 v1, 0x0

    if-nez p2, :cond_1

    return v1

    :cond_1
    const/16 p2, 0x1000

    if-eq p1, p2, :cond_3

    const/16 p2, 0x2000

    if-eq p1, p2, :cond_2

    const p2, 0x1020038

    if-eq p1, p2, :cond_2

    const p2, 0x102003a

    if-eq p1, p2, :cond_3

    goto :goto_1

    :cond_2
    const/4 p1, -0x1

    goto :goto_0

    :cond_3
    move p1, v0

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result p2

    iget v2, p0, Landroid/view/ViewGroup;->mPaddingBottom:I

    sub-int/2addr p2, v2

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    iget v2, v2, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mTopPadding:I

    sub-int/2addr p2, v2

    iget v2, p0, Landroid/view/ViewGroup;->mPaddingTop:I

    sub-int/2addr p2, v2

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    sub-int/2addr p2, v2

    iget v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    mul-int/2addr p1, p2

    add-int/2addr p1, v2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getScrollRange$1()I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget p2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    if-eq p1, p2, :cond_4

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mScroller:Landroid/widget/OverScroller;

    iget v3, p0, Landroid/view/ViewGroup;->mScrollX:I

    sub-int/2addr p1, p2

    invoke-virtual {v2, v3, p2, v1, p1}, Landroid/widget/OverScroller;->startScroll(IIII)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->animateScroll()V

    return v0

    :cond_4
    :goto_1
    return v1
.end method

.method public final removeTransientView(Landroid/view/View;)V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mLogger:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLogger;

    if-eqz v0, :cond_0

    instance-of v1, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v1, :cond_0

    move-object v1, p1

    check-cast v1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    new-instance v3, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v3}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    iget-object v4, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    sget-object v4, Lcom/android/systemui/log/core/LogLevel;->INFO:Lcom/android/systemui/log/core/LogLevel;

    new-instance v5, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLogger$removeTransientRow$2;

    invoke-direct {v5, v3, v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLogger$removeTransientRow$2;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    const-string v2, "NotificationStackScroll"

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLogger;->notificationRenderBuffer:Lcom/android/systemui/log/LogBuffer;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v4, v5, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v2

    invoke-static {v1}, Lcom/android/systemui/statusbar/notification/NotificationUtilsKt;->getLogKey(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)Ljava/lang/String;

    move-result-object v1

    move-object v3, v2

    check-cast v3, Lcom/android/systemui/log/LogMessageImpl;

    iput-object v1, v3, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeTransientView(Landroid/view/View;)V

    return-void
.end method

.method public final requestChildrenUpdate()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mChildrenUpdateRequested:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mChildrenUpdater:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$1;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mChildrenUpdateRequested:Z

    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    :cond_0
    return-void
.end method

.method public final requestDisallowInterceptTouchEvent(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->cancelLongPress()V

    :cond_0
    return-void
.end method

.method public final requestLayout()V
    .locals 3

    const-wide/16 v0, 0x1000

    const-string v2, "NotificationStackScrollLayout#requestLayout"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->instant(JLjava/lang/String;)V

    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    return-void
.end method

.method public final resetAllSwipeState()V
    .locals 7

    const-string v0, "NSSL.resetAllSwipeState()"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mSwipeHelper:Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/SwipeHelper;->resetSwipeStates(Z)V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_3

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mSwipeHelper:Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Landroid/view/View;->getTranslationX()F

    move-result v4

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v3, v5, v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->setTranslation(FLandroid/view/View;)V

    invoke-virtual {v3, v2, v5, v1}, Lcom/android/systemui/SwipeHelper;->updateSwipeProgressFromOffset(Landroid/view/View;FZ)V

    :goto_1
    instance-of v3, v2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v3, :cond_2

    check-cast v2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getAttachedChildren()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mSwipeHelper:Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Landroid/view/View;->getTranslationX()F

    move-result v6

    cmpl-float v6, v6, v5

    if-nez v6, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v4, v5, v3}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->setTranslation(FLandroid/view/View;)V

    invoke-virtual {v4, v3, v5, v1}, Lcom/android/systemui/SwipeHelper;->updateSwipeProgressFromOffset(Landroid/view/View;FZ)V

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateContinuousShadowDrawing()V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public final resetScrollPosition()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setOwnScrollY(I)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getCurrentOverScrollAmount(Z)F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    invoke-virtual {p0, v3, v1, v0, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setOverScrollAmount(FZZZ)V

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getCurrentOverScrollAmount(Z)F

    move-result v2

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    invoke-virtual {p0, v3, v0, v0, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setOverScrollAmount(FZZZ)V

    :cond_1
    return-void
.end method

.method public final runAnimationFinishedRunnables()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAnimationFinishedRunnables:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAnimationFinishedRunnables:Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->clear()V

    return-void
.end method

.method public final scrollAmountForKeyboardFocus(I)I
    .locals 2

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    instance-of v0, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getY()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    check-cast p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget p1, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mActualHeight:I

    iget p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mPaddingBetweenElements:I

    add-int/2addr p1, p0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final scrollTo(Landroid/view/View;)Z
    .locals 4

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getPositionInLinearLayout(Landroid/view/View;)I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->targetScrollForView(Lcom/android/systemui/statusbar/notification/row/ExpandableView;I)I

    move-result v1

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getIntrinsicHeight()I

    move-result v0

    add-int/2addr v0, p1

    iget p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    const/4 v2, 0x0

    if-lt p1, v1, :cond_1

    if-ge v0, p1, :cond_0

    goto :goto_0

    :cond_0
    return v2

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mScroller:Landroid/widget/OverScroller;

    iget v3, p0, Landroid/view/ViewGroup;->mScrollX:I

    sub-int/2addr v1, p1

    invoke-virtual {v0, v3, p1, v2, v1}, Landroid/widget/OverScroller;->startScroll(IIII)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mDontReportNextOverScroll:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->animateScroll()V

    return p1
.end method

.method public final setAlpha(F)V
    .locals 2

    sget-boolean v0, Lcom/android/systemui/qs/animator/QsAnimatorState;->isCustomizerShowing:Z

    const/4 v1, 0x0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mMusicItemExpanded:Z

    if-nez v0, :cond_3

    sget-boolean v0, Lcom/android/systemui/qs/animator/QsAnimatorState;->isDetailShowing:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/systemui/qs/animator/QsAnimatorState;->isDetailClosing:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/systemui/shade/SecPanelSplitHelper;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getPanelSplitHelper()Lcom/android/systemui/shade/SecPanelSplitHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/shade/SecPanelSplitHelper;->isQSState()Z

    move-result v0

    if-eqz v0, :cond_1

    move p1, v1

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getPanelSplitHelper()Lcom/android/systemui/shade/SecPanelSplitHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/shade/SecPanelSplitHelper;->isShadeState()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mStatusBarState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/high16 p1, 0x3f800000    # 1.0f

    :cond_2
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setAlpha(F)V

    return-void

    :cond_3
    :goto_0
    sget-boolean p1, Lcom/android/systemui/qs/animator/QsAnimatorState;->isCustomizerShowing:Z

    if-eqz p1, :cond_4

    invoke-super {p0, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    :cond_4
    return-void
.end method

.method public final setAnimationRunning(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAnimationRunning:Z

    if-eq p1, v0, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mRunningAnimationUpdater:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$2;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mRunningAnimationUpdater:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$2;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :goto_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAnimationRunning:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateContinuousShadowDrawing()V

    :cond_1
    return-void
.end method

.method public setClearAllInProgress(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mClearAllInProgress:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mClearAllInProgress:Z

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mNotificationRoundnessManager:Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->mIsClearAllInProgress:Z

    return-void
.end method

.method public final setExpandedHeight(F)V
    .locals 11

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->shouldSkipHeightUpdate()Z

    move-result v0

    sget v1, Lcom/android/systemui/scene/shared/flag/SceneContainerFlag;->$r8$clinit:I

    invoke-static {}, Lcom/android/systemui/Flags;->sceneContainer()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateStackPosition(Z)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_2

    iput p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mExpandedHeight:F

    cmpl-float v4, p1, v2

    if-lez v4, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v1

    :goto_0
    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setIsExpanded(Z)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v4

    iget v5, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mWaterfallTopInset:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    cmpg-float v5, p1, v4

    if-gez v5, :cond_1

    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mClipRect:Landroid/graphics/Rect;

    iput v1, v5, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v6

    iput v6, v5, Landroid/graphics/Rect;->right:I

    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mClipRect:Landroid/graphics/Rect;

    iput v1, v5, Landroid/graphics/Rect;->top:I

    float-to-int p1, p1

    iput p1, v5, Landroid/graphics/Rect;->bottom:I

    iput-object v5, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mRequestedClipBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateClipping$1()V

    move p1, v4

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mRequestedClipBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateClipping$1()V

    :cond_2
    :goto_1
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->calculateAppearFraction(F)F

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    cmpg-float v4, v4, v5

    if-gez v4, :cond_3

    move v1, v3

    :cond_3
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    iput-boolean v1, v3, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mAppearing:Z

    const-wide/16 v6, 0x64

    const-class v4, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;

    if-nez v1, :cond_a

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mShouldShowShelfOnly:Z

    if-eqz v1, :cond_4

    iget p1, v3, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mTopPadding:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    add-int/2addr v1, p1

    goto :goto_2

    :cond_4
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mQsFullScreen:Z

    if-eqz v1, :cond_6

    iget p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mContentHeight:I

    iget v1, v3, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mTopPadding:I

    sub-int/2addr p1, v1

    iget v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIntrinsicPadding:I

    add-int/2addr p1, v1

    iget v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mMaxTopPadding:I

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v3

    add-int/2addr v3, v1

    if-gt p1, v3, :cond_5

    move v1, v3

    goto :goto_2

    :cond_5
    int-to-float p1, p1

    int-to-float v1, v3

    iget v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mQsExpansionFraction:F

    invoke-static {p1, v1, v3}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result p1

    float-to-int p1, p1

    move v1, p1

    goto :goto_2

    :cond_6
    if-eqz v0, :cond_7

    iget p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mExpandedHeight:F

    :cond_7
    float-to-int v1, p1

    :goto_2
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mShelfAlphaInAnimating:Z

    if-nez p1, :cond_10

    sget-boolean p1, Lcom/android/systemui/LsRune;->AOD_FULLSCREEN:Z

    if-eqz p1, :cond_9

    sget-object p1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {p1, v4}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;

    iget-boolean v3, p1, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->lastShouldPlay:Z

    if-nez v3, :cond_8

    iget-boolean p1, p1, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->skipAnimationInOthers:Z

    if-eqz p1, :cond_9

    :cond_8
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    iget-object p1, p1, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/SecShelfNotificationIconContainer;

    invoke-virtual {p1, v5}, Landroid/view/ViewGroup;->setAlpha(F)V

    goto/16 :goto_5

    :cond_9
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    iget p1, p1, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mDozeAmount:F

    cmpl-float p1, p1, v2

    if-nez p1, :cond_10

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    iget-object p1, p1, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/SecShelfNotificationIconContainer;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v3, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$10;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$10;-><init>(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)V

    invoke-virtual {p1, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget-object v3, Lcom/android/app/animation/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto/16 :goto_5

    :cond_a
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->calculateAppearFraction(F)F

    move-result v5

    cmpl-float v1, v5, v2

    if-ltz v1, :cond_b

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    iget v3, v3, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mTopPadding:I

    neg-int v3, v3

    iget-object v8, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v8

    iget v9, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mWaterfallTopInset:I

    add-int/2addr v8, v9

    add-int/2addr v8, v3

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v3

    sub-int/2addr v8, v3

    int-to-float v3, v8

    invoke-static {v3, v2, v5}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v3

    goto :goto_3

    :cond_b
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getAppearStartPosition()F

    move-result v3

    sub-float v3, p1, v3

    iget-object v8, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    iget v8, v8, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mTopPadding:I

    neg-int v8, v8

    iget-object v9, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-virtual {v9}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v9

    iget v10, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mWaterfallTopInset:I

    add-int/2addr v9, v10

    add-int/2addr v9, v8

    iget-object v8, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v8

    sub-int/2addr v9, v8

    int-to-float v8, v9

    add-float/2addr v3, v8

    :goto_3
    sub-float/2addr p1, v3

    float-to-int p1, p1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->isHeadsUpTransition()Z

    move-result v8

    if-eqz v8, :cond_c

    if-ltz v1, :cond_c

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    iget v1, v1, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mTopPadding:I

    iget v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mHeadsUpInset:I

    sub-int/2addr v3, v1

    int-to-float v1, v3

    invoke-static {v1, v2, v5}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v3

    :cond_c
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mShelfAlphaOutAnimating:Z

    if-nez v1, :cond_f

    sget-boolean v1, Lcom/android/systemui/LsRune;->AOD_FULLSCREEN:Z

    if-eqz v1, :cond_e

    sget-object v1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v1, v4}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;

    iget-boolean v4, v1, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->lastShouldPlay:Z

    if-nez v4, :cond_d

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->skipAnimationInOthers:Z

    if-eqz v1, :cond_e

    :cond_d
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    iget-object v1, v1, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/SecShelfNotificationIconContainer;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setAlpha(F)V

    goto :goto_4

    :cond_e
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    iget v1, v1, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mDozeAmount:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_f

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->onKeyguard()Z

    move-result v1

    if-nez v1, :cond_f

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    iget-object v1, v1, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/SecShelfNotificationIconContainer;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$11;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$11;-><init>(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    sget-object v2, Lcom/android/app/animation/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_f
    :goto_4
    move v1, p1

    move v2, v3

    :cond_10
    :goto_5
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    iput v5, p1, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mAppearFraction:F

    iget p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mCurrentStackHeight:I

    if-eq v1, p1, :cond_11

    if-nez v0, :cond_11

    iput v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mCurrentStackHeight:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateAlgorithmHeightAndPadding()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    :cond_11
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    iget v0, p1, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mStackTranslation:F

    cmpl-float v0, v2, v0

    if-eqz v0, :cond_12

    iput v2, p1, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mStackTranslation:F

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    :cond_12
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->notifyAppearChangedListeners()V

    return-void
.end method

.method public setExpandedInThisMotion(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mExpandedInThisMotion:Z

    return-void
.end method

.method public setExpandingNotification(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mExpandingNotification:Z

    return-void
.end method

.method public final setFooterView(Lcom/android/systemui/statusbar/notification/footer/ui/view/FooterView;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mFooterView:Lcom/android/systemui/statusbar/notification/footer/ui/view/FooterView;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mFooterView:Lcom/android/systemui/statusbar/notification/footer/ui/view/FooterView;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mFooterView:Lcom/android/systemui/statusbar/notification/footer/ui/view/FooterView;

    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    sget v0, Lcom/android/systemui/statusbar/notification/footer/shared/FooterViewRefactor;->$r8$clinit:I

    invoke-static {}, Lcom/android/systemui/Flags;->notificationsFooterViewRefactor()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mManageButtonClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mFooterView:Lcom/android/systemui/statusbar/notification/footer/ui/view/FooterView;

    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/footer/ui/view/FooterView;->mManageOrHistoryButton:Lcom/android/systemui/statusbar/notification/row/FooterViewButton;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mFooterView:Lcom/android/systemui/statusbar/notification/footer/ui/view/FooterView;

    new-instance v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$$ExternalSyntheticLambda12;-><init>(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;Lcom/android/systemui/statusbar/notification/footer/ui/view/FooterView;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/systemui/Flags;->notificationsFooterViewRefactor()V

    iget-object p0, v0, Lcom/android/systemui/statusbar/notification/footer/ui/view/FooterView;->mClearAllButton:Lcom/android/systemui/statusbar/notification/row/FooterViewButton;

    invoke-virtual {p0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final setHeadsUpAnimatingAway(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mHeadsUpAnimatingAway:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mHeadsUpAnimatingAway:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mHeadsUpAnimatingAwayListener:Ljava/util/function/Consumer;

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateClipping$1()V

    return-void
.end method

.method public setIsBeingDragged(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIsBeingDragged:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->requestDisallowInterceptTouchEvent(Z)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->cancelLongPress()V

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mSwipeHelper:Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;

    invoke-virtual {p0, p1, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->resetExposedMenuView(ZZ)V

    :cond_0
    return-void
.end method

.method public setIsExpanded(Z)V
    .locals 6

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mStackScrollAlgorithm:Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;

    iput-boolean p1, v3, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mIsExpanded:Z

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    iput-boolean p1, v3, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mShadeExpanded:Z

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mStateAnimator:Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;

    iput-boolean p1, v3, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mShadeExpanded:Z

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mSwipeHelper:Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;

    iput-boolean p1, v3, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->mIsExpanded:Z

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mInHeadsUpPinnedMode:Z

    const/4 v5, 0x0

    if-nez v4, :cond_1

    if-nez p1, :cond_1

    iget-object p1, v3, Lcom/android/systemui/SwipeHelper;->mTouchedView:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    if-eqz p1, :cond_1

    invoke-virtual {v3, p1, v5, v5}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->snapChild(Landroid/view/View;FF)V

    :cond_1
    if-eqz v0, :cond_7

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mWillExpand:Z

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    if-eqz p1, :cond_2

    sget-object p1, Lcom/android/systemui/statusbar/notification/shared/NotificationsHeadsUpRefactor;->INSTANCE:Lcom/android/systemui/statusbar/notification/shared/NotificationsHeadsUpRefactor;

    invoke-static {}, Lcom/android/systemui/Flags;->notificationsHeadsUpRefactor()V

    goto :goto_2

    :cond_2
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mGroupExpansionManager:Lcom/android/systemui/statusbar/notification/collection/render/GroupExpansionManager;

    check-cast p1, Lcom/android/systemui/statusbar/notification/collection/render/GroupExpansionManagerImpl;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/util/ArrayList;

    iget-object v3, p1, Lcom/android/systemui/statusbar/notification/collection/render/GroupExpansionManagerImpl;->mExpandedGroups:Ljava/util/Set;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {p1, v3, v2}, Lcom/android/systemui/statusbar/notification/collection/render/GroupExpansionManagerImpl;->setGroupExpanded(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)V

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mExpandHelper:Lcom/android/systemui/ExpandHelper;

    invoke-virtual {p1, v5, v1, v2}, Lcom/android/systemui/ExpandHelper;->finishExpanding(FZZ)V

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/systemui/ExpandHelper;->mResizedView:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    new-instance v0, Landroid/view/ScaleGestureDetector;

    iget-object v3, p1, Lcom/android/systemui/ExpandHelper;->mContext:Landroid/content/Context;

    iget-object v4, p1, Lcom/android/systemui/ExpandHelper;->mScaleGestureListener:Lcom/android/systemui/ExpandHelper$2;

    invoke-direct {v0, v3, v4}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p1, Lcom/android/systemui/ExpandHelper;->mSGD:Landroid/view/ScaleGestureDetector;

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIsExpansionChanging:Z

    if-nez p1, :cond_4

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->resetAllSwipeState()V

    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->finalizeClearAllAnimation()V

    :goto_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateNotificationAnimationStates()V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    :goto_3
    if-ge v2, p1, :cond_6

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v3, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v3, :cond_5

    check-cast v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setChronometerRunning(Z)V

    :cond_5
    add-int/2addr v2, v1

    goto :goto_3

    :cond_6
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateUseRoundedRectClipping()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateDismissBehavior()V

    :cond_7
    return-void
.end method

.method public final setOverScrollAmount(FZZZ)V
    .locals 6

    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->isRubberbanded(Z)Z

    move-result v5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setOverScrollAmount(FZZZZ)V

    return-void
.end method

.method public final setOverScrollAmount(FZZZZ)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p4, :cond_1

    iget-object p4, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mStateAnimator:Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;

    if-eqz p2, :cond_0

    iget-object p4, p4, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mTopOverScrollAnimator:Landroid/animation/ValueAnimator;

    goto :goto_0

    :cond_0
    iget-object p4, p4, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mBottomOverScrollAnimator:Landroid/animation/ValueAnimator;

    :goto_0
    if-eqz p4, :cond_1

    invoke-virtual {p4}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    const/4 p4, 0x0

    invoke-static {p4, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    if-eqz p3, :cond_6

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mStateAnimator:Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;

    iget-object p3, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mHostLayout:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p3, p2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getCurrentOverScrollAmount(Z)F

    move-result p3

    cmpl-float p4, p1, p3

    if-nez p4, :cond_2

    goto :goto_4

    :cond_2
    if-eqz p2, :cond_3

    iget-object p4, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mTopOverScrollAnimator:Landroid/animation/ValueAnimator;

    goto :goto_1

    :cond_3
    iget-object p4, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mBottomOverScrollAnimator:Landroid/animation/ValueAnimator;

    :goto_1
    if-eqz p4, :cond_4

    invoke-virtual {p4}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_4
    const/4 p4, 0x2

    new-array p4, p4, [F

    aput p3, p4, v0

    const/4 p3, 0x1

    aput p1, p4, p3

    invoke-static {p4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    const-wide/16 p3, 0x168

    invoke-virtual {p1, p3, p4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance p3, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator$3;

    invoke-direct {p3, p0, p2, p5}, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator$3;-><init>(Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;ZZ)V

    invoke-virtual {p1, p3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    sget-object p3, Lcom/android/app/animation/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, p3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance p3, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator$4;

    invoke-direct {p3, p0, p2}, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator$4;-><init>(Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;Z)V

    invoke-virtual {p1, p3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    if-eqz p2, :cond_5

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mTopOverScrollAnimator:Landroid/animation/ValueAnimator;

    goto :goto_4

    :cond_5
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mBottomOverScrollAnimator:Landroid/animation/ValueAnimator;

    goto :goto_4

    :cond_6
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getRubberBandFactor(Z)F

    move-result p3

    div-float p3, p1, p3

    if-eqz p2, :cond_7

    iput p3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mOverScrolledTopPixels:F

    goto :goto_2

    :cond_7
    iput p3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mOverScrolledBottomPixels:F

    :goto_2
    iget-object p3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    if-eqz p2, :cond_8

    iput p1, p3, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mOverScrollTopAmount:F

    goto :goto_3

    :cond_8
    iput p1, p3, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mOverScrollBottomAmount:F

    :goto_3
    if-eqz p2, :cond_9

    invoke-virtual {p0, p1, p5}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->notifyOverscrollTopListener(FZ)V

    :cond_9
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateStackPosition(Z)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    :goto_4
    return-void
.end method

.method public setOwnScrollY(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setOwnScrollY(IZ)V

    return-void
.end method

.method public final setOwnScrollY(IZ)V
    .locals 2

    sget v0, Lcom/android/systemui/scene/shared/flag/SceneContainerFlag;->$r8$clinit:I

    invoke-static {}, Lcom/android/systemui/Flags;->sceneContainer()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mIsClosing:Z

    if-nez v0, :cond_2

    iget v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    if-eq p1, v0, :cond_2

    iget v1, p0, Landroid/view/ViewGroup;->mScrollX:I

    invoke-virtual {p0, v1, p1, v1, v0}, Landroid/view/ViewGroup;->onScrollChanged(IIII)V

    iput p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, v0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mScrollY:I

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mScrollListener:Ljava/util/function/Consumer;

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mScrollChangedConsumer:Ljava/util/function/Consumer;

    if-eqz p1, :cond_1

    iget v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateForwardAndBackwardScrollability()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateStackPosition(Z)V

    :cond_2
    return-void
.end method

.method public final setPulseHeight(F)F
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->setPulseHeight(F)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mKeyguardBypassEnabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->notifyAppearChangedListeners()V

    iget v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIntrinsicPadding:I

    int-to-float v0, v0

    sub-float/2addr p1, v0

    invoke-static {v1, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getInnerHeight$1()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p1, v0

    invoke-static {v1, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    return p1
.end method

.method public setStatusBarState(I)V
    .locals 4

    iget v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mStatusBarState:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    if-ne p1, v3, :cond_0

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setIsBeingDragged(Z)V

    :cond_0
    iput p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mStatusBarState:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    iget v1, v0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mStatusBarState:I

    if-eq v1, v3, :cond_1

    iput-boolean v2, v0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mIsFlingRequiredAfterLockScreenSwipeUp:Z

    :cond_1
    iput p1, v0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mStatusBarState:I

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070b33

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p1, Lcom/android/systemui/statusbar/NotificationShelf;->mPaddingBetweenElements:I

    :cond_2
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mSpeedBumpIndexDirty:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateDismissBehavior()V

    return-void
.end method

.method public final setVisibility(I)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    if-ne p1, v1, :cond_0

    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mLastGoneCallTrace:Ljava/lang/String;

    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-ne v0, v1, :cond_1

    if-nez p1, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIsVisibleFromGone:Z

    :cond_1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method public final shouldDelayChildPressedState()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final shouldShowFooterView(Z)Z
    .locals 2

    invoke-static {}, Lcom/android/systemui/statusbar/notification/footer/shared/FooterViewRefactor;->assertInLegacyMode()V

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->getVisibleNotificationCount()I

    move-result p1

    if-lez p1, :cond_2

    :cond_0
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIsCurrentUserSetup:Z

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->onKeyguard()Z

    move-result p1

    if-nez p1, :cond_2

    iget p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mUpcomingStatusBarState:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    iget p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mQsExpansionFraction:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v1

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mQsFullScreen:Z

    if-nez p1, :cond_2

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mScreenOffAnimationController:Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;->shouldHideNotificationsFooter()Z

    move-result p1

    if-nez p1, :cond_2

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIsRemoteInputActive:Z

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final shouldSkipHeightUpdate()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isOnKeyguard()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mIsSwipingUp:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mIsFlinging:Z

    if-eqz v0, :cond_1

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mIsFlingRequiredAfterLockScreenSwipeUp:Z

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final startAnimationToState$1()V
    .locals 38

    move-object/from16 v0, p0

    const/4 v1, 0x3

    iget-boolean v2, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mNeedsAnimation:Z

    const/4 v4, 0x7

    const/16 v5, 0x8

    const/4 v8, 0x0

    const/16 v9, 0xd

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-eqz v2, :cond_24

    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mHeadsUpChangeAnimations:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/util/Pair;

    iget-object v14, v13, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v14, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-object v13, v13, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v13, Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    iget-boolean v15, v14, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsHeadsUp:Z

    const-string v7, "NotificationStackScroll"

    if-eq v13, v15, :cond_1

    iget-object v6, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mLogger:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLogger;

    if-nez v6, :cond_0

    goto :goto_0

    :cond_0
    iget-object v14, v14, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    sget-object v3, Lcom/android/systemui/log/core/LogLevel;->INFO:Lcom/android/systemui/log/core/LogLevel;

    sget-object v10, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLogger$hunSkippedForUnexpectedState$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLogger$hunSkippedForUnexpectedState$2;

    iget-object v6, v6, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    invoke-virtual {v6, v7, v3, v10, v8}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v3

    invoke-static {v14}, Lcom/android/systemui/statusbar/notification/NotificationUtilsKt;->getLogKey(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)Ljava/lang/String;

    move-result-object v7

    move-object v10, v3

    check-cast v10, Lcom/android/systemui/log/LogMessageImpl;

    iput-object v7, v10, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    iput-boolean v13, v10, Lcom/android/systemui/log/LogMessageImpl;->bool1:Z

    iput-boolean v15, v10, Lcom/android/systemui/log/LogMessageImpl;->bool2:Z

    invoke-virtual {v6, v3}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    goto :goto_0

    :cond_1
    iget-boolean v3, v14, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsPinned:Z

    if-eqz v3, :cond_2

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    if-nez v3, :cond_2

    move v3, v12

    goto :goto_1

    :cond_2
    move v3, v11

    :goto_1
    iget-boolean v6, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    if-eqz v6, :cond_3

    iget-boolean v6, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mKeyguardBypassEnabled:Z

    if-eqz v6, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->onKeyguard()Z

    move-result v6

    if-eqz v6, :cond_6

    iget-boolean v6, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mInHeadsUpPinnedMode:Z

    if-eqz v6, :cond_6

    :cond_3
    if-nez v13, :cond_6

    iget-boolean v3, v14, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mJustClicked:Z

    if-eqz v3, :cond_4

    move v3, v9

    goto :goto_2

    :cond_4
    const/16 v3, 0xc

    :goto_2
    sget v6, Lcom/android/systemui/statusbar/notification/shared/NotificationHeadsUpCycling;->$r8$clinit:I

    invoke-static {}, Lcom/android/systemui/Flags;->notificationAvalancheThrottleHun()V

    invoke-virtual {v14}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isChildInGroup()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {v14, v11}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setHeadsUpAnimatingAway(Z)V

    const-string/jumbo v3, "row is child in group"

    invoke-virtual {v0, v14, v3}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->logHunAnimationSkipped(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    :goto_3
    move v6, v11

    goto :goto_7

    :cond_6
    iget-object v6, v14, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mViewState:Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    if-nez v6, :cond_7

    const-string/jumbo v3, "row has no viewState"

    invoke-virtual {v0, v14, v3}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->logHunAnimationSkipped(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    iget-object v10, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mStackScrollAlgorithm:Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;

    iget-object v15, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v10, v6, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mYTranslation:F

    iget v6, v6, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->height:I

    int-to-float v6, v6

    add-float/2addr v10, v6

    iget v6, v15, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mMaxHeadsUpTranslation:F

    cmpl-float v6, v10, v6

    if-ltz v6, :cond_8

    move v6, v12

    goto :goto_4

    :cond_8
    move v6, v11

    :goto_4
    if-eqz v13, :cond_c

    iget-object v10, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAddedHeadsUpChildren:Ljava/util/ArrayList;

    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_9

    if-eqz v3, :cond_c

    :cond_9
    if-nez v3, :cond_b

    if-eqz v6, :cond_a

    goto :goto_5

    :cond_a
    move v6, v11

    goto :goto_6

    :cond_b
    :goto_5
    sget v6, Lcom/android/systemui/statusbar/notification/shared/NotificationHeadsUpCycling;->$r8$clinit:I

    invoke-static {}, Lcom/android/systemui/Flags;->notificationAvalancheThrottleHun()V

    const/16 v6, 0xb

    :goto_6
    xor-int/2addr v3, v12

    move/from16 v37, v6

    move v6, v3

    move/from16 v3, v37

    goto :goto_7

    :cond_c
    const/16 v3, 0xe

    goto :goto_3

    :goto_7
    new-instance v10, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;

    invoke-direct {v10, v14, v3}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;-><init>(Lcom/android/systemui/statusbar/notification/row/ExpandableView;I)V

    iput-boolean v6, v10, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;->headsUpFromBottom:Z

    sget v6, Lcom/android/systemui/statusbar/notification/shared/NotificationsImprovedHunAnimation;->$r8$clinit:I

    iget-object v6, v10, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;->filter:Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    iput-boolean v11, v6, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateHeight:Z

    iget-object v6, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAnimationEvents:Ljava/util/ArrayList;

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mLogger:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLogger;

    if-nez v6, :cond_d

    goto/16 :goto_0

    :cond_d
    iget-object v10, v14, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    if-eqz v3, :cond_e

    packed-switch v3, :pswitch_data_0

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_8

    :pswitch_0
    const-string v3, "HEADS_UP_OTHER"

    goto :goto_8

    :pswitch_1
    const-string v3, "HEADS_UP_DISAPPEAR_CLICK"

    goto :goto_8

    :pswitch_2
    const-string v3, "HEADS_UP_DISAPPEAR"

    goto :goto_8

    :pswitch_3
    const-string v3, "HEADS_UP_APPEAR"

    goto :goto_8

    :cond_e
    const-string v3, "ADD"

    :goto_8
    sget-object v13, Lcom/android/systemui/log/core/LogLevel;->INFO:Lcom/android/systemui/log/core/LogLevel;

    sget-object v14, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLogger$hunAnimationEventAdded$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLogger$hunAnimationEventAdded$2;

    iget-object v6, v6, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    invoke-virtual {v6, v7, v13, v14, v8}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v7

    invoke-static {v10}, Lcom/android/systemui/statusbar/notification/NotificationUtilsKt;->getLogKey(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)Ljava/lang/String;

    move-result-object v10

    move-object v13, v7

    check-cast v13, Lcom/android/systemui/log/LogMessageImpl;

    iput-object v10, v13, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    iput-object v3, v13, Lcom/android/systemui/log/LogMessageImpl;->str2:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    goto/16 :goto_0

    :cond_f
    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mHeadsUpChangeAnimations:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAddedHeadsUpChildren:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mChildrenToRemoveAnimated:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_15

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    iget-object v6, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mSwipedOutViews:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v7

    instance-of v10, v3, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v10, :cond_10

    move-object v10, v3

    check-cast v10, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v0, v10}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->isFullySwipedOut(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)Z

    move-result v10

    or-int/2addr v6, v10

    goto :goto_a

    :cond_10
    instance-of v10, v3, Lcom/android/systemui/statusbar/notification/stack/MediaContainerView;

    if-eqz v10, :cond_11

    move v6, v12

    :cond_11
    :goto_a
    if-nez v6, :cond_13

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v6

    if-eqz v6, :cond_12

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    if-nez v6, :cond_12

    move v6, v12

    goto :goto_b

    :cond_12
    move v6, v11

    :goto_b
    if-eqz v6, :cond_13

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->removeFromTransientContainer()V

    :cond_13
    if-eqz v6, :cond_14

    const/4 v6, 0x2

    goto :goto_c

    :cond_14
    move v6, v12

    :goto_c
    new-instance v10, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;

    invoke-direct {v10, v3, v6}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;-><init>(Lcom/android/systemui/statusbar/notification/row/ExpandableView;I)V

    invoke-virtual {v0, v7}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getFirstChildBelowTranlsationY(F)Landroid/view/View;

    move-result-object v6

    iput-object v6, v10, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;->viewAfterChangingView:Landroid/view/View;

    iget-object v6, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAnimationEvents:Ljava/util/ArrayList;

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mSwipedOutViews:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_15
    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mChildrenToRemoveAnimated:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mChildrenToAddAnimated:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_17

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    iget-object v6, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mFromMoreCardAdditions:Ljava/util/HashSet;

    invoke-virtual {v6, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_16

    iget-object v6, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAnimationEvents:Ljava/util/ArrayList;

    new-instance v7, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;

    const-wide/16 v13, 0x168

    invoke-direct {v7, v3, v11, v13, v14}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;-><init>(Lcom/android/systemui/statusbar/notification/row/ExpandableView;IJ)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_16
    iget-object v6, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAnimationEvents:Ljava/util/ArrayList;

    new-instance v7, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;

    invoke-direct {v7, v3, v11}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;-><init>(Lcom/android/systemui/statusbar/notification/row/ExpandableView;I)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_17
    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mChildrenToAddAnimated:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mFromMoreCardAdditions:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mChildrenChangingPositions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    instance-of v6, v3, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v6, :cond_18

    move-object v6, v3

    check-cast v6, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-object v7, v6, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-boolean v7, v7, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mIsMarkedForUserTriggeredMovement:Z

    if-eqz v7, :cond_18

    const/16 v7, 0x1f4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-object v6, v6, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iput-boolean v11, v6, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mIsMarkedForUserTriggeredMovement:Z

    goto :goto_f

    :cond_18
    move-object v7, v8

    :goto_f
    const/4 v6, 0x6

    if-nez v7, :cond_19

    new-instance v7, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;

    invoke-direct {v7, v3, v6}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;-><init>(Lcom/android/systemui/statusbar/notification/row/ExpandableView;I)V

    goto :goto_10

    :cond_19
    new-instance v10, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    int-to-long v13, v7

    invoke-direct {v10, v3, v6, v13, v14}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;-><init>(Lcom/android/systemui/statusbar/notification/row/ExpandableView;IJ)V

    move-object v7, v10

    :goto_10
    iget-object v3, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAnimationEvents:Ljava/util/ArrayList;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :cond_1a
    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mChildrenChangingPositions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-boolean v2, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mTopPaddingNeedsAnimation:Z

    if-eqz v2, :cond_1c

    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mDozing:Z

    if-eqz v2, :cond_1b

    new-instance v2, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;

    const-wide/16 v6, 0x226

    invoke-direct {v2, v8, v1, v6, v7}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;-><init>(Lcom/android/systemui/statusbar/notification/row/ExpandableView;IJ)V

    goto :goto_11

    :cond_1b
    new-instance v2, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;

    invoke-direct {v2, v8, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;-><init>(Lcom/android/systemui/statusbar/notification/row/ExpandableView;I)V

    :goto_11
    iget-object v3, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAnimationEvents:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1c
    iput-boolean v11, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mTopPaddingNeedsAnimation:Z

    iget-boolean v2, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mHideSensitiveNeedsAnimation:Z

    if-eqz v2, :cond_1d

    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAnimationEvents:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;

    invoke-direct {v3, v8, v5}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;-><init>(Lcom/android/systemui/statusbar/notification/row/ExpandableView;I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1d
    iput-boolean v11, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mHideSensitiveNeedsAnimation:Z

    iget-boolean v2, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mGoToFullShadeNeedsAnimation:Z

    if-eqz v2, :cond_1e

    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAnimationEvents:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;

    invoke-direct {v3, v8, v4}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;-><init>(Lcom/android/systemui/statusbar/notification/row/ExpandableView;I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1e
    iput-boolean v11, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mGoToFullShadeNeedsAnimation:Z

    iget-boolean v2, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mNeedViewResizeAnimation:Z

    if-eqz v2, :cond_21

    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAnimationEvents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_20

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;

    iget v3, v3, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;->animationType:I

    if-eq v3, v9, :cond_21

    const/16 v6, 0xc

    if-ne v3, v6, :cond_1f

    goto :goto_12

    :cond_20
    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAnimationEvents:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;

    const/16 v6, 0x9

    invoke-direct {v3, v8, v6}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;-><init>(Lcom/android/systemui/statusbar/notification/row/ExpandableView;I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_21
    :goto_12
    iput-boolean v11, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mNeedViewResizeAnimation:Z

    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mExpandedGroupView:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v2, :cond_22

    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAnimationEvents:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;

    iget-object v6, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mExpandedGroupView:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    const/16 v7, 0xa

    invoke-direct {v3, v6, v7}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;-><init>(Lcom/android/systemui/statusbar/notification/row/ExpandableView;I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object v8, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mExpandedGroupView:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    :cond_22
    iget-boolean v2, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mEverythingNeedsAnimation:Z

    if-eqz v2, :cond_23

    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAnimationEvents:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;

    const/16 v6, 0xf

    invoke-direct {v3, v8, v6}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;-><init>(Lcom/android/systemui/statusbar/notification/row/ExpandableView;I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_23
    iput-boolean v11, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mEverythingNeedsAnimation:Z

    iput-boolean v11, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mNeedsAnimation:Z

    :cond_24
    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAnimationEvents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_26

    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mStateAnimator:Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_25

    goto :goto_14

    :cond_25
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->applyCurrentState()V

    :goto_13
    const-wide/16 v1, 0x0

    goto/16 :goto_41

    :cond_26
    :goto_14
    invoke-virtual {v0, v12}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setAnimationRunning(Z)V

    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mStateAnimator:Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;

    iget-object v3, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAnimationEvents:Ljava/util/ArrayList;

    iget-wide v13, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mGoToFullShadeDelay:J

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v10, v11

    :goto_15
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    iget-object v6, v2, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mHostLayout:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    iget-object v7, v2, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mAnimationProperties:Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator$1;

    if-eqz v15, :cond_4c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;

    iget-object v9, v15, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;->mChangingView:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    instance-of v4, v9, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v4, :cond_27

    iget-object v4, v2, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mLogger:Lcom/android/systemui/statusbar/notification/stack/StackStateLogger;

    if-eqz v4, :cond_27

    move-object v4, v9

    check-cast v4, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-boolean v5, v4, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsHeadsUp:Z

    iget-object v4, v4, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object v4, v4, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    move/from16 v19, v12

    goto :goto_16

    :cond_27
    move-object v4, v8

    move v5, v11

    move/from16 v19, v5

    :goto_16
    const-string v11, "StackScroll"

    iget v1, v15, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;->animationType:I

    if-nez v1, :cond_2b

    iget-object v1, v9, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mViewState:Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    if-eqz v1, :cond_2d

    iget-boolean v6, v1, Lcom/android/systemui/statusbar/notification/stack/ViewState;->gone:Z

    if-eqz v6, :cond_28

    goto :goto_18

    :cond_28
    if-eqz v19, :cond_29

    if-eqz v5, :cond_29

    iget-object v5, v2, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mLogger:Lcom/android/systemui/statusbar/notification/stack/StackStateLogger;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, Lcom/android/systemui/log/core/LogLevel;->ERROR:Lcom/android/systemui/log/core/LogLevel;

    sget-object v7, Lcom/android/systemui/statusbar/notification/stack/StackStateLogger$logHUNViewAppearingWithAddEvent$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/stack/StackStateLogger$logHUNViewAppearingWithAddEvent$2;

    iget-object v5, v5, Lcom/android/systemui/statusbar/notification/stack/StackStateLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    invoke-virtual {v5, v11, v6, v7, v8}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v6

    invoke-static {v4}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->logKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v7, v6

    check-cast v7, Lcom/android/systemui/log/LogMessageImpl;

    iput-object v4, v7, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    :cond_29
    invoke-virtual {v1, v9}, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->applyToView(Landroid/view/View;)V

    iget-object v1, v2, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mNewAddChildren:Ljava/util/ArrayList;

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2a
    :goto_17
    const/16 v0, 0xb

    goto/16 :goto_22

    :cond_2b
    if-ne v1, v12, :cond_33

    invoke-virtual {v9}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v1

    if-eqz v19, :cond_2c

    iget-object v6, v2, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mLogger:Lcom/android/systemui/statusbar/notification/stack/StackStateLogger;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v7, Lcom/android/systemui/log/core/LogLevel;->INFO:Lcom/android/systemui/log/core/LogLevel;

    sget-object v12, Lcom/android/systemui/statusbar/notification/stack/StackStateLogger$processAnimationEventsRemoval$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/stack/StackStateLogger$processAnimationEventsRemoval$2;

    iget-object v6, v6, Lcom/android/systemui/statusbar/notification/stack/StackStateLogger;->notificationRenderBuffer:Lcom/android/systemui/log/LogBuffer;

    invoke-virtual {v6, v11, v7, v12, v8}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v7

    invoke-static {v4}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->logKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object v12, v7

    check-cast v12, Lcom/android/systemui/log/LogMessageImpl;

    iput-object v11, v12, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    iput v1, v12, Lcom/android/systemui/log/LogMessageImpl;->int1:I

    iput-boolean v5, v12, Lcom/android/systemui/log/LogMessageImpl;->bool1:Z

    invoke-virtual {v6, v7}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    :cond_2c
    if-eqz v1, :cond_2e

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->removeFromTransientContainer()V

    :cond_2d
    :goto_18
    const/4 v1, 0x3

    const/4 v4, 0x7

    const/16 v5, 0x8

    const/16 v9, 0xd

    const/4 v11, 0x0

    const/4 v12, 0x1

    goto/16 :goto_15

    :cond_2e
    iget-object v1, v15, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;->viewAfterChangingView:Landroid/view/View;

    const/high16 v6, -0x40800000    # -1.0f

    if-eqz v1, :cond_30

    invoke-virtual {v9}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v1

    instance-of v7, v9, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v7, :cond_2f

    iget-object v7, v15, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;->viewAfterChangingView:Landroid/view/View;

    instance-of v10, v7, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v10, :cond_2f

    move-object v10, v9

    check-cast v10, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    check-cast v7, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    :cond_2f
    iget v7, v9, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mActualHeight:I

    iget-object v10, v15, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;->viewAfterChangingView:Landroid/view/View;

    check-cast v10, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    iget-object v10, v10, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mViewState:Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    iget v10, v10, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mYTranslation:F

    int-to-float v7, v7

    const/high16 v11, 0x40000000    # 2.0f

    div-float v12, v7, v11

    add-float/2addr v12, v1

    sub-float/2addr v10, v12

    mul-float/2addr v10, v11

    div-float/2addr v10, v7

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v10, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v1, v6}, Ljava/lang/Math;->max(FF)F

    move-result v1

    move/from16 v27, v1

    goto :goto_19

    :cond_30
    move/from16 v27, v6

    :goto_19
    if-eqz v19, :cond_31

    new-instance v1, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator$$ExternalSyntheticLambda0;

    const/16 v24, 0x0

    move-object/from16 v19, v1

    move-object/from16 v20, v2

    move-object/from16 v21, v4

    move/from16 v22, v5

    move-object/from16 v23, v9

    invoke-direct/range {v19 .. v24}, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;Ljava/lang/String;ZLcom/android/systemui/statusbar/notification/row/ExpandableView;I)V

    new-instance v6, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator$$ExternalSyntheticLambda0;

    const/16 v24, 0x2

    move-object/from16 v19, v6

    invoke-direct/range {v19 .. v24}, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;Ljava/lang/String;ZLcom/android/systemui/statusbar/notification/row/ExpandableView;I)V

    move-object/from16 v34, v1

    move-object/from16 v35, v6

    const/4 v12, 0x3

    goto :goto_1a

    :cond_31
    new-instance v1, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator$$ExternalSyntheticLambda1;

    const/4 v12, 0x3

    invoke-direct {v1, v9, v12}, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/statusbar/notification/row/ExpandableView;I)V

    new-instance v4, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator$$ExternalSyntheticLambda1;

    const/4 v5, 0x4

    invoke-direct {v4, v9, v5}, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/statusbar/notification/row/ExpandableView;I)V

    move-object/from16 v34, v1

    move-object/from16 v35, v4

    :goto_1a
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->getGlobalAnimationFinishedListener()Landroid/animation/AnimatorListenerAdapter;

    move-result-object v32

    sget-object v33, Lcom/android/systemui/statusbar/notification/row/ExpandableView$ClipSide;->BOTTOM:Lcom/android/systemui/statusbar/notification/row/ExpandableView$ClipSide;

    const-wide/16 v28, 0x1d0

    const-wide/16 v30, 0x0

    const/16 v36, 0x0

    move-object/from16 v26, v9

    invoke-virtual/range {v26 .. v36}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->performRemoveAnimation(FJJLandroid/animation/AnimatorListenerAdapter;Lcom/android/systemui/statusbar/notification/row/ExpandableView$ClipSide;Ljava/lang/Runnable;Ljava/lang/Runnable;Z)J

    const/16 v8, 0xd

    const/4 v10, 0x1

    :cond_32
    :goto_1b
    const/16 v11, 0xc

    goto/16 :goto_2a

    :cond_33
    const/4 v12, 0x2

    if-ne v1, v12, :cond_35

    invoke-virtual {v6, v9}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->isFullySwipedOut(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)Z

    move-result v1

    if-eqz v19, :cond_34

    iget-object v6, v2, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mLogger:Lcom/android/systemui/statusbar/notification/stack/StackStateLogger;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v7, Lcom/android/systemui/log/core/LogLevel;->INFO:Lcom/android/systemui/log/core/LogLevel;

    sget-object v12, Lcom/android/systemui/statusbar/notification/stack/StackStateLogger$processAnimationEventsRemoveSwipeOut$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/stack/StackStateLogger$processAnimationEventsRemoveSwipeOut$2;

    iget-object v6, v6, Lcom/android/systemui/statusbar/notification/stack/StackStateLogger;->notificationRenderBuffer:Lcom/android/systemui/log/LogBuffer;

    invoke-virtual {v6, v11, v7, v12, v8}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v7

    invoke-static {v4}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->logKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v11, v7

    check-cast v11, Lcom/android/systemui/log/LogMessageImpl;

    iput-object v4, v11, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    iput-boolean v1, v11, Lcom/android/systemui/log/LogMessageImpl;->bool1:Z

    iput-boolean v5, v11, Lcom/android/systemui/log/LogMessageImpl;->bool2:Z

    invoke-virtual {v6, v7}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    :cond_34
    if-eqz v1, :cond_2a

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->removeFromTransientContainer()V

    goto/16 :goto_17

    :cond_35
    const/16 v12, 0xa

    if-ne v1, v12, :cond_36

    check-cast v9, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-boolean v1, v9, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz v1, :cond_2a

    iget-object v1, v9, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/16 :goto_17

    :cond_36
    iget-object v12, v2, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mTmpState:Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    const/16 v8, 0x11

    if-ne v1, v8, :cond_39

    iget-object v1, v2, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mHeadsUpAppearChildren:Ljava/util/HashSet;

    invoke-virtual {v1, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v1, v9, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mViewState:Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    invoke-virtual {v12, v1}, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->copyFrom(Lcom/android/systemui/statusbar/notification/stack/ViewState;)V

    iget-object v1, v9, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mViewState:Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    iget v1, v1, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mYTranslation:F

    iget-boolean v5, v15, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;->headsUpFromBottom:Z

    if-eqz v5, :cond_37

    iget v5, v2, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mHeadsUpAppearHeightBottom:I

    int-to-float v5, v5

    iget v6, v2, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mHeadsUpCyclingPadding:F

    add-float/2addr v5, v6

    goto :goto_1c

    :cond_37
    iget v5, v2, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mHeadsUpCyclingPadding:F

    neg-float v5, v5

    :goto_1c
    add-float/2addr v1, v5

    invoke-virtual {v12, v1}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->setYTranslation(F)V

    invoke-virtual {v12, v9}, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->applyToView(Landroid/view/View;)V

    if-eqz v19, :cond_38

    iget-object v1, v2, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mLogger:Lcom/android/systemui/statusbar/notification/stack/StackStateLogger;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Lcom/android/systemui/log/core/LogLevel;->INFO:Lcom/android/systemui/log/core/LogLevel;

    sget-object v6, Lcom/android/systemui/statusbar/notification/stack/StackStateLogger$logHUNViewAppearing$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/stack/StackStateLogger$logHUNViewAppearing$2;

    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/stack/StackStateLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    const/4 v7, 0x0

    invoke-virtual {v1, v11, v5, v6, v7}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v5

    invoke-static {v4}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->logKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v6, v5

    check-cast v6, Lcom/android/systemui/log/LogMessageImpl;

    iput-object v4, v6, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    invoke-virtual {v1, v5}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    :cond_38
    const-wide/16 v23, 0x190

    const/16 v22, 0x1

    const-wide/16 v20, 0x0

    move-object/from16 v19, v9

    invoke-virtual/range {v19 .. v24}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->performAddAnimation(JZJ)V

    goto/16 :goto_17

    :cond_39
    sget v8, Lcom/android/systemui/statusbar/notification/shared/NotificationsImprovedHunAnimation;->$r8$clinit:I

    const/16 v8, 0xb

    if-ne v1, v8, :cond_3c

    iget-object v1, v2, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mHeadsUpAppearChildren:Ljava/util/HashSet;

    invoke-virtual {v1, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v1, v9, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mViewState:Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    invoke-virtual {v12, v1}, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->copyFrom(Lcom/android/systemui/statusbar/notification/stack/ViewState;)V

    iget-boolean v1, v15, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;->headsUpFromBottom:Z

    if-eqz v1, :cond_3a

    iget v1, v2, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mHeadsUpAppearHeightBottom:I

    int-to-float v1, v1

    iget v5, v2, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mHeadsUpAppearStartAboveScreen:F

    add-float/2addr v1, v5

    goto :goto_1d

    :cond_3a
    iget v1, v2, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mStackTopMargin:I

    neg-int v1, v1

    int-to-float v1, v1

    iget v5, v2, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mHeadsUpAppearStartAboveScreen:F

    sub-float/2addr v1, v5

    :goto_1d
    invoke-virtual {v12, v1}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->setYTranslation(F)V

    invoke-virtual {v12, v9}, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->applyToView(Landroid/view/View;)V

    sget-object v1, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    sget-object v5, Lcom/android/app/animation/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v7, v1, v5}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->setCustomInterpolator(Landroid/util/Property;Landroid/view/animation/Interpolator;)V

    if-eqz v19, :cond_3b

    iget-object v1, v2, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mLogger:Lcom/android/systemui/statusbar/notification/stack/StackStateLogger;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Lcom/android/systemui/log/core/LogLevel;->INFO:Lcom/android/systemui/log/core/LogLevel;

    sget-object v6, Lcom/android/systemui/statusbar/notification/stack/StackStateLogger$logHUNViewAppearing$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/stack/StackStateLogger$logHUNViewAppearing$2;

    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/stack/StackStateLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    const/4 v7, 0x0

    invoke-virtual {v1, v11, v5, v6, v7}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v5

    invoke-static {v4}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->logKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v6, v5

    check-cast v6, Lcom/android/systemui/log/LogMessageImpl;

    iput-object v4, v6, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    invoke-virtual {v1, v5}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    :cond_3b
    const-wide/16 v23, 0x190

    const/16 v22, 0x1

    const-wide/16 v20, 0x0

    move-object/from16 v19, v9

    invoke-virtual/range {v19 .. v24}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->performAddAnimation(JZJ)V

    goto/16 :goto_17

    :cond_3c
    const/16 v8, 0x10

    if-ne v1, v8, :cond_42

    iget-object v1, v2, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mHeadsUpDisappearChildren:Ljava/util/HashSet;

    invoke-virtual {v1, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v1, v9, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mViewState:Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    invoke-virtual {v12, v1}, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->copyFrom(Lcom/android/systemui/statusbar/notification/stack/ViewState;)V

    invoke-virtual {v9}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_3d

    const/4 v1, 0x0

    invoke-virtual {v6, v9, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->addTransientView(Landroid/view/View;I)V

    iput-object v6, v9, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mTransientContainer:Landroid/view/ViewGroup;

    iget v1, v12, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mYTranslation:F

    const/high16 v6, 0x41200000    # 10.0f

    add-float/2addr v1, v6

    invoke-virtual {v12, v1}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->setYTranslation(F)V

    new-instance v1, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator$$ExternalSyntheticLambda1;

    const/4 v6, 0x1

    invoke-direct {v1, v9, v6}, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/statusbar/notification/row/ExpandableView;I)V

    goto :goto_1e

    :cond_3d
    const/4 v1, 0x0

    :goto_1e
    instance-of v6, v9, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v6, :cond_3e

    move-object v6, v9

    check-cast v6, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-boolean v6, v6, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mDismissed:Z

    if-eqz v6, :cond_3e

    const/4 v6, 0x0

    goto :goto_1f

    :cond_3e
    const/4 v6, 0x1

    :goto_1f
    if-eqz v6, :cond_40

    if-eqz v19, :cond_3f

    new-instance v8, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator$$ExternalSyntheticLambda0;

    const/16 v24, 0x1

    move-object/from16 v19, v8

    move-object/from16 v20, v2

    move-object/from16 v21, v4

    move/from16 v22, v5

    move-object/from16 v23, v9

    invoke-direct/range {v19 .. v24}, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;Ljava/lang/String;ZLcom/android/systemui/statusbar/notification/row/ExpandableView;I)V

    new-instance v11, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator$$ExternalSyntheticLambda3;

    move-object/from16 v19, v11

    move-object/from16 v24, v1

    invoke-direct/range {v19 .. v24}, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;Ljava/lang/String;ZLcom/android/systemui/statusbar/notification/row/ExpandableView;Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator$$ExternalSyntheticLambda1;)V

    move-object/from16 v34, v8

    move-object/from16 v35, v11

    goto :goto_20

    :cond_3f
    new-instance v4, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator$$ExternalSyntheticLambda6;

    const/4 v5, 0x1

    invoke-direct {v4, v9, v1, v5}, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator$$ExternalSyntheticLambda6;-><init>(Lcom/android/systemui/statusbar/notification/row/ExpandableView;Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator$$ExternalSyntheticLambda1;I)V

    new-instance v1, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator$$ExternalSyntheticLambda1;

    const/4 v5, 0x0

    invoke-direct {v1, v9, v5}, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/statusbar/notification/row/ExpandableView;I)V

    move-object/from16 v34, v1

    move-object/from16 v35, v4

    :goto_20
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->getGlobalAnimationFinishedListener()Landroid/animation/AnimatorListenerAdapter;

    move-result-object v32

    sget-object v33, Lcom/android/systemui/statusbar/notification/row/ExpandableView$ClipSide;->TOP:Lcom/android/systemui/statusbar/notification/row/ExpandableView$ClipSide;

    const/16 v27, 0x0

    const/16 v36, 0x1

    const-wide/16 v28, 0x190

    const-wide/16 v30, 0x0

    move-object/from16 v26, v9

    invoke-virtual/range {v26 .. v36}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->performRemoveAnimation(FJJLandroid/animation/AnimatorListenerAdapter;Lcom/android/systemui/statusbar/notification/row/ExpandableView$ClipSide;Ljava/lang/Runnable;Ljava/lang/Runnable;Z)J

    move-result-wide v4

    iget-wide v0, v7, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->delay:J

    add-long/2addr v0, v4

    iput-wide v0, v7, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->delay:J

    const-wide/16 v0, 0x190

    iput-wide v0, v7, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->duration:J

    sget-object v0, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    sget-object v1, Lcom/android/app/animation/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {v7, v0, v1}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->setCustomInterpolator(Landroid/util/Property;Landroid/view/animation/Interpolator;)V

    iget-object v0, v7, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator$1;->this$0:Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mAnimationFilter:Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateY:Z

    invoke-virtual {v12, v9, v7}, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->animateTo(Landroid/view/View;Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;)V

    const/4 v0, 0x0

    iput-object v0, v7, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->mInterpolatorMap:Landroid/util/ArrayMap;

    goto :goto_21

    :cond_40
    if-eqz v1, :cond_41

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator$$ExternalSyntheticLambda1;->run()V

    :cond_41
    :goto_21
    or-int v0, v10, v6

    move v10, v0

    :goto_22
    const/16 v8, 0xd

    goto/16 :goto_1b

    :cond_42
    const/16 v0, 0xb

    if-eq v1, v0, :cond_4b

    const/16 v8, 0xc

    if-eq v1, v8, :cond_43

    const/16 v8, 0xd

    if-ne v1, v8, :cond_32

    goto :goto_23

    :cond_43
    const/16 v8, 0xd

    :goto_23
    iget-object v11, v2, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mHeadsUpDisappearChildren:Ljava/util/HashSet;

    invoke-virtual {v11, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v11, v9, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mViewState:Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    invoke-virtual {v12, v11}, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->copyFrom(Lcom/android/systemui/statusbar/notification/stack/ViewState;)V

    invoke-virtual {v9}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v11

    if-nez v11, :cond_45

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v0, "HEADS_UP_DISAPPEAR addTransientView : "

    invoke-direct {v11, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v11, "StackScroller"

    invoke-static {v11, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-virtual {v6, v9, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->addTransientView(Landroid/view/View;I)V

    iput-object v6, v9, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mTransientContainer:Landroid/view/ViewGroup;

    iget-boolean v0, v15, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;->headsUpFromBottom:Z

    if-eqz v0, :cond_44

    iget v0, v2, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mHeadsUpAppearHeightBottom:I

    int-to-float v0, v0

    iget v6, v2, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mHeadsUpAppearStartAboveScreen:F

    add-float/2addr v0, v6

    goto :goto_24

    :cond_44
    iget v0, v2, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mStackTopMargin:I

    neg-int v0, v0

    int-to-float v0, v0

    iget v6, v2, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mHeadsUpAppearStartAboveScreen:F

    sub-float/2addr v0, v6

    :goto_24
    invoke-virtual {v12, v0}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->setYTranslation(F)V

    new-instance v0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator$$ExternalSyntheticLambda1;

    const/4 v6, 0x1

    invoke-direct {v0, v9, v6}, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/statusbar/notification/row/ExpandableView;I)V

    goto :goto_25

    :cond_45
    const/4 v0, 0x0

    :goto_25
    instance-of v6, v9, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v6, :cond_46

    move-object v6, v9

    check-cast v6, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-boolean v6, v6, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mDismissed:Z

    if-eqz v6, :cond_46

    const/4 v6, 0x0

    goto :goto_26

    :cond_46
    const/4 v6, 0x1

    :goto_26
    if-eqz v6, :cond_49

    if-eqz v19, :cond_48

    const/16 v11, 0xc

    if-ne v1, v11, :cond_47

    const-string v1, "ANIMATION_TYPE_HEADS_UP_DISAPPEAR"

    goto :goto_27

    :cond_47
    const-string v1, "ANIMATION_TYPE_HEADS_UP_DISAPPEAR_CLICK"

    :goto_27
    new-instance v18, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator$$ExternalSyntheticLambda3;

    move-object/from16 v19, v18

    move-object/from16 v20, v2

    move-object/from16 v21, v4

    move-object/from16 v22, v1

    move/from16 v23, v5

    move-object/from16 v24, v9

    invoke-direct/range {v19 .. v24}, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;Ljava/lang/String;Ljava/lang/String;ZLcom/android/systemui/statusbar/notification/row/ExpandableView;)V

    new-instance v26, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator$$ExternalSyntheticLambda4;

    move-object/from16 v19, v26

    move-object/from16 v25, v0

    invoke-direct/range {v19 .. v25}, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;Ljava/lang/String;Ljava/lang/String;ZLcom/android/systemui/statusbar/notification/row/ExpandableView;Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator$$ExternalSyntheticLambda1;)V

    move-object/from16 v34, v18

    move-object/from16 v35, v26

    goto :goto_28

    :cond_48
    const/16 v11, 0xc

    new-instance v1, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator$$ExternalSyntheticLambda1;

    const/4 v4, 0x2

    invoke-direct {v1, v9, v4}, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/statusbar/notification/row/ExpandableView;I)V

    new-instance v4, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator$$ExternalSyntheticLambda6;

    const/4 v5, 0x0

    invoke-direct {v4, v9, v0, v5}, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator$$ExternalSyntheticLambda6;-><init>(Lcom/android/systemui/statusbar/notification/row/ExpandableView;Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator$$ExternalSyntheticLambda1;I)V

    move-object/from16 v34, v1

    move-object/from16 v35, v4

    :goto_28
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->getGlobalAnimationFinishedListener()Landroid/animation/AnimatorListenerAdapter;

    move-result-object v32

    sget-object v33, Lcom/android/systemui/statusbar/notification/row/ExpandableView$ClipSide;->BOTTOM:Lcom/android/systemui/statusbar/notification/row/ExpandableView$ClipSide;

    const/16 v27, 0x0

    const/16 v36, 0x1

    const-wide/16 v28, 0x190

    const-wide/16 v30, 0x0

    move-object/from16 v26, v9

    invoke-virtual/range {v26 .. v36}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->performRemoveAnimation(FJJLandroid/animation/AnimatorListenerAdapter;Lcom/android/systemui/statusbar/notification/row/ExpandableView$ClipSide;Ljava/lang/Runnable;Ljava/lang/Runnable;Z)J

    move-result-wide v0

    iget-wide v4, v7, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->delay:J

    add-long/2addr v4, v0

    iput-wide v4, v7, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->delay:J

    const-wide/16 v0, 0x190

    iput-wide v0, v7, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->duration:J

    sget-object v0, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    sget-object v1, Lcom/android/app/animation/Interpolators;->FAST_OUT_SLOW_IN_REVERSE:Landroid/view/animation/Interpolator;

    invoke-virtual {v7, v0, v1}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->setCustomInterpolator(Landroid/util/Property;Landroid/view/animation/Interpolator;)V

    iget-object v0, v7, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator$1;->this$0:Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mAnimationFilter:Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateY:Z

    invoke-virtual {v12, v9, v7}, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->animateTo(Landroid/view/View;Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;)V

    const/4 v0, 0x0

    iput-object v0, v7, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->mInterpolatorMap:Landroid/util/ArrayMap;

    goto :goto_29

    :cond_49
    const/16 v11, 0xc

    if-eqz v0, :cond_4a

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator$$ExternalSyntheticLambda1;->run()V

    :cond_4a
    :goto_29
    or-int v0, v10, v6

    move v10, v0

    :goto_2a
    iget-object v0, v2, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mNewEvents:Ljava/util/ArrayList;

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v9, v8

    const/4 v1, 0x3

    const/4 v4, 0x7

    const/16 v5, 0x8

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    move-object/from16 v0, p0

    goto/16 :goto_15

    :cond_4b
    sget-object v0, Lcom/android/systemui/flags/RefactorFlagUtils;->INSTANCE:Lcom/android/systemui/flags/RefactorFlagUtils;

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Legacy code path not supported when com.android.systemui.notifications_improved_hun_animation is enabled."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4c
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    iget-object v1, v2, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mAnimationFilter:Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    iget-object v3, v2, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mNewEvents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->reset()V

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_2b
    if-ge v5, v4, :cond_4e

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;

    iget-object v9, v9, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;->filter:Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    invoke-virtual {v1, v9}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->combineFilter(Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;)V

    iget v8, v8, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;->animationType:I

    const/4 v9, 0x7

    if-ne v8, v9, :cond_4d

    const/4 v8, 0x1

    iput-boolean v8, v1, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->hasGoToFullShadeEvent:Z

    goto :goto_2c

    :cond_4d
    const/4 v8, 0x1

    :goto_2c
    add-int/2addr v5, v8

    goto :goto_2b

    :cond_4e
    iput-wide v13, v2, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mCurrentAdditionalDelay:J

    iget-object v3, v2, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mNewEvents:Ljava/util/ArrayList;

    sget-object v4, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;->FILTERS:[Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x0

    const-wide/16 v8, 0x0

    :goto_2d
    if-ge v5, v4, :cond_50

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;

    iget-wide v12, v11, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;->length:J

    invoke-static {v8, v9, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    iget v12, v11, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;->animationType:I

    const/4 v13, 0x7

    if-ne v12, v13, :cond_4f

    iget-wide v8, v11, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;->length:J

    goto :goto_2e

    :cond_4f
    const/4 v11, 0x1

    add-int/2addr v5, v11

    goto :goto_2d

    :cond_50
    :goto_2e
    iput-wide v8, v2, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mCurrentLength:J

    iget-object v3, v6, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    iget-object v3, v3, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mViewState:Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    iget v3, v3, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->notGoneIndex:I

    invoke-virtual {v6, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    if-eqz v3, :cond_51

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getTranslationY()F

    goto :goto_2f

    :cond_51
    iget-object v3, v6, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    iget v3, v3, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mTopPadding:I

    :goto_2f
    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_30
    if-ge v3, v0, :cond_6e

    invoke-virtual {v6, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    iget-object v8, v5, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mViewState:Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    if-eqz v8, :cond_57

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v9

    const/16 v11, 0x8

    if-eq v9, v11, :cond_57

    iget-boolean v9, v2, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mShadeExpanded:Z

    if-eqz v9, :cond_52

    goto :goto_32

    :cond_52
    sget v9, Lcom/android/systemui/statusbar/notification/stack/ViewState;->TAG_ANIMATOR_TRANSLATION_Y:I

    invoke-virtual {v5, v9}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_53

    const/4 v9, 0x1

    goto :goto_31

    :cond_53
    const/4 v9, 0x0

    :goto_31
    if-eqz v9, :cond_54

    goto :goto_32

    :cond_54
    iget-object v9, v2, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mHeadsUpDisappearChildren:Ljava/util/HashSet;

    invoke-virtual {v9, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_58

    iget-object v9, v2, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mHeadsUpAppearChildren:Ljava/util/HashSet;

    invoke-virtual {v9, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_55

    goto :goto_32

    :cond_55
    invoke-static {v5}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->isPinnedHeadsUp(Landroid/view/View;)Z

    move-result v9

    if-eqz v9, :cond_56

    goto :goto_32

    :cond_56
    invoke-virtual {v8, v5}, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->applyToView(Landroid/view/View;)V

    :cond_57
    move/from16 v18, v0

    move-object/from16 v21, v1

    move/from16 v16, v3

    move/from16 v23, v10

    const/4 v1, 0x2

    const-wide/16 v9, 0x190

    goto/16 :goto_40

    :cond_58
    :goto_32
    invoke-virtual {v7, v5}, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator$1;->wasAdded(Landroid/view/View;)Z

    move-result v9

    if-eqz v9, :cond_59

    const/4 v9, 0x5

    if-ge v4, v9, :cond_59

    const/4 v9, 0x1

    add-int/2addr v4, v9

    :cond_59
    invoke-virtual {v7, v5}, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator$1;->wasAdded(Landroid/view/View;)Z

    move-result v9

    iget-wide v11, v2, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mCurrentLength:J

    iput-wide v11, v7, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->duration:J

    instance-of v11, v5, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;

    if-nez v9, :cond_5b

    if-eqz v11, :cond_5a

    goto :goto_33

    :cond_5a
    const/4 v12, 0x0

    goto :goto_34

    :cond_5b
    :goto_33
    const/4 v12, 0x1

    :goto_34
    instance-of v13, v5, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v13, :cond_5c

    move-object v14, v5

    check-cast v14, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-object v15, v14, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {v15}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isOngoingAcitivty()Z

    move-result v15

    if-eqz v15, :cond_5c

    iget-object v14, v14, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {v14}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isPromotedState()Z

    move-result v14

    if-eqz v14, :cond_5c

    const/4 v14, 0x1

    goto :goto_35

    :cond_5c
    const/4 v14, 0x0

    :goto_35
    if-eqz v12, :cond_5e

    iget-boolean v12, v1, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->hasGoToFullShadeEvent:Z

    if-eqz v12, :cond_5e

    if-nez v11, :cond_5d

    iget v11, v2, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mGoToFullShadeAppearingTranslation:I

    move v15, v11

    int-to-double v11, v4

    move/from16 v16, v3

    move/from16 v17, v4

    const-wide v3, 0x3fe6666660000000L    # 0.699999988079071

    invoke-static {v11, v12, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    double-to-float v3, v3

    const/high16 v4, 0x42c80000    # 100.0f

    mul-float/2addr v3, v4

    float-to-long v3, v3

    const-wide/16 v11, 0x202

    add-long/2addr v3, v11

    iput-wide v3, v7, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->duration:J

    goto :goto_36

    :cond_5d
    move/from16 v16, v3

    move/from16 v17, v4

    const/4 v15, 0x0

    :goto_36
    iget v3, v8, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mYTranslation:F

    int-to-float v4, v15

    add-float/2addr v3, v4

    invoke-virtual {v5, v3}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    goto :goto_37

    :cond_5e
    move/from16 v16, v3

    move/from16 v17, v4

    :goto_37
    if-eqz v14, :cond_5f

    if-eqz v9, :cond_5f

    const-wide/16 v3, 0x64

    iput-wide v3, v7, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->duration:J

    :cond_5f
    const-wide/16 v3, 0x0

    iput-wide v3, v7, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->delay:J

    if-nez v9, :cond_61

    iget-boolean v3, v1, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->hasDelays:Z

    if-eqz v3, :cond_60

    iget v3, v8, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mYTranslation:F

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v4

    cmpl-float v3, v3, v4

    if-nez v3, :cond_61

    iget v3, v8, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mZTranslation:F

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getTranslationZ()F

    move-result v4

    cmpl-float v3, v3, v4

    if-nez v3, :cond_61

    iget v3, v8, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mAlpha:F

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v4

    cmpl-float v3, v3, v4

    if-nez v3, :cond_61

    iget v3, v8, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->height:I

    iget v4, v5, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mActualHeight:I

    if-ne v3, v4, :cond_61

    iget v3, v8, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->clipTopAmount:I

    iget v4, v5, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mClipTopAmount:I

    if-eq v3, v4, :cond_60

    goto :goto_38

    :cond_60
    move/from16 v18, v0

    move-object/from16 v21, v1

    move/from16 v23, v10

    const/4 v1, 0x2

    goto/16 :goto_3e

    :cond_61
    :goto_38
    iget-wide v3, v2, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mCurrentAdditionalDelay:J

    iget-boolean v11, v1, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->hasGoToFullShadeEvent:Z

    if-eqz v11, :cond_62

    move/from16 v18, v0

    move-object/from16 v21, v1

    move/from16 v23, v10

    const/4 v1, 0x2

    const-wide/16 v11, 0x0

    goto/16 :goto_3d

    :cond_62
    iget-wide v11, v1, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->customDelay:J

    const-wide/16 v14, -0x1

    cmp-long v14, v11, v14

    if-eqz v14, :cond_63

    move/from16 v18, v0

    move-object/from16 v21, v1

    move/from16 v23, v10

    const/4 v1, 0x2

    goto/16 :goto_3d

    :cond_63
    iget-object v11, v2, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mNewEvents:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    const-wide/16 v14, 0x0

    :goto_39
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_6c

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;

    move/from16 v18, v0

    iget v0, v12, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;->animationType:I

    const-wide/16 v19, 0x50

    if-eqz v0, :cond_6b

    move-object/from16 v21, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_65

    const/4 v1, 0x2

    if-eq v0, v1, :cond_64

    move/from16 v23, v10

    move-object/from16 v22, v11

    goto :goto_3c

    :cond_64
    const-wide/16 v19, 0x20

    :cond_65
    iget v0, v8, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->notGoneIndex:I

    iget-object v1, v12, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;->viewAfterChangingView:Landroid/view/View;

    if-nez v1, :cond_68

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v12, 0x1

    sub-int/2addr v1, v12

    :goto_3a
    if-ltz v1, :cond_67

    invoke-virtual {v6, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    move-object/from16 v22, v11

    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v11

    move/from16 v23, v10

    const/16 v10, 0x8

    if-eq v11, v10, :cond_66

    iget-object v11, v6, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    if-eq v12, v11, :cond_66

    move-object v1, v12

    check-cast v1, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    goto :goto_3b

    :cond_66
    add-int/lit8 v1, v1, -0x1

    move-object/from16 v11, v22

    move/from16 v10, v23

    goto :goto_3a

    :cond_67
    move/from16 v23, v10

    move-object/from16 v22, v11

    const/16 v10, 0x8

    const/4 v1, 0x0

    goto :goto_3b

    :cond_68
    move/from16 v23, v10

    move-object/from16 v22, v11

    const/16 v10, 0x8

    check-cast v1, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    :goto_3b
    if-nez v1, :cond_69

    :goto_3c
    move/from16 v0, v18

    move-object/from16 v1, v21

    move-object/from16 v11, v22

    move/from16 v10, v23

    goto :goto_39

    :cond_69
    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mViewState:Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    iget v1, v1, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->notGoneIndex:I

    const/4 v11, 0x1

    if-lt v0, v1, :cond_6a

    add-int/2addr v0, v11

    :cond_6a
    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    sub-int/2addr v0, v11

    const/4 v1, 0x2

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-long v0, v0

    mul-long v0, v0, v19

    invoke-static {v0, v1, v14, v15}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    move-wide v14, v0

    const/4 v1, 0x2

    goto :goto_3c

    :cond_6b
    move-object/from16 v21, v1

    move/from16 v23, v10

    move-object/from16 v22, v11

    const/16 v10, 0x8

    iget v0, v8, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->notGoneIndex:I

    iget-object v1, v12, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;->mChangingView:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mViewState:Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    iget v1, v1, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->notGoneIndex:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v1, 0x2

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v11, 0x0

    invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x2

    int-to-long v10, v0

    mul-long v10, v10, v19

    invoke-static {v10, v11, v14, v15}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    move-wide v14, v10

    goto :goto_3c

    :cond_6c
    move/from16 v18, v0

    move-object/from16 v21, v1

    move/from16 v23, v10

    const/4 v1, 0x2

    move-wide v11, v14

    :goto_3d
    add-long/2addr v3, v11

    iput-wide v3, v7, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->delay:J

    :goto_3e
    if-eqz v9, :cond_6d

    if-eqz v13, :cond_6d

    move-object v0, v5

    check-cast v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-object v3, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isOngoingAcitivty()Z

    move-result v3

    if-eqz v3, :cond_6d

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isPromotedState()Z

    move-result v0

    if-eqz v0, :cond_6d

    const-wide/16 v9, 0x190

    iput-wide v9, v7, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->delay:J

    goto :goto_3f

    :cond_6d
    const-wide/16 v9, 0x190

    :goto_3f
    invoke-virtual {v8, v5, v7}, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->animateTo(Landroid/view/View;Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;)V

    move/from16 v4, v17

    :goto_40
    const/4 v0, 0x1

    add-int/lit8 v3, v16, 0x1

    move/from16 v0, v18

    move-object/from16 v1, v21

    move/from16 v10, v23

    goto/16 :goto_30

    :cond_6e
    move/from16 v23, v10

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_6f

    iget-boolean v0, v6, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mHeadsUpAnimatingAway:Z

    if-nez v0, :cond_6f

    if-nez v23, :cond_6f

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->onAnimationFinished()V

    :cond_6f
    iget-object v0, v2, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mHeadsUpAppearChildren:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    iget-object v0, v2, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mHeadsUpDisappearChildren:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    iget-object v0, v2, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mNewEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, v2, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mNewAddChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    sget v0, Lcom/android/systemui/statusbar/notification/shared/NotificationsImprovedHunAnimation;->$r8$clinit:I

    const/4 v0, 0x0

    iput-object v0, v7, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->mInterpolatorMap:Landroid/util/ArrayMap;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAnimationEvents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateViewShadows()V

    goto/16 :goto_13

    :goto_41
    iput-wide v1, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mGoToFullShadeDelay:J

    return-void

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final targetScrollForView(Lcom/android/systemui/statusbar/notification/row/ExpandableView;I)I
    .locals 4

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getIntrinsicHeight()I

    move-result v0

    add-int/2addr v0, p2

    iget p2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mImeInset:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLocationOnScreen()[I

    move-result-object v2

    const/4 v3, 0x1

    aget v2, v2, v3

    sub-int/2addr v1, v2

    sub-int/2addr p2, v1

    const/4 v1, 0x0

    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    add-int/2addr p2, v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    sub-int/2addr p2, v0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->isPinnedHeadsUp(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mHeadsUpInset:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    iget v0, v0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mTopPadding:I

    :goto_0
    add-int/2addr p2, v0

    iget v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mMinimumPaddings:I

    add-int/2addr p2, v0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->isPinnedHeadsUp(Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_2

    :cond_1
    if-lez p2, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getScrollAmountToScrollBoundary()I

    move-result p1

    if-ge p2, p1, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getScrollAmountToScrollBoundary()I

    move-result p2

    :cond_2
    return p2
.end method

.method public final updateAlgorithmHeightAndPadding()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    iget v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mMaxLayoutHeight:I

    iget v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mCurrentStackHeight:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mLayoutHeight:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    iget v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mMaxLayoutHeight:I

    iput v1, v0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mLayoutMaxHeight:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateAlgorithmLayoutMinHeight()V

    return-void
.end method

.method public final updateAlgorithmLayoutMinHeight()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mQsFullScreen:Z

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->isHeadsUpTransition()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getLayoutMinHeight()I

    move-result p0

    :goto_1
    iput p0, v0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mLayoutMinHeight:I

    return-void
.end method

.method public final updateBgColor()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v2, v1, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->updateBackgroundColors()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final updateClipping$1()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mRequestedClipBounds:Landroid/graphics/Rect;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mInHeadsUpPinnedMode:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mHeadsUpAnimatingAway:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIsClipped:Z

    if-eq v2, v0, :cond_1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIsClipped:Z

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isHiddenAtAll()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidateOutline()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isFullyHidden()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->setClipBounds(Landroid/graphics/Rect;)V

    goto :goto_1

    :cond_2
    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mRequestedClipBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setClipBounds(Landroid/graphics/Rect;)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->setClipBounds(Landroid/graphics/Rect;)V

    :cond_4
    :goto_1
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setClipToOutline(Z)V

    return-void
.end method

.method public final updateContentHeight()V
    .locals 10

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isOnKeyguard()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mMinimumPaddings:I

    int-to-float v0, v0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mFooterView:Lcom/android/systemui/statusbar/notification/footer/ui/view/FooterView;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v3

    goto :goto_2

    :cond_2
    move v3, v2

    :goto_2
    float-to-int v0, v0

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mNotificationStackSizeCalculator:Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator;

    iget v5, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mMaxDisplayedNotifications:I

    int-to-float v1, v1

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$computeHeightPerNotificationLimit$1;

    const/4 v7, 0x0

    invoke-direct {v6, v4, p0, v1, v7}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$computeHeightPerNotificationLimit$1;-><init>(Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator;Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;FLkotlin/coroutines/Continuation;)V

    new-instance v1, Lkotlin/sequences/SequencesKt__SequenceBuilderKt$sequence$$inlined$Sequence$1;

    invoke-direct {v1, v6}, Lkotlin/sequences/SequencesKt__SequenceBuilderKt$sequence$$inlined$Sequence$1;-><init>(Lkotlin/jvm/functions/Function2;)V

    new-instance v6, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$computeHeight$3;

    invoke-direct {v6, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$computeHeight$3;-><init>(Lkotlin/sequences/Sequence;)V

    if-gez v5, :cond_3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$computeHeight$3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_4

    :cond_3
    iget-object v1, v1, Lkotlin/sequences/SequencesKt__SequenceBuilderKt$sequence$$inlined$Sequence$1;->$block$inlined:Lkotlin/jvm/functions/Function2;

    invoke-static {v1}, Lkotlin/sequences/SequencesKt__SequenceBuilderKt;->iterator(Lkotlin/jvm/functions/Function2;)Lkotlin/sequences/SequenceBuilderIterator;

    move-result-object v1

    move v7, v2

    :goto_3
    invoke-virtual {v1}, Lkotlin/sequences/SequenceBuilderIterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-virtual {v1}, Lkotlin/sequences/SequenceBuilderIterator;->next()Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 v9, v7, 0x1

    if-ne v5, v7, :cond_4

    move-object v1, v8

    goto :goto_4

    :cond_4
    move v7, v9

    goto :goto_3

    :cond_5
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$computeHeight$3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :goto_4
    check-cast v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$StackHeight;

    iget v5, v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$StackHeight;->notifsHeight:F

    iget-boolean v4, v4, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator;->saveSpaceOnLockscreen:Z

    iget v6, v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$StackHeight;->shelfHeightWithSpaceBefore:F

    if-eqz v4, :cond_6

    iget v1, v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$StackHeight;->notifsHeightSavingSpace:F

    add-float/2addr v1, v6

    goto :goto_5

    :cond_6
    add-float v1, v5, v6

    :goto_5
    float-to-int v1, v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIntrinsicContentHeight:F

    iget v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIntrinsicPadding:I

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    iget v4, v4, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mTopPadding:I

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mBottomPadding:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mContentHeight:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mScrollViewFields:Lcom/android/systemui/statusbar/notification/stack/ScrollViewFields;

    iget v4, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIntrinsicPadding:I

    int-to-float v4, v4

    iget v5, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIntrinsicContentHeight:F

    add-float/2addr v4, v5

    int-to-float v3, v3

    add-float/2addr v4, v3

    add-float/2addr v4, v1

    float-to-int v1, v4

    iput v1, v0, Lcom/android/systemui/statusbar/notification/stack/ScrollViewFields;->intrinsicStackHeight:I

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mQsFullScreen:Z

    if-nez v0, :cond_7

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getScrollRange$1()I

    move-result v0

    if-lez v0, :cond_7

    const/4 v0, 0x1

    goto :goto_6

    :cond_7
    move v0, v2

    :goto_6
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mScrollable:Z

    if-eq v0, v1, :cond_8

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mScrollable:Z

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setFocusable(Z)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateForwardAndBackwardScrollability()V

    :cond_8
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->clampScrollPosition()V

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateStackPosition(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    iget v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mContentHeight:I

    iput v1, v0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mContentHeight:I

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mStackHeightChangedListeners:Lcom/android/systemui/util/ListenerSet;

    invoke-virtual {p0}, Lcom/android/systemui/util/ListenerSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_7
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_7

    :cond_9
    return-void
.end method

.method public final updateContinuousShadowDrawing()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAnimationRunning:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mSwipeHelper:Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;

    iget-boolean v0, v0, Lcom/android/systemui/SwipeHelper;->mIsSwiping:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mContinuousShadowUpdate:Z

    if-eq v0, v1, :cond_3

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mShadowUpdater:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$$ExternalSyntheticLambda2;

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mShadowUpdater:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$$ExternalSyntheticLambda2;

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :goto_2
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mContinuousShadowUpdate:Z

    :cond_3
    return-void
.end method

.method public final updateDecorViews()V
    .locals 5

    iget-object v0, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    const v1, 0x11200b6

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;II)I

    move-result v0

    iget-object v1, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    const v3, 0x11200b8

    invoke-static {v1, v3, v2}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;II)I

    move-result v1

    sget-object v2, Lcom/android/systemui/statusbar/notification/ColorUpdateLogger;->Companion:Lcom/android/systemui/statusbar/notification/ColorUpdateLogger$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mSectionsManager:Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;

    iget-object v3, v2, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->peopleHeaderController:Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderController;

    check-cast v3, Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderNodeControllerImpl;

    iget-object v3, v3, Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderNodeControllerImpl;->_view:Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;

    if-eqz v3, :cond_0

    iget-object v4, v3, Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;->mLabelView:Lcom/android/systemui/HighlightingTextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v3, v3, Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;->mClearAllButton:Landroid/widget/ImageView;

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    :cond_0
    iget-object v3, v2, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->silentHeaderController:Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderController;

    check-cast v3, Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderNodeControllerImpl;

    iget-object v3, v3, Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderNodeControllerImpl;->_view:Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;

    if-eqz v3, :cond_1

    iget-object v4, v3, Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;->mLabelView:Lcom/android/systemui/HighlightingTextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v3, v3, Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;->mClearAllButton:Landroid/widget/ImageView;

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    :cond_1
    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->alertingHeaderController:Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderController;

    check-cast v2, Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderNodeControllerImpl;

    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderNodeControllerImpl;->_view:Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;

    if-eqz v2, :cond_2

    iget-object v3, v2, Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;->mLabelView:Lcom/android/systemui/HighlightingTextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;->mClearAllButton:Landroid/widget/ImageView;

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    :cond_2
    sget-boolean v1, Lcom/android/systemui/NotiRune;->NOTI_AOSP_DISABLE_EMPTY_SHADE_VIEW:Z

    if-nez v1, :cond_3

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mEmptyShadeView:Lcom/android/systemui/statusbar/EmptyShadeView;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060668

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/EmptyShadeView;->mEmptyText:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/EmptyShadeView;->mEmptyFooterText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/EmptyShadeView;->mEmptyFooterText:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setCompoundDrawableTintList(Landroid/content/res/ColorStateList;)V

    :cond_3
    return-void
.end method

.method public final updateDismissBehavior()V
    .locals 4

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mDismissUsingRowTranslationX:Z

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mDismissUsingRowTranslationX:Z

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v3, :cond_0

    check-cast v2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setDismissUsingRowTranslationX(Z)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final updateDndView(ILjava/lang/String;)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->onKeyguard()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isNeedsToExpandLocksNoti()Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    move p1, v1

    goto :goto_0

    :cond_1
    move p1, v0

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mDndStatusView:Lcom/android/systemui/statusbar/DndStatusView;

    if-eqz v2, :cond_5

    invoke-virtual {v2, p1, v0}, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->setVisible(ZZ)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mDndStatusView:Lcom/android/systemui/statusbar/DndStatusView;

    if-eqz p1, :cond_2

    move v3, v0

    goto :goto_1

    :cond_2
    const/16 v3, 0x8

    :goto_1
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v3, :cond_3

    goto :goto_2

    :cond_3
    move v1, v0

    :goto_2
    const/4 v3, 0x0

    invoke-virtual {v2, v1, v0, v3}, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->setSecondaryVisible(ZZLcom/android/systemui/statusbar/notification/footer/ui/viewbinder/FooterViewBinder$bindClearAllButton$2$3$1$1;)V

    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mDndStatusView:Lcom/android/systemui/statusbar/DndStatusView;

    iget-object p1, p1, Lcom/android/systemui/statusbar/DndStatusView;->mDndStatusText:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    :cond_5
    return-void
.end method

.method public final updateEmptyShadeView(ZZZ)V
    .locals 3

    sget-boolean v0, Lcom/android/systemui/NotiRune;->NOTI_AOSP_DISABLE_EMPTY_SHADE_VIEW:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mEmptyShadeView:Lcom/android/systemui/statusbar/EmptyShadeView;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAnimationsEnabled:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->setVisible(ZZ)V

    if-eqz p2, :cond_2

    const p1, 0x7f130548

    invoke-virtual {p0, p1, v2, v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateEmptyShadeViewResources(III)V

    goto :goto_1

    :cond_2
    if-eqz p3, :cond_3

    const p1, 0x7f1313ee    # 1.955E38f

    const p2, 0x7f080928

    const p3, 0x7f130cf8

    invoke-virtual {p0, p3, p1, p2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateEmptyShadeViewResources(III)V

    goto :goto_1

    :cond_3
    const p1, 0x7f1305c7

    invoke-virtual {p0, p1, v2, v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateEmptyShadeViewResources(III)V

    :goto_1
    return-void
.end method

.method public final updateEmptyShadeViewResources(III)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mEmptyShadeView:Lcom/android/systemui/statusbar/EmptyShadeView;

    iget v1, v0, Lcom/android/systemui/statusbar/EmptyShadeView;->mText:I

    if-eq v1, p1, :cond_0

    iput p1, v0, Lcom/android/systemui/statusbar/EmptyShadeView;->mText:I

    iget-object v0, v0, Lcom/android/systemui/statusbar/EmptyShadeView;->mEmptyText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mEmptyShadeView:Lcom/android/systemui/statusbar/EmptyShadeView;

    iget v0, p1, Lcom/android/systemui/statusbar/EmptyShadeView;->mFooterText:I

    const/4 v1, 0x0

    if-eq v0, p2, :cond_2

    iput p2, p1, Lcom/android/systemui/statusbar/EmptyShadeView;->mFooterText:I

    if-eqz p2, :cond_1

    iget-object p1, p1, Lcom/android/systemui/statusbar/EmptyShadeView;->mEmptyFooterText:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_1
    iget-object p1, p1, Lcom/android/systemui/statusbar/EmptyShadeView;->mEmptyFooterText:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mEmptyShadeView:Lcom/android/systemui/statusbar/EmptyShadeView;

    iget v0, p1, Lcom/android/systemui/statusbar/EmptyShadeView;->mFooterIcon:I

    const/4 v2, 0x0

    if-eq v0, p3, :cond_4

    iput p3, p1, Lcom/android/systemui/statusbar/EmptyShadeView;->mFooterIcon:I

    if-nez p3, :cond_3

    move-object v0, v1

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v3, p1, Lcom/android/systemui/statusbar/EmptyShadeView;->mSize:I

    invoke-virtual {v0, v2, v2, v3, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :goto_1
    iget-object p1, p1, Lcom/android/systemui/statusbar/EmptyShadeView;->mEmptyFooterText:Landroid/widget/TextView;

    invoke-virtual {p1, v0, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_4
    if-nez p3, :cond_6

    if-eqz p2, :cond_5

    goto :goto_2

    :cond_5
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mEmptyShadeView:Lcom/android/systemui/statusbar/EmptyShadeView;

    const/16 p1, 0x8

    iput p1, p0, Lcom/android/systemui/statusbar/EmptyShadeView;->mFooterVisibility:I

    invoke-virtual {p0, v2, v2, v1}, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->setSecondaryVisible(ZZLcom/android/systemui/statusbar/notification/footer/ui/viewbinder/FooterViewBinder$bindClearAllButton$2$3$1$1;)V

    goto :goto_3

    :cond_6
    :goto_2
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mEmptyShadeView:Lcom/android/systemui/statusbar/EmptyShadeView;

    iput v2, p0, Lcom/android/systemui/statusbar/EmptyShadeView;->mFooterVisibility:I

    const/4 p1, 0x1

    invoke-virtual {p0, p1, v2, v1}, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->setSecondaryVisible(ZZLcom/android/systemui/statusbar/notification/footer/ui/viewbinder/FooterViewBinder$bindClearAllButton$2$3$1$1;)V

    :goto_3
    return-void
.end method

.method public final updateFirstAndLastBackgroundViews()V
    .locals 4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_0

    instance-of v2, v1, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    if-eq v1, v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mSectionsManager:Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mSections:[Lcom/android/systemui/statusbar/notification/stack/NotificationSection;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getChildrenWithBackground()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->updateFirstAndLastViewsForAllSections([Lcom/android/systemui/statusbar/notification/stack/NotificationSection;Ljava/util/List;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mLastVisibleBackgroundChild:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method public updateFooter()V
    .locals 3

    invoke-static {}, Lcom/android/systemui/statusbar/notification/footer/shared/FooterViewRefactor;->assertInLegacyMode()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mFooterView:Lcom/android/systemui/statusbar/notification/footer/ui/view/FooterView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->isHistoryEnabled()Z

    invoke-static {}, Lcom/android/systemui/statusbar/notification/footer/shared/FooterViewRefactor;->assertInLegacyMode()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/android/systemui/statusbar/notification/footer/shared/FooterViewRefactor;->assertInLegacyMode()V

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->hasNotifications(IZ)Z

    move-result v1

    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->shouldShowFooterView(Z)Z

    invoke-static {}, Lcom/android/systemui/statusbar/notification/footer/shared/FooterViewRefactor;->assertInLegacyMode()V

    :cond_2
    :goto_1
    return-void
.end method

.method public final updateForcedScroll()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mForcedScroll:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mForcedScroll:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mForcedScroll:Landroid/view/View;

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mForcedScroll:Landroid/view/View;

    if-eqz v0, :cond_5

    check-cast v0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getPositionInLinearLayout(Landroid/view/View;)I

    move-result v1

    invoke-static {}, Lcom/android/systemui/shade/SecPanelSplitHelper;->isEnabled()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mForcedScroll:Landroid/view/View;

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mOrientation:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_3

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isOnKeyguard()Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v3

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mMinimumPaddings:I

    iget v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mPaddingBetweenElements:I

    add-int/2addr v1, v2

    :cond_3
    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->targetScrollForView(Lcom/android/systemui/statusbar/notification/row/ExpandableView;I)I

    move-result v2

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getIntrinsicHeight()I

    move-result v0

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getScrollRange$1()I

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    if-lt v2, v1, :cond_4

    if-ge v0, v2, :cond_5

    :cond_4
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setOwnScrollY(I)V

    :cond_5
    return-void
.end method

.method public final updateForwardAndBackwardScrollability()V
    .locals 5

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mScrollable:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mScrollAdapter:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$9;

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$9;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    iget v3, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getScrollRange$1()I

    move-result v0

    if-lt v3, v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mScrollable:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mScrollAdapter:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$9;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v4, Lcom/android/systemui/scene/shared/flag/SceneContainerFlag;->$r8$clinit:I

    invoke-static {}, Lcom/android/systemui/Flags;->sceneContainer()V

    iget-object v3, v3, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$9;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    iget v3, v3, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    move v3, v2

    goto :goto_3

    :cond_3
    :goto_2
    move v3, v1

    :goto_3
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mForwardScrollable:Z

    if-ne v0, v4, :cond_4

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mBackwardScrollable:Z

    if-eq v3, v4, :cond_5

    :cond_4
    move v1, v2

    :cond_5
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mForwardScrollable:Z

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mBackwardScrollable:Z

    if-eqz v1, :cond_6

    const/16 v0, 0x800

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->sendAccessibilityEvent(I)V

    :cond_6
    return-void
.end method

.method public final updateImeInset(Landroid/view/WindowInsets;)V
    .locals 2

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Insets;->bottom:I

    iput p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mImeInset:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mFooterView:Lcom/android/systemui/statusbar/notification/footer/ui/view/FooterView;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mViewState:Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    if-eqz v0, :cond_1

    check-cast v0, Lcom/android/systemui/statusbar/notification/footer/ui/view/FooterView$FooterViewState;

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/notification/footer/ui/view/FooterView$FooterViewState;->resetY:Z

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    or-int/2addr p1, v1

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/notification/footer/ui/view/FooterView$FooterViewState;->resetY:Z

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mForcedScroll:Landroid/view/View;

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateForcedScroll()V

    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getScrollRange$1()I

    move-result p1

    iget v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    if-le v0, p1, :cond_3

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setOwnScrollY(I)V

    :cond_3
    return-void
.end method

.method public final updateLaunchedNotificationClipPath()V
    .locals 17

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mLaunchingNotificationNeedsToBeClipped:Z

    if-eqz v1, :cond_2

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mLaunchingNotification:Z

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mExpandingNotificationRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-nez v1, :cond_0

    goto/16 :goto_0

    :cond_0
    const/4 v1, 0x2

    new-array v2, v1, [I

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    iget-object v3, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mLaunchAnimationParams:Lcom/android/systemui/statusbar/notification/LaunchAnimationParameters;

    iget v3, v3, Lcom/android/systemui/animation/TransitionAnimator$State;->left:I

    const/4 v4, 0x0

    aget v5, v2, v4

    sub-int/2addr v3, v5

    iget v5, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mRoundedRectClippingLeft:I

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    iget-object v5, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mLaunchAnimationParams:Lcom/android/systemui/statusbar/notification/LaunchAnimationParameters;

    iget v5, v5, Lcom/android/systemui/animation/TransitionAnimator$State;->right:I

    aget v6, v2, v4

    sub-int/2addr v5, v6

    iget v6, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mRoundedRectClippingRight:I

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    iget-object v6, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mLaunchAnimationParams:Lcom/android/systemui/statusbar/notification/LaunchAnimationParameters;

    iget v6, v6, Lcom/android/systemui/animation/TransitionAnimator$State;->bottom:I

    const/4 v7, 0x1

    aget v8, v2, v7

    sub-int/2addr v6, v8

    iget v8, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mRoundedRectClippingBottom:I

    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    move-result v6

    sget-object v8, Lcom/android/app/animation/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    iget-object v9, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mLaunchAnimationParams:Lcom/android/systemui/statusbar/notification/LaunchAnimationParameters;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v10, Lcom/android/systemui/animation/TransitionAnimator;->Companion:Lcom/android/systemui/animation/TransitionAnimator$Companion;

    sget-object v11, Lcom/android/systemui/animation/ActivityTransitionAnimator;->TIMINGS:Lcom/android/systemui/animation/TransitionAnimator$Timings;

    iget v12, v9, Lcom/android/systemui/statusbar/notification/LaunchAnimationParameters;->linearProgress:F

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/16 v13, 0x0

    const-wide/16 v15, 0x64

    invoke-static/range {v11 .. v16}, Lcom/android/systemui/animation/TransitionAnimator$Companion;->getProgress(Lcom/android/systemui/animation/TransitionAnimator$Timings;FJJ)F

    move-result v9

    check-cast v8, Landroid/view/animation/PathInterpolator;

    invoke-virtual {v8, v9}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    move-result v8

    iget v9, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mRoundedRectClippingTop:I

    iget-object v10, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mLaunchAnimationParams:Lcom/android/systemui/statusbar/notification/LaunchAnimationParameters;

    iget v10, v10, Lcom/android/systemui/animation/TransitionAnimator$State;->top:I

    aget v2, v2, v7

    sub-int/2addr v10, v2

    invoke-static {v9, v10, v8}, Landroid/util/MathUtils;->lerp(IIF)F

    move-result v2

    iget v8, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mRoundedRectClippingTop:I

    int-to-float v8, v8

    invoke-static {v2, v8}, Ljava/lang/Math;->min(FF)F

    move-result v2

    float-to-int v2, v2

    iget-object v8, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mLaunchAnimationParams:Lcom/android/systemui/statusbar/notification/LaunchAnimationParameters;

    iget v9, v8, Lcom/android/systemui/animation/TransitionAnimator$State;->topCornerRadius:F

    iget v8, v8, Lcom/android/systemui/animation/TransitionAnimator$State;->bottomCornerRadius:F

    iget-object v10, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mLaunchedNotificationRadii:[F

    aput v9, v10, v4

    aput v9, v10, v7

    aput v9, v10, v1

    const/4 v1, 0x3

    aput v9, v10, v1

    const/4 v1, 0x4

    aput v8, v10, v1

    const/4 v1, 0x5

    aput v8, v10, v1

    const/4 v1, 0x6

    aput v8, v10, v1

    const/4 v1, 0x7

    aput v8, v10, v1

    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mLaunchedNotificationClipPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    iget-object v7, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mLaunchedNotificationClipPath:Landroid/graphics/Path;

    int-to-float v8, v3

    int-to-float v9, v2

    int-to-float v10, v5

    int-to-float v11, v6

    iget-object v12, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mLaunchedNotificationRadii:[F

    sget-object v13, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v7 .. v13}, Landroid/graphics/Path;->addRoundRect(FFFF[FLandroid/graphics/Path$Direction;)V

    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mExpandingNotificationRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-object v2, v1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mNotificationParent:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v2, :cond_1

    move-object v1, v2

    :cond_1
    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mLaunchedNotificationClipPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getTranslationX()F

    move-result v4

    sub-float/2addr v3, v4

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getTop()I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v5

    sub-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->offset(FF)V

    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mLaunchedNotificationClipPath:Landroid/graphics/Path;

    iput-object v2, v1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mExpandingClipPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->invalidate()V

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mShouldUseRoundedRectClipping:Z

    if-eqz v1, :cond_2

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->invalidate()V

    :cond_2
    :goto_0
    return-void
.end method

.method public final updateNotificationAnimationStates()V
    .locals 7

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAnimationsEnabled:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mPulsing:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    iput-boolean v0, v3, Lcom/android/systemui/statusbar/NotificationShelf;->mAnimationsEnabled:Z

    if-nez v0, :cond_2

    iget-object v3, v3, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/SecShelfNotificationIconContainer;

    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setAnimationsEnabled(Z)V

    :cond_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    move v4, v2

    :goto_2
    if-ge v4, v3, :cond_6

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    if-nez v6, :cond_4

    invoke-static {v5}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->isPinnedHeadsUp(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_3

    :cond_3
    move v6, v2

    goto :goto_4

    :cond_4
    :goto_3
    move v6, v1

    :goto_4
    and-int/2addr v0, v6

    instance-of v6, v5, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v6, :cond_5

    check-cast v5, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v5, v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setAnimationRunning(Z)V

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_6
    return-void
.end method

.method public final updateOwnTranslationZ()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mKeyguardBypassEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isHiddenAtAll()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getFirstChildNotGone()Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->showingPulsing()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTranslationZ()F

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setTranslationZ(F)V

    return-void
.end method

.method public final updateRoundedClipPath()V
    .locals 8

    invoke-static {}, Lcom/android/systemui/scene/shared/flag/SceneContainerFlag;->assertInLegacyMode()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mRoundedClipPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mRoundedClipPath:Landroid/graphics/Path;

    iget v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mRoundedRectClippingLeft:I

    int-to-float v2, v0

    iget v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mRoundedRectClippingTop:I

    iget v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mRoundedRectClippingYTranslation:I

    add-int/2addr v0, v3

    int-to-float v0, v0

    iget v4, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mRoundedRectClippingRight:I

    int-to-float v4, v4

    iget v5, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mRoundedRectClippingBottom:I

    add-int/2addr v5, v3

    int-to-float v5, v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mBgCornerRadii:[F

    sget-object v7, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move v3, v0

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Path;->addRoundRect(FFFF[FLandroid/graphics/Path$Direction;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mShouldUseRoundedRectClipping:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    :cond_0
    return-void
.end method

.method public final updateSectionColor()V
    .locals 3

    iget-object v0, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    const v1, 0x7f06050c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mSectionsManager:Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->peopleHeaderController:Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderController;

    check-cast v1, Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderNodeControllerImpl;

    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderNodeControllerImpl;->_view:Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;

    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;->mLabelView:Lcom/android/systemui/HighlightingTextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;->mClearAllButton:Landroid/widget/ImageView;

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->silentHeaderController:Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderController;

    check-cast v1, Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderNodeControllerImpl;

    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderNodeControllerImpl;->_view:Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;

    if-eqz v1, :cond_1

    iget-object v2, v1, Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;->mLabelView:Lcom/android/systemui/HighlightingTextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;->mClearAllButton:Landroid/widget/ImageView;

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->alertingHeaderController:Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderController;

    check-cast p0, Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderNodeControllerImpl;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderNodeControllerImpl;->_view:Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;

    if-eqz p0, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;->mLabelView:Lcom/android/systemui/HighlightingTextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;->mClearAllButton:Landroid/widget/ImageView;

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    :cond_2
    return-void
.end method

.method public final updateSensitiveness(ZZ)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mHideSensitive:Z

    if-eq p2, v0, :cond_2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    invoke-virtual {v2, p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setHideSensitiveForIntrinsicHeight(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    iput-boolean p2, v0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mHideSensitive:Z

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAnimationsEnabled:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mHideSensitiveNeedsAnimation:Z

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mNeedsAnimation:Z

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateContentHeight()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    :cond_2
    return-void
.end method

.method public updateSplitNotificationShade()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mSplitShadeStateController:Lcom/android/systemui/statusbar/policy/SplitShadeStateController;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    check-cast v0, Lcom/android/systemui/statusbar/policy/SplitShadeStateControllerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/SplitShadeStateControllerImpl;->shouldUseSplitNotificationShade()V

    return-void
.end method

.method public updateStackEndHeightAndStackHeight(F)V
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    iget v0, v0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mStackHeight:F

    iget v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mQsExpansionFraction:F

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->shouldSkipHeightUpdate()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getEmptyBottomMargin()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    iget v4, v4, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mTopPadding:I

    int-to-float v4, v4

    iget v5, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mMaxDisplayedNotifications:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    iget v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIntrinsicContentHeight:F

    goto :goto_0

    :cond_0
    sub-float/2addr v1, v3

    sub-float/2addr v1, v4

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    iput v1, v2, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mStackEndHeight:F

    invoke-virtual {p0, v1, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateStackHeight(FF)V

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    iget v1, v1, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mStackEndHeight:F

    invoke-virtual {p0, v1, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateStackHeight(FF)V

    :goto_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    iget p1, p1, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mStackHeight:F

    cmpl-float p1, v0, p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    :cond_2
    return-void
.end method

.method public updateStackHeight(FF)V
    .locals 1

    sget-object v0, Lcom/android/systemui/Flags;->FEATURE_FLAGS:Lcom/android/systemui/FeatureFlagsImpl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float/2addr v0, p1

    invoke-static {v0, p1, p2}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mStackHeight:F

    return-void
.end method

.method public final updateStackPosition(Z)V
    .locals 7

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->onKeyguard()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isNeedsToExpandLocksNoti()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    iget v3, v2, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mQsExpansionFraction:F

    const v4, 0x3f4ccccd    # 0.8f

    cmpg-float v5, v3, v4

    const/4 v6, 0x0

    if-gez v5, :cond_1

    move v3, v6

    goto :goto_1

    :cond_1
    sub-float/2addr v3, v4

    const v4, 0x3e4ccccd    # 0.2f

    div-float/2addr v3, v4

    :goto_1
    iget v4, v2, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mTopPadding:I

    int-to-float v4, v4

    iget v5, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mExtraTopInsetForFullShadeTransition:F

    add-float/2addr v4, v5

    iget v2, v2, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mOverExpansion:F

    add-float/2addr v4, v2

    add-float/2addr v4, v6

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getCurrentOverScrollAmount(Z)F

    move-result v1

    sub-float/2addr v4, v1

    sget-object v1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v2, Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    invoke-virtual {v1, v2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    iget-object v2, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->getNavBarHeight(Landroid/content/Context;)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v3, v1

    add-float/2addr v3, v4

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    iget v2, v1, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mExpansionFraction:F

    if-eqz v0, :cond_2

    iget v2, v1, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mFractionToShade:F

    :cond_2
    iget-object v0, v1, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isPrimaryBouncerInTransit()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mQsExpansionFraction:F

    cmpl-float v0, v0, v6

    if-lez v0, :cond_3

    invoke-static {v2}, Lcom/android/keyguard/BouncerPanelExpansionCalculator;->aboutToShowBouncerProgress(F)F

    move-result v2

    :cond_3
    sget v0, Lcom/android/systemui/scene/shared/flag/SceneContainerFlag;->$r8$clinit:I

    invoke-static {}, Lcom/android/systemui/Flags;->sceneContainer()V

    invoke-static {}, Lcom/android/systemui/shade/SecPanelSplitHelper;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mExpansionChanging:Z

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->onKeyguard()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isNeedsToExpandLocksNoti()Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    iget v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mYDiff:I

    int-to-float v0, v0

    sub-float v6, v3, v0

    :cond_5
    :goto_2
    invoke-static {v6, v3, v2}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    iput v0, v1, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mStackY:F

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mOnStackYChanged:Ljava/util/function/Consumer;

    if-eqz v0, :cond_6

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_6
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateStackEndHeightAndStackHeight(F)V

    return-void
.end method

.method public final updateUseRoundedRectClipping()V
    .locals 4

    sget v0, Lcom/android/systemui/scene/shared/flag/SceneContainerFlag;->$r8$clinit:I

    invoke-static {}, Lcom/android/systemui/Flags;->sceneContainer()V

    iget v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mQsExpansionFraction:F

    const/high16 v1, 0x3f000000    # 0.5f

    cmpg-float v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ltz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    if-eqz v3, :cond_1

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mShouldUseRoundedRectClipping:Z

    if-eq v1, v0, :cond_2

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mShouldUseRoundedRectClipping:Z

    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    :cond_2
    return-void
.end method

.method public final updateViewShadows()V
    .locals 8

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mTmpSortedChildren:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mTmpSortedChildren:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mViewPositionComparator:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$$ExternalSyntheticLambda3;

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v1, 0x0

    move v2, v0

    :goto_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mTmpSortedChildren:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_5

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mTmpSortedChildren:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getTranslationZ()F

    move-result v4

    if-nez v1, :cond_2

    move v5, v4

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getTranslationZ()F

    move-result v5

    :goto_2
    sub-float/2addr v5, v4

    const/4 v4, 0x0

    cmpg-float v6, v5, v4

    if-lez v6, :cond_4

    const v6, 0x3dcccccd    # 0.1f

    cmpl-float v7, v5, v6

    if-ltz v7, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v4

    iget v7, v1, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mActualHeight:I

    int-to-float v7, v7

    add-float/2addr v4, v7

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v7

    sub-float/2addr v4, v7

    div-float/2addr v5, v6

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getOutlineAlpha()F

    move-result v6

    float-to-int v4, v4

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getOutlineTranslation()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getTranslation()F

    move-result v1

    add-float/2addr v1, v7

    float-to-int v1, v1

    invoke-virtual {v3, v4, v5, v6, v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setFakeShadowIntensity(IFFI)V

    goto :goto_4

    :cond_4
    :goto_3
    invoke-virtual {v3, v0, v4, v4, v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setFakeShadowIntensity(IFFI)V

    :goto_4
    add-int/lit8 v2, v2, 0x1

    move-object v1, v3

    goto :goto_1

    :cond_5
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mTmpSortedChildren:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method
