.class public abstract Landroid/widget/AbsListView;
.super Landroid/widget/AdapterView;
.source "AbsListView.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/widget/Filter$FilterListener;
.implements Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;
.implements Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/AbsListView$DeviceConfigChangeListener;,
        Landroid/widget/AbsListView$RecycleBin;,
        Landroid/widget/AbsListView$OnScrollListener;,
        Landroid/widget/AbsListView$SemSmoothScrollByMove;,
        Landroid/widget/AbsListView$MultiChoiceModeWrapper;,
        Landroid/widget/AbsListView$MultiChoiceModeListener;,
        Landroid/widget/AbsListView$PositionScroller;,
        Landroid/widget/AbsListView$AbsPositionScroller;,
        Landroid/widget/AbsListView$SavedState;,
        Landroid/widget/AbsListView$AdapterDataSetObserver;,
        Landroid/widget/AbsListView$LayoutParams;,
        Landroid/widget/AbsListView$ListItemAccessibilityDelegate;,
        Landroid/widget/AbsListView$SelectionBoundsAdjuster;,
        Landroid/widget/AbsListView$CheckForKeyLongPress;,
        Landroid/widget/AbsListView$FlingRunnable;,
        Landroid/widget/AbsListView$PerformClick;,
        Landroid/widget/AbsListView$CheckForTap;,
        Landroid/widget/AbsListView$CheckForLongPress;,
        Landroid/widget/AbsListView$CheckForDoublePenClick;,
        Landroid/widget/AbsListView$SemFastScrollEventListener;,
        Landroid/widget/AbsListView$DifferentialFlingTarget;,
        Landroid/widget/AbsListView$OnScrollOffsetListener;,
        Landroid/widget/AbsListView$InputConnectionWrapper;,
        Landroid/widget/AbsListView$RecyclerListener;,
        Landroid/widget/AbsListView$HoverScrollHandler;,
        Landroid/widget/AbsListView$SemFluidScrollerEventListener;,
        Landroid/widget/AbsListView$ClickableViewState;,
        Landroid/widget/AbsListView$WindowRunnnable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/AdapterView<",
        "Landroid/widget/ListAdapter;",
        ">;",
        "Landroid/text/TextWatcher;",
        "Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;",
        "Landroid/widget/Filter$FilterListener;",
        "Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;",
        "Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;"
    }
.end annotation


# static fields
.field private static final blacklist APPWIDGET_CURRENT_POSITION_ACTION:Ljava/lang/String; = "com.sec.android.app.clockpackage.APPWIDGET_CURRENT_POSITION"

.field private static final blacklist APPWIDGET_EXTRA_CURRENT_POSITION:Ljava/lang/String; = "appwidgetCurrentPosition"

.field private static final blacklist APPWIDGET_EXTRA_FIRST_POSITION:Ljava/lang/String; = "appwidgetFirstPosition"

.field private static final blacklist APPWIDGET_FIRST_POSITION_ACTION:Ljava/lang/String; = "android.widget.ListView.APPWIDGET_FIRST_POSITION"

.field static final blacklist APP_WIDGET_BROADCAST_CURRENT_POSITION_TYPE:I = 0x1

.field static final blacklist APP_WIDGET_BROADCAST_FIRST_POSITION_TYPE:I = 0x2

.field private static final blacklist APP_WIDGET_INDICATOR_ALPHA:I = 0xff

.field private static final blacklist APP_WIDGET_INDICATOR_LEFT:I = 0x1

.field private static final blacklist APP_WIDGET_INDICATOR_MAX_COUNT:I = 0x14

.field private static final blacklist APP_WIDGET_INDICATOR_RIGHT:I = 0x2

.field private static final greylist-max-o CHECK_POSITION_SEARCH_DISTANCE:I = 0x14

.field public static final whitelist CHOICE_MODE_MULTIPLE:I = 0x2

.field public static final whitelist CHOICE_MODE_MULTIPLE_MODAL:I = 0x3

.field public static final whitelist CHOICE_MODE_NONE:I = 0x0

.field public static final whitelist CHOICE_MODE_SINGLE:I = 0x1

.field private static final blacklist DRAGSCROLL_WORKING_ZONE_DP:I = 0x19

.field private static final blacklist FLING_DESTRETCH_FACTOR:F = 4.0f

.field private static final blacklist GTP_STATE_NONE:I = 0x0

.field private static final blacklist GTP_STATE_PRESSED:I = 0x2

.field private static final blacklist GTP_STATE_SHOWN:I = 0x1

.field private static final blacklist HOVERSCROLL_DELAY:I = 0x0

.field private static final blacklist HOVERSCROLL_DOWN:I = 0x2

.field private static final blacklist HOVERSCROLL_HEIGHT_BOTTOM_DP:I = 0x19

.field private static final blacklist HOVERSCROLL_HEIGHT_TOP_DP:I = 0x19

.field private static final blacklist HOVERSCROLL_SPEED:F = 15.0f

.field private static final blacklist HOVERSCROLL_UP:I = 0x1

.field private static final greylist-max-o INVALID_POINTER:I = -0x1

.field private static blacklist JUMP_SCROLL_TO_TOP_FINISHING:I = 0x0

.field private static blacklist JUMP_SCROLL_TO_TOP_IDLE:I = 0x0

.field private static blacklist JUMP_SCROLL_TO_TOP_INITIATED:I = 0x0

.field static final greylist-max-o LAYOUT_FORCE_BOTTOM:I = 0x3

.field static final greylist-max-o LAYOUT_FORCE_TOP:I = 0x1

.field static final greylist-max-o LAYOUT_MOVE_SELECTION:I = 0x6

.field static final greylist-max-o LAYOUT_NORMAL:I = 0x0

.field static final greylist-max-o LAYOUT_SET_SELECTION:I = 0x2

.field static final greylist-max-o LAYOUT_SPECIFIC:I = 0x4

.field static final greylist-max-o LAYOUT_SYNC:I = 0x5

.field private static final blacklist MSG_HOVERSCROLL_MOVE:I = 0x1

.field static final greylist-max-o OVERSCROLL_LIMIT_DIVISOR:I = 0x3

.field private static final greylist-max-o PROFILE_FLINGING:Z = false

.field private static final greylist-max-o PROFILE_SCROLLING:Z = false

.field public static final whitelist SEM_GO_TO_TOP_BUTTON_STYLE_BLACK:I = 0x1

.field public static final whitelist SEM_GO_TO_TOP_BUTTON_STYLE_WHITE:I = 0x0

.field private static final greylist-max-o TAG:Ljava/lang/String; = "AbsListView"

.field static final greylist-max-o TOUCH_MODE_DONE_WAITING:I = 0x2

.field static final greylist-max-o TOUCH_MODE_DOWN:I = 0x0

.field static final greylist-max-o TOUCH_MODE_FLING:I = 0x4

.field private static final greylist-max-o TOUCH_MODE_OFF:I = 0x1

.field private static final greylist-max-o TOUCH_MODE_ON:I = 0x0

.field static final greylist-max-o TOUCH_MODE_OVERFLING:I = 0x6

.field static final greylist-max-o TOUCH_MODE_OVERSCROLL:I = 0x5

.field static final greylist-max-o TOUCH_MODE_REST:I = -0x1

.field static final greylist-max-o TOUCH_MODE_SCROLL:I = 0x3

.field static final greylist-max-o TOUCH_MODE_TAP:I = 0x1

.field private static final greylist-max-o TOUCH_MODE_UNKNOWN:I = -0x1

.field public static final whitelist TRANSCRIPT_MODE_ALWAYS_SCROLL:I = 0x2

.field public static final whitelist TRANSCRIPT_MODE_DISABLED:I = 0x0

.field public static final whitelist TRANSCRIPT_MODE_NORMAL:I = 0x1

.field private static blacklist sContentCaptureReportingEnabledByDeviceConfig:Z

.field private static blacklist sDeviceConfigChangeListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

.field static final greylist-max-o sLinearInterpolator:Landroid/view/animation/Interpolator;


# instance fields
.field private blacklist GO_TO_TOP_HIDE:I

.field private final blacklist ON_ABSORB_VELOCITY:I

.field private final blacklist SWITCH_CONTROL_SCROLL_MAX_DURATION:I

.field private final blacklist SWITCH_CONTROL_SCROLL_MIN_DURATION:I

.field private greylist-max-o mAccessibilityDelegate:Landroid/widget/AbsListView$ListItemAccessibilityDelegate;

.field private greylist-max-p mActivePointerId:I

.field greylist mAdapter:Landroid/widget/ListAdapter;

.field greylist-max-o mAdapterHasStableIds:Z

.field blacklist mAllowDeferNotifyAfterRemoteViewsAdapterSet:Z

.field blacklist mAnimator:Landroid/animation/ValueAnimator;

.field private blacklist mAppWidgetEnabled:Z

.field private blacklist mAppWidgetFastScroll:Z

.field private blacklist mAppWidgetGetCurrentPosition:Ljava/lang/String;

.field private blacklist mAppWidgetGetFirstPosition:Ljava/lang/String;

.field private blacklist mAppWidgetGoToTop:Z

.field private blacklist mAppWidgetGoToTopOffset:I

.field blacklist mAppWidgetImmersiveEnalbed:Z

.field blacklist mAppWidgetIndicator:Z

.field blacklist mAppWidgetInnerFocus:Z

.field blacklist mAppWidgetSnapScroll:Z

.field private blacklist mAutoscrollDuration:I

.field private blacklist mAutoscrollDurationGap:I

.field private greylist-max-o mCacheColorHint:I

.field greylist-max-o mCachingActive:Z

.field greylist-max-o mCachingStarted:Z

.field greylist-max-o mCheckStates:Landroid/util/SparseBooleanArray;

.field greylist-max-o mCheckedIdStates:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field greylist-max-o mCheckedItemCount:I

.field greylist-max-r mChoiceActionMode:Landroid/view/ActionMode;

.field greylist-max-o mChoiceMode:I

.field private greylist-max-o mClearScrollingCache:Ljava/lang/Runnable;

.field final blacklist mClickableViewStates:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/widget/AbsListView$ClickableViewState;",
            ">;"
        }
    .end annotation
.end field

.field private greylist mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

.field private blacklist mCurrentKeyCode:I

.field private blacklist mDVFSLockAcquired:Z

.field greylist-max-r mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

.field private final blacklist mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

.field private greylist-max-o mDefInputConnection:Landroid/view/inputmethod/InputConnection;

.field private greylist-max-o mDeferNotifyDataSetChanged:Z

.field private blacklist mDeferSetSelectionFromTop:Z

.field private blacklist mDeferSetSelectionPosition:I

.field private greylist-max-o mDensityScale:F

.field private blacklist mDifferentialMotionFlingHelper:Landroid/widget/DifferentialMotionFlingHelper;

.field private greylist-max-o mDirection:I

.field blacklist mDoubleFlingEnabled:Z

.field private blacklist mDragScrollWorkingZonePx:I

.field greylist-max-o mDrawSelectorOnTop:Z

.field public greylist-max-p mEdgeGlowBottom:Landroid/widget/EdgeEffect;

.field public greylist-max-p mEdgeGlowTop:Landroid/widget/EdgeEffect;

.field private blacklist mEnableVibrationAtLongPress:Z

.field private blacklist mExtraPaddingInBottomHoverArea:I

.field private blacklist mExtraPaddingInTopHoverArea:I

.field private greylist-max-p mFastScroll:Landroid/widget/FastScroller;

.field greylist-max-o mFastScrollAlwaysVisible:Z

.field greylist-max-o mFastScrollEnabled:Z

.field private greylist-max-o mFastScrollStyle:I

.field private greylist-max-o mFiltered:Z

.field private greylist-max-o mFirstPositionDistanceGuess:I

.field private blacklist mFirstPressedPoint:I

.field private greylist-max-o mFlingProfilingStarted:Z

.field private greylist-max-p mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

.field private greylist-max-o mFlingStrictSpan:Landroid/os/StrictMode$Span;

.field blacklist mFocusedPos:I

.field private greylist-max-o mForceTranscriptScroll:Z

.field private blacklist mForcedClick:Z

.field private greylist-max-o mGlobalLayoutListenerAddedFilter:Z

.field private blacklist mGoToTopRenderNode:Landroid/graphics/RenderNode;

.field private blacklist mGoToToping:Z

.field private blacklist mHapticScrollFeedbackProvider:Landroid/view/HapticScrollFeedbackProvider;

.field private blacklist mHasDividerHeight:I

.field private blacklist mHasDivier:Z

.field private greylist-max-o mHasPerformedLongPress:Z

.field public blacklist mHoverAreaEnter:Z

.field private blacklist mHoverBottomAreaHeight:I

.field private blacklist mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

.field private blacklist mHoverPosition:I

.field private blacklist mHoverRecognitionStartTime:J

.field private blacklist mHoverScrollDirection:I

.field private blacklist mHoverScrollEnable:Z

.field private blacklist mHoverScrollStartTime:J

.field private blacklist mHoverScrollStateChanged:Z

.field private blacklist mHoverScrollStateForListener:I

.field private blacklist mHoverScrollTimeInterval:J

.field private blacklist mHoverTopAreaHeight:I

.field private blacklist mHoveredOnEllipsizedText:Z

.field blacklist mHoveringEnabled:Z

.field private blacklist mIndicatorAnimatedSize:I

.field private blacklist mIndicatorBottomPadding:I

.field private blacklist mIndicatorDefaultSize:I

.field private blacklist mIndicatorFocusedSize:I

.field private blacklist mIndicatorIndex:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mIndicatorItemCnt:I

.field private blacklist mIndicatorMarginHorizontal:I

.field private blacklist mIndicatorPaint:Landroid/graphics/Paint;

.field private blacklist mIndicatorRectSize:I

.field private blacklist mIndicatorWhere:I

.field private greylist mIsChildViewEnabled:Z

.field private blacklist mIsCloseChildSetted:Z

.field private blacklist mIsCtrlMultiSelection:Z

.field private blacklist mIsCtrlkeyPressed:Z

.field private greylist-max-o mIsDetaching:Z

.field private blacklist mIsDragBlockEnabled:Z

.field private blacklist mIsDragScrolled:Z

.field private blacklist mIsEnabledPaddingInHoverScroll:Z

.field private blacklist mIsFirstMultiSelectionMove:Z

.field private blacklist mIsFirstPenClick:Z

.field private blacklist mIsForceSelection:Z

.field private blacklist mIsHoverOverscrolled:Z

.field private blacklist mIsHoverScrolled:Z

.field blacklist mIsHoveredByMouse:Z

.field blacklist mIsLayoutSpecificDone:Z

.field private blacklist mIsLongPressMultiSelection:Z

.field private blacklist mIsLongPressTriggeredByKey:Z

.field private blacklist mIsMouseHoverScroll:Z

.field private blacklist mIsMouseHoverScrollX:I

.field private blacklist mIsMouseHoverScrollY:I

.field private blacklist mIsMovedbeforeUP:Z

.field private blacklist mIsMultiFocusEnabled:Z

.field private blacklist mIsNeedPenSelectIconSet:Z

.field private blacklist mIsNeedPenSelection:Z

.field private blacklist mIsPenHovered:Z

.field private blacklist mIsPenPressed:Z

.field private blacklist mIsPenSelectPointerSetted:Z

.field final greylist-max-o mIsScrap:[Z

.field private blacklist mIsSemOnClickEnabled:Z

.field private blacklist mIsSendHoverScrollState:Z

.field private blacklist mIsShiftkeyPressed:Z

.field private blacklist mIsTextSelectionStarted:Z

.field private blacklist mIsfirstMoveEvent:Z

.field private blacklist mJumpScrollToTopState:I

.field private greylist-max-o mLastHandledItemCount:I

.field private greylist-max-o mLastPositionDistanceGuess:I

.field private greylist-max-o mLastScrollState:I

.field private greylist-max-o mLastTouchMode:I

.field greylist-max-o mLastY:I

.field greylist mLayoutMode:I

.field greylist-max-o mListPadding:Landroid/graphics/Rect;

.field private blacklist mLongPressMultiSelectionEnabled:Z

.field private greylist-max-p mMaximumVelocity:I

.field private greylist-max-o mMinimumVelocity:I

.field greylist-max-o mMotionCorrection:I

.field greylist mMotionPosition:I

.field greylist-max-o mMotionViewNewTop:I

.field greylist-max-o mMotionViewOriginalTop:I

.field greylist-max-o mMotionX:I

.field greylist mMotionY:I

.field greylist-max-o mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

.field private blacklist mMultiFocusImage:Landroid/graphics/drawable/Drawable;

.field blacklist mNeedLayoutSpecificDone:Z

.field private blacklist mNeedsHoverScroll:Z

.field private greylist-max-o mNestedYOffset:I

.field blacklist mNewFocusedPos:I

.field private blacklist mNewTextViewHoverState:Z

.field blacklist mNextClickable:Landroid/view/View;

.field private blacklist mOldAdapterItemCount:I

.field private blacklist mOldHoverScrollDirection:I

.field private blacklist mOldKeyCode:I

.field private blacklist mOldTextViewHoverState:Z

.field private greylist-max-p mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field private blacklist mOnScrollOffsetListener:Landroid/widget/AbsListView$OnScrollOffsetListener;

.field private blacklist mOutline:Landroid/graphics/Outline;

.field greylist-max-p mOverflingDistance:I

.field greylist mOverscrollDistance:I

.field greylist-max-o mOverscrollMax:I

.field private final greylist-max-o mOwnerThread:Ljava/lang/Thread;

.field private blacklist mPenDragScrollTimeInterval:J

.field private blacklist mPendingCheckForDoublePenClick:Landroid/widget/AbsListView$CheckForDoublePenClick;

.field private greylist-max-o mPendingCheckForKeyLongPress:Landroid/widget/AbsListView$CheckForKeyLongPress;

.field private greylist mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

.field private greylist mPendingCheckForTap:Landroid/widget/AbsListView$CheckForTap;

.field private greylist-max-o mPendingSync:Landroid/widget/AbsListView$SavedState;

.field private greylist-max-o mPerformClick:Landroid/widget/AbsListView$PerformClick;

.field private blacklist mPointerCount:I

.field greylist mPopup:Landroid/widget/PopupWindow;

.field private greylist-max-o mPopupHidden:Z

.field greylist-max-o mPositionScrollAfterLayout:Ljava/lang/Runnable;

.field greylist-max-r mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

.field private blacklist mPreviousTextViewScroll:Z

.field private greylist-max-o mPublicInputConnection:Landroid/widget/AbsListView$InputConnectionWrapper;

.field final greylist-max-p mRecycler:Landroid/widget/AbsListView$RecycleBin;

.field private greylist-max-o mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

.field private blacklist mReportChildrenToContentCaptureOnNextUpdate:Z

.field greylist-max-o mResurrectToPosition:I

.field private final greylist-max-o mScrollConsumed:[I

.field greylist-max-o mScrollDown:Landroid/view/View;

.field private final greylist-max-o mScrollOffset:[I

.field private greylist-max-o mScrollProfilingStarted:Z

.field private greylist-max-o mScrollStrictSpan:Landroid/os/StrictMode$Span;

.field greylist-max-o mScrollUp:Landroid/view/View;

.field greylist-max-o mScrollingCacheEnabled:Z

.field greylist-max-o mSelectedTop:I

.field greylist mSelectionBottomPadding:I

.field greylist-max-o mSelectionLeftPadding:I

.field greylist-max-o mSelectionRightPadding:I

.field greylist mSelectionTopPadding:I

.field greylist-max-p mSelector:Landroid/graphics/drawable/Drawable;

.field greylist-max-p mSelectorPosition:I

.field greylist-max-p mSelectorRect:Landroid/graphics/Rect;

.field private greylist-max-o mSelectorState:[I

.field private final blacklist mSemAutoHide:Ljava/lang/Runnable;

.field private blacklist mSemCanGoFuther:Z

.field private blacklist mSemCloseChildByBottom:Landroid/view/View;

.field private blacklist mSemCloseChildByTop:Landroid/view/View;

.field private blacklist mSemCloseChildPositionByBottom:I

.field private blacklist mSemCloseChildPositionByTop:I

.field protected blacklist mSemCurrentFocusPosition:I

.field private blacklist mSemCustomMultiChoiceMode:Z

.field private blacklist mSemDistanceFromCloseChildBottom:I

.field private blacklist mSemDistanceFromCloseChildTop:I

.field private blacklist mSemDistanceFromTrackedChildTop:I

.field private blacklist mSemDragBlockBottom:I

.field private blacklist mSemDragBlockImage:Landroid/graphics/drawable/Drawable;

.field private blacklist mSemDragBlockLeft:I

.field private blacklist mSemDragBlockRect:Landroid/graphics/Rect;

.field private blacklist mSemDragBlockRight:I

.field private blacklist mSemDragBlockTop:I

.field private blacklist mSemDragEndX:I

.field private blacklist mSemDragEndY:I

.field private blacklist mSemDragSelectedItemArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mSemDragSelectedItemSize:I

.field private blacklist mSemDragSelectedViewPosition:I

.field private blacklist mSemDragStartX:I

.field private blacklist mSemDragStartY:I

.field private blacklist mSemEnableGoToTop:Z

.field private blacklist mSemFastScroll:Landroid/widget/SemFastScroller;

.field blacklist mSemFastScrollCustomEffectEnabled:Z

.field public blacklist mSemFastScrollEffectState:Z

.field private blacklist mSemFastScrollEventListener:Landroid/widget/AbsListView$SemFastScrollEventListener;

.field protected blacklist mSemForcedDrawEdgeEffect:Z

.field private final blacklist mSemGoToToFadeInRunnable:Ljava/lang/Runnable;

.field private final blacklist mSemGoToToFadeOutRunnable:Ljava/lang/Runnable;

.field private blacklist mSemGoToTopBitmap:Landroid/graphics/Bitmap;

.field private blacklist mSemGoToTopFadeInAnimator:Landroid/animation/ValueAnimator;

.field private blacklist mSemGoToTopFadeOutAnimator:Landroid/animation/ValueAnimator;

.field private blacklist mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

.field private blacklist mSemGoToTopLastState:I

.field private blacklist mSemGoToTopLightImage:Landroid/graphics/drawable/Drawable;

.field private blacklist mSemGoToTopRect:Landroid/graphics/Rect;

.field private blacklist mSemGoToTopState:I

.field private blacklist mSemPressItemListArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mSemScrollAmount:I

.field private blacklist mSemScrollRemains:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mSemSizeChnage:Z

.field private blacklist mSemSmoothScrollByMove:Landroid/widget/AbsListView$SemSmoothScrollByMove;

.field private blacklist mSemTrackedChild:Landroid/view/View;

.field private blacklist mSemTrackedChildPosition:I

.field private blacklist mShowFadeOutGTP:I

.field blacklist mShowGTPAtFirstTime:Z

.field private greylist-max-o mSmoothScrollbarEnabled:Z

.field greylist-max-o mStackFromBottom:Z

.field protected blacklist mSweepListAnimator:Lcom/samsung/android/animation/SemSweepListAnimator;

.field greylist-max-o mTextFilter:Landroid/widget/EditText;

.field private greylist-max-o mTextFilterEnabled:Z

.field private final greylist-max-o mTmpPoint:[F

.field private greylist-max-o mTouchFrame:Landroid/graphics/Rect;

.field greylist-max-p mTouchMode:I

.field private greylist-max-o mTouchModeReset:Ljava/lang/Runnable;

.field private greylist mTouchSlop:I

.field private blacklist mTouchdownX:I

.field private blacklist mTouchdownY:I

.field private greylist-max-o mTranscriptMode:I

.field private greylist-max-o mVelocityScale:F

.field private greylist mVelocityTracker:Landroid/view/VelocityTracker;

.field private greylist-max-o mVerticalScrollFactor:F

.field greylist-max-o mWidthMeasureSpec:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmActivePointerId(Landroid/widget/AbsListView;)I
    .locals 0

    iget p0, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAppWidgetGoToTop(Landroid/widget/AbsListView;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/widget/AbsListView;->mAppWidgetGoToTop:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDecelerateInterpolator(Landroid/widget/AbsListView;)Landroid/view/animation/DecelerateInterpolator;
    .locals 0

    iget-object p0, p0, Landroid/widget/AbsListView;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDefInputConnection(Landroid/widget/AbsListView;)Landroid/view/inputmethod/InputConnection;
    .locals 0

    iget-object p0, p0, Landroid/widget/AbsListView;->mDefInputConnection:Landroid/view/inputmethod/InputConnection;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFastScroll(Landroid/widget/AbsListView;)Landroid/widget/FastScroller;
    .locals 0

    iget-object p0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFirstPressedPoint(Landroid/widget/AbsListView;)I
    .locals 0

    iget p0, p0, Landroid/widget/AbsListView;->mFirstPressedPoint:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFlingRunnable(Landroid/widget/AbsListView;)Landroid/widget/AbsListView$FlingRunnable;
    .locals 0

    iget-object p0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFlingStrictSpan(Landroid/widget/AbsListView;)Landroid/os/StrictMode$Span;
    .locals 0

    iget-object p0, p0, Landroid/widget/AbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmForcedClick(Landroid/widget/AbsListView;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/widget/AbsListView;->mForcedClick:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHasDividerHeight(Landroid/widget/AbsListView;)I
    .locals 0

    iget p0, p0, Landroid/widget/AbsListView;->mHasDividerHeight:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHasDivier(Landroid/widget/AbsListView;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/widget/AbsListView;->mHasDivier:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsCtrlkeyPressed(Landroid/widget/AbsListView;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/widget/AbsListView;->mIsCtrlkeyPressed:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsDetaching(Landroid/widget/AbsListView;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/widget/AbsListView;->mIsDetaching:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsFirstPenClick(Landroid/widget/AbsListView;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/widget/AbsListView;->mIsFirstPenClick:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsSemOnClickEnabled(Landroid/widget/AbsListView;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/widget/AbsListView;->mIsSemOnClickEnabled:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsShiftkeyPressed(Landroid/widget/AbsListView;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/widget/AbsListView;->mIsShiftkeyPressed:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmJumpScrollToTopState(Landroid/widget/AbsListView;)I
    .locals 0

    iget p0, p0, Landroid/widget/AbsListView;->mJumpScrollToTopState:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLongPressMultiSelectionEnabled(Landroid/widget/AbsListView;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/widget/AbsListView;->mLongPressMultiSelectionEnabled:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMaximumVelocity(Landroid/widget/AbsListView;)I
    .locals 0

    iget p0, p0, Landroid/widget/AbsListView;->mMaximumVelocity:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMinimumVelocity(Landroid/widget/AbsListView;)I
    .locals 0

    iget p0, p0, Landroid/widget/AbsListView;->mMinimumVelocity:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPendingCheckForLongPress(Landroid/widget/AbsListView;)Landroid/widget/AbsListView$CheckForLongPress;
    .locals 0

    iget-object p0, p0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmReportChildrenToContentCaptureOnNextUpdate(Landroid/widget/AbsListView;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/widget/AbsListView;->mReportChildrenToContentCaptureOnNextUpdate:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSemCanGoFuther(Landroid/widget/AbsListView;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/widget/AbsListView;->mSemCanGoFuther:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSemCustomMultiChoiceMode(Landroid/widget/AbsListView;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/widget/AbsListView;->mSemCustomMultiChoiceMode:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSemDragSelectedItemArray(Landroid/widget/AbsListView;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Landroid/widget/AbsListView;->mSemDragSelectedItemArray:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSemDragSelectedItemSize(Landroid/widget/AbsListView;)I
    .locals 0

    iget p0, p0, Landroid/widget/AbsListView;->mSemDragSelectedItemSize:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSemFastScroll(Landroid/widget/AbsListView;)Landroid/widget/SemFastScroller;
    .locals 0

    iget-object p0, p0, Landroid/widget/AbsListView;->mSemFastScroll:Landroid/widget/SemFastScroller;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSemGoToTopImage(Landroid/widget/AbsListView;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Landroid/widget/AbsListView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSemScrollRemains(Landroid/widget/AbsListView;)Ljava/util/LinkedList;
    .locals 0

    iget-object p0, p0, Landroid/widget/AbsListView;->mSemScrollRemains:Ljava/util/LinkedList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTmpPoint(Landroid/widget/AbsListView;)[F
    .locals 0

    iget-object p0, p0, Landroid/widget/AbsListView;->mTmpPoint:[F

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmVelocityTracker(Landroid/widget/AbsListView;)Landroid/view/VelocityTracker;
    .locals 0

    iget-object p0, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmVerticalScrollFactor(Landroid/widget/AbsListView;)F
    .locals 0

    iget p0, p0, Landroid/widget/AbsListView;->mVerticalScrollFactor:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmFirstPressedPoint(Landroid/widget/AbsListView;I)V
    .locals 0

    iput p1, p0, Landroid/widget/AbsListView;->mFirstPressedPoint:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmFlingStrictSpan(Landroid/widget/AbsListView;Landroid/os/StrictMode$Span;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/AbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmHasPerformedLongPress(Landroid/widget/AbsListView;Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/AbsListView;->mHasPerformedLongPress:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIndicatorAnimatedSize(Landroid/widget/AbsListView;I)V
    .locals 0

    iput p1, p0, Landroid/widget/AbsListView;->mIndicatorAnimatedSize:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsFirstPenClick(Landroid/widget/AbsListView;Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/AbsListView;->mIsFirstPenClick:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsLongPressMultiSelection(Landroid/widget/AbsListView;Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/AbsListView;->mIsLongPressMultiSelection:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsLongPressTriggeredByKey(Landroid/widget/AbsListView;Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/AbsListView;->mIsLongPressTriggeredByKey:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmJumpScrollToTopState(Landroid/widget/AbsListView;I)V
    .locals 0

    iput p1, p0, Landroid/widget/AbsListView;->mJumpScrollToTopState:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmPendingCheckForLongPress(Landroid/widget/AbsListView;Landroid/widget/AbsListView$CheckForLongPress;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmReportChildrenToContentCaptureOnNextUpdate(Landroid/widget/AbsListView;Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/AbsListView;->mReportChildrenToContentCaptureOnNextUpdate:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSemDragSelectedItemSize(Landroid/widget/AbsListView;I)V
    .locals 0

    iput p1, p0, Landroid/widget/AbsListView;->mSemDragSelectedItemSize:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmShowFadeOutGTP(Landroid/widget/AbsListView;I)V
    .locals 0

    iput p1, p0, Landroid/widget/AbsListView;->mShowFadeOutGTP:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmTouchModeReset(Landroid/widget/AbsListView;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/AbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$maddToPressItemListArray(Landroid/widget/AbsListView;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/AbsListView;->addToPressItemListArray(II)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mclearScrollingCache(Landroid/widget/AbsListView;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/AbsListView;->clearScrollingCache()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mconsumeFlingInStretch(Landroid/widget/AbsListView;I)I
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->consumeFlingInStretch(I)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mcontentFits(Landroid/widget/AbsListView;)Z
    .locals 0

    invoke-direct {p0}, Landroid/widget/AbsListView;->contentFits()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetTextFilterInput(Landroid/widget/AbsListView;)Landroid/widget/EditText;
    .locals 0

    invoke-direct {p0}, Landroid/widget/AbsListView;->getTextFilterInput()Landroid/widget/EditText;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleMessage(Landroid/widget/AbsListView;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->handleMessage(Landroid/os/Message;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$misItemClickable(Landroid/widget/AbsListView;Landroid/view/View;)Z
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->isItemClickable(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mpostOnJumpScrollToFinished(Landroid/widget/AbsListView;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/AbsListView;->postOnJumpScrollToFinished()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mreportActiveViewsToContentCapture(Landroid/widget/AbsListView;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/AbsListView;->reportActiveViewsToContentCapture()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msemIsSupportGotoTop(Landroid/widget/AbsListView;)Z
    .locals 0

    invoke-direct {p0}, Landroid/widget/AbsListView;->semIsSupportGotoTop()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$msemPlayGotoToFadeIn(Landroid/widget/AbsListView;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/AbsListView;->semPlayGotoToFadeIn()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msemPlayGotoToFadeOut(Landroid/widget/AbsListView;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/AbsListView;->semPlayGotoToFadeOut()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msemPlayGotoTopHideImmediatley(Landroid/widget/AbsListView;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/AbsListView;->semPlayGotoTopHideImmediatley()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msemSetFastScrollEnabledUiThread(Landroid/widget/AbsListView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->semSetFastScrollEnabledUiThread(Z)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msemToNotifyMultiSelectionEnded(Landroid/widget/AbsListView;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/AbsListView;->semToNotifyMultiSelectionEnded(II)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetFastScrollerAlwaysVisibleUiThread(Landroid/widget/AbsListView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->setFastScrollerAlwaysVisibleUiThread(Z)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetFastScrollerEnabledUiThread(Landroid/widget/AbsListView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->setFastScrollerEnabledUiThread(Z)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mshouldSkipScroll(Landroid/widget/AbsListView;)Z
    .locals 0

    invoke-direct {p0}, Landroid/widget/AbsListView;->shouldSkipScroll()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetJUMP_SCROLL_TO_TOP_FINISHING()I
    .locals 1

    sget v0, Landroid/widget/AbsListView;->JUMP_SCROLL_TO_TOP_FINISHING:I

    return v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetJUMP_SCROLL_TO_TOP_IDLE()I
    .locals 1

    sget v0, Landroid/widget/AbsListView;->JUMP_SCROLL_TO_TOP_IDLE:I

    return v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetJUMP_SCROLL_TO_TOP_INITIATED()I
    .locals 1

    sget v0, Landroid/widget/AbsListView;->JUMP_SCROLL_TO_TOP_INITIATED:I

    return v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfputsContentCaptureReportingEnabledByDeviceConfig(Z)V
    .locals 0

    sput-boolean p0, Landroid/widget/AbsListView;->sContentCaptureReportingEnabledByDeviceConfig:Z

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput-boolean v0, Landroid/widget/AbsListView;->sContentCaptureReportingEnabledByDeviceConfig:Z

    const/4 v1, 0x0

    sput-object v1, Landroid/widget/AbsListView;->sDeviceConfigChangeListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v1, Landroid/widget/AbsListView;->sLinearInterpolator:Landroid/view/animation/Interpolator;

    sput v0, Landroid/widget/AbsListView;->JUMP_SCROLL_TO_TOP_IDLE:I

    const/4 v0, 0x1

    sput v0, Landroid/widget/AbsListView;->JUMP_SCROLL_TO_TOP_INITIATED:I

    const/4 v0, 0x2

    sput v0, Landroid/widget/AbsListView;->JUMP_SCROLL_TO_TOP_FINISHING:I

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .locals 8

    invoke-direct {p0, p1}, Landroid/widget/AdapterView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    iput v0, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mDeferNotifyDataSetChanged:Z

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mDrawSelectorOnTop:Z

    const/4 v1, -0x1

    iput v1, p0, Landroid/widget/AbsListView;->mSelectorPosition:I

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    new-instance v2, Landroid/widget/AbsListView$RecycleBin;

    invoke-direct {v2, p0}, Landroid/widget/AbsListView$RecycleBin;-><init>(Landroid/widget/AbsListView;)V

    iput-object v2, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    iput v0, p0, Landroid/widget/AbsListView;->mSelectionLeftPadding:I

    iput v0, p0, Landroid/widget/AbsListView;->mSelectionTopPadding:I

    iput v0, p0, Landroid/widget/AbsListView;->mSelectionRightPadding:I

    iput v0, p0, Landroid/widget/AbsListView;->mSelectionBottomPadding:I

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iput v0, p0, Landroid/widget/AbsListView;->mWidthMeasureSpec:I

    iput v1, p0, Landroid/widget/AbsListView;->mTouchMode:I

    iput v0, p0, Landroid/widget/AbsListView;->mSelectedTop:I

    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/widget/AbsListView;->mSmoothScrollbarEnabled:Z

    iput v1, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    const/4 v3, 0x0

    iput-object v3, p0, Landroid/widget/AbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    iput v1, p0, Landroid/widget/AbsListView;->mLastTouchMode:I

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mScrollProfilingStarted:Z

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mFlingProfilingStarted:Z

    iput-object v3, p0, Landroid/widget/AbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    iput-object v3, p0, Landroid/widget/AbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    iput v0, p0, Landroid/widget/AbsListView;->mLastScrollState:I

    iput-boolean v2, p0, Landroid/widget/AbsListView;->mReportChildrenToContentCaptureOnNextUpdate:Z

    const/high16 v4, 0x3f800000    # 1.0f

    iput v4, p0, Landroid/widget/AbsListView;->mVelocityScale:F

    new-array v4, v2, [Z

    iput-object v4, p0, Landroid/widget/AbsListView;->mIsScrap:[Z

    const/4 v4, 0x2

    new-array v5, v4, [I

    iput-object v5, p0, Landroid/widget/AbsListView;->mScrollOffset:[I

    new-array v5, v4, [I

    iput-object v5, p0, Landroid/widget/AbsListView;->mScrollConsumed:[I

    new-array v4, v4, [F

    iput-object v4, p0, Landroid/widget/AbsListView;->mTmpPoint:[F

    iput v0, p0, Landroid/widget/AbsListView;->mNestedYOffset:I

    iput v1, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    iput v0, p0, Landroid/widget/AbsListView;->mDirection:I

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mHasDivier:Z

    iput v0, p0, Landroid/widget/AbsListView;->mHasDividerHeight:I

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mSemFastScrollEffectState:Z

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mSemEnableGoToTop:Z

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mSemSizeChnage:Z

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mSemCanGoFuther:Z

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Landroid/widget/AbsListView;->mSemGoToTopRect:Landroid/graphics/Rect;

    new-instance v4, Landroid/graphics/Outline;

    invoke-direct {v4}, Landroid/graphics/Outline;-><init>()V

    iput-object v4, p0, Landroid/widget/AbsListView;->mOutline:Landroid/graphics/Outline;

    iput v0, p0, Landroid/widget/AbsListView;->mSemGoToTopState:I

    iput v0, p0, Landroid/widget/AbsListView;->mSemGoToTopLastState:I

    iput v0, p0, Landroid/widget/AbsListView;->mShowFadeOutGTP:I

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mGoToToping:Z

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mShowGTPAtFirstTime:Z

    const/16 v4, 0x9c4

    iput v4, p0, Landroid/widget/AbsListView;->GO_TO_TOP_HIDE:I

    new-instance v4, Landroid/widget/AbsListView$5;

    invoke-direct {v4, p0}, Landroid/widget/AbsListView$5;-><init>(Landroid/widget/AbsListView;)V

    iput-object v4, p0, Landroid/widget/AbsListView;->mSemGoToToFadeOutRunnable:Ljava/lang/Runnable;

    new-instance v4, Landroid/widget/AbsListView$6;

    invoke-direct {v4, p0}, Landroid/widget/AbsListView$6;-><init>(Landroid/widget/AbsListView;)V

    iput-object v4, p0, Landroid/widget/AbsListView;->mSemGoToToFadeInRunnable:Ljava/lang/Runnable;

    new-instance v4, Landroid/widget/AbsListView$7;

    invoke-direct {v4, p0}, Landroid/widget/AbsListView$7;-><init>(Landroid/widget/AbsListView;)V

    iput-object v4, p0, Landroid/widget/AbsListView;->mSemAutoHide:Ljava/lang/Runnable;

    iput v0, p0, Landroid/widget/AbsListView;->mHoverTopAreaHeight:I

    iput v0, p0, Landroid/widget/AbsListView;->mHoverBottomAreaHeight:I

    const-wide/16 v4, 0x0

    iput-wide v4, p0, Landroid/widget/AbsListView;->mHoverRecognitionStartTime:J

    const-wide/16 v6, 0x12c

    iput-wide v6, p0, Landroid/widget/AbsListView;->mHoverScrollTimeInterval:J

    const-wide/16 v6, 0x1f4

    iput-wide v6, p0, Landroid/widget/AbsListView;->mPenDragScrollTimeInterval:J

    iput-wide v4, p0, Landroid/widget/AbsListView;->mHoverScrollStartTime:J

    iput v1, p0, Landroid/widget/AbsListView;->mHoverScrollDirection:I

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mIsHoverOverscrolled:Z

    iput-boolean v2, p0, Landroid/widget/AbsListView;->mHoverScrollEnable:Z

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mHoverScrollStateChanged:Z

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mIsSendHoverScrollState:Z

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mNeedsHoverScroll:Z

    iput v0, p0, Landroid/widget/AbsListView;->mHoverScrollStateForListener:I

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mIsEnabledPaddingInHoverScroll:Z

    iput v0, p0, Landroid/widget/AbsListView;->mExtraPaddingInTopHoverArea:I

    iput v0, p0, Landroid/widget/AbsListView;->mExtraPaddingInBottomHoverArea:I

    iput v1, p0, Landroid/widget/AbsListView;->mHoverPosition:I

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mHoveredOnEllipsizedText:Z

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mIsFirstPenClick:Z

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mIsMovedbeforeUP:Z

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mIsCtrlkeyPressed:Z

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mIsShiftkeyPressed:Z

    iput-boolean v2, p0, Landroid/widget/AbsListView;->mIsfirstMoveEvent:Z

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mIsPenHovered:Z

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mIsPenPressed:Z

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mIsTextSelectionStarted:Z

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mIsNeedPenSelection:Z

    iput v0, p0, Landroid/widget/AbsListView;->mSemDragSelectedItemSize:I

    iput v1, p0, Landroid/widget/AbsListView;->mSemDragSelectedViewPosition:I

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mIsPenSelectPointerSetted:Z

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mIsNeedPenSelectIconSet:Z

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mOldTextViewHoverState:Z

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mNewTextViewHoverState:Z

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mPreviousTextViewScroll:Z

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Landroid/widget/AbsListView;->mSemDragBlockRect:Landroid/graphics/Rect;

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mIsDragBlockEnabled:Z

    iput v0, p0, Landroid/widget/AbsListView;->mSemDragStartX:I

    iput v0, p0, Landroid/widget/AbsListView;->mSemDragStartY:I

    iput v0, p0, Landroid/widget/AbsListView;->mSemDragEndX:I

    iput v0, p0, Landroid/widget/AbsListView;->mSemDragEndY:I

    iput v0, p0, Landroid/widget/AbsListView;->mSemDragBlockLeft:I

    iput v0, p0, Landroid/widget/AbsListView;->mSemDragBlockTop:I

    iput v0, p0, Landroid/widget/AbsListView;->mSemDragBlockRight:I

    iput v0, p0, Landroid/widget/AbsListView;->mSemDragBlockBottom:I

    iput-object v3, p0, Landroid/widget/AbsListView;->mSemTrackedChild:Landroid/view/View;

    iput v1, p0, Landroid/widget/AbsListView;->mSemTrackedChildPosition:I

    iput v0, p0, Landroid/widget/AbsListView;->mSemDistanceFromTrackedChildTop:I

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mIsCloseChildSetted:Z

    iput v1, p0, Landroid/widget/AbsListView;->mOldHoverScrollDirection:I

    iput-object v3, p0, Landroid/widget/AbsListView;->mSemCloseChildByTop:Landroid/view/View;

    iput v1, p0, Landroid/widget/AbsListView;->mSemCloseChildPositionByTop:I

    iput v0, p0, Landroid/widget/AbsListView;->mSemDistanceFromCloseChildTop:I

    iput-object v3, p0, Landroid/widget/AbsListView;->mSemCloseChildByBottom:Landroid/view/View;

    iput v1, p0, Landroid/widget/AbsListView;->mSemCloseChildPositionByBottom:I

    iput v0, p0, Landroid/widget/AbsListView;->mSemDistanceFromCloseChildBottom:I

    iput-boolean v2, p0, Landroid/widget/AbsListView;->mIsSemOnClickEnabled:Z

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mIsLongPressMultiSelection:Z

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mLongPressMultiSelectionEnabled:Z

    iput-boolean v2, p0, Landroid/widget/AbsListView;->mIsFirstMultiSelectionMove:Z

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mIsCtrlMultiSelection:Z

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mIsHoverScrolled:Z

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mIsMouseHoverScroll:Z

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mIsHoveredByMouse:Z

    iput v0, p0, Landroid/widget/AbsListView;->mIsMouseHoverScrollX:I

    iput v0, p0, Landroid/widget/AbsListView;->mIsMouseHoverScrollY:I

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mSemCustomMultiChoiceMode:Z

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mIsMultiFocusEnabled:Z

    iput v1, p0, Landroid/widget/AbsListView;->mFirstPressedPoint:I

    iput v0, p0, Landroid/widget/AbsListView;->mOldAdapterItemCount:I

    iput v0, p0, Landroid/widget/AbsListView;->mOldKeyCode:I

    iput v0, p0, Landroid/widget/AbsListView;->mCurrentKeyCode:I

    iput v1, p0, Landroid/widget/AbsListView;->mSemCurrentFocusPosition:I

    const/16 v1, 0x64

    iput v1, p0, Landroid/widget/AbsListView;->SWITCH_CONTROL_SCROLL_MIN_DURATION:I

    const/16 v1, 0x7f0

    iput v1, p0, Landroid/widget/AbsListView;->SWITCH_CONTROL_SCROLL_MAX_DURATION:I

    const/16 v1, 0x8a

    iput v1, p0, Landroid/widget/AbsListView;->mAutoscrollDurationGap:I

    const/16 v1, 0x2710

    iput v1, p0, Landroid/widget/AbsListView;->ON_ABSORB_VELOCITY:I

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mDVFSLockAcquired:Z

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mSemForcedDrawEdgeEffect:Z

    iput-boolean v2, p0, Landroid/widget/AbsListView;->mHoveringEnabled:Z

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mDoubleFlingEnabled:Z

    iput-boolean v2, p0, Landroid/widget/AbsListView;->mEnableVibrationAtLongPress:Z

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mIsLongPressTriggeredByKey:Z

    iput-object v3, p0, Landroid/widget/AbsListView;->mSemSmoothScrollByMove:Landroid/widget/AbsListView$SemSmoothScrollByMove;

    iput-object v3, p0, Landroid/widget/AbsListView;->mSemScrollRemains:Ljava/util/LinkedList;

    const/16 v1, 0x1f4

    iput v1, p0, Landroid/widget/AbsListView;->mSemScrollAmount:I

    sget v1, Landroid/widget/AbsListView;->JUMP_SCROLL_TO_TOP_IDLE:I

    iput v1, p0, Landroid/widget/AbsListView;->mJumpScrollToTopState:I

    iput v0, p0, Landroid/widget/AbsListView;->mDragScrollWorkingZonePx:I

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mIsDragScrolled:Z

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mForcedClick:Z

    iput v0, p0, Landroid/widget/AbsListView;->mPointerCount:I

    iput v0, p0, Landroid/widget/AbsListView;->mAppWidgetGoToTopOffset:I

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mAppWidgetGoToTop:Z

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mAppWidgetSnapScroll:Z

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mIsLayoutSpecificDone:Z

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mNeedLayoutSpecificDone:Z

    iput-boolean v2, p0, Landroid/widget/AbsListView;->mAppWidgetEnabled:Z

    const-string v1, ""

    iput-object v1, p0, Landroid/widget/AbsListView;->mAppWidgetGetCurrentPosition:Ljava/lang/String;

    iput-object v1, p0, Landroid/widget/AbsListView;->mAppWidgetGetFirstPosition:Ljava/lang/String;

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mAppWidgetFastScroll:Z

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mAppWidgetIndicator:Z

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mAppWidgetInnerFocus:Z

    iput v2, p0, Landroid/widget/AbsListView;->mIndicatorWhere:I

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mAppWidgetImmersiveEnalbed:Z

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mAllowDeferNotifyAfterRemoteViewsAdapterSet:Z

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v1, p0, Landroid/widget/AbsListView;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    iput v0, p0, Landroid/widget/AbsListView;->mIndicatorItemCnt:I

    iput v0, p0, Landroid/widget/AbsListView;->mFocusedPos:I

    iput v0, p0, Landroid/widget/AbsListView;->mNewFocusedPos:I

    iput v0, p0, Landroid/widget/AbsListView;->mIndicatorAnimatedSize:I

    iput v0, p0, Landroid/widget/AbsListView;->mIndicatorRectSize:I

    iput v0, p0, Landroid/widget/AbsListView;->mIndicatorMarginHorizontal:I

    iput v0, p0, Landroid/widget/AbsListView;->mIndicatorBottomPadding:I

    iput v0, p0, Landroid/widget/AbsListView;->mIndicatorFocusedSize:I

    iput v0, p0, Landroid/widget/AbsListView;->mIndicatorDefaultSize:I

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mDeferSetSelectionFromTop:Z

    iput v0, p0, Landroid/widget/AbsListView;->mDeferSetSelectionPosition:I

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/widget/AbsListView;->mClickableViewStates:Ljava/util/Map;

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mIsForceSelection:Z

    invoke-static {}, Landroid/widget/AbsListView;->setupDeviceConfigProperties()V

    new-instance v0, Landroid/widget/EdgeEffect;

    invoke-direct {v0, p1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    new-instance v0, Landroid/widget/EdgeEffect;

    invoke-direct {v0, p1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v0, p0, v2}, Landroid/widget/EdgeEffect;->semSetHostView(Landroid/view/View;Z)V

    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v0, p0, v2}, Landroid/widget/EdgeEffect;->semSetHostView(Landroid/view/View;Z)V

    invoke-direct {p0}, Landroid/widget/AbsListView;->initAbsListView()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsListView;->mOwnerThread:Ljava/lang/Thread;

    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->setVerticalScrollBarEnabled(Z)V

    sget-object v0, Lcom/android/internal/R$styleable;->View:[I

    invoke-virtual {p1, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->initializeScrollbarsInternal(Landroid/content/res/TypedArray;)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x101006a

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/AbsListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/AbsListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 16

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    invoke-direct/range {p0 .. p4}, Landroid/widget/AdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v10, 0x0

    iput v10, v7, Landroid/widget/AbsListView;->mChoiceMode:I

    iput v10, v7, Landroid/widget/AbsListView;->mLayoutMode:I

    iput-boolean v10, v7, Landroid/widget/AbsListView;->mDeferNotifyDataSetChanged:Z

    iput-boolean v10, v7, Landroid/widget/AbsListView;->mDrawSelectorOnTop:Z

    const/4 v0, -0x1

    iput v0, v7, Landroid/widget/AbsListView;->mSelectorPosition:I

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v7, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    new-instance v1, Landroid/widget/AbsListView$RecycleBin;

    invoke-direct {v1, v7}, Landroid/widget/AbsListView$RecycleBin;-><init>(Landroid/widget/AbsListView;)V

    iput-object v1, v7, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    iput v10, v7, Landroid/widget/AbsListView;->mSelectionLeftPadding:I

    iput v10, v7, Landroid/widget/AbsListView;->mSelectionTopPadding:I

    iput v10, v7, Landroid/widget/AbsListView;->mSelectionRightPadding:I

    iput v10, v7, Landroid/widget/AbsListView;->mSelectionBottomPadding:I

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v7, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iput v10, v7, Landroid/widget/AbsListView;->mWidthMeasureSpec:I

    iput v0, v7, Landroid/widget/AbsListView;->mTouchMode:I

    iput v10, v7, Landroid/widget/AbsListView;->mSelectedTop:I

    const/4 v11, 0x1

    iput-boolean v11, v7, Landroid/widget/AbsListView;->mSmoothScrollbarEnabled:Z

    iput v0, v7, Landroid/widget/AbsListView;->mResurrectToPosition:I

    const/4 v1, 0x0

    iput-object v1, v7, Landroid/widget/AbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    iput v0, v7, Landroid/widget/AbsListView;->mLastTouchMode:I

    iput-boolean v10, v7, Landroid/widget/AbsListView;->mScrollProfilingStarted:Z

    iput-boolean v10, v7, Landroid/widget/AbsListView;->mFlingProfilingStarted:Z

    iput-object v1, v7, Landroid/widget/AbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    iput-object v1, v7, Landroid/widget/AbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    iput v10, v7, Landroid/widget/AbsListView;->mLastScrollState:I

    iput-boolean v11, v7, Landroid/widget/AbsListView;->mReportChildrenToContentCaptureOnNextUpdate:Z

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v7, Landroid/widget/AbsListView;->mVelocityScale:F

    new-array v2, v11, [Z

    iput-object v2, v7, Landroid/widget/AbsListView;->mIsScrap:[Z

    const/4 v12, 0x2

    new-array v2, v12, [I

    iput-object v2, v7, Landroid/widget/AbsListView;->mScrollOffset:[I

    new-array v2, v12, [I

    iput-object v2, v7, Landroid/widget/AbsListView;->mScrollConsumed:[I

    new-array v2, v12, [F

    iput-object v2, v7, Landroid/widget/AbsListView;->mTmpPoint:[F

    iput v10, v7, Landroid/widget/AbsListView;->mNestedYOffset:I

    iput v0, v7, Landroid/widget/AbsListView;->mActivePointerId:I

    iput v10, v7, Landroid/widget/AbsListView;->mDirection:I

    iput-boolean v10, v7, Landroid/widget/AbsListView;->mHasDivier:Z

    iput v10, v7, Landroid/widget/AbsListView;->mHasDividerHeight:I

    iput-boolean v10, v7, Landroid/widget/AbsListView;->mSemFastScrollEffectState:Z

    iput-boolean v10, v7, Landroid/widget/AbsListView;->mSemEnableGoToTop:Z

    iput-boolean v10, v7, Landroid/widget/AbsListView;->mSemSizeChnage:Z

    iput-boolean v10, v7, Landroid/widget/AbsListView;->mSemCanGoFuther:Z

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, v7, Landroid/widget/AbsListView;->mSemGoToTopRect:Landroid/graphics/Rect;

    new-instance v2, Landroid/graphics/Outline;

    invoke-direct {v2}, Landroid/graphics/Outline;-><init>()V

    iput-object v2, v7, Landroid/widget/AbsListView;->mOutline:Landroid/graphics/Outline;

    iput v10, v7, Landroid/widget/AbsListView;->mSemGoToTopState:I

    iput v10, v7, Landroid/widget/AbsListView;->mSemGoToTopLastState:I

    iput v10, v7, Landroid/widget/AbsListView;->mShowFadeOutGTP:I

    iput-boolean v10, v7, Landroid/widget/AbsListView;->mGoToToping:Z

    iput-boolean v10, v7, Landroid/widget/AbsListView;->mShowGTPAtFirstTime:Z

    const/16 v2, 0x9c4

    iput v2, v7, Landroid/widget/AbsListView;->GO_TO_TOP_HIDE:I

    new-instance v2, Landroid/widget/AbsListView$5;

    invoke-direct {v2, v7}, Landroid/widget/AbsListView$5;-><init>(Landroid/widget/AbsListView;)V

    iput-object v2, v7, Landroid/widget/AbsListView;->mSemGoToToFadeOutRunnable:Ljava/lang/Runnable;

    new-instance v2, Landroid/widget/AbsListView$6;

    invoke-direct {v2, v7}, Landroid/widget/AbsListView$6;-><init>(Landroid/widget/AbsListView;)V

    iput-object v2, v7, Landroid/widget/AbsListView;->mSemGoToToFadeInRunnable:Ljava/lang/Runnable;

    new-instance v2, Landroid/widget/AbsListView$7;

    invoke-direct {v2, v7}, Landroid/widget/AbsListView$7;-><init>(Landroid/widget/AbsListView;)V

    iput-object v2, v7, Landroid/widget/AbsListView;->mSemAutoHide:Ljava/lang/Runnable;

    iput v10, v7, Landroid/widget/AbsListView;->mHoverTopAreaHeight:I

    iput v10, v7, Landroid/widget/AbsListView;->mHoverBottomAreaHeight:I

    const-wide/16 v2, 0x0

    iput-wide v2, v7, Landroid/widget/AbsListView;->mHoverRecognitionStartTime:J

    const-wide/16 v4, 0x12c

    iput-wide v4, v7, Landroid/widget/AbsListView;->mHoverScrollTimeInterval:J

    const-wide/16 v4, 0x1f4

    iput-wide v4, v7, Landroid/widget/AbsListView;->mPenDragScrollTimeInterval:J

    iput-wide v2, v7, Landroid/widget/AbsListView;->mHoverScrollStartTime:J

    iput v0, v7, Landroid/widget/AbsListView;->mHoverScrollDirection:I

    iput-boolean v10, v7, Landroid/widget/AbsListView;->mIsHoverOverscrolled:Z

    iput-boolean v11, v7, Landroid/widget/AbsListView;->mHoverScrollEnable:Z

    iput-boolean v10, v7, Landroid/widget/AbsListView;->mHoverScrollStateChanged:Z

    iput-boolean v10, v7, Landroid/widget/AbsListView;->mIsSendHoverScrollState:Z

    iput-boolean v10, v7, Landroid/widget/AbsListView;->mNeedsHoverScroll:Z

    iput v10, v7, Landroid/widget/AbsListView;->mHoverScrollStateForListener:I

    iput-boolean v10, v7, Landroid/widget/AbsListView;->mIsEnabledPaddingInHoverScroll:Z

    iput v10, v7, Landroid/widget/AbsListView;->mExtraPaddingInTopHoverArea:I

    iput v10, v7, Landroid/widget/AbsListView;->mExtraPaddingInBottomHoverArea:I

    iput v0, v7, Landroid/widget/AbsListView;->mHoverPosition:I

    iput-boolean v10, v7, Landroid/widget/AbsListView;->mHoveredOnEllipsizedText:Z

    iput-boolean v10, v7, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    iput-boolean v10, v7, Landroid/widget/AbsListView;->mIsFirstPenClick:Z

    iput-boolean v10, v7, Landroid/widget/AbsListView;->mIsMovedbeforeUP:Z

    iput-boolean v10, v7, Landroid/widget/AbsListView;->mIsCtrlkeyPressed:Z

    iput-boolean v10, v7, Landroid/widget/AbsListView;->mIsShiftkeyPressed:Z

    iput-boolean v11, v7, Landroid/widget/AbsListView;->mIsfirstMoveEvent:Z

    iput-boolean v10, v7, Landroid/widget/AbsListView;->mIsPenHovered:Z

    iput-boolean v10, v7, Landroid/widget/AbsListView;->mIsPenPressed:Z

    iput-boolean v10, v7, Landroid/widget/AbsListView;->mIsTextSelectionStarted:Z

    iput-boolean v10, v7, Landroid/widget/AbsListView;->mIsNeedPenSelection:Z

    iput v10, v7, Landroid/widget/AbsListView;->mSemDragSelectedItemSize:I

    iput v0, v7, Landroid/widget/AbsListView;->mSemDragSelectedViewPosition:I

    iput-boolean v10, v7, Landroid/widget/AbsListView;->mIsPenSelectPointerSetted:Z

    iput-boolean v10, v7, Landroid/widget/AbsListView;->mIsNeedPenSelectIconSet:Z

    iput-boolean v10, v7, Landroid/widget/AbsListView;->mOldTextViewHoverState:Z

    iput-boolean v10, v7, Landroid/widget/AbsListView;->mNewTextViewHoverState:Z

    iput-boolean v10, v7, Landroid/widget/AbsListView;->mPreviousTextViewScroll:Z

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, v7, Landroid/widget/AbsListView;->mSemDragBlockRect:Landroid/graphics/Rect;

    iput-boolean v10, v7, Landroid/widget/AbsListView;->mIsDragBlockEnabled:Z

    iput v10, v7, Landroid/widget/AbsListView;->mSemDragStartX:I

    iput v10, v7, Landroid/widget/AbsListView;->mSemDragStartY:I

    iput v10, v7, Landroid/widget/AbsListView;->mSemDragEndX:I

    iput v10, v7, Landroid/widget/AbsListView;->mSemDragEndY:I

    iput v10, v7, Landroid/widget/AbsListView;->mSemDragBlockLeft:I

    iput v10, v7, Landroid/widget/AbsListView;->mSemDragBlockTop:I

    iput v10, v7, Landroid/widget/AbsListView;->mSemDragBlockRight:I

    iput v10, v7, Landroid/widget/AbsListView;->mSemDragBlockBottom:I

    iput-object v1, v7, Landroid/widget/AbsListView;->mSemTrackedChild:Landroid/view/View;

    iput v0, v7, Landroid/widget/AbsListView;->mSemTrackedChildPosition:I

    iput v10, v7, Landroid/widget/AbsListView;->mSemDistanceFromTrackedChildTop:I

    iput-boolean v10, v7, Landroid/widget/AbsListView;->mIsCloseChildSetted:Z

    iput v0, v7, Landroid/widget/AbsListView;->mOldHoverScrollDirection:I

    iput-object v1, v7, Landroid/widget/AbsListView;->mSemCloseChildByTop:Landroid/view/View;

    iput v0, v7, Landroid/widget/AbsListView;->mSemCloseChildPositionByTop:I

    iput v10, v7, Landroid/widget/AbsListView;->mSemDistanceFromCloseChildTop:I

    iput-object v1, v7, Landroid/widget/AbsListView;->mSemCloseChildByBottom:Landroid/view/View;

    iput v0, v7, Landroid/widget/AbsListView;->mSemCloseChildPositionByBottom:I

    iput v10, v7, Landroid/widget/AbsListView;->mSemDistanceFromCloseChildBottom:I

    iput-boolean v11, v7, Landroid/widget/AbsListView;->mIsSemOnClickEnabled:Z

    iput-boolean v10, v7, Landroid/widget/AbsListView;->mIsLongPressMultiSelection:Z

    iput-boolean v10, v7, Landroid/widget/AbsListView;->mLongPressMultiSelectionEnabled:Z

    iput-boolean v11, v7, Landroid/widget/AbsListView;->mIsFirstMultiSelectionMove:Z

    iput-boolean v10, v7, Landroid/widget/AbsListView;->mIsCtrlMultiSelection:Z

    iput-boolean v10, v7, Landroid/widget/AbsListView;->mIsHoverScrolled:Z

    iput-boolean v10, v7, Landroid/widget/AbsListView;->mIsMouseHoverScroll:Z

    iput-boolean v10, v7, Landroid/widget/AbsListView;->mIsHoveredByMouse:Z

    iput v10, v7, Landroid/widget/AbsListView;->mIsMouseHoverScrollX:I

    iput v10, v7, Landroid/widget/AbsListView;->mIsMouseHoverScrollY:I

    iput-boolean v10, v7, Landroid/widget/AbsListView;->mSemCustomMultiChoiceMode:Z

    iput-boolean v10, v7, Landroid/widget/AbsListView;->mIsMultiFocusEnabled:Z

    iput v0, v7, Landroid/widget/AbsListView;->mFirstPressedPoint:I

    iput v10, v7, Landroid/widget/AbsListView;->mOldAdapterItemCount:I

    iput v10, v7, Landroid/widget/AbsListView;->mOldKeyCode:I

    iput v10, v7, Landroid/widget/AbsListView;->mCurrentKeyCode:I

    iput v0, v7, Landroid/widget/AbsListView;->mSemCurrentFocusPosition:I

    const/16 v0, 0x64

    iput v0, v7, Landroid/widget/AbsListView;->SWITCH_CONTROL_SCROLL_MIN_DURATION:I

    const/16 v0, 0x7f0

    iput v0, v7, Landroid/widget/AbsListView;->SWITCH_CONTROL_SCROLL_MAX_DURATION:I

    const/16 v0, 0x8a

    iput v0, v7, Landroid/widget/AbsListView;->mAutoscrollDurationGap:I

    const/16 v0, 0x2710

    iput v0, v7, Landroid/widget/AbsListView;->ON_ABSORB_VELOCITY:I

    iput-boolean v10, v7, Landroid/widget/AbsListView;->mDVFSLockAcquired:Z

    iput-boolean v10, v7, Landroid/widget/AbsListView;->mSemForcedDrawEdgeEffect:Z

    iput-boolean v11, v7, Landroid/widget/AbsListView;->mHoveringEnabled:Z

    iput-boolean v10, v7, Landroid/widget/AbsListView;->mDoubleFlingEnabled:Z

    iput-boolean v11, v7, Landroid/widget/AbsListView;->mEnableVibrationAtLongPress:Z

    iput-boolean v10, v7, Landroid/widget/AbsListView;->mIsLongPressTriggeredByKey:Z

    iput-object v1, v7, Landroid/widget/AbsListView;->mSemSmoothScrollByMove:Landroid/widget/AbsListView$SemSmoothScrollByMove;

    iput-object v1, v7, Landroid/widget/AbsListView;->mSemScrollRemains:Ljava/util/LinkedList;

    const/16 v0, 0x1f4

    iput v0, v7, Landroid/widget/AbsListView;->mSemScrollAmount:I

    sget v0, Landroid/widget/AbsListView;->JUMP_SCROLL_TO_TOP_IDLE:I

    iput v0, v7, Landroid/widget/AbsListView;->mJumpScrollToTopState:I

    iput v10, v7, Landroid/widget/AbsListView;->mDragScrollWorkingZonePx:I

    iput-boolean v10, v7, Landroid/widget/AbsListView;->mIsDragScrolled:Z

    iput-boolean v10, v7, Landroid/widget/AbsListView;->mForcedClick:Z

    iput v10, v7, Landroid/widget/AbsListView;->mPointerCount:I

    iput v10, v7, Landroid/widget/AbsListView;->mAppWidgetGoToTopOffset:I

    iput-boolean v10, v7, Landroid/widget/AbsListView;->mAppWidgetGoToTop:Z

    iput-boolean v10, v7, Landroid/widget/AbsListView;->mAppWidgetSnapScroll:Z

    iput-boolean v10, v7, Landroid/widget/AbsListView;->mIsLayoutSpecificDone:Z

    iput-boolean v10, v7, Landroid/widget/AbsListView;->mNeedLayoutSpecificDone:Z

    iput-boolean v11, v7, Landroid/widget/AbsListView;->mAppWidgetEnabled:Z

    const-string v0, ""

    iput-object v0, v7, Landroid/widget/AbsListView;->mAppWidgetGetCurrentPosition:Ljava/lang/String;

    iput-object v0, v7, Landroid/widget/AbsListView;->mAppWidgetGetFirstPosition:Ljava/lang/String;

    iput-boolean v10, v7, Landroid/widget/AbsListView;->mAppWidgetFastScroll:Z

    iput-boolean v10, v7, Landroid/widget/AbsListView;->mAppWidgetIndicator:Z

    iput-boolean v10, v7, Landroid/widget/AbsListView;->mAppWidgetInnerFocus:Z

    iput v11, v7, Landroid/widget/AbsListView;->mIndicatorWhere:I

    iput-boolean v10, v7, Landroid/widget/AbsListView;->mAppWidgetImmersiveEnalbed:Z

    iput-boolean v10, v7, Landroid/widget/AbsListView;->mAllowDeferNotifyAfterRemoteViewsAdapterSet:Z

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, v7, Landroid/widget/AbsListView;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    iput v10, v7, Landroid/widget/AbsListView;->mIndicatorItemCnt:I

    iput v10, v7, Landroid/widget/AbsListView;->mFocusedPos:I

    iput v10, v7, Landroid/widget/AbsListView;->mNewFocusedPos:I

    iput v10, v7, Landroid/widget/AbsListView;->mIndicatorAnimatedSize:I

    iput v10, v7, Landroid/widget/AbsListView;->mIndicatorRectSize:I

    iput v10, v7, Landroid/widget/AbsListView;->mIndicatorMarginHorizontal:I

    iput v10, v7, Landroid/widget/AbsListView;->mIndicatorBottomPadding:I

    iput v10, v7, Landroid/widget/AbsListView;->mIndicatorFocusedSize:I

    iput v10, v7, Landroid/widget/AbsListView;->mIndicatorDefaultSize:I

    iput-boolean v10, v7, Landroid/widget/AbsListView;->mDeferSetSelectionFromTop:Z

    iput v10, v7, Landroid/widget/AbsListView;->mDeferSetSelectionPosition:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v7, Landroid/widget/AbsListView;->mClickableViewStates:Ljava/util/Map;

    iput-boolean v10, v7, Landroid/widget/AbsListView;->mIsForceSelection:Z

    invoke-static {}, Landroid/widget/AbsListView;->setupDeviceConfigProperties()V

    new-instance v0, Landroid/widget/EdgeEffect;

    invoke-direct {v0, v8, v9}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, v7, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    new-instance v0, Landroid/widget/EdgeEffect;

    invoke-direct {v0, v8, v9}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, v7, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    iget-object v0, v7, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v0, v7, v11}, Landroid/widget/EdgeEffect;->semSetHostView(Landroid/view/View;Z)V

    iget-object v0, v7, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v0, v7, v11}, Landroid/widget/EdgeEffect;->semSetHostView(Landroid/view/View;Z)V

    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->initAbsListView()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, v7, Landroid/widget/AbsListView;->mOwnerThread:Ljava/lang/Thread;

    sget-object v0, Lcom/android/internal/R$styleable;->AbsListView:[I

    move/from16 v13, p3

    move/from16 v14, p4

    invoke-virtual {v8, v9, v0, v13, v14}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v15

    sget-object v2, Lcom/android/internal/R$styleable;->AbsListView:[I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    move-object v4, v15

    move/from16 v5, p3

    move/from16 v6, p4

    invoke-virtual/range {v0 .. v6}, Landroid/widget/AbsListView;->saveAttributeDataForStyleable(Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    invoke-virtual {v15, v10}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v7, v0}, Landroid/widget/AbsListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    invoke-virtual {v15, v11, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, v7, Landroid/widget/AbsListView;->mDrawSelectorOnTop:Z

    invoke-virtual {v15, v12, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {v7, v1}, Landroid/widget/AbsListView;->setStackFromBottom(Z)V

    const/4 v1, 0x3

    invoke-virtual {v15, v1, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {v7, v1}, Landroid/widget/AbsListView;->setScrollingCacheEnabled(Z)V

    const/4 v1, 0x4

    invoke-virtual {v15, v1, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {v7, v1}, Landroid/widget/AbsListView;->setTextFilterEnabled(Z)V

    const/4 v1, 0x5

    invoke-virtual {v15, v1, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {v7, v1}, Landroid/widget/AbsListView;->setTranscriptMode(I)V

    const/4 v1, 0x6

    invoke-virtual {v15, v1, v10}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    invoke-virtual {v7, v2}, Landroid/widget/AbsListView;->setCacheColorHint(I)V

    const/16 v2, 0x9

    invoke-virtual {v15, v2, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {v7, v2}, Landroid/widget/AbsListView;->setSmoothScrollbarEnabled(Z)V

    const/4 v2, 0x7

    invoke-virtual {v15, v2, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    invoke-virtual {v7, v2}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    const/16 v2, 0x8

    invoke-virtual {v15, v2, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {v7, v2}, Landroid/widget/AbsListView;->setFastScrollEnabled(Z)V

    const/16 v2, 0xb

    invoke-virtual {v15, v2, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-virtual {v7, v2}, Landroid/widget/AbsListView;->setFastScrollStyle(I)V

    const/16 v2, 0xa

    invoke-virtual {v15, v2, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {v7, v2}, Landroid/widget/AbsListView;->setFastScrollAlwaysVisible(Z)V

    invoke-virtual {v15}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->uiMode:I

    if-ne v2, v1, :cond_1

    invoke-virtual {v7, v10}, Landroid/widget/AbsListView;->setRevealOnFocusHint(Z)V

    :cond_1
    return-void
.end method

.method private greylist-max-o acceptFilter()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mTextFilterEnabled:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/Filterable;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Landroid/widget/Filterable;

    invoke-interface {v0}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic blacklist access$000(Landroid/widget/AbsListView;)I
    .locals 1

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method static synthetic blacklist access$100(Landroid/widget/AbsListView;)I
    .locals 1

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method static synthetic blacklist access$1000(Landroid/widget/AbsListView;IIIIIIIIZ)Z
    .locals 1

    invoke-virtual/range {p0 .. p9}, Landroid/widget/AbsListView;->overScrollBy(IIIIIIIIZ)Z

    move-result v0

    return v0
.end method

.method static synthetic blacklist access$1100(Landroid/widget/AbsListView;)I
    .locals 1

    iget v0, p0, Landroid/widget/AbsListView;->mScrollY:I

    return v0
.end method

.method static synthetic blacklist access$1200(Landroid/widget/AbsListView;IIIIIIIIZ)Z
    .locals 1

    invoke-virtual/range {p0 .. p9}, Landroid/widget/AbsListView;->overScrollBy(IIIIIIIIZ)Z

    move-result v0

    return v0
.end method

.method static synthetic blacklist access$1300(Landroid/widget/AbsListView;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->setChildrenDrawnWithCacheEnabled(Z)V

    return-void
.end method

.method static synthetic blacklist access$1400(Landroid/widget/AbsListView;)I
    .locals 1

    iget v0, p0, Landroid/widget/AbsListView;->mPersistentDrawingCache:I

    return v0
.end method

.method static synthetic blacklist access$1500(Landroid/widget/AbsListView;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->setChildrenDrawingCacheEnabled(Z)V

    return-void
.end method

.method static synthetic blacklist access$1600(Landroid/widget/AbsListView;Landroid/view/View;Z)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/widget/AbsListView;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic blacklist access$1700(Landroid/widget/AbsListView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic blacklist access$200(Landroid/widget/AbsListView;)I
    .locals 1

    iget v0, p0, Landroid/widget/AbsListView;->mScrollY:I

    return v0
.end method

.method static synthetic blacklist access$300(Landroid/widget/AbsListView;)I
    .locals 1

    iget v0, p0, Landroid/widget/AbsListView;->mScrollY:I

    return v0
.end method

.method static synthetic blacklist access$400(Landroid/widget/AbsListView;)I
    .locals 1

    iget v0, p0, Landroid/widget/AbsListView;->mScrollY:I

    return v0
.end method

.method static synthetic blacklist access$500(Landroid/widget/AbsListView;)I
    .locals 1

    iget v0, p0, Landroid/widget/AbsListView;->mPaddingBottom:I

    return v0
.end method

.method static synthetic blacklist access$600(Landroid/widget/AbsListView;)I
    .locals 1

    iget v0, p0, Landroid/widget/AbsListView;->mPaddingTop:I

    return v0
.end method

.method static synthetic blacklist access$700(Landroid/widget/AbsListView;)I
    .locals 1

    iget v0, p0, Landroid/widget/AbsListView;->mPaddingBottom:I

    return v0
.end method

.method static synthetic blacklist access$800(Landroid/widget/AbsListView;)I
    .locals 1

    iget v0, p0, Landroid/widget/AbsListView;->mPaddingTop:I

    return v0
.end method

.method static synthetic blacklist access$900(Landroid/widget/AbsListView;)I
    .locals 1

    iget v0, p0, Landroid/widget/AbsListView;->mScrollY:I

    return v0
.end method

.method private blacklist addAccessibilityActionIfEnabled(Landroid/view/accessibility/AccessibilityNodeInfo;ZLandroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V
    .locals 0

    if-eqz p2, :cond_0

    invoke-virtual {p1, p3}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    :cond_0
    return-void
.end method

.method private blacklist addToPressItemListArray(II)V
    .locals 4

    const/4 v0, 0x0

    iget-boolean v1, p0, Landroid/widget/AbsListView;->mIsMultiFocusEnabled:Z

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v1, -0x1

    if-ne p2, v1, :cond_2

    iget-object v1, p0, Landroid/widget/AbsListView;->mSemPressItemListArray:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/AbsListView;->mSemPressItemListArray:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :cond_1
    iget-object v1, p0, Landroid/widget/AbsListView;->mSemPressItemListArray:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :cond_2
    if-ge p1, p2, :cond_5

    sub-int v1, p2, p1

    add-int/lit8 v0, v1, 0x1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_4

    iget-object v2, p0, Landroid/widget/AbsListView;->mSemPressItemListArray:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/widget/AbsListView;->mSemPressItemListArray:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    iget-object v2, p0, Landroid/widget/AbsListView;->mSemPressItemListArray:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 p1, p1, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    goto :goto_4

    :cond_5
    if-le p1, p2, :cond_8

    sub-int v1, p1, p2

    add-int/lit8 v0, v1, 0x1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_7

    iget-object v2, p0, Landroid/widget/AbsListView;->mSemPressItemListArray:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Landroid/widget/AbsListView;->mSemPressItemListArray:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_6
    iget-object v2, p0, Landroid/widget/AbsListView;->mSemPressItemListArray:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 p1, p1, -0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_7
    goto :goto_4

    :cond_8
    iget-object v1, p0, Landroid/widget/AbsListView;->mSemPressItemListArray:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Landroid/widget/AbsListView;->mSemPressItemListArray:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_9
    iget-object v1, p0, Landroid/widget/AbsListView;->mSemPressItemListArray:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_4
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidate()V

    return-void
.end method

.method private blacklist autoScrollWithDuration(I)V
    .locals 8

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v3

    :cond_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    :cond_1
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getCount()I

    move-result v4

    add-int/lit8 v5, v4, -0x1

    mul-int v6, v0, v3

    div-int/lit8 v6, v6, 0x2

    mul-int/lit8 v6, v6, -0x1

    sub-int v7, v4, v0

    mul-int/2addr v7, p1

    invoke-virtual {p0, v5, v6, v7}, Landroid/widget/AbsListView;->smoothScrollToPositionFromTop(III)V

    return-void
.end method

.method private greylist-max-r canScrollDown()Z
    .locals 8

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    iget v1, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    add-int/2addr v1, v0

    iget v2, p0, Landroid/widget/AbsListView;->mItemCount:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ge v1, v2, :cond_0

    move v1, v4

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    if-nez v1, :cond_2

    if-lez v0, :cond_2

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v5

    iget v6, p0, Landroid/widget/AbsListView;->mBottom:I

    iget-object v7, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v7

    if-le v5, v6, :cond_1

    move v3, v4

    :cond_1
    move v1, v3

    :cond_2
    return v1
.end method

.method private greylist-max-r canScrollUp()Z
    .locals 6

    iget v0, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v3

    if-lez v3, :cond_2

    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v4

    iget-object v5, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    if-ge v4, v5, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    move v0, v1

    :cond_2
    return v0
.end method

.method private greylist-max-o clearScrollingCache()V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isHardwareAccelerated()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/widget/AbsListView;->mClearScrollingCache:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/AbsListView$4;

    invoke-direct {v0, p0}, Landroid/widget/AbsListView$4;-><init>(Landroid/widget/AbsListView;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mClearScrollingCache:Ljava/lang/Runnable;

    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mClearScrollingCache:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method private blacklist consumeFlingInStretch(I)I
    .locals 5

    const/high16 v0, 0x3f000000    # 0.5f

    const/4 v1, 0x0

    const/high16 v2, 0x40800000    # 4.0f

    if-gez p1, :cond_1

    iget-object v3, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->getDistance()F

    move-result v3

    cmpl-float v3, v3, v1

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v1

    int-to-float v3, p1

    mul-float/2addr v3, v2

    int-to-float v4, v1

    div-float/2addr v3, v4

    int-to-float v4, v1

    div-float/2addr v4, v2

    iget-object v2, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v2, v3, v0}, Landroid/widget/EdgeEffect;->onPullDistance(FF)F

    move-result v0

    mul-float/2addr v4, v0

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v0

    if-eq v0, p1, :cond_0

    iget-object v2, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->finish()V

    :cond_0
    sub-int v2, p1, v0

    return v2

    :cond_1
    if-lez p1, :cond_3

    iget-object v3, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    if-eqz v3, :cond_3

    iget-object v3, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->getDistance()F

    move-result v3

    cmpl-float v1, v3, v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v1

    neg-int v3, p1

    int-to-float v3, v3

    mul-float/2addr v3, v2

    int-to-float v4, v1

    div-float/2addr v3, v4

    neg-int v4, v1

    int-to-float v4, v4

    div-float/2addr v4, v2

    iget-object v2, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v2, v3, v0}, Landroid/widget/EdgeEffect;->onPullDistance(FF)F

    move-result v0

    mul-float/2addr v4, v0

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v0

    if-eq v0, p1, :cond_2

    iget-object v2, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->finish()V

    :cond_2
    sub-int v2, p1, v0

    return v2

    :cond_3
    return p1
.end method

.method private greylist-max-o contentFits()Z
    .locals 6

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget v2, p0, Landroid/widget/AbsListView;->mItemCount:I

    const/4 v3, 0x0

    if-eq v0, v2, :cond_1

    return v3

    :cond_1
    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    iget-object v4, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    if-lt v2, v4, :cond_2

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v4

    iget-object v5, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    if-gt v2, v4, :cond_2

    goto :goto_0

    :cond_2
    move v1, v3

    :goto_0
    return v1
.end method

.method private greylist-max-o createScrollingCache()V
    .locals 1

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mScrollingCacheEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mCachingStarted:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isHardwareAccelerated()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->setChildrenDrawnWithCacheEnabled(Z)V

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->setChildrenDrawingCacheEnabled(Z)V

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mCachingActive:Z

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mCachingStarted:Z

    :cond_0
    return-void
.end method

.method private greylist-max-o createTextFilter(Z)V
    .locals 2

    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    invoke-direct {p0}, Landroid/widget/AbsListView;->getTextFilterInput()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/AbsListView;->mGlobalLayoutListenerAddedFilter:Z

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    const v1, 0x103031e

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    const v1, 0x103031f

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    :goto_0
    return-void
.end method

.method private greylist-max-o dismissPopup()V
    .locals 1

    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method private blacklist doesTouchStopStretch()Z
    .locals 2

    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->getDistance()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/widget/AbsListView;->canScrollDown()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->getDistance()F

    move-result v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2

    invoke-direct {p0}, Landroid/widget/AbsListView;->canScrollUp()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private blacklist drawGoToTop(Landroid/graphics/Canvas;)V
    .locals 7

    iget v0, p0, Landroid/widget/AbsListView;->mScrollY:I

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    int-to-float v2, v0

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v2}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-direct {p0}, Landroid/widget/AbsListView;->canScrollUp()Z

    move-result v2

    if-nez v2, :cond_0

    iget v2, p0, Landroid/widget/AbsListView;->mSemGoToTopState:I

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->semSetupGoToTop(I)V

    :cond_0
    iget-object v2, p0, Landroid/widget/AbsListView;->mSemGoToTopRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->enableZ()V

    iget-object v2, p0, Landroid/widget/AbsListView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v2

    int-to-float v2, v2

    const/high16 v4, 0x437f0000    # 255.0f

    div-float/2addr v2, v4

    iget-object v4, p0, Landroid/widget/AbsListView;->mGoToTopRenderNode:Landroid/graphics/RenderNode;

    invoke-virtual {v4}, Landroid/graphics/RenderNode;->beginRecording()Landroid/graphics/RecordingCanvas;

    move-result-object v4

    iget-object v5, p0, Landroid/widget/AbsListView;->mOutline:Landroid/graphics/Outline;

    invoke-virtual {v5, v2}, Landroid/graphics/Outline;->setAlpha(F)V

    iget-object v5, p0, Landroid/widget/AbsListView;->mGoToTopRenderNode:Landroid/graphics/RenderNode;

    iget-object v6, p0, Landroid/widget/AbsListView;->mOutline:Landroid/graphics/Outline;

    invoke-virtual {v5, v6}, Landroid/graphics/RenderNode;->setOutline(Landroid/graphics/Outline;)Z

    iget-object v5, p0, Landroid/widget/AbsListView;->mGoToTopRenderNode:Landroid/graphics/RenderNode;

    invoke-virtual {v5, v2}, Landroid/graphics/RenderNode;->setAlpha(F)Z

    iget-object v5, p0, Landroid/widget/AbsListView;->mSemGoToTopBitmap:Landroid/graphics/Bitmap;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v3, v3, v6}, Landroid/graphics/RecordingCanvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget-object v3, p0, Landroid/widget/AbsListView;->mGoToTopRenderNode:Landroid/graphics/RenderNode;

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->drawRenderNode(Landroid/graphics/RenderNode;)V

    iget-object v3, p0, Landroid/widget/AbsListView;->mGoToTopRenderNode:Landroid/graphics/RenderNode;

    invoke-virtual {v3}, Landroid/graphics/RenderNode;->endRecording()V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->disableZ()V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Landroid/widget/AbsListView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_2
    :goto_0
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method private blacklist drawIndicator(Landroid/graphics/Canvas;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v2, :cond_0

    iget-object v2, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    iput v2, v0, Landroid/widget/AbsListView;->mIndicatorItemCnt:I

    :cond_0
    iget v2, v0, Landroid/widget/AbsListView;->mIndicatorItemCnt:I

    const/4 v3, 0x2

    if-ge v2, v3, :cond_1

    return-void

    :cond_1
    iget-object v2, v0, Landroid/widget/AbsListView;->mIndicatorPaint:Landroid/graphics/Paint;

    const/4 v4, 0x1

    if-nez v2, :cond_2

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, v0, Landroid/widget/AbsListView;->mIndicatorPaint:Landroid/graphics/Paint;

    iget-object v2, v0, Landroid/widget/AbsListView;->mIndicatorPaint:Landroid/graphics/Paint;

    iget-object v5, v0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10603b3

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setColor(I)V

    :cond_2
    iget-object v2, v0, Landroid/widget/AbsListView;->mIndicatorIndex:Ljava/util/List;

    if-nez v2, :cond_3

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Landroid/widget/AbsListView;->mIndicatorIndex:Ljava/util/List;

    :cond_3
    iget-object v2, v0, Landroid/widget/AbsListView;->mIndicatorIndex:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, v0, Landroid/widget/AbsListView;->mIndicatorIndex:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget v5, v0, Landroid/widget/AbsListView;->mIndicatorItemCnt:I

    if-eq v2, v5, :cond_4

    iget-object v2, v0, Landroid/widget/AbsListView;->mIndicatorIndex:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    :cond_4
    iget v2, v0, Landroid/widget/AbsListView;->mScrollY:I

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v5

    const/4 v6, 0x0

    int-to-float v7, v2

    invoke-virtual {v1, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v7

    iget v8, v0, Landroid/widget/AbsListView;->mIndicatorItemCnt:I

    const/16 v9, 0x14

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    div-int/lit8 v10, v7, 0x2

    iget v11, v0, Landroid/widget/AbsListView;->mIndicatorRectSize:I

    mul-int/2addr v11, v8

    div-int/2addr v11, v3

    sub-int/2addr v10, v11

    iget v11, v0, Landroid/widget/AbsListView;->mIndicatorBottomPadding:I

    sub-int/2addr v10, v11

    const/4 v11, 0x0

    :goto_0
    iget v12, v0, Landroid/widget/AbsListView;->mIndicatorItemCnt:I

    if-ge v11, v12, :cond_7

    move v12, v11

    iget v13, v0, Landroid/widget/AbsListView;->mIndicatorItemCnt:I

    if-le v13, v9, :cond_5

    iget v13, v0, Landroid/widget/AbsListView;->mIndicatorItemCnt:I

    rsub-int/lit8 v13, v13, 0x28

    if-lt v11, v13, :cond_5

    iget v13, v0, Landroid/widget/AbsListView;->mIndicatorItemCnt:I

    sub-int/2addr v13, v11

    sub-int/2addr v13, v4

    div-int/2addr v13, v3

    rsub-int/lit8 v13, v13, 0x14

    add-int/lit8 v12, v13, -0x1

    goto :goto_1

    :cond_5
    iget v13, v0, Landroid/widget/AbsListView;->mIndicatorItemCnt:I

    rsub-int/lit8 v13, v13, 0x28

    if-gez v13, :cond_6

    const/16 v12, 0x13

    :cond_6
    :goto_1
    iget-object v13, v0, Landroid/widget/AbsListView;->mIndicatorIndex:Ljava/util/List;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_7
    iget-object v3, v0, Landroid/widget/AbsListView;->mIndicatorIndex:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iget v11, v0, Landroid/widget/AbsListView;->mFocusedPos:I

    if-le v3, v11, :cond_f

    iget v11, v0, Landroid/widget/AbsListView;->mNewFocusedPos:I

    if-gt v3, v11, :cond_8

    goto/16 :goto_6

    :cond_8
    const/4 v11, 0x0

    :goto_2
    iget v12, v0, Landroid/widget/AbsListView;->mIndicatorItemCnt:I

    if-ge v11, v12, :cond_e

    iget-object v12, v0, Landroid/widget/AbsListView;->mIndicatorIndex:Ljava/util/List;

    invoke-interface {v12, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    iget-object v13, v0, Landroid/widget/AbsListView;->mIndicatorIndex:Ljava/util/List;

    iget v14, v0, Landroid/widget/AbsListView;->mFocusedPos:I

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    const/16 v14, 0xff

    const/16 v15, 0x7f

    const/high16 v16, 0x40000000    # 2.0f

    if-ne v12, v13, :cond_a

    iget-object v12, v0, Landroid/widget/AbsListView;->mIndicatorIndex:Ljava/util/List;

    iget v13, v0, Landroid/widget/AbsListView;->mFocusedPos:I

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    iget-object v13, v0, Landroid/widget/AbsListView;->mIndicatorIndex:Ljava/util/List;

    iget v4, v0, Landroid/widget/AbsListView;->mNewFocusedPos:I

    invoke-interface {v13, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-ne v12, v4, :cond_9

    iget v4, v0, Landroid/widget/AbsListView;->mIndicatorFocusedSize:I

    int-to-float v4, v4

    div-float v4, v4, v16

    iget-object v12, v0, Landroid/widget/AbsListView;->mIndicatorPaint:Landroid/graphics/Paint;

    invoke-virtual {v12, v14}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_3

    :cond_9
    iget v4, v0, Landroid/widget/AbsListView;->mIndicatorFocusedSize:I

    iget v12, v0, Landroid/widget/AbsListView;->mIndicatorAnimatedSize:I

    iget v13, v0, Landroid/widget/AbsListView;->mIndicatorDefaultSize:I

    sub-int/2addr v12, v13

    sub-int/2addr v4, v12

    int-to-float v4, v4

    div-float v4, v4, v16

    iget-object v12, v0, Landroid/widget/AbsListView;->mIndicatorPaint:Landroid/graphics/Paint;

    invoke-virtual {v12, v15}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_3

    :cond_a
    iget-object v4, v0, Landroid/widget/AbsListView;->mIndicatorIndex:Ljava/util/List;

    invoke-interface {v4, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    iget-object v12, v0, Landroid/widget/AbsListView;->mIndicatorIndex:Ljava/util/List;

    iget v13, v0, Landroid/widget/AbsListView;->mNewFocusedPos:I

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    if-ne v4, v12, :cond_b

    iget v4, v0, Landroid/widget/AbsListView;->mIndicatorAnimatedSize:I

    int-to-float v4, v4

    div-float v4, v4, v16

    iget-object v12, v0, Landroid/widget/AbsListView;->mIndicatorPaint:Landroid/graphics/Paint;

    invoke-virtual {v12, v14}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_3

    :cond_b
    iget-object v4, v0, Landroid/widget/AbsListView;->mIndicatorPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v15}, Landroid/graphics/Paint;->setAlpha(I)V

    iget v4, v0, Landroid/widget/AbsListView;->mIndicatorDefaultSize:I

    int-to-float v4, v4

    div-float v4, v4, v16

    :goto_3
    iget v12, v0, Landroid/widget/AbsListView;->mIndicatorItemCnt:I

    if-le v12, v9, :cond_c

    iget v12, v0, Landroid/widget/AbsListView;->mIndicatorItemCnt:I

    rsub-int/lit8 v12, v12, 0x28

    if-lt v11, v12, :cond_c

    rem-int/lit8 v12, v11, 0x2

    if-nez v12, :cond_c

    const/4 v13, 0x1

    goto :goto_5

    :cond_c
    iget v12, v0, Landroid/widget/AbsListView;->mIndicatorWhere:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_d

    iget v12, v0, Landroid/widget/AbsListView;->mIndicatorMarginHorizontal:I

    goto :goto_4

    :cond_d
    iget v12, v0, Landroid/widget/AbsListView;->mIndicatorMarginHorizontal:I

    sub-int v12, v6, v12

    :goto_4
    int-to-float v12, v12

    int-to-float v14, v10

    iget v15, v0, Landroid/widget/AbsListView;->mIndicatorRectSize:I

    int-to-float v15, v15

    iget-object v9, v0, Landroid/widget/AbsListView;->mIndicatorIndex:Ljava/util/List;

    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    int-to-float v9, v9

    const/high16 v17, 0x3f000000    # 0.5f

    add-float v9, v9, v17

    mul-float/2addr v15, v9

    add-float/2addr v14, v15

    iget-object v9, v0, Landroid/widget/AbsListView;->mIndicatorPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v12, v14, v4, v9}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :goto_5
    add-int/lit8 v11, v11, 0x1

    move v4, v13

    const/16 v9, 0x14

    goto/16 :goto_2

    :cond_e
    invoke-virtual {v1, v5}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void

    :cond_f
    :goto_6
    return-void
.end method

.method private greylist-max-o drawSelector(Landroid/graphics/Canvas;)V
    .locals 8

    invoke-virtual {p0}, Landroid/widget/AbsListView;->shouldDrawSelector()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mIsMultiFocusEnabled:Z

    if-eqz v0, :cond_2

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/widget/AbsListView;->mSemPressItemListArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget v5, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int/2addr v4, v5

    invoke-virtual {p0, v4}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v6

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v7

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v4, p0, Landroid/widget/AbsListView;->mMultiFocusImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v4, p0, Landroid/widget/AbsListView;->mMultiFocusImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    goto :goto_0

    :cond_2
    return-void
.end method

.method private blacklist drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 5

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p1, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object v0
.end method

.method private blacklist endLongPressMultiSelection(II)V
    .locals 3

    invoke-super {p0, p1, p2}, Landroid/widget/AdapterView;->semNotifyLongPressMultiSelectionEnded(II)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mIsFirstMultiSelectionMove:Z

    const/4 v1, -0x1

    iput v1, p0, Landroid/widget/AbsListView;->mSemDragSelectedViewPosition:I

    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/AbsListView;->mSemDragStartX:I

    iput v1, p0, Landroid/widget/AbsListView;->mSemDragStartY:I

    iput v1, p0, Landroid/widget/AbsListView;->mSemDragEndX:I

    iput v1, p0, Landroid/widget/AbsListView;->mSemDragEndY:I

    iput v1, p0, Landroid/widget/AbsListView;->mSemDragBlockLeft:I

    iput v1, p0, Landroid/widget/AbsListView;->mSemDragBlockTop:I

    iput v1, p0, Landroid/widget/AbsListView;->mSemDragBlockRight:I

    iput v1, p0, Landroid/widget/AbsListView;->mSemDragBlockBottom:I

    iget-object v2, p0, Landroid/widget/AbsListView;->mSemDragSelectedItemArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iput v1, p0, Landroid/widget/AbsListView;->mSemDragSelectedItemSize:I

    const/4 v2, 0x0

    iput-object v2, p0, Landroid/widget/AbsListView;->mSemTrackedChild:Landroid/view/View;

    iput v1, p0, Landroid/widget/AbsListView;->mSemDistanceFromTrackedChildTop:I

    iget-object v2, p0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    invoke-virtual {v2, v0}, Landroid/widget/AbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    invoke-virtual {v2, v0}, Landroid/widget/AbsListView$HoverScrollHandler;->removeMessages(I)V

    :cond_0
    iput-boolean v1, p0, Landroid/widget/AbsListView;->mIsHoverOverscrolled:Z

    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidate()V

    iput-boolean v1, p0, Landroid/widget/AbsListView;->mIsLongPressMultiSelection:Z

    return-void
.end method

.method private greylist-max-o finishGlows()V
    .locals 1

    invoke-direct {p0}, Landroid/widget/AbsListView;->shouldDisplayEdgeEffects()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->finish()V

    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->finish()V

    :cond_0
    return-void
.end method

.method static greylist-max-o getDistance(Landroid/graphics/Rect;Landroid/graphics/Rect;I)I
    .locals 8

    sparse-switch p2, :sswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT, FOCUS_FORWARD, FOCUS_BACKWARD}."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_0
    iget v0, p0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    iget v2, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iget v3, p1, Landroid/graphics/Rect;->top:I

    goto :goto_0

    :sswitch_1
    iget v0, p0, Landroid/graphics/Rect;->right:I

    iget v1, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    goto :goto_0

    :sswitch_2
    iget v0, p0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget v1, p0, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    :sswitch_3
    iget v0, p0, Landroid/graphics/Rect;->left:I

    iget v1, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    goto :goto_0

    :sswitch_4
    iget v0, p0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget v1, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iget v2, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iget v3, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    nop

    :goto_0
    sub-int v4, v2, v0

    sub-int v5, v3, v1

    mul-int v6, v5, v5

    mul-int v7, v4, v4

    add-int/2addr v6, v7

    return v6

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_4
        0x2 -> :sswitch_4
        0x11 -> :sswitch_3
        0x21 -> :sswitch_2
        0x42 -> :sswitch_1
        0x82 -> :sswitch_0
    .end sparse-switch
.end method

.method private greylist-max-o getDrawableStateForSelector()[I
    .locals 6

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mIsChildViewEnabled:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Landroid/widget/AdapterView;->getDrawableState()[I

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Landroid/widget/AbsListView;->ENABLED_STATE_SET:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->onCreateDrawableState(I)[I

    move-result-object v2

    const/4 v3, -0x1

    array-length v4, v2

    sub-int/2addr v4, v1

    :goto_0
    if-ltz v4, :cond_2

    aget v5, v2, v4

    if-ne v5, v0, :cond_1

    move v3, v4

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-ltz v3, :cond_3

    add-int/lit8 v4, v3, 0x1

    array-length v5, v2

    sub-int/2addr v5, v3

    sub-int/2addr v5, v1

    invoke-static {v2, v4, v2, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3
    return-object v2
.end method

.method private greylist-max-o getTextFilterInput()Landroid/widget/EditText;
    .locals 3

    iget-object v0, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x10901dd

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    iget-object v1, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    const/16 v2, 0xb1

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setRawInputType(I)V

    iget-object v1, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setImeOptions(I)V

    iget-object v1, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v1, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    return-object v0
.end method

.method private blacklist handleMessage(Landroid/os/Message;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_a

    :pswitch_0
    const/4 v2, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, v0, Landroid/widget/AbsListView;->mHoverRecognitionStartTime:J

    sub-long v5, v3, v5

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    iget-boolean v7, v0, Landroid/widget/AbsListView;->mIsPenHovered:Z

    if-eqz v7, :cond_0

    iget-wide v7, v0, Landroid/widget/AbsListView;->mHoverScrollStartTime:J

    sub-long v7, v3, v7

    iget-wide v9, v0, Landroid/widget/AbsListView;->mHoverScrollTimeInterval:J

    cmp-long v7, v7, v9

    if-gez v7, :cond_0

    goto/16 :goto_a

    :cond_0
    iget-boolean v7, v0, Landroid/widget/AbsListView;->mIsPenPressed:Z

    if-eqz v7, :cond_1

    iget-wide v7, v0, Landroid/widget/AbsListView;->mHoverScrollStartTime:J

    sub-long v7, v3, v7

    iget-wide v9, v0, Landroid/widget/AbsListView;->mPenDragScrollTimeInterval:J

    cmp-long v7, v7, v9

    if-gez v7, :cond_1

    goto/16 :goto_a

    :cond_1
    iget-boolean v7, v0, Landroid/widget/AbsListView;->mIsPenHovered:Z

    const/4 v8, 0x1

    if-eqz v7, :cond_3

    iget-boolean v7, v0, Landroid/widget/AbsListView;->mIsSendHoverScrollState:Z

    if-nez v7, :cond_3

    iget-object v7, v0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v7, :cond_2

    iput v8, v0, Landroid/widget/AbsListView;->mHoverScrollStateForListener:I

    iget-object v7, v0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v7, v0, v8}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    :cond_2
    iput-boolean v8, v0, Landroid/widget/AbsListView;->mIsSendHoverScrollState:Z

    iput-boolean v8, v0, Landroid/widget/AbsListView;->mIsHoverScrolled:Z

    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v7

    iget v9, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    add-int/2addr v9, v7

    iget v10, v0, Landroid/widget/AbsListView;->mItemCount:I

    const/4 v11, 0x0

    if-ge v9, v10, :cond_4

    move v9, v8

    goto :goto_0

    :cond_4
    move v9, v11

    :goto_0
    if-nez v9, :cond_7

    if-lez v7, :cond_7

    add-int/lit8 v10, v7, -0x1

    invoke-virtual {v0, v10}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v12

    iget v13, v0, Landroid/widget/AbsListView;->mBottom:I

    iget-object v14, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v13, v14

    if-gt v12, v13, :cond_6

    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v12

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v13

    iget-object v14, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v13, v14

    if-le v12, v13, :cond_5

    goto :goto_1

    :cond_5
    move v12, v11

    goto :goto_2

    :cond_6
    :goto_1
    move v12, v8

    :goto_2
    move v9, v12

    :cond_7
    iget v10, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    if-lez v10, :cond_8

    move v10, v8

    goto :goto_3

    :cond_8
    move v10, v11

    :goto_3
    if-nez v10, :cond_a

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v12

    if-lez v12, :cond_a

    invoke-virtual {v0, v11}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/View;->getTop()I

    move-result v13

    iget-object v14, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->top:I

    if-ge v13, v14, :cond_9

    move v13, v8

    goto :goto_4

    :cond_9
    move v13, v11

    :goto_4
    move v10, v13

    :cond_a
    iget-object v12, v0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v12

    const/high16 v13, 0x41700000    # 15.0f

    invoke-static {v8, v13, v12}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v12

    const/high16 v13, 0x3f000000    # 0.5f

    add-float/2addr v12, v13

    float-to-int v12, v12

    const-wide/16 v13, 0x3

    cmp-long v13, v5, v13

    if-nez v13, :cond_b

    int-to-double v13, v12

    const-wide v15, 0x3fb999999999999aL    # 0.1

    mul-double/2addr v13, v15

    double-to-int v13, v13

    add-int/2addr v12, v13

    goto :goto_5

    :cond_b
    const-wide/16 v13, 0x4

    cmp-long v13, v5, v13

    if-nez v13, :cond_c

    int-to-double v13, v12

    const-wide v15, 0x3fc999999999999aL    # 0.2

    mul-double/2addr v13, v15

    double-to-int v13, v13

    add-int/2addr v12, v13

    goto :goto_5

    :cond_c
    const-wide/16 v13, 0x5

    cmp-long v13, v5, v13

    if-ltz v13, :cond_d

    int-to-double v13, v12

    const-wide v15, 0x3fd3333333333333L    # 0.3

    mul-double/2addr v13, v15

    double-to-int v13, v13

    add-int/2addr v12, v13

    :cond_d
    :goto_5
    iget v13, v0, Landroid/widget/AbsListView;->mHoverScrollDirection:I

    const/4 v14, 0x2

    if-ne v13, v14, :cond_10

    mul-int/lit8 v2, v12, -0x1

    iget-object v13, v0, Landroid/widget/AbsListView;->mSemTrackedChild:Landroid/view/View;

    if-nez v13, :cond_e

    iget-object v13, v0, Landroid/widget/AbsListView;->mSemCloseChildByBottom:Landroid/view/View;

    if-nez v13, :cond_f

    :cond_e
    iget v13, v0, Landroid/widget/AbsListView;->mOldHoverScrollDirection:I

    iget v15, v0, Landroid/widget/AbsListView;->mHoverScrollDirection:I

    if-eq v13, v15, :cond_13

    iget-boolean v13, v0, Landroid/widget/AbsListView;->mIsCloseChildSetted:Z

    if-ne v13, v8, :cond_13

    :cond_f
    iget-object v13, v0, Landroid/widget/AbsListView;->mSemCloseChildByBottom:Landroid/view/View;

    iput-object v13, v0, Landroid/widget/AbsListView;->mSemTrackedChild:Landroid/view/View;

    iget v13, v0, Landroid/widget/AbsListView;->mSemDistanceFromCloseChildBottom:I

    iput v13, v0, Landroid/widget/AbsListView;->mSemDistanceFromTrackedChildTop:I

    iget v13, v0, Landroid/widget/AbsListView;->mSemCloseChildPositionByBottom:I

    iput v13, v0, Landroid/widget/AbsListView;->mSemTrackedChildPosition:I

    iget v13, v0, Landroid/widget/AbsListView;->mHoverScrollDirection:I

    iput v13, v0, Landroid/widget/AbsListView;->mOldHoverScrollDirection:I

    iput-boolean v8, v0, Landroid/widget/AbsListView;->mIsCloseChildSetted:Z

    goto :goto_6

    :cond_10
    move v2, v12

    iget-object v13, v0, Landroid/widget/AbsListView;->mSemTrackedChild:Landroid/view/View;

    if-nez v13, :cond_11

    iget-object v13, v0, Landroid/widget/AbsListView;->mSemCloseChildByTop:Landroid/view/View;

    if-nez v13, :cond_12

    :cond_11
    iget v13, v0, Landroid/widget/AbsListView;->mOldHoverScrollDirection:I

    iget v15, v0, Landroid/widget/AbsListView;->mHoverScrollDirection:I

    if-eq v13, v15, :cond_13

    iget-boolean v13, v0, Landroid/widget/AbsListView;->mIsCloseChildSetted:Z

    if-ne v13, v8, :cond_13

    :cond_12
    iget-object v13, v0, Landroid/widget/AbsListView;->mSemCloseChildByTop:Landroid/view/View;

    iput-object v13, v0, Landroid/widget/AbsListView;->mSemTrackedChild:Landroid/view/View;

    iget v13, v0, Landroid/widget/AbsListView;->mSemDistanceFromCloseChildTop:I

    iput v13, v0, Landroid/widget/AbsListView;->mSemDistanceFromTrackedChildTop:I

    iget v13, v0, Landroid/widget/AbsListView;->mSemCloseChildPositionByTop:I

    iput v13, v0, Landroid/widget/AbsListView;->mSemTrackedChildPosition:I

    iget v13, v0, Landroid/widget/AbsListView;->mHoverScrollDirection:I

    iput v13, v0, Landroid/widget/AbsListView;->mOldHoverScrollDirection:I

    iput-boolean v8, v0, Landroid/widget/AbsListView;->mIsCloseChildSetted:Z

    :cond_13
    :goto_6
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v13

    sub-int/2addr v13, v8

    invoke-virtual {v0, v13}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    if-nez v13, :cond_14

    goto/16 :goto_a

    :cond_14
    if-gez v2, :cond_15

    if-nez v10, :cond_16

    :cond_15
    if-lez v2, :cond_18

    if-eqz v9, :cond_18

    :cond_16
    invoke-virtual {v0, v2, v11}, Landroid/widget/AbsListView;->smoothScrollBy(II)V

    iget-boolean v13, v0, Landroid/widget/AbsListView;->mIsLongPressMultiSelection:Z

    if-eqz v13, :cond_17

    iget v13, v0, Landroid/widget/AbsListView;->mSemDragEndX:I

    iget v14, v0, Landroid/widget/AbsListView;->mSemDragEndY:I

    invoke-direct {v0, v13, v14, v11}, Landroid/widget/AbsListView;->updateLongPressMultiSelection(IIZ)V

    :cond_17
    iget-object v11, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    const-wide/16 v13, 0x0

    invoke-virtual {v11, v8, v13, v14}, Landroid/widget/AbsListView$HoverScrollHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_a

    :cond_18
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getOverScrollMode()I

    move-result v13

    if-eqz v13, :cond_1a

    if-ne v13, v8, :cond_19

    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->contentFits()Z

    move-result v15

    if-nez v15, :cond_19

    goto :goto_7

    :cond_19
    goto :goto_8

    :cond_1a
    :goto_7
    move v11, v8

    :goto_8
    if-eqz v11, :cond_1f

    iget-boolean v15, v0, Landroid/widget/AbsListView;->mIsHoverOverscrolled:Z

    if-nez v15, :cond_1f

    iget v15, v0, Landroid/widget/AbsListView;->mHoverScrollDirection:I

    if-ne v15, v14, :cond_1b

    iget-object v14, v0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v8

    invoke-virtual {v14, v15, v8}, Landroid/widget/EdgeEffect;->setSize(II)V

    iget-object v8, v0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    const/16 v14, 0x2710

    invoke-virtual {v8, v14}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    iget-object v8, v0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v8}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v8

    if-nez v8, :cond_1c

    iget-object v8, v0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v8}, Landroid/widget/EdgeEffect;->onRelease()V

    goto :goto_9

    :cond_1b
    iget v8, v0, Landroid/widget/AbsListView;->mHoverScrollDirection:I

    const/4 v14, 0x1

    if-ne v8, v14, :cond_1c

    iget-object v8, v0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v14

    invoke-virtual {v8, v15, v14}, Landroid/widget/EdgeEffect;->setSize(II)V

    iget-object v8, v0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    const/16 v14, 0x2710

    invoke-virtual {v8, v14}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Landroid/widget/AbsListView;->semSetupGoToTop(I)V

    invoke-virtual {v0, v8}, Landroid/widget/AbsListView;->semAutoHide(I)V

    iget-object v8, v0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v8}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v8

    if-nez v8, :cond_1c

    iget-object v8, v0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v8}, Landroid/widget/EdgeEffect;->onRelease()V

    :cond_1c
    :goto_9
    iget-object v8, v0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v8}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v8

    if-eqz v8, :cond_1d

    iget-object v8, v0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v8}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v8

    if-nez v8, :cond_1e

    :cond_1d
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->invalidate()V

    :cond_1e
    const/4 v8, 0x1

    iput-boolean v8, v0, Landroid/widget/AbsListView;->mIsHoverOverscrolled:Z

    :cond_1f
    if-nez v11, :cond_20

    iget-boolean v8, v0, Landroid/widget/AbsListView;->mIsHoverOverscrolled:Z

    if-nez v8, :cond_20

    const/4 v8, 0x1

    iput-boolean v8, v0, Landroid/widget/AbsListView;->mIsHoverOverscrolled:Z

    :cond_20
    nop

    :goto_a
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private greylist hidden_mEdgeGlowBottom(Landroid/widget/EdgeEffect;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    return-void
.end method

.method private greylist hidden_mEdgeGlowTop()Landroid/widget/EdgeEffect;
    .locals 1

    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    return-object v0
.end method

.method private greylist hidden_mEdgeGlowTop(Landroid/widget/EdgeEffect;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    return-void
.end method

.method private greylist-max-o initAbsListView()V
    .locals 7

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->setClickable(Z)V

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->setFocusableInTouchMode(Z)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->setWillNotDraw(Z)V

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->setAlwaysDrawnWithCacheEnabled(Z)V

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->setScrollingCacheEnabled(Z)V

    iget-object v1, p0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    iput v2, p0, Landroid/widget/AbsListView;->mTouchSlop:I

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledVerticalScrollFactor()F

    move-result v2

    iput v2, p0, Landroid/widget/AbsListView;->mVerticalScrollFactor:F

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v2

    iput v2, p0, Landroid/widget/AbsListView;->mMinimumVelocity:I

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v2

    iput v2, p0, Landroid/widget/AbsListView;->mMaximumVelocity:I

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledOverscrollDistance()I

    move-result v2

    iput v2, p0, Landroid/widget/AbsListView;->mOverscrollDistance:I

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledOverflingDistance()I

    move-result v2

    iput v2, p0, Landroid/widget/AbsListView;->mOverflingDistance:I

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    iput v2, p0, Landroid/widget/AbsListView;->mDensityScale:F

    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    iget-object v3, p0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    const v4, 0x11201a0

    invoke-virtual {v3, v4, v2, v0}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v4, p0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, v2, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Landroid/widget/AbsListView;->mMultiFocusImage:Landroid/graphics/drawable/Drawable;

    :cond_0
    iget-object v4, p0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    const v5, 0x112019f

    invoke-virtual {v4, v5, v2, v0}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v4, p0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, v2, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Landroid/widget/AbsListView;->mSemDragBlockImage:Landroid/graphics/drawable/Drawable;

    :cond_1
    iget-object v4, p0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    const v5, 0x1120167

    invoke-virtual {v4, v5, v2, v0}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v3, p0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, v2, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Landroid/widget/AbsListView;->mSemGoToTopLightImage:Landroid/graphics/drawable/Drawable;

    :cond_2
    sget-boolean v3, Landroid/widget/AbsListView;->sIsSamsungBasicInteraction:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Landroid/widget/AbsListView;->mSemFillOutPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v3, p0, Landroid/widget/AbsListView;->mSemFillOutPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10603df

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    :cond_3
    return-void
.end method

.method private blacklist initDifferentialFlingHelperIfNotExists()V
    .locals 4

    iget-object v0, p0, Landroid/widget/AbsListView;->mDifferentialMotionFlingHelper:Landroid/widget/DifferentialMotionFlingHelper;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/DifferentialMotionFlingHelper;

    iget-object v1, p0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/widget/AbsListView$DifferentialFlingTarget;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Landroid/widget/AbsListView$DifferentialFlingTarget;-><init>(Landroid/widget/AbsListView;Landroid/widget/AbsListView$DifferentialFlingTarget-IA;)V

    invoke-direct {v0, v1, v2}, Landroid/widget/DifferentialMotionFlingHelper;-><init>(Landroid/content/Context;Landroid/widget/DifferentialMotionFlingHelper$DifferentialMotionFlingTarget;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mDifferentialMotionFlingHelper:Landroid/widget/DifferentialMotionFlingHelper;

    :cond_0
    return-void
.end method

.method private blacklist initGoToTOP()V
    .locals 2

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/AbsListView;->mSemGoToTopRect:Landroid/graphics/Rect;

    iget v0, p0, Landroid/widget/AbsListView;->mSemGoToTopState:I

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_0
    iput v1, p0, Landroid/widget/AbsListView;->mSemGoToTopState:I

    iput v1, p0, Landroid/widget/AbsListView;->mSemGoToTopLastState:I

    iput-boolean v1, p0, Landroid/widget/AbsListView;->mShowGTPAtFirstTime:Z

    iput v1, p0, Landroid/widget/AbsListView;->mShowFadeOutGTP:I

    iget-object v0, p0, Landroid/widget/AbsListView;->mSemAutoHide:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Landroid/widget/AbsListView;->mSemGoToToFadeInRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Landroid/widget/AbsListView;->mSemGoToToFadeOutRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private blacklist initHapticScrollFeedbackProviderIfNotExists()V
    .locals 1

    iget-object v0, p0, Landroid/widget/AbsListView;->mHapticScrollFeedbackProvider:Landroid/view/HapticScrollFeedbackProvider;

    if-nez v0, :cond_0

    new-instance v0, Landroid/view/HapticScrollFeedbackProvider;

    invoke-direct {v0, p0}, Landroid/view/HapticScrollFeedbackProvider;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mHapticScrollFeedbackProvider:Landroid/view/HapticScrollFeedbackProvider;

    :cond_0
    return-void
.end method

.method private blacklist initIndicator()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/AbsListView;->mIndicatorItemCnt:I

    iget-object v0, p0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050489

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/widget/AbsListView;->mIndicatorAnimatedSize:I

    iget-object v0, p0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x105048a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/widget/AbsListView;->mIndicatorRectSize:I

    iget v0, p0, Landroid/widget/AbsListView;->mIndicatorMarginHorizontal:I

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/widget/AbsListView;->mIndicatorMarginHorizontal:I

    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/widget/AbsListView;->mIndicatorFocusedSize:I

    iget-object v0, p0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050488

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/widget/AbsListView;->mIndicatorDefaultSize:I

    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/AbsListView;->mIndicatorIndex:Ljava/util/List;

    :cond_1
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v0

    iput v0, p0, Landroid/widget/AbsListView;->mFocusedPos:I

    iget-object v0, p0, Landroid/widget/AbsListView;->mAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_2

    iget v0, p0, Landroid/widget/AbsListView;->mIndicatorDefaultSize:I

    iget v1, p0, Landroid/widget/AbsListView;->mIndicatorFocusedSize:I

    filled-new-array {v0, v1}, [I

    move-result-object v0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsListView;->mAnimator:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Landroid/widget/AbsListView;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/widget/AbsListView$14;

    invoke-direct {v1, p0}, Landroid/widget/AbsListView$14;-><init>(Landroid/widget/AbsListView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Landroid/widget/AbsListView;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/widget/AbsListView$15;

    invoke-direct {v1, p0}, Landroid/widget/AbsListView$15;-><init>(Landroid/widget/AbsListView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_2
    return-void
.end method

.method private greylist-max-o initOrResetVelocityTracker()V
    .locals 1

    iget-object v0, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    :goto_0
    return-void
.end method

.method private greylist-max-o initVelocityTrackerIfNotExists()V
    .locals 1

    iget-object v0, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method

.method private blacklist invalidateEdgeEffects()V
    .locals 1

    invoke-direct {p0}, Landroid/widget/AbsListView;->shouldDisplayEdgeEffects()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidate()V

    return-void
.end method

.method private greylist-max-o isItemClickable(Landroid/view/View;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->hasExplicitFocusable()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private greylist-max-o isOwnerThread()Z
    .locals 2

    iget-object v0, p0, Landroid/widget/AbsListView;->mOwnerThread:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private blacklist onHoverDrawableState(Landroid/view/MotionEvent;)V
    .locals 16

    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x0

    move-object/from16 v3, p1

    invoke-virtual {v3, v2}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getFlags()I

    move-result v5

    const/4 v6, 0x7

    const/16 v7, 0xa

    const/4 v8, 0x1

    if-eq v1, v6, :cond_0

    const/16 v6, 0x9

    if-ne v1, v6, :cond_1

    :cond_0
    const/4 v6, 0x2

    if-ne v4, v6, :cond_1

    iput-boolean v8, v0, Landroid/widget/AbsListView;->mIsPenHovered:Z

    goto :goto_0

    :cond_1
    if-ne v1, v7, :cond_2

    iput-boolean v2, v0, Landroid/widget/AbsListView;->mIsPenHovered:Z

    :cond_2
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-virtual {v6}, Landroid/view/ViewRootImpl;->isDesktopMode()Z

    move-result v9

    if-eqz v9, :cond_4

    const/4 v9, 0x3

    if-eq v4, v9, :cond_3

    const/high16 v9, 0x4000000

    and-int/2addr v9, v5

    if-eqz v9, :cond_4

    :cond_3
    move v9, v8

    goto :goto_1

    :cond_4
    move v9, v2

    :goto_1
    iput-boolean v9, v0, Landroid/widget/AbsListView;->mIsHoveredByMouse:Z

    iget-object v9, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v9, :cond_f

    iget-object v9, v0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v9, :cond_f

    iget-object v9, v0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v9

    if-eqz v9, :cond_f

    iget-boolean v9, v0, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    if-ne v9, v8, :cond_5

    goto/16 :goto_3

    :cond_5
    iget-boolean v9, v0, Landroid/widget/AbsListView;->mIsHoveredByMouse:Z

    if-eqz v9, :cond_e

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->isInTouchMode()Z

    move-result v9

    if-nez v9, :cond_6

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->hideSelector()V

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->updateSelectorState()V

    :cond_6
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->isHovered()Z

    move-result v9

    if-nez v9, :cond_7

    iget-boolean v9, v0, Landroid/widget/AbsListView;->mIsHoverScrolled:Z

    if-eqz v9, :cond_7

    invoke-virtual {v0, v8}, Landroid/widget/AbsListView;->setHovered(Z)V

    iput-boolean v2, v0, Landroid/widget/AbsListView;->mIsHoverScrolled:Z

    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    float-to-int v9, v9

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    float-to-int v10, v10

    invoke-virtual {v0, v9, v10}, Landroid/widget/AbsListView;->pointToPosition(II)I

    move-result v11

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->shouldShowSelector()Z

    move-result v12

    iget v13, v0, Landroid/widget/AbsListView;->mSemGoToTopState:I

    const/4 v14, -0x1

    if-eqz v13, :cond_8

    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->semIsSupportGotoTop()Z

    move-result v13

    if-eqz v13, :cond_8

    iget-object v13, v0, Landroid/widget/AbsListView;->mSemGoToTopRect:Landroid/graphics/Rect;

    invoke-virtual {v13, v9, v10}, Landroid/graphics/Rect;->contains(II)Z

    move-result v13

    if-eqz v13, :cond_8

    iput v14, v0, Landroid/widget/AbsListView;->mSelectorPosition:I

    iget-object v2, v0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    return-void

    :cond_8
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->isHovered()Z

    move-result v13

    if-nez v13, :cond_9

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->isInTouchMode()Z

    move-result v13

    if-nez v13, :cond_9

    iget-object v13, v0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    sget-object v15, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v13, v15}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_9
    if-gez v11, :cond_c

    if-nez v12, :cond_a

    iget-object v7, v0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->setEmpty()V

    :cond_a
    iget-boolean v7, v0, Landroid/widget/AbsListView;->mHoveredOnEllipsizedText:Z

    if-eqz v7, :cond_b

    iget-object v7, v0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    sget-object v8, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->postInvalidateOnAnimation()V

    iput-boolean v2, v0, Landroid/widget/AbsListView;->mHoveredOnEllipsizedText:Z

    :cond_b
    iput v14, v0, Landroid/widget/AbsListView;->mHoverPosition:I

    return-void

    :cond_c
    iput v11, v0, Landroid/widget/AbsListView;->mHoverPosition:I

    iget v13, v0, Landroid/widget/AbsListView;->mHoverPosition:I

    iget v15, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int/2addr v13, v15

    invoke-virtual {v0, v13}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    iget-object v15, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    iget v14, v0, Landroid/widget/AbsListView;->mHoverPosition:I

    invoke-interface {v15, v14}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v14

    if-eqz v14, :cond_d

    iget-boolean v14, v0, Landroid/widget/AbsListView;->mIsHoveredByMouse:Z

    if-eqz v14, :cond_d

    iget v14, v0, Landroid/widget/AbsListView;->mHoverPosition:I

    invoke-virtual {v0, v14, v13}, Landroid/widget/AbsListView;->positionSelector(ILandroid/view/View;)V

    iput-boolean v8, v0, Landroid/widget/AbsListView;->mHoveredOnEllipsizedText:Z

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->updateSelectorState()V

    goto :goto_2

    :cond_d
    iget-object v8, v0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->setEmpty()V

    iget-object v8, v0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    sget-object v14, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v8, v14}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    iput-boolean v2, v0, Landroid/widget/AbsListView;->mHoveredOnEllipsizedText:Z

    :goto_2
    if-ne v1, v7, :cond_e

    iput-boolean v2, v0, Landroid/widget/AbsListView;->mHoveredOnEllipsizedText:Z

    const/4 v2, -0x1

    iput v2, v0, Landroid/widget/AbsListView;->mHoverPosition:I

    iget-object v2, v0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    sget-object v7, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v2, v7}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    iget-object v2, v0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->postInvalidateOnAnimation()V

    :cond_e
    return-void

    :cond_f
    :goto_3
    return-void
.end method

.method private greylist-max-o onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const v1, 0xff00

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iget v2, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    if-ne v1, v2, :cond_1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Landroid/widget/AbsListView;->mMotionX:I

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Landroid/widget/AbsListView;->mMotionY:I

    iput v2, p0, Landroid/widget/AbsListView;->mMotionCorrection:I

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    iput v2, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    iget v2, p0, Landroid/widget/AbsListView;->mMotionY:I

    iput v2, p0, Landroid/widget/AbsListView;->mLastY:I

    :cond_1
    return-void
.end method

.method private greylist-max-o onTouchCancel()V
    .locals 9

    iget v0, p0, Landroid/widget/AbsListView;->mTouchMode:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mAppWidgetSnapScroll:Z

    if-eqz v0, :cond_6

    iget v0, p0, Landroid/widget/AbsListView;->mTouchMode:I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v5

    iget v6, p0, Landroid/widget/AbsListView;->mFocusedPos:I

    if-eq v5, v6, :cond_1

    move v5, v0

    goto :goto_0

    :pswitch_0
    goto/16 :goto_3

    :pswitch_1
    iget-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/AbsListView$FlingRunnable;

    invoke-direct {v0, p0}, Landroid/widget/AbsListView$FlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {v0}, Landroid/widget/AbsListView$FlingRunnable;->startSpringback()V

    goto :goto_3

    :cond_1
    move v5, v2

    :goto_0
    if-eqz v5, :cond_2

    move-object v6, v3

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    :goto_1
    if-eqz v5, :cond_4

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v7

    div-int/lit8 v8, v4, 0x2

    if-le v7, v8, :cond_3

    iget v0, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    invoke-direct {p0, v0, v2}, Landroid/widget/AbsListView;->scrollToPositionFromTop(II)V

    goto :goto_2

    :cond_3
    iget v7, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    add-int/2addr v7, v0

    invoke-direct {p0, v7, v2}, Landroid/widget/AbsListView;->scrollToPositionFromTop(II)V

    goto :goto_2

    :cond_4
    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v7

    div-int/lit8 v8, v4, 0x2

    if-ge v7, v8, :cond_5

    iget v7, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    add-int/2addr v7, v0

    invoke-direct {p0, v7, v2}, Landroid/widget/AbsListView;->scrollToPositionFromTop(II)V

    goto :goto_2

    :cond_5
    iget v0, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v7

    sub-int v7, v4, v7

    invoke-direct {p0, v0, v7}, Landroid/widget/AbsListView;->scrollToPositionFromTop(II)V

    :cond_6
    :goto_2
    iput v1, p0, Landroid/widget/AbsListView;->mTouchMode:I

    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->setPressed(Z)V

    iget v0, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    iget v3, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int/2addr v0, v3

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0, v2}, Landroid/view/View;->setPressed(Z)V

    :cond_7
    invoke-direct {p0}, Landroid/widget/AbsListView;->clearScrollingCache()V

    iget-object v3, p0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v3, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-eqz v3, :cond_8

    invoke-direct {p0}, Landroid/widget/AbsListView;->semIsTalkBackIsRunning()Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {v3}, Landroid/widget/AbsListView$FlingRunnable;->endFling()V

    :cond_8
    invoke-direct {p0}, Landroid/widget/AbsListView;->recycleVelocityTracker()V

    :goto_3
    invoke-direct {p0}, Landroid/widget/AbsListView;->shouldDisplayEdgeEffects()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    :cond_9
    iput v1, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    iput v2, p0, Landroid/widget/AbsListView;->mPointerCount:I

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private greylist-max-o onTouchDown(Landroid/view/MotionEvent;)V
    .locals 6

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mHasPerformedLongPress:Z

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    invoke-virtual {p0}, Landroid/widget/AbsListView;->hideSelector()V

    iget v1, p0, Landroid/widget/AbsListView;->mPointerCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/widget/AbsListView;->mPointerCount:I

    iget v1, p0, Landroid/widget/AbsListView;->mTouchMode:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {v1}, Landroid/widget/AbsListView$FlingRunnable;->endFling()V

    :cond_0
    iget-object v1, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {v1}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    :cond_1
    const/4 v1, 0x5

    iput v1, p0, Landroid/widget/AbsListView;->mTouchMode:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Landroid/widget/AbsListView;->mMotionX:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Landroid/widget/AbsListView;->mMotionY:I

    iget v1, p0, Landroid/widget/AbsListView;->mMotionY:I

    iput v1, p0, Landroid/widget/AbsListView;->mLastY:I

    iput v0, p0, Landroid/widget/AbsListView;->mMotionCorrection:I

    iput v0, p0, Landroid/widget/AbsListView;->mDirection:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-direct {p0, v0}, Landroid/widget/AbsListView;->stopEdgeGlowRecede(F)V

    goto/16 :goto_1

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0, v1, v2}, Landroid/widget/AbsListView;->pointToPosition(II)I

    move-result v3

    iget-boolean v4, p0, Landroid/widget/AbsListView;->mDataChanged:Z

    if-nez v4, :cond_6

    iget v4, p0, Landroid/widget/AbsListView;->mTouchMode:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_4

    invoke-direct {p0}, Landroid/widget/AbsListView;->createScrollingCache()V

    const/4 v4, 0x3

    iput v4, p0, Landroid/widget/AbsListView;->mTouchMode:I

    iput v0, p0, Landroid/widget/AbsListView;->mMotionCorrection:I

    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->findMotionRow(I)I

    move-result v3

    iget-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {v0}, Landroid/widget/AbsListView$FlingRunnable;->flywheelTouch()V

    :cond_3
    int-to-float v0, v1

    invoke-direct {p0, v0}, Landroid/widget/AbsListView;->stopEdgeGlowRecede(F)V

    goto :goto_0

    :cond_4
    if-ltz v3, :cond_6

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v4

    check-cast v4, Landroid/widget/ListAdapter;

    invoke-interface {v4, v3}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_6

    iput v0, p0, Landroid/widget/AbsListView;->mTouchMode:I

    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForTap:Landroid/widget/AbsListView$CheckForTap;

    if-nez v0, :cond_5

    new-instance v0, Landroid/widget/AbsListView$CheckForTap;

    const/4 v4, 0x0

    invoke-direct {v0, p0, v4}, Landroid/widget/AbsListView$CheckForTap;-><init>(Landroid/widget/AbsListView;Landroid/widget/AbsListView$CheckForTap-IA;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForTap:Landroid/widget/AbsListView$CheckForTap;

    :cond_5
    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForTap:Landroid/widget/AbsListView$CheckForTap;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iput v4, v0, Landroid/widget/AbsListView$CheckForTap;->x:F

    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForTap:Landroid/widget/AbsListView$CheckForTap;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iput v4, v0, Landroid/widget/AbsListView$CheckForTap;->y:F

    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForTap:Landroid/widget/AbsListView$CheckForTap;

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {p0, v0, v4, v5}, Landroid/widget/AbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_6
    :goto_0
    if-ltz v3, :cond_7

    iget v0, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int v0, v3, v0

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v4

    iput v4, p0, Landroid/widget/AbsListView;->mMotionViewOriginalTop:I

    :cond_7
    iput v1, p0, Landroid/widget/AbsListView;->mMotionX:I

    iput v2, p0, Landroid/widget/AbsListView;->mMotionY:I

    iput v3, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/widget/AbsListView;->mLastY:I

    :goto_1
    iget v0, p0, Landroid/widget/AbsListView;->mTouchMode:I

    if-nez v0, :cond_8

    iget v0, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_8

    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->performButtonActionOnTouchDown(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForTap:Landroid/widget/AbsListView$CheckForTap;

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_8
    return-void
.end method

.method private greylist-max-o onTouchMove(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)V
    .locals 10

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mHasPerformedLongPress:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    :cond_1
    iget-boolean v1, p0, Landroid/widget/AbsListView;->mDataChanged:Z

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/widget/AbsListView;->layoutChildren()V

    :cond_2
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    float-to-int v1, v1

    iget v2, p0, Landroid/widget/AbsListView;->mTouchMode:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    :pswitch_1
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    float-to-int v2, v2

    invoke-direct {p0, v2, v1, p2}, Landroid/widget/AbsListView;->scrollIfNeeded(IILandroid/view/MotionEvent;)V

    goto :goto_1

    :pswitch_2
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    float-to-int v2, v2

    invoke-direct {p0, v2, v1, p2}, Landroid/widget/AbsListView;->startScrollIfNeeded(IILandroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    iget v2, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    iget v6, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int/2addr v2, v6

    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    int-to-float v7, v1

    iget v8, p0, Landroid/widget/AbsListView;->mTouchSlop:I

    int-to-float v8, v8

    invoke-virtual {p0, v6, v7, v8}, Landroid/widget/AbsListView;->pointInView(FFF)Z

    move-result v7

    if-nez v7, :cond_6

    invoke-virtual {p0, v5}, Landroid/widget/AbsListView;->setPressed(Z)V

    if-eqz v2, :cond_4

    invoke-virtual {v2, v5}, Landroid/view/View;->setPressed(Z)V

    :cond_4
    iget v7, p0, Landroid/widget/AbsListView;->mTouchMode:I

    if-nez v7, :cond_5

    iget-object v7, p0, Landroid/widget/AbsListView;->mPendingCheckForTap:Landroid/widget/AbsListView$CheckForTap;

    goto :goto_0

    :cond_5
    iget-object v7, p0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    :goto_0
    invoke-virtual {p0, v7}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iput v3, p0, Landroid/widget/AbsListView;->mTouchMode:I

    invoke-virtual {p0}, Landroid/widget/AbsListView;->updateSelectorState()V

    goto :goto_1

    :cond_6
    if-eqz v2, :cond_7

    iget-object v7, p0, Landroid/widget/AbsListView;->mTmpPoint:[F

    aput v6, v7, v5

    int-to-float v8, v1

    aput v8, v7, v4

    invoke-virtual {p0, v7, v2}, Landroid/widget/AbsListView;->transformPointToViewLocal([FLandroid/view/View;)V

    aget v8, v7, v5

    aget v9, v7, v4

    invoke-virtual {v2, v8, v9}, Landroid/view/View;->drawableHotspotChanged(FF)V

    nop

    :cond_7
    :goto_1
    iget-boolean v2, p0, Landroid/widget/AbsListView;->mAppWidgetIndicator:Z

    if-eqz v2, :cond_a

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v9

    if-le v9, v4, :cond_8

    invoke-virtual {p0, v5}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {p0, v4}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    :cond_8
    if-eqz v7, :cond_9

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v4

    div-int/2addr v4, v3

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v5

    if-ge v4, v5, :cond_9

    iget v4, p0, Landroid/widget/AbsListView;->mFocusedPos:I

    if-eq v4, v2, :cond_9

    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->semInvalidateIndicator(I)V

    goto :goto_2

    :cond_9
    if-eqz v8, :cond_a

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v4

    div-int/2addr v4, v3

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v3

    if-le v4, v3, :cond_a

    iget v3, p0, Landroid/widget/AbsListView;->mFocusedPos:I

    if-eq v3, v6, :cond_a

    invoke-virtual {p0, v6}, Landroid/widget/AbsListView;->semInvalidateIndicator(I)V

    :cond_a
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private greylist-max-o onTouchUp(Landroid/view/MotionEvent;)V
    .locals 16

    move-object/from16 v0, p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onTouchUp() mTouchMode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Landroid/widget/AbsListView;->mTouchMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AbsListView"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, v0, Landroid/widget/AbsListView;->mTouchMode:I

    const/16 v3, 0x3e8

    const/4 v4, 0x2

    const/4 v5, -0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_9

    :pswitch_1
    iget-object v1, v0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-nez v1, :cond_0

    new-instance v1, Landroid/widget/AbsListView$FlingRunnable;

    invoke-direct {v1, v0}, Landroid/widget/AbsListView$FlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    iput-object v1, v0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    :cond_0
    iget-object v1, v0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v6, v0, Landroid/widget/AbsListView;->mMaximumVelocity:I

    int-to-float v6, v6

    invoke-virtual {v1, v3, v6}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    iget v3, v0, Landroid/widget/AbsListView;->mActivePointerId:I

    invoke-virtual {v1, v3}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v0, v4}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget v6, v0, Landroid/widget/AbsListView;->mMinimumVelocity:I

    if-le v4, v6, :cond_1

    iget-object v4, v0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    neg-int v6, v3

    invoke-virtual {v4, v6}, Landroid/widget/AbsListView$FlingRunnable;->startOverfling(I)V

    goto/16 :goto_9

    :cond_1
    iget-object v4, v0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {v4}, Landroid/widget/AbsListView$FlingRunnable;->startSpringback()V

    goto/16 :goto_9

    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_18

    invoke-virtual {v0, v7}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v8

    add-int/lit8 v9, v1, -0x1

    invoke-virtual {v0, v9}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v9

    iget-object v10, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v11

    iget-object v12, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v11, v12

    iget v12, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    if-nez v12, :cond_2

    if-lt v8, v10, :cond_2

    iget v12, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    add-int/2addr v12, v1

    iget v13, v0, Landroid/widget/AbsListView;->mItemCount:I

    if-ge v12, v13, :cond_2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v12

    sub-int/2addr v12, v11

    if-gt v9, v12, :cond_2

    iput v5, v0, Landroid/widget/AbsListView;->mTouchMode:I

    invoke-virtual {v0, v7}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    goto/16 :goto_3

    :cond_2
    iget-object v12, v0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v13, v0, Landroid/widget/AbsListView;->mMaximumVelocity:I

    int-to-float v13, v13

    invoke-virtual {v12, v3, v13}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    iget v3, v0, Landroid/widget/AbsListView;->mActivePointerId:I

    invoke-virtual {v12, v3}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v3

    iget v13, v0, Landroid/widget/AbsListView;->mVelocityScale:F

    mul-float/2addr v3, v13

    float-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v13

    iget v14, v0, Landroid/widget/AbsListView;->mMinimumVelocity:I

    if-le v13, v14, :cond_3

    move v13, v6

    goto :goto_0

    :cond_3
    move v13, v7

    :goto_0
    if-eqz v13, :cond_6

    iget-object v14, v0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v14}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v14

    if-nez v14, :cond_6

    iget-object v4, v0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-direct {v0, v4, v3}, Landroid/widget/AbsListView;->shouldAbsorb(Landroid/widget/EdgeEffect;I)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, v0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v4, v3}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    goto/16 :goto_3

    :cond_4
    iget-object v4, v0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-nez v4, :cond_5

    new-instance v4, Landroid/widget/AbsListView$FlingRunnable;

    invoke-direct {v4, v0}, Landroid/widget/AbsListView$FlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    iput-object v4, v0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    :cond_5
    iget-object v4, v0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    neg-int v6, v3

    invoke-virtual {v4, v6}, Landroid/widget/AbsListView$FlingRunnable;->start(I)V

    goto/16 :goto_3

    :cond_6
    if-eqz v13, :cond_9

    iget-object v14, v0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v14}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v14

    if-nez v14, :cond_9

    iget-object v4, v0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    neg-int v6, v3

    invoke-direct {v0, v4, v6}, Landroid/widget/AbsListView;->shouldAbsorb(Landroid/widget/EdgeEffect;I)Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, v0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    neg-int v6, v3

    invoke-virtual {v4, v6}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    goto/16 :goto_3

    :cond_7
    iget-object v4, v0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-nez v4, :cond_8

    new-instance v4, Landroid/widget/AbsListView$FlingRunnable;

    invoke-direct {v4, v0}, Landroid/widget/AbsListView$FlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    iput-object v4, v0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    :cond_8
    iget-object v4, v0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    neg-int v6, v3

    invoke-virtual {v4, v6}, Landroid/widget/AbsListView$FlingRunnable;->start(I)V

    goto/16 :goto_3

    :cond_9
    const/4 v14, 0x0

    if-eqz v13, :cond_e

    iget v15, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    if-nez v15, :cond_a

    iget v15, v0, Landroid/widget/AbsListView;->mOverscrollDistance:I

    sub-int v15, v10, v15

    if-eq v8, v15, :cond_e

    :cond_a
    iget v15, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    add-int/2addr v15, v1

    iget v2, v0, Landroid/widget/AbsListView;->mItemCount:I

    if-ne v15, v2, :cond_b

    iget v2, v0, Landroid/widget/AbsListView;->mOverscrollDistance:I

    add-int/2addr v2, v11

    if-eq v9, v2, :cond_e

    :cond_b
    neg-int v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v14, v2}, Landroid/widget/AbsListView;->dispatchNestedPreFling(FF)Z

    move-result v2

    if-nez v2, :cond_d

    iget-object v2, v0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-nez v2, :cond_c

    new-instance v2, Landroid/widget/AbsListView$FlingRunnable;

    invoke-direct {v2, v0}, Landroid/widget/AbsListView$FlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    iput-object v2, v0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    :cond_c
    invoke-virtual {v0, v4}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    iget-object v2, v0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    neg-int v4, v3

    invoke-virtual {v2, v4}, Landroid/widget/AbsListView$FlingRunnable;->start(I)V

    neg-int v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v14, v2, v6}, Landroid/widget/AbsListView;->dispatchNestedFling(FFZ)Z

    goto/16 :goto_3

    :cond_d
    iput v5, v0, Landroid/widget/AbsListView;->mTouchMode:I

    invoke-virtual {v0, v7}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    goto/16 :goto_3

    :cond_e
    iput v5, v0, Landroid/widget/AbsListView;->mTouchMode:I

    iget-object v2, v0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-eqz v2, :cond_f

    iget-object v2, v0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {v2}, Landroid/widget/AbsListView$FlingRunnable;->endFling()V

    :cond_f
    invoke-virtual {v0, v7}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    iget-object v2, v0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-eqz v2, :cond_10

    iget-object v2, v0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {v2}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    :cond_10
    if-eqz v13, :cond_11

    neg-int v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v14, v2}, Landroid/widget/AbsListView;->dispatchNestedPreFling(FF)Z

    move-result v2

    if-nez v2, :cond_11

    neg-int v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v14, v2, v7}, Landroid/widget/AbsListView;->dispatchNestedFling(FFZ)Z

    :cond_11
    iget-boolean v2, v0, Landroid/widget/AbsListView;->mAppWidgetSnapScroll:Z

    if-eqz v2, :cond_17

    invoke-virtual {v0, v6}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_17

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v14

    iget v15, v0, Landroid/widget/AbsListView;->mFocusedPos:I

    if-eq v14, v15, :cond_12

    move v14, v6

    goto :goto_1

    :cond_12
    move v14, v7

    :goto_1
    if-eqz v14, :cond_13

    move-object v15, v2

    goto :goto_2

    :cond_13
    invoke-virtual {v0, v7}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    :goto_2
    if-eqz v14, :cond_15

    invoke-virtual {v15}, Landroid/view/View;->getTop()I

    move-result v5

    div-int/lit8 v6, v4, 0x2

    if-le v5, v6, :cond_14

    iget v5, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    invoke-virtual {v0, v5, v7}, Landroid/widget/AbsListView;->smoothScrollToPositionFromTop(II)V

    goto :goto_3

    :cond_14
    iget v5, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    const/4 v6, 0x1

    add-int/2addr v5, v6

    invoke-virtual {v0, v5, v7}, Landroid/widget/AbsListView;->smoothScrollToPositionFromTop(II)V

    goto :goto_3

    :cond_15
    invoke-virtual {v15}, Landroid/view/View;->getBottom()I

    move-result v5

    div-int/lit8 v7, v4, 0x2

    if-ge v5, v7, :cond_16

    iget v5, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    add-int/2addr v5, v6

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/widget/AbsListView;->smoothScrollToPositionFromTop(II)V

    goto :goto_3

    :cond_16
    iget v5, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    invoke-virtual {v15}, Landroid/view/View;->getHeight()I

    move-result v6

    sub-int v6, v4, v6

    invoke-virtual {v0, v5, v6}, Landroid/widget/AbsListView;->smoothScrollToPositionFromTop(II)V

    :cond_17
    :goto_3
    goto/16 :goto_9

    :cond_18
    const/4 v2, -0x1

    iput v2, v0, Landroid/widget/AbsListView;->mTouchMode:I

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    goto/16 :goto_9

    :pswitch_3
    iget v1, v0, Landroid/widget/AbsListView;->mMotionPosition:I

    iget v2, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int v2, v1, v2

    invoke-virtual {v0, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_25

    iget v3, v0, Landroid/widget/AbsListView;->mTouchMode:I

    if-eqz v3, :cond_19

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setPressed(Z)V

    :cond_19
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iget-object v4, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    cmpl-float v4, v3, v4

    if-lez v4, :cond_1a

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v4

    iget-object v5, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    cmpg-float v4, v3, v4

    if-gez v4, :cond_1a

    const/4 v4, 0x1

    goto :goto_4

    :cond_1a
    const/4 v4, 0x0

    :goto_4
    if-eqz v4, :cond_25

    invoke-virtual {v2}, Landroid/view/View;->hasExplicitFocusable()Z

    move-result v5

    if-nez v5, :cond_25

    iget-object v5, v0, Landroid/widget/AbsListView;->mPerformClick:Landroid/widget/AbsListView$PerformClick;

    if-nez v5, :cond_1b

    new-instance v5, Landroid/widget/AbsListView$PerformClick;

    const/4 v6, 0x0

    invoke-direct {v5, v0, v6}, Landroid/widget/AbsListView$PerformClick;-><init>(Landroid/widget/AbsListView;Landroid/widget/AbsListView$PerformClick-IA;)V

    iput-object v5, v0, Landroid/widget/AbsListView;->mPerformClick:Landroid/widget/AbsListView$PerformClick;

    :cond_1b
    iget-object v5, v0, Landroid/widget/AbsListView;->mPerformClick:Landroid/widget/AbsListView$PerformClick;

    iput v1, v5, Landroid/widget/AbsListView$PerformClick;->mClickMotionPosition:I

    invoke-virtual {v5}, Landroid/widget/AbsListView$PerformClick;->rememberWindowAttachCount()V

    iput v1, v0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    iget v6, v0, Landroid/widget/AbsListView;->mTouchMode:I

    if-eqz v6, :cond_1e

    iget v6, v0, Landroid/widget/AbsListView;->mTouchMode:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1c

    goto :goto_5

    :cond_1c
    iget-boolean v6, v0, Landroid/widget/AbsListView;->mDataChanged:Z

    if-eqz v6, :cond_1d

    iget-boolean v6, v0, Landroid/widget/AbsListView;->mForcedClick:Z

    if-eqz v6, :cond_25

    :cond_1d
    iget-object v6, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v6, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v6

    if-eqz v6, :cond_25

    invoke-virtual {v5}, Landroid/widget/AbsListView$PerformClick;->run()V

    goto/16 :goto_8

    :cond_1e
    :goto_5
    iget v6, v0, Landroid/widget/AbsListView;->mTouchMode:I

    if-nez v6, :cond_1f

    iget-object v6, v0, Landroid/widget/AbsListView;->mPendingCheckForTap:Landroid/widget/AbsListView$CheckForTap;

    goto :goto_6

    :cond_1f
    iget-object v6, v0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    :goto_6
    invoke-virtual {v0, v6}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v6, 0x0

    iput v6, v0, Landroid/widget/AbsListView;->mLayoutMode:I

    iget-boolean v6, v0, Landroid/widget/AbsListView;->mDataChanged:Z

    if-nez v6, :cond_23

    iget-object v6, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v6, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v6

    if-eqz v6, :cond_23

    const/4 v6, 0x1

    iput v6, v0, Landroid/widget/AbsListView;->mTouchMode:I

    iget v7, v0, Landroid/widget/AbsListView;->mMotionPosition:I

    invoke-virtual {v0, v7}, Landroid/widget/AbsListView;->setSelectedPositionInt(I)V

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->layoutChildren()V

    invoke-virtual {v2, v6}, Landroid/view/View;->setPressed(Z)V

    iget v7, v0, Landroid/widget/AbsListView;->mMotionPosition:I

    invoke-virtual {v0, v7, v2}, Landroid/widget/AbsListView;->positionSelector(ILandroid/view/View;)V

    invoke-virtual {v0, v6}, Landroid/widget/AbsListView;->setPressed(Z)V

    iget-object v6, v0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_21

    iget-object v6, v0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-eqz v6, :cond_20

    instance-of v7, v6, Landroid/graphics/drawable/TransitionDrawable;

    if-eqz v7, :cond_20

    move-object v7, v6

    check-cast v7, Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    :cond_20
    iget-object v7, v0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    invoke-virtual {v7, v3, v8}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    :cond_21
    iget-object v6, v0, Landroid/widget/AbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    if-eqz v6, :cond_22

    iget-object v6, v0, Landroid/widget/AbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    invoke-virtual {v0, v6}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_22
    new-instance v6, Landroid/widget/AbsListView$3;

    invoke-direct {v6, v0, v2, v5}, Landroid/widget/AbsListView$3;-><init>(Landroid/widget/AbsListView;Landroid/view/View;Landroid/widget/AbsListView$PerformClick;)V

    iput-object v6, v0, Landroid/widget/AbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    iget-object v6, v0, Landroid/widget/AbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v7

    int-to-long v7, v7

    invoke-virtual {v0, v6, v7, v8}, Landroid/widget/AbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_7

    :cond_23
    const/4 v6, -0x1

    iput v6, v0, Landroid/widget/AbsListView;->mTouchMode:I

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->updateSelectorState()V

    iget-boolean v6, v0, Landroid/widget/AbsListView;->mForcedClick:Z

    if-eqz v6, :cond_24

    iget-object v6, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v6, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v6

    if-eqz v6, :cond_24

    invoke-virtual {v5}, Landroid/widget/AbsListView$PerformClick;->run()V

    :cond_24
    :goto_7
    return-void

    :cond_25
    :goto_8
    const/4 v3, -0x1

    iput v3, v0, Landroid/widget/AbsListView;->mTouchMode:I

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->updateSelectorState()V

    nop

    :goto_9
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setPressed(Z)V

    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->shouldDisplayEdgeEffects()Z

    move-result v1

    if-eqz v1, :cond_26

    iget-object v1, v0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    iget-object v1, v0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    :cond_26
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->invalidate()V

    iget-object v1, v0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->recycleVelocityTracker()V

    const/4 v1, -0x1

    iput v1, v0, Landroid/widget/AbsListView;->mActivePointerId:I

    const/4 v1, 0x0

    iput v1, v0, Landroid/widget/AbsListView;->mPointerCount:I

    iget-object v1, v0, Landroid/widget/AbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v1, :cond_27

    iget-object v1, v0, Landroid/widget/AbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    invoke-virtual {v1}, Landroid/os/StrictMode$Span;->finish()V

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/widget/AbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    :cond_27
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private greylist-max-o performStylusButtonPressAction(Landroid/view/MotionEvent;)Z
    .locals 6

    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-nez v0, :cond_0

    iget v0, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    iget v1, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    iget-object v3, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    iget v4, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    invoke-interface {v3, v4}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v3

    invoke-virtual {p0, v0, v1, v3, v4}, Landroid/widget/AbsListView;->performLongPress(Landroid/view/View;IJ)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, -0x1

    iput v5, p0, Landroid/widget/AbsListView;->mTouchMode:I

    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->setPressed(Z)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setPressed(Z)V

    const/4 v2, 0x1

    return v2

    :cond_0
    return v2
.end method

.method private greylist-max-o positionPopup()V
    .locals 6

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    const/4 v1, 0x2

    new-array v1, v1, [I

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->getLocationOnScreen([I)V

    const/4 v2, 0x1

    aget v2, v1, v2

    sub-int v2, v0, v2

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p0, Landroid/widget/AbsListView;->mDensityScale:F

    const/high16 v4, 0x41a00000    # 20.0f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    add-int/2addr v2, v3

    iget-object v3, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    iget-object v3, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    const/16 v5, 0x51

    aget v4, v1, v4

    invoke-virtual {v3, p0, v5, v4, v2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_0

    :cond_0
    iget-object v3, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    aget v4, v1, v4

    const/4 v5, -0x1

    invoke-virtual {v3, v4, v2, v5, v5}, Landroid/widget/PopupWindow;->update(IIII)V

    :goto_0
    return-void
.end method

.method private greylist positionSelector(ILandroid/view/View;ZFF)V
    .locals 8

    iget v0, p0, Landroid/widget/AbsListView;->mSelectorPosition:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const/4 v3, -0x1

    if-eq p1, v3, :cond_1

    iput p1, p0, Landroid/widget/AbsListView;->mSelectorPosition:I

    :cond_1
    iget-boolean v4, p0, Landroid/widget/AbsListView;->mAppWidgetInnerFocus:Z

    if-eqz v4, :cond_2

    const/4 v4, 0x0

    iput-object v4, p0, Landroid/widget/AbsListView;->mNextClickable:Landroid/view/View;

    iget-object v4, p0, Landroid/widget/AbsListView;->mClickableViewStates:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->clear()V

    iget v4, p0, Landroid/widget/AbsListView;->mSelectorPosition:I

    if-ne v4, v3, :cond_2

    if-eqz p2, :cond_2

    invoke-virtual {p0, p2}, Landroid/widget/AbsListView;->getPositionForView(Landroid/view/View;)I

    move-result v3

    iput v3, p0, Landroid/widget/AbsListView;->mSelectorPosition:I

    :cond_2
    iget-object v3, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v6

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v7

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    instance-of v4, p2, Landroid/widget/AbsListView$SelectionBoundsAdjuster;

    if-eqz v4, :cond_3

    move-object v4, p2

    check-cast v4, Landroid/widget/AbsListView$SelectionBoundsAdjuster;

    invoke-interface {v4, v3}, Landroid/widget/AbsListView$SelectionBoundsAdjuster;->adjustListItemSelectionBounds(Landroid/graphics/Rect;)V

    :cond_3
    instance-of v4, p0, Landroid/widget/SemExpandableListView;

    if-eqz v4, :cond_4

    instance-of v4, p2, Landroid/widget/FrameLayout;

    if-eqz v4, :cond_4

    move-object v4, p2

    check-cast v4, Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v4

    if-lez v4, :cond_4

    move-object v4, p2

    check-cast v4, Landroid/widget/FrameLayout;

    invoke-virtual {v4, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    instance-of v5, v4, Landroid/widget/AbsListView$SelectionBoundsAdjuster;

    if-eqz v5, :cond_4

    move-object v5, v4

    check-cast v5, Landroid/widget/AbsListView$SelectionBoundsAdjuster;

    invoke-interface {v5, v3}, Landroid/widget/AbsListView$SelectionBoundsAdjuster;->adjustListItemSelectionBounds(Landroid/graphics/Rect;)V

    :cond_4
    iget v4, v3, Landroid/graphics/Rect;->left:I

    iget v5, p0, Landroid/widget/AbsListView;->mSelectionLeftPadding:I

    sub-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->left:I

    iget v4, v3, Landroid/graphics/Rect;->top:I

    iget v5, p0, Landroid/widget/AbsListView;->mSelectionTopPadding:I

    sub-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->top:I

    iget v4, v3, Landroid/graphics/Rect;->right:I

    iget v5, p0, Landroid/widget/AbsListView;->mSelectionRightPadding:I

    add-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->right:I

    iget v4, v3, Landroid/graphics/Rect;->bottom:I

    iget v5, p0, Landroid/widget/AbsListView;->mSelectionBottomPadding:I

    iget v6, p2, Landroid/view/View;->mExtraPaddingBottomForPreference:I

    sub-int/2addr v5, v6

    add-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p2}, Landroid/view/View;->isEnabled()Z

    move-result v4

    iget-boolean v5, p0, Landroid/widget/AbsListView;->mIsChildViewEnabled:Z

    if-eq v5, v4, :cond_5

    iput-boolean v4, p0, Landroid/widget/AbsListView;->mIsChildViewEnabled:Z

    :cond_5
    iget-object v5, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_9

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Landroid/widget/AbsListView;->shouldShowSelector()Z

    move-result v6

    if-nez v6, :cond_6

    invoke-virtual {v5, v2, v2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    sget-object v6, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_6
    invoke-virtual {v5, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getVisibility()I

    move-result v6

    if-nez v6, :cond_7

    invoke-virtual {v5, v1, v2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    :cond_7
    invoke-virtual {p0}, Landroid/widget/AbsListView;->updateSelectorState()V

    :cond_8
    if-eqz p3, :cond_9

    invoke-virtual {v5, p4, p5}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    :cond_9
    return-void
.end method

.method private blacklist postOnJumpScrollToFinished()V
    .locals 1

    new-instance v0, Landroid/widget/AbsListView$13;

    invoke-direct {v0, p0}, Landroid/widget/AbsListView$13;-><init>(Landroid/widget/AbsListView;)V

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    return-void
.end method

.method private greylist-max-o recycleVelocityTracker()V
    .locals 1

    iget-object v0, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method

.method private blacklist releaseAllBoosters()V
    .locals 1

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mDVFSLockAcquired:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/samsung/android/os/SemPerfManager;->onScrollEvent(Z)V

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mDVFSLockAcquired:Z

    :cond_0
    return-void
.end method

.method private blacklist releaseGlow(II)I
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->getDistance()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_1

    invoke-direct {p0}, Landroid/widget/AbsListView;->canScrollUp()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    int-to-float v2, p1

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    int-to-float v3, p2

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/widget/EdgeEffect;->onPullDistance(FF)F

    move-result v0

    :goto_0
    invoke-direct {p0}, Landroid/widget/AbsListView;->invalidateEdgeEffects()V

    goto :goto_2

    :cond_1
    iget-object v1, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->getDistance()F

    move-result v1

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_3

    invoke-direct {p0}, Landroid/widget/AbsListView;->canScrollDown()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    goto :goto_1

    :cond_2
    iget-object v1, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    neg-int v2, p1

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    int-to-float v3, p2

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v4, v3

    invoke-virtual {v1, v2, v4}, Landroid/widget/EdgeEffect;->onPullDistance(FF)F

    move-result v1

    neg-float v0, v1

    :goto_1
    invoke-direct {p0}, Landroid/widget/AbsListView;->invalidateEdgeEffects()V

    :cond_3
    :goto_2
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    sub-int v2, p1, v1

    return v2
.end method

.method private blacklist reportActiveViewsToContentCapture()V
    .locals 3

    sget-boolean v0, Landroid/widget/AbsListView;->sContentCaptureReportingEnabledByDeviceConfig:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getContentCaptureSession()Landroid/view/contentcapture/ContentCaptureSession;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p0}, Landroid/view/contentcapture/ContentCaptureSession;->newViewStructure(Landroid/view/View;)Landroid/view/ViewStructure;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/widget/AbsListView;->onProvideContentCaptureStructure(Landroid/view/ViewStructure;I)V

    invoke-virtual {v0, v1}, Landroid/view/contentcapture/ContentCaptureSession;->notifyViewAppeared(Landroid/view/ViewStructure;)V

    :cond_1
    return-void
.end method

.method private greylist-max-o scrollIfNeeded(IILandroid/view/MotionEvent;)V
    .locals 33

    move-object/from16 v10, p0

    move/from16 v11, p1

    move/from16 v12, p2

    move-object/from16 v13, p3

    iget v0, v10, Landroid/widget/AbsListView;->mMotionY:I

    sub-int v0, v12, v0

    const/4 v1, 0x0

    iget v2, v10, Landroid/widget/AbsListView;->mLastY:I

    const/high16 v3, -0x80000000

    if-ne v2, v3, :cond_0

    iget v2, v10, Landroid/widget/AbsListView;->mMotionCorrection:I

    sub-int/2addr v0, v2

    :cond_0
    iget v2, v10, Landroid/widget/AbsListView;->mLastY:I

    if-eq v2, v3, :cond_1

    iget v2, v10, Landroid/widget/AbsListView;->mLastY:I

    sub-int v2, v12, v2

    goto :goto_0

    :cond_1
    move v2, v0

    :goto_0
    invoke-direct {v10, v2, v11}, Landroid/widget/AbsListView;->releaseGlow(II)I

    move-result v2

    neg-int v3, v2

    iget-object v4, v10, Landroid/widget/AbsListView;->mScrollConsumed:[I

    iget-object v5, v10, Landroid/widget/AbsListView;->mScrollOffset:[I

    const/4 v14, 0x0

    invoke-virtual {v10, v14, v3, v4, v5}, Landroid/widget/AbsListView;->dispatchNestedPreScroll(II[I[I)Z

    move-result v3

    const/4 v6, 0x0

    const/4 v15, 0x1

    if-eqz v3, :cond_3

    iget-object v3, v10, Landroid/widget/AbsListView;->mScrollConsumed:[I

    aget v3, v3, v15

    add-int/2addr v0, v3

    iget-object v3, v10, Landroid/widget/AbsListView;->mScrollOffset:[I

    aget v3, v3, v15

    neg-int v1, v3

    iget-object v3, v10, Landroid/widget/AbsListView;->mScrollConsumed:[I

    aget v3, v3, v15

    add-int/2addr v2, v3

    if-eqz v13, :cond_2

    iget-object v3, v10, Landroid/widget/AbsListView;->mScrollOffset:[I

    aget v3, v3, v15

    int-to-float v3, v3

    invoke-virtual {v13, v6, v3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    iget v3, v10, Landroid/widget/AbsListView;->mNestedYOffset:I

    iget-object v4, v10, Landroid/widget/AbsListView;->mScrollOffset:[I

    aget v4, v4, v15

    add-int/2addr v3, v4

    iput v3, v10, Landroid/widget/AbsListView;->mNestedYOffset:I

    :cond_2
    move/from16 v16, v0

    move/from16 v17, v1

    move v9, v2

    goto :goto_1

    :cond_3
    move/from16 v16, v0

    move/from16 v17, v1

    move v9, v2

    :goto_1
    move/from16 v8, v16

    const/16 v18, 0x0

    iget v0, v10, Landroid/widget/AbsListView;->mTouchMode:I

    const/high16 v19, 0x3f800000    # 1.0f

    const/4 v7, 0x5

    const/4 v5, 0x3

    if-ne v0, v5, :cond_16

    iget-object v0, v10, Landroid/widget/AbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    if-nez v0, :cond_4

    const-string v0, "AbsListView-scroll"

    invoke-static {v0}, Landroid/os/StrictMode;->enterCriticalSpan(Ljava/lang/String;)Landroid/os/StrictMode$Span;

    move-result-object v0

    iput-object v0, v10, Landroid/widget/AbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    :cond_4
    iget v0, v10, Landroid/widget/AbsListView;->mLastY:I

    if-eq v12, v0, :cond_15

    iget v0, v10, Landroid/widget/AbsListView;->mGroupFlags:I

    const/high16 v1, 0x80000

    and-int/2addr v0, v1

    if-nez v0, :cond_5

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, v10, Landroid/widget/AbsListView;->mTouchSlop:I

    if-le v0, v1, :cond_5

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-interface {v0, v15}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_5
    iget v0, v10, Landroid/widget/AbsListView;->mMotionPosition:I

    if-ltz v0, :cond_6

    iget v0, v10, Landroid/widget/AbsListView;->mMotionPosition:I

    iget v1, v10, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int/2addr v0, v1

    move v5, v0

    goto :goto_2

    :cond_6
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    move v5, v0

    :goto_2
    const/4 v0, 0x0

    invoke-virtual {v10, v5}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v0

    move/from16 v20, v0

    goto :goto_3

    :cond_7
    move/from16 v20, v0

    :goto_3
    const/4 v0, 0x0

    if-eqz v9, :cond_8

    invoke-virtual {v10, v8, v9}, Landroid/widget/AbsListView;->trackMotionScroll(II)Z

    move-result v0

    move/from16 v21, v0

    goto :goto_4

    :cond_8
    move/from16 v21, v0

    :goto_4
    invoke-virtual {v10, v5}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v22

    if-eqz v22, :cond_14

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getTop()I

    move-result v23

    if-eqz v21, :cond_12

    neg-int v0, v9

    sub-int v1, v23, v20

    sub-int v4, v0, v1

    sub-int v2, v4, v9

    const/4 v3, 0x0

    iget-object v1, v10, Landroid/widget/AbsListView;->mScrollOffset:[I

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move-object/from16 v25, v1

    move/from16 v1, v24

    move/from16 v24, v4

    move/from16 v26, v5

    move-object/from16 v5, v25

    invoke-virtual/range {v0 .. v5}, Landroid/widget/AbsListView;->dispatchNestedScroll(IIII[I)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-boolean v0, v10, Landroid/widget/AbsListView;->mSemForcedDrawEdgeEffect:Z

    if-nez v0, :cond_a

    iget-object v0, v10, Landroid/widget/AbsListView;->mScrollOffset:[I

    aget v0, v0, v15

    sub-int v18, v18, v0

    if-eqz v13, :cond_9

    iget-object v0, v10, Landroid/widget/AbsListView;->mScrollOffset:[I

    aget v0, v0, v15

    int-to-float v0, v0

    invoke-virtual {v13, v6, v0}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    iget v0, v10, Landroid/widget/AbsListView;->mNestedYOffset:I

    iget-object v1, v10, Landroid/widget/AbsListView;->mScrollOffset:[I

    aget v1, v1, v15

    add-int/2addr v0, v1

    iput v0, v10, Landroid/widget/AbsListView;->mNestedYOffset:I

    :cond_9
    move/from16 v27, v8

    move v3, v9

    goto/16 :goto_6

    :cond_a
    iget v4, v10, Landroid/widget/AbsListView;->mScrollY:I

    iget v6, v10, Landroid/widget/AbsListView;->mOverscrollDistance:I

    const/16 v25, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v0, p0

    move/from16 v2, v24

    move/from16 v29, v6

    move/from16 v6, v27

    move/from16 v7, v28

    move/from16 v27, v8

    move/from16 v8, v29

    move/from16 v30, v9

    move/from16 v9, v25

    invoke-virtual/range {v0 .. v9}, Landroid/widget/AbsListView;->overScrollBy(IIIIIIIIZ)Z

    move-result v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getOverScrollMode()I

    move-result v1

    if-eqz v1, :cond_d

    if-ne v1, v15, :cond_c

    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->contentFits()Z

    move-result v2

    if-nez v2, :cond_b

    goto :goto_5

    :cond_b
    move/from16 v3, v30

    goto :goto_6

    :cond_c
    move/from16 v3, v30

    goto :goto_6

    :cond_d
    :goto_5
    if-nez v0, :cond_e

    iput v14, v10, Landroid/widget/AbsListView;->mDirection:I

    const/4 v2, 0x5

    iput v2, v10, Landroid/widget/AbsListView;->mTouchMode:I

    :cond_e
    move/from16 v3, v30

    if-lez v3, :cond_10

    iget-object v2, v10, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    move/from16 v4, v24

    neg-int v5, v4

    int-to-float v5, v5

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    int-to-float v6, v11

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    invoke-virtual {v2, v5, v6}, Landroid/widget/EdgeEffect;->onPullDistance(FF)F

    iget-object v2, v10, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v2

    if-nez v2, :cond_f

    iget-object v2, v10, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->onRelease()V

    :cond_f
    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->invalidateEdgeEffects()V

    goto :goto_6

    :cond_10
    move/from16 v4, v24

    if-gez v3, :cond_13

    iget-object v2, v10, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    int-to-float v5, v4

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    int-to-float v6, v11

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    sub-float v6, v19, v6

    invoke-virtual {v2, v5, v6}, Landroid/widget/EdgeEffect;->onPullDistance(FF)F

    iget-object v2, v10, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v2

    if-nez v2, :cond_11

    iget-object v2, v10, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->onRelease()V

    :cond_11
    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->invalidateEdgeEffects()V

    goto :goto_6

    :cond_12
    move/from16 v26, v5

    move/from16 v27, v8

    move v3, v9

    :cond_13
    :goto_6
    add-int v0, v12, v18

    add-int v0, v0, v17

    iput v0, v10, Landroid/widget/AbsListView;->mMotionY:I

    goto :goto_7

    :cond_14
    move/from16 v26, v5

    move/from16 v27, v8

    move v3, v9

    :goto_7
    add-int v0, v12, v18

    add-int v0, v0, v17

    iput v0, v10, Landroid/widget/AbsListView;->mLastY:I

    move v9, v3

    goto/16 :goto_d

    :cond_15
    move/from16 v27, v8

    move v3, v9

    goto/16 :goto_c

    :cond_16
    move v2, v7

    move/from16 v27, v8

    move v3, v9

    iget v0, v10, Landroid/widget/AbsListView;->mTouchMode:I

    if-ne v0, v2, :cond_27

    iget v0, v10, Landroid/widget/AbsListView;->mLastY:I

    if-eq v12, v0, :cond_27

    iget v9, v10, Landroid/widget/AbsListView;->mScrollY:I

    sub-int v20, v9, v3

    iget v0, v10, Landroid/widget/AbsListView;->mLastY:I

    if-le v12, v0, :cond_17

    move v0, v15

    goto :goto_8

    :cond_17
    const/4 v0, -0x1

    :goto_8
    move v8, v0

    iget v0, v10, Landroid/widget/AbsListView;->mDirection:I

    if-nez v0, :cond_18

    iput v8, v10, Landroid/widget/AbsListView;->mDirection:I

    :cond_18
    neg-int v0, v3

    if-gez v20, :cond_19

    if-gez v9, :cond_1a

    :cond_19
    if-lez v20, :cond_1b

    if-gtz v9, :cond_1b

    :cond_1a
    neg-int v0, v9

    add-int v1, v3, v0

    move v7, v0

    move v6, v1

    goto :goto_9

    :cond_1b
    const/4 v1, 0x0

    move v7, v0

    move v6, v1

    :goto_9
    if-eqz v7, :cond_22

    iget v4, v10, Landroid/widget/AbsListView;->mScrollY:I

    iget v3, v10, Landroid/widget/AbsListView;->mOverscrollDistance:I

    const/16 v21, 0x1

    const/4 v1, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, p0

    move v2, v7

    move/from16 v26, v3

    move/from16 v3, v22

    move/from16 v5, v23

    move v14, v6

    move/from16 v6, v24

    move/from16 v31, v7

    move/from16 v7, v25

    move/from16 v32, v8

    move/from16 v8, v26

    move/from16 v23, v9

    move/from16 v9, v21

    invoke-virtual/range {v0 .. v9}, Landroid/widget/AbsListView;->overScrollBy(IIIIIIIIZ)Z

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getOverScrollMode()I

    move-result v0

    if-eqz v0, :cond_1e

    if-ne v0, v15, :cond_1d

    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->contentFits()Z

    move-result v1

    if-nez v1, :cond_1c

    goto :goto_a

    :cond_1c
    move/from16 v2, v31

    goto :goto_b

    :cond_1d
    move/from16 v2, v31

    goto :goto_b

    :cond_1e
    :goto_a
    if-lez v16, :cond_20

    iget-object v1, v10, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    move/from16 v2, v31

    int-to-float v3, v2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    int-to-float v4, v11

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-virtual {v1, v3, v4}, Landroid/widget/EdgeEffect;->onPullDistance(FF)F

    iget-object v1, v10, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    if-nez v1, :cond_1f

    iget-object v1, v10, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    :cond_1f
    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->invalidateEdgeEffects()V

    goto :goto_b

    :cond_20
    move/from16 v2, v31

    if-gez v16, :cond_23

    iget-object v1, v10, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    neg-int v3, v2

    int-to-float v3, v3

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    int-to-float v4, v11

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    sub-float v4, v19, v4

    invoke-virtual {v1, v3, v4}, Landroid/widget/EdgeEffect;->onPullDistance(FF)F

    iget-object v1, v10, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    if-nez v1, :cond_21

    iget-object v1, v10, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    :cond_21
    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->invalidateEdgeEffects()V

    goto :goto_b

    :cond_22
    move v14, v6

    move v2, v7

    move/from16 v32, v8

    move/from16 v23, v9

    :cond_23
    :goto_b
    if-eqz v14, :cond_26

    iget v0, v10, Landroid/widget/AbsListView;->mScrollY:I

    if-eqz v0, :cond_24

    const/4 v0, 0x0

    iput v0, v10, Landroid/widget/AbsListView;->mScrollY:I

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->invalidateParentIfNeeded()V

    :cond_24
    invoke-virtual {v10, v14, v14}, Landroid/widget/AbsListView;->trackMotionScroll(II)Z

    const/4 v0, 0x3

    iput v0, v10, Landroid/widget/AbsListView;->mTouchMode:I

    invoke-virtual {v10, v12}, Landroid/widget/AbsListView;->findClosestMotionRow(I)I

    move-result v0

    const/4 v1, 0x0

    iput v1, v10, Landroid/widget/AbsListView;->mMotionCorrection:I

    iget v3, v10, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int v3, v0, v3

    invoke-virtual {v10, v3}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_25

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v1

    :cond_25
    iput v1, v10, Landroid/widget/AbsListView;->mMotionViewOriginalTop:I

    add-int v1, v12, v17

    iput v1, v10, Landroid/widget/AbsListView;->mMotionY:I

    iput v0, v10, Landroid/widget/AbsListView;->mMotionPosition:I

    :cond_26
    add-int v0, v12, v18

    add-int v0, v0, v17

    iput v0, v10, Landroid/widget/AbsListView;->mLastY:I

    move/from16 v0, v32

    iput v0, v10, Landroid/widget/AbsListView;->mDirection:I

    move v9, v14

    goto :goto_d

    :cond_27
    :goto_c
    move v9, v3

    :goto_d
    return-void
.end method

.method private blacklist scrollToPositionFromTop(II)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/widget/AbsListView;->setSelectionFromTop(II)V

    return-void
.end method

.method private blacklist semGetEnableVibrationAtLongPress()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mEnableVibrationAtLongPress:Z

    return v0
.end method

.method private blacklist semIsSupportGotoTop()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mSemEnableGoToTop:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/widget/AbsListView;->semIsTalkBackIsRunning()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private blacklist semIsTalkBackIsRunning()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityManager;->semIsAccessibilityServiceEnabled(I)Z

    move-result v2

    if-nez v2, :cond_1

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityManager;->semIsAccessibilityServiceEnabled(I)Z

    move-result v2

    if-nez v2, :cond_1

    const/16 v2, 0x40

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityManager;->semIsAccessibilityServiceEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    move v0, v2

    :cond_2
    return v0
.end method

.method private blacklist semMultiSelection(IIIIZ)V
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p4

    iget v4, v0, Landroid/widget/AbsListView;->mTouchdownX:I

    sub-int v4, v1, v4

    iget v5, v0, Landroid/widget/AbsListView;->mTouchdownY:I

    sub-int v5, v2, v5

    mul-int v6, v4, v4

    mul-int v7, v5, v5

    add-int/2addr v6, v7

    iget v7, v0, Landroid/widget/AbsListView;->mTouchSlop:I

    iget v8, v0, Landroid/widget/AbsListView;->mTouchSlop:I

    mul-int/2addr v7, v8

    const/4 v8, 0x1

    if-le v6, v7, :cond_0

    iput-boolean v8, v0, Landroid/widget/AbsListView;->mIsMovedbeforeUP:Z

    :cond_0
    iget-boolean v6, v0, Landroid/widget/AbsListView;->mIsNeedPenSelection:Z

    const/4 v7, 0x0

    if-eqz v6, :cond_18

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v6

    iget-boolean v9, v0, Landroid/widget/AbsListView;->mIsfirstMoveEvent:Z

    const/4 v10, -0x1

    if-eqz v9, :cond_5

    iput v1, v0, Landroid/widget/AbsListView;->mSemDragStartX:I

    iput v2, v0, Landroid/widget/AbsListView;->mSemDragStartY:I

    invoke-super/range {p0 .. p2}, Landroid/widget/AdapterView;->semNotifyMultiSelectedStart(II)V

    iput-boolean v8, v0, Landroid/widget/AbsListView;->mIsPenPressed:Z

    invoke-virtual/range {p0 .. p2}, Landroid/widget/AbsListView;->pointToPosition(II)I

    move-result v9

    iput v9, v0, Landroid/widget/AbsListView;->mSemTrackedChildPosition:I

    iget v9, v0, Landroid/widget/AbsListView;->mSemTrackedChildPosition:I

    if-ne v9, v10, :cond_2

    invoke-virtual/range {p0 .. p2}, Landroid/widget/AbsListView;->semPointToNearPosition(II)I

    move-result v9

    iput v9, v0, Landroid/widget/AbsListView;->mSemTrackedChildPosition:I

    iget v9, v0, Landroid/widget/AbsListView;->mSemTrackedChildPosition:I

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v11

    sub-int/2addr v9, v11

    invoke-virtual {v0, v9}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    iput-object v9, v0, Landroid/widget/AbsListView;->mSemTrackedChild:Landroid/view/View;

    iget-object v9, v0, Landroid/widget/AbsListView;->mSemTrackedChild:Landroid/view/View;

    if-nez v9, :cond_3

    iget v9, v0, Landroid/widget/AbsListView;->mSemCloseChildPositionByTop:I

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v11

    sub-int/2addr v9, v11

    invoke-virtual {v0, v9}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    iput-object v9, v0, Landroid/widget/AbsListView;->mSemCloseChildByTop:Landroid/view/View;

    iget-object v9, v0, Landroid/widget/AbsListView;->mSemCloseChildByTop:Landroid/view/View;

    if-eqz v9, :cond_1

    iget v9, v0, Landroid/widget/AbsListView;->mSemDragStartY:I

    iget-object v11, v0, Landroid/widget/AbsListView;->mSemCloseChildByTop:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v11

    sub-int/2addr v9, v11

    iput v9, v0, Landroid/widget/AbsListView;->mSemDistanceFromCloseChildTop:I

    :cond_1
    iget v9, v0, Landroid/widget/AbsListView;->mSemCloseChildPositionByBottom:I

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v11

    sub-int/2addr v9, v11

    invoke-virtual {v0, v9}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    iput-object v9, v0, Landroid/widget/AbsListView;->mSemCloseChildByBottom:Landroid/view/View;

    iget-object v9, v0, Landroid/widget/AbsListView;->mSemCloseChildByBottom:Landroid/view/View;

    if-eqz v9, :cond_3

    iget v9, v0, Landroid/widget/AbsListView;->mSemDragStartY:I

    iget-object v11, v0, Landroid/widget/AbsListView;->mSemCloseChildByBottom:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v11

    sub-int/2addr v9, v11

    iput v9, v0, Landroid/widget/AbsListView;->mSemDistanceFromCloseChildBottom:I

    goto :goto_0

    :cond_2
    iget v9, v0, Landroid/widget/AbsListView;->mSemTrackedChildPosition:I

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v11

    sub-int/2addr v9, v11

    invoke-virtual {v0, v9}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    iput-object v9, v0, Landroid/widget/AbsListView;->mSemTrackedChild:Landroid/view/View;

    :cond_3
    :goto_0
    iget-object v9, v0, Landroid/widget/AbsListView;->mSemTrackedChild:Landroid/view/View;

    if-eqz v9, :cond_4

    iget v9, v0, Landroid/widget/AbsListView;->mSemDragStartY:I

    iget-object v11, v0, Landroid/widget/AbsListView;->mSemTrackedChild:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v11

    sub-int/2addr v9, v11

    iput v9, v0, Landroid/widget/AbsListView;->mSemDistanceFromTrackedChildTop:I

    :cond_4
    iput-boolean v7, v0, Landroid/widget/AbsListView;->mIsfirstMoveEvent:Z

    :cond_5
    iget v9, v0, Landroid/widget/AbsListView;->mSemDragStartX:I

    if-nez v9, :cond_6

    iget v9, v0, Landroid/widget/AbsListView;->mSemDragStartY:I

    if-nez v9, :cond_6

    iput v1, v0, Landroid/widget/AbsListView;->mSemDragStartX:I

    iput v2, v0, Landroid/widget/AbsListView;->mSemDragStartY:I

    invoke-super/range {p0 .. p2}, Landroid/widget/AdapterView;->semNotifyMultiSelectedStart(II)V

    iput-boolean v8, v0, Landroid/widget/AbsListView;->mIsPenPressed:Z

    :cond_6
    iput v1, v0, Landroid/widget/AbsListView;->mSemDragEndX:I

    iput v2, v0, Landroid/widget/AbsListView;->mSemDragEndY:I

    iget v9, v0, Landroid/widget/AbsListView;->mSemDragEndY:I

    if-gez v9, :cond_7

    iput v7, v0, Landroid/widget/AbsListView;->mSemDragEndY:I

    goto :goto_1

    :cond_7
    iget v9, v0, Landroid/widget/AbsListView;->mSemDragEndY:I

    if-le v9, v3, :cond_8

    iput v3, v0, Landroid/widget/AbsListView;->mSemDragEndY:I

    :cond_8
    :goto_1
    invoke-virtual/range {p0 .. p2}, Landroid/widget/AbsListView;->pointToPosition(II)I

    move-result v9

    iput v9, v0, Landroid/widget/AbsListView;->mSemDragSelectedViewPosition:I

    iget v9, v0, Landroid/widget/AbsListView;->mSemDragStartX:I

    iget v11, v0, Landroid/widget/AbsListView;->mSemDragEndX:I

    invoke-static {v9, v11}, Ljava/lang/Math;->min(II)I

    move-result v9

    iput v9, v0, Landroid/widget/AbsListView;->mSemDragBlockLeft:I

    iget v9, v0, Landroid/widget/AbsListView;->mSemDragStartY:I

    iget v11, v0, Landroid/widget/AbsListView;->mSemDragEndY:I

    invoke-static {v9, v11}, Ljava/lang/Math;->min(II)I

    move-result v9

    iput v9, v0, Landroid/widget/AbsListView;->mSemDragBlockTop:I

    iget v9, v0, Landroid/widget/AbsListView;->mSemDragEndX:I

    iget v11, v0, Landroid/widget/AbsListView;->mSemDragStartX:I

    invoke-static {v9, v11}, Ljava/lang/Math;->max(II)I

    move-result v9

    iput v9, v0, Landroid/widget/AbsListView;->mSemDragBlockRight:I

    iget v9, v0, Landroid/widget/AbsListView;->mSemDragEndY:I

    iget v11, v0, Landroid/widget/AbsListView;->mSemDragStartY:I

    invoke-static {v9, v11}, Ljava/lang/Math;->max(II)I

    move-result v9

    iput v9, v0, Landroid/widget/AbsListView;->mSemDragBlockBottom:I

    const/4 v9, 0x0

    :goto_2
    if-ge v9, v6, :cond_17

    invoke-virtual {v0, v9}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    if-eqz v11, :cond_15

    invoke-virtual {v11}, Landroid/view/View;->getLeft()I

    move-result v12

    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v13

    invoke-virtual {v11}, Landroid/view/View;->getRight()I

    move-result v14

    invoke-virtual {v11}, Landroid/view/View;->getBottom()I

    move-result v15

    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v16

    if-nez v16, :cond_14

    iget v7, v0, Landroid/widget/AbsListView;->mSemDragBlockLeft:I

    if-le v7, v12, :cond_9

    iget v7, v0, Landroid/widget/AbsListView;->mSemDragBlockTop:I

    if-le v7, v13, :cond_9

    iget v7, v0, Landroid/widget/AbsListView;->mSemDragBlockRight:I

    if-ge v7, v14, :cond_9

    iget v7, v0, Landroid/widget/AbsListView;->mSemDragBlockBottom:I

    if-lt v7, v15, :cond_f

    :cond_9
    iget v7, v0, Landroid/widget/AbsListView;->mSemDragBlockLeft:I

    if-le v7, v12, :cond_a

    iget v7, v0, Landroid/widget/AbsListView;->mSemDragBlockRight:I

    if-lt v7, v14, :cond_c

    :cond_a
    iget v7, v0, Landroid/widget/AbsListView;->mSemDragBlockLeft:I

    if-ge v7, v12, :cond_b

    iget v7, v0, Landroid/widget/AbsListView;->mSemDragBlockRight:I

    if-gt v7, v12, :cond_c

    :cond_b
    iget v7, v0, Landroid/widget/AbsListView;->mSemDragBlockLeft:I

    if-ge v7, v14, :cond_13

    iget v7, v0, Landroid/widget/AbsListView;->mSemDragBlockRight:I

    if-le v7, v14, :cond_13

    :cond_c
    iget v7, v0, Landroid/widget/AbsListView;->mSemDragBlockTop:I

    if-lt v7, v13, :cond_d

    iget v7, v0, Landroid/widget/AbsListView;->mSemDragBlockBottom:I

    if-le v7, v15, :cond_f

    :cond_d
    iget v7, v0, Landroid/widget/AbsListView;->mSemDragBlockTop:I

    if-gt v7, v13, :cond_e

    iget v7, v0, Landroid/widget/AbsListView;->mSemDragBlockBottom:I

    if-gt v7, v13, :cond_f

    :cond_e
    iget v7, v0, Landroid/widget/AbsListView;->mSemDragBlockTop:I

    if-ge v7, v15, :cond_13

    iget v7, v0, Landroid/widget/AbsListView;->mSemDragBlockBottom:I

    if-lt v7, v15, :cond_13

    :cond_f
    add-int/lit8 v7, v12, 0x1

    add-int/lit8 v8, v13, 0x1

    invoke-virtual {v0, v7, v8}, Landroid/widget/AbsListView;->pointToPosition(II)I

    move-result v7

    iput v7, v0, Landroid/widget/AbsListView;->mSemDragSelectedViewPosition:I

    iget v7, v0, Landroid/widget/AbsListView;->mSemDragSelectedViewPosition:I

    if-eq v7, v10, :cond_12

    iget-object v7, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    iget v8, v0, Landroid/widget/AbsListView;->mSemDragSelectedViewPosition:I

    invoke-interface {v7, v8}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v7

    if-eqz v7, :cond_12

    iget-object v7, v0, Landroid/widget/AbsListView;->mSemDragSelectedItemArray:Ljava/util/ArrayList;

    iget v8, v0, Landroid/widget/AbsListView;->mSemDragSelectedViewPosition:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_11

    iget-object v7, v0, Landroid/widget/AbsListView;->mSemDragSelectedItemArray:Ljava/util/ArrayList;

    iget v8, v0, Landroid/widget/AbsListView;->mSemDragSelectedViewPosition:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v7, v0, Landroid/widget/AbsListView;->mSemMultiSelectionListener:Landroid/widget/AdapterView$SemMultiSelectionListener;

    if-nez v7, :cond_10

    iget v7, v0, Landroid/widget/AbsListView;->mSemDragSelectedViewPosition:I

    invoke-direct {v0, v7, v10}, Landroid/widget/AbsListView;->addToPressItemListArray(II)V

    iget v7, v0, Landroid/widget/AbsListView;->mSemDragSelectedViewPosition:I

    iget v8, v0, Landroid/widget/AbsListView;->mSemDragSelectedViewPosition:I

    move/from16 v17, v4

    move/from16 v18, v5

    invoke-virtual {v0, v8}, Landroid/widget/AbsListView;->getItemIdAtPosition(I)J

    move-result-wide v4

    invoke-direct {v0, v11, v7, v4, v5}, Landroid/widget/AbsListView;->semToNotifyMultiSelectionState(Landroid/view/View;IJ)Z

    goto :goto_3

    :cond_10
    move/from16 v17, v4

    move/from16 v18, v5

    goto :goto_3

    :cond_11
    move/from16 v17, v4

    move/from16 v18, v5

    goto :goto_3

    :cond_12
    move/from16 v17, v4

    move/from16 v18, v5

    goto :goto_3

    :cond_13
    move/from16 v17, v4

    move/from16 v18, v5

    add-int/lit8 v4, v12, 0x1

    add-int/lit8 v5, v13, 0x1

    invoke-virtual {v0, v4, v5}, Landroid/widget/AbsListView;->pointToPosition(II)I

    move-result v4

    iput v4, v0, Landroid/widget/AbsListView;->mSemDragSelectedViewPosition:I

    iget v4, v0, Landroid/widget/AbsListView;->mSemDragSelectedViewPosition:I

    if-eq v4, v10, :cond_16

    iget-object v4, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    iget v5, v0, Landroid/widget/AbsListView;->mSemDragSelectedViewPosition:I

    invoke-interface {v4, v5}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_16

    iget-object v4, v0, Landroid/widget/AbsListView;->mSemDragSelectedItemArray:Ljava/util/ArrayList;

    iget v5, v0, Landroid/widget/AbsListView;->mSemDragSelectedViewPosition:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16

    iget-object v4, v0, Landroid/widget/AbsListView;->mSemDragSelectedItemArray:Ljava/util/ArrayList;

    iget v5, v0, Landroid/widget/AbsListView;->mSemDragSelectedViewPosition:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v4, v0, Landroid/widget/AbsListView;->mSemMultiSelectionListener:Landroid/widget/AdapterView$SemMultiSelectionListener;

    if-nez v4, :cond_16

    iget v4, v0, Landroid/widget/AbsListView;->mSemDragSelectedViewPosition:I

    invoke-direct {v0, v4, v10}, Landroid/widget/AbsListView;->addToPressItemListArray(II)V

    iget v4, v0, Landroid/widget/AbsListView;->mSemDragSelectedViewPosition:I

    iget v5, v0, Landroid/widget/AbsListView;->mSemDragSelectedViewPosition:I

    invoke-virtual {v0, v5}, Landroid/widget/AbsListView;->getItemIdAtPosition(I)J

    move-result-wide v7

    invoke-direct {v0, v11, v4, v7, v8}, Landroid/widget/AbsListView;->semToNotifyMultiSelectionState(Landroid/view/View;IJ)Z

    goto :goto_3

    :cond_14
    move/from16 v17, v4

    move/from16 v18, v5

    goto :goto_3

    :cond_15
    move/from16 v17, v4

    move/from16 v18, v5

    :cond_16
    :goto_3
    add-int/lit8 v9, v9, 0x1

    move/from16 v4, v17

    move/from16 v5, v18

    const/4 v7, 0x0

    const/4 v8, 0x1

    goto/16 :goto_2

    :cond_17
    move/from16 v17, v4

    move/from16 v18, v5

    const/4 v4, 0x1

    goto :goto_4

    :cond_18
    move/from16 v17, v4

    move/from16 v18, v5

    move/from16 v4, p5

    :goto_4
    if-eqz v4, :cond_22

    iget v5, v0, Landroid/widget/AbsListView;->mHoverTopAreaHeight:I

    add-int v5, p3, v5

    if-gt v2, v5, :cond_1b

    iget-boolean v5, v0, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    if-nez v5, :cond_19

    const/4 v5, 0x1

    iput-boolean v5, v0, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v0, Landroid/widget/AbsListView;->mHoverScrollStartTime:J

    iget-object v6, v0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v6, :cond_1a

    iget-object v6, v0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v6, v0, v5}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    goto :goto_5

    :cond_19
    const/4 v5, 0x1

    :cond_1a
    :goto_5
    iget-object v6, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    invoke-virtual {v6, v5}, Landroid/widget/AbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v6

    if-nez v6, :cond_21

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v0, Landroid/widget/AbsListView;->mHoverRecognitionStartTime:J

    const/4 v6, 0x2

    iput v6, v0, Landroid/widget/AbsListView;->mHoverScrollDirection:I

    iget-object v6, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    invoke-virtual {v6, v5}, Landroid/widget/AbsListView$HoverScrollHandler;->sendEmptyMessage(I)Z

    goto :goto_7

    :cond_1b
    iget v5, v0, Landroid/widget/AbsListView;->mHoverBottomAreaHeight:I

    sub-int v5, v3, v5

    if-lt v2, v5, :cond_1e

    iget-boolean v5, v0, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    if-nez v5, :cond_1c

    const/4 v5, 0x1

    iput-boolean v5, v0, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v0, Landroid/widget/AbsListView;->mHoverScrollStartTime:J

    iget-object v6, v0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v6, :cond_1d

    iget-object v6, v0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v6, v0, v5}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    goto :goto_6

    :cond_1c
    const/4 v5, 0x1

    :cond_1d
    :goto_6
    iget-object v6, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    invoke-virtual {v6, v5}, Landroid/widget/AbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v6

    if-nez v6, :cond_21

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v0, Landroid/widget/AbsListView;->mHoverRecognitionStartTime:J

    iput v5, v0, Landroid/widget/AbsListView;->mHoverScrollDirection:I

    iget-object v6, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    invoke-virtual {v6, v5}, Landroid/widget/AbsListView$HoverScrollHandler;->sendEmptyMessage(I)Z

    goto :goto_7

    :cond_1e
    iget-boolean v5, v0, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    if-eqz v5, :cond_1f

    iget-object v5, v0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v5, :cond_1f

    iget-object v5, v0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    const/4 v6, 0x0

    invoke-interface {v5, v0, v6}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    :cond_1f
    const-wide/16 v5, 0x0

    iput-wide v5, v0, Landroid/widget/AbsListView;->mHoverScrollStartTime:J

    iput-wide v5, v0, Landroid/widget/AbsListView;->mHoverRecognitionStartTime:J

    const/4 v5, 0x0

    iput-boolean v5, v0, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    iget-object v5, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/AbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v5

    if-eqz v5, :cond_20

    iget-object v5, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    invoke-virtual {v5, v6}, Landroid/widget/AbsListView$HoverScrollHandler;->removeMessages(I)V

    :cond_20
    const/4 v5, 0x0

    iput-boolean v5, v0, Landroid/widget/AbsListView;->mIsHoverOverscrolled:Z

    :cond_21
    :goto_7
    iget-boolean v5, v0, Landroid/widget/AbsListView;->mIsDragBlockEnabled:Z

    if-eqz v5, :cond_23

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->invalidate()V

    goto :goto_8

    :cond_22
    iget-boolean v5, v0, Landroid/widget/AbsListView;->mPreviousTextViewScroll:Z

    if-eqz v5, :cond_23

    iget-object v5, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/AbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v5

    if-eqz v5, :cond_23

    iget-object v5, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    invoke-virtual {v5, v6}, Landroid/widget/AbsListView$HoverScrollHandler;->removeMessages(I)V

    :cond_23
    :goto_8
    iput-boolean v4, v0, Landroid/widget/AbsListView;->mPreviousTextViewScroll:Z

    return-void
.end method

.method private blacklist semMultiSelectionEnd(III)V
    .locals 6

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mIsTextSelectionStarted:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_5

    const/16 v0, 0xd4

    if-ne p1, v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mIsFirstPenClick:Z

    xor-int/2addr v0, v2

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mIsFirstPenClick:Z

    :cond_0
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p0, v3}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    :cond_1
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Landroid/widget/AbsListView;->mHoverRecognitionStartTime:J

    iput-wide v4, p0, Landroid/widget/AbsListView;->mHoverScrollStartTime:J

    iput-boolean v3, p0, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    iget-object v0, p0, Landroid/widget/AbsListView;->mSemDragSelectedItemArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Landroid/widget/AbsListView;->mSemDragSelectedItemSize:I

    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForDoublePenClick:Landroid/widget/AbsListView$CheckForDoublePenClick;

    if-nez v0, :cond_2

    new-instance v0, Landroid/widget/AbsListView$CheckForDoublePenClick;

    invoke-direct {v0, p0, v1}, Landroid/widget/AbsListView$CheckForDoublePenClick;-><init>(Landroid/widget/AbsListView;Landroid/widget/AbsListView$CheckForDoublePenClick-IA;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForDoublePenClick:Landroid/widget/AbsListView$CheckForDoublePenClick;

    :cond_2
    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForDoublePenClick:Landroid/widget/AbsListView$CheckForDoublePenClick;

    iput p2, v0, Landroid/widget/AbsListView$CheckForDoublePenClick;->x:I

    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForDoublePenClick:Landroid/widget/AbsListView$CheckForDoublePenClick;

    iput p3, v0, Landroid/widget/AbsListView$CheckForDoublePenClick;->y:I

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mIsFirstPenClick:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mIsMovedbeforeUP:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForDoublePenClick:Landroid/widget/AbsListView$CheckForDoublePenClick;

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_3
    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForDoublePenClick:Landroid/widget/AbsListView$CheckForDoublePenClick;

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {p0, v0, v4, v5}, Landroid/widget/AbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_4
    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForDoublePenClick:Landroid/widget/AbsListView$CheckForDoublePenClick;

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Landroid/widget/AbsListView;->mSemDragSelectedItemArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iput v3, p0, Landroid/widget/AbsListView;->mSemDragSelectedItemSize:I

    :cond_5
    :goto_0
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mIsPenPressed:Z

    iput-boolean v2, p0, Landroid/widget/AbsListView;->mIsfirstMoveEvent:Z

    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/AbsListView;->mSemDragSelectedViewPosition:I

    iput v3, p0, Landroid/widget/AbsListView;->mSemDragStartX:I

    iput v3, p0, Landroid/widget/AbsListView;->mSemDragStartY:I

    iput v3, p0, Landroid/widget/AbsListView;->mSemDragEndX:I

    iput v3, p0, Landroid/widget/AbsListView;->mSemDragEndY:I

    iput v3, p0, Landroid/widget/AbsListView;->mSemDragBlockLeft:I

    iput v3, p0, Landroid/widget/AbsListView;->mSemDragBlockTop:I

    iput v3, p0, Landroid/widget/AbsListView;->mSemDragBlockRight:I

    iput v3, p0, Landroid/widget/AbsListView;->mSemDragBlockBottom:I

    iput-object v1, p0, Landroid/widget/AbsListView;->mSemTrackedChild:Landroid/view/View;

    iput v3, p0, Landroid/widget/AbsListView;->mSemDistanceFromTrackedChildTop:I

    iput-boolean v3, p0, Landroid/widget/AbsListView;->mIsCloseChildSetted:Z

    iput v0, p0, Landroid/widget/AbsListView;->mOldHoverScrollDirection:I

    iput-object v1, p0, Landroid/widget/AbsListView;->mSemCloseChildByTop:Landroid/view/View;

    iput v0, p0, Landroid/widget/AbsListView;->mSemCloseChildPositionByTop:I

    iput v3, p0, Landroid/widget/AbsListView;->mSemDistanceFromCloseChildTop:I

    iput-object v1, p0, Landroid/widget/AbsListView;->mSemCloseChildByBottom:Landroid/view/View;

    iput v0, p0, Landroid/widget/AbsListView;->mSemCloseChildPositionByBottom:I

    iput v3, p0, Landroid/widget/AbsListView;->mSemDistanceFromCloseChildBottom:I

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mIsDragBlockEnabled:Z

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidate()V

    :cond_6
    iget-object v0, p0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    invoke-virtual {v0, v2}, Landroid/widget/AbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    invoke-virtual {v0, v2}, Landroid/widget/AbsListView$HoverScrollHandler;->removeMessages(I)V

    :cond_7
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mIsMovedbeforeUP:Z

    return-void
.end method

.method private blacklist semPerformItemCheck(Landroid/view/View;IJ)V
    .locals 8

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v1, :cond_5

    iget v1, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget v1, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_5

    iget-object v1, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_5

    :cond_0
    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x0

    invoke-virtual {v1, p2, v2}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p2, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    iget-object v2, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz v1, :cond_1

    iget-object v2, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v3, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v3, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroid/util/LongSparseArray;->delete(J)V

    :cond_2
    :goto_0
    if-eqz v1, :cond_3

    iget v2, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    goto :goto_1

    :cond_3
    iget v2, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    :goto_1
    iget-object v2, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    iget-object v3, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    move v4, p2

    move-wide v5, p3

    move v7, v1

    invoke-virtual/range {v2 .. v7}, Landroid/widget/AbsListView$MultiChoiceModeWrapper;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    :cond_4
    const/4 v0, 0x1

    :cond_5
    if-eqz v0, :cond_6

    invoke-direct {p0}, Landroid/widget/AbsListView;->updateOnScreenCheckedViews()V

    :cond_6
    return-void
.end method

.method private blacklist semPlayGotoToFadeIn()V
    .locals 3

    iget-object v0, p0, Landroid/widget/AbsListView;->mSemGoToTopFadeInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mSemGoToTopFadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/AbsListView;->mSemGoToTopFadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    iget-object v0, p0, Landroid/widget/AbsListView;->mSemGoToTopFadeInAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Landroid/widget/AbsListView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v1

    const/16 v2, 0xff

    filled-new-array {v1, v2}, [I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    iget-object v0, p0, Landroid/widget/AbsListView;->mSemGoToTopFadeInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private blacklist semPlayGotoToFadeOut()V
    .locals 3

    iget-object v0, p0, Landroid/widget/AbsListView;->mSemGoToTopFadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mSemGoToTopFadeInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/AbsListView;->mSemGoToTopFadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    iget-object v0, p0, Landroid/widget/AbsListView;->mSemGoToTopFadeOutAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Landroid/widget/AbsListView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v1

    const/4 v2, 0x0

    filled-new-array {v1, v2}, [I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    iget-object v0, p0, Landroid/widget/AbsListView;->mSemGoToTopFadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private blacklist semPlayGotoTopHideImmediatley()V
    .locals 2

    iget-object v0, p0, Landroid/widget/AbsListView;->mSemGoToTopFadeInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mSemGoToTopFadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/AbsListView;->mSemGoToTopFadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    iget-object v0, p0, Landroid/widget/AbsListView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    return-void
.end method

.method private blacklist semSendBroadcastPositionInternal(Ljava/lang/String;Landroid/content/Intent;)V
    .locals 4

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    const/4 v1, 0x0

    aget-object v3, v0, v1

    if-eqz v3, :cond_1

    aget-object v3, v0, v2

    if-eqz v3, :cond_1

    aget-object v3, v0, v1

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    aget-object v3, v0, v1

    invoke-virtual {p2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v3, Landroid/content/ComponentName;

    aget-object v1, v0, v1

    aget-object v2, v0, v2

    invoke-direct {v3, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    array-length v1, v0

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    const/4 v1, 0x2

    aget-object v2, v0, v1

    if-eqz v2, :cond_0

    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    aget-object v1, v0, v1

    invoke-virtual {v2, p2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private blacklist semSetFastScrollEnabledUiThread(Z)V
    .locals 2

    iget-object v0, p0, Landroid/widget/AbsListView;->mSemFastScroll:Landroid/widget/SemFastScroller;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mSemFastScroll:Landroid/widget/SemFastScroller;

    invoke-virtual {v0, p1}, Landroid/widget/SemFastScroller;->setEnabled(Z)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    new-instance v0, Landroid/widget/SemFastScroller;

    iget v1, p0, Landroid/widget/AbsListView;->mFastScrollStyle:I

    invoke-direct {v0, p0, v1}, Landroid/widget/SemFastScroller;-><init>(Landroid/widget/AbsListView;I)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mSemFastScroll:Landroid/widget/SemFastScroller;

    iget-object v0, p0, Landroid/widget/AbsListView;->mSemFastScroll:Landroid/widget/SemFastScroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/SemFastScroller;->setEnabled(Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    :cond_1
    :goto_0
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mAppWidgetFastScroll:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/AbsListView;->mSemFastScroll:Landroid/widget/SemFastScroller;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SemFastScroller;->semSetUseOpenThemeResources(Z)V

    :cond_2
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resolvePadding()V

    iget-object v0, p0, Landroid/widget/AbsListView;->mSemFastScroll:Landroid/widget/SemFastScroller;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/widget/AbsListView;->mSemFastScroll:Landroid/widget/SemFastScroller;

    invoke-virtual {v0}, Landroid/widget/SemFastScroller;->updateLayout()V

    :cond_3
    return-void
.end method

.method private blacklist semToNotifyMultiSelectionEnded(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/widget/AdapterView;->semNotifyMultiSelectedStop(II)V

    return-void
.end method

.method private blacklist semToNotifyMultiSelectionState(Landroid/view/View;IJ)Z
    .locals 9

    const/4 v0, 0x0

    iget-boolean v6, p0, Landroid/widget/AbsListView;->mIsShiftkeyPressed:Z

    iget-boolean v7, p0, Landroid/widget/AbsListView;->mIsCtrlkeyPressed:Z

    iget-boolean v8, p0, Landroid/widget/AbsListView;->mIsPenPressed:Z

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-super/range {v1 .. v8}, Landroid/widget/AdapterView;->semNotifyMultiSelectedState(Landroid/view/View;IJZZZ)Z

    move-result v0

    return v0
.end method

.method private greylist-max-o setFastScrollerAlwaysVisibleUiThread(Z)V
    .locals 1

    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {v0, p1}, Landroid/widget/FastScroller;->setAlwaysShow(Z)V

    :cond_0
    return-void
.end method

.method private greylist-max-o setFastScrollerEnabledUiThread(Z)V
    .locals 2

    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {v0, p1}, Landroid/widget/FastScroller;->setEnabled(Z)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    new-instance v0, Landroid/widget/FastScroller;

    iget v1, p0, Landroid/widget/AbsListView;->mFastScrollStyle:I

    invoke-direct {v0, p0, v1}, Landroid/widget/FastScroller;-><init>(Landroid/widget/AbsListView;I)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/FastScroller;->setEnabled(Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/AbsListView;->mSemFastScroll:Landroid/widget/SemFastScroller;

    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resolvePadding()V

    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {v0}, Landroid/widget/FastScroller;->updateLayout()V

    :cond_2
    return-void
.end method

.method private greylist-max-o setItemViewLayoutParams(Landroid/view/View;I)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/AbsListView$LayoutParams;

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/AbsListView$LayoutParams;

    goto :goto_0

    :cond_1
    move-object v1, v0

    check-cast v1, Landroid/widget/AbsListView$LayoutParams;

    :goto_0
    iget-boolean v2, p0, Landroid/widget/AbsListView;->mAdapterHasStableIds:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    iput-wide v2, v1, Landroid/widget/AbsListView$LayoutParams;->itemId:J

    :cond_2
    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p2}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v2

    iput v2, v1, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p2}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v2

    iput-boolean v2, v1, Landroid/widget/AbsListView$LayoutParams;->isEnabled:Z

    if-eq v1, v0, :cond_3

    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    return-void
.end method

.method private static blacklist setupDeviceConfigProperties()V
    .locals 3

    sget-object v0, Landroid/widget/AbsListView;->sDeviceConfigChangeListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    if-nez v0, :cond_0

    const-string/jumbo v0, "report_list_view_children"

    const/4 v1, 0x0

    const-string v2, "content_capture"

    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/widget/AbsListView;->sContentCaptureReportingEnabledByDeviceConfig:Z

    new-instance v0, Landroid/widget/AbsListView$DeviceConfigChangeListener;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/widget/AbsListView$DeviceConfigChangeListener;-><init>(Landroid/widget/AbsListView$DeviceConfigChangeListener-IA;)V

    sput-object v0, Landroid/widget/AbsListView;->sDeviceConfigChangeListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    nop

    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    sget-object v1, Landroid/widget/AbsListView;->sDeviceConfigChangeListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    :cond_0
    return-void
.end method

.method private blacklist shouldAbsorb(Landroid/widget/EdgeEffect;I)Z
    .locals 4

    const/4 v0, 0x1

    if-lez p2, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->getDistance()F

    move-result v1

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    iget-object v2, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-nez v2, :cond_1

    new-instance v2, Landroid/widget/AbsListView$FlingRunnable;

    invoke-direct {v2, p0}, Landroid/widget/AbsListView$FlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    iput-object v2, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    :cond_1
    iget-object v2, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    neg-int v3, p2

    invoke-virtual {v2, v3}, Landroid/widget/AbsListView$FlingRunnable;->getSplineFlingDistance(I)F

    move-result v2

    cmpg-float v3, v2, v1

    if-gez v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private blacklist shouldDisplayEdgeEffects()Z
    .locals 2

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getOverScrollMode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private blacklist shouldSkipScroll()Z
    .locals 3

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "remove_animations"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v2, v1

    :cond_0
    return v2
.end method

.method private greylist-max-o showContextMenuForChildInternal(Landroid/view/View;FFZ)Z
    .locals 10

    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->getPositionForView(Landroid/view/View;)I

    move-result v6

    if-gez v6, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, v6}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v7

    const/4 v9, 0x0

    iget-object v0, p0, Landroid/widget/AbsListView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/AbsListView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    move-object v1, p0

    move-object v2, p1

    move v3, v6

    move-wide v4, v7

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemLongClickListener;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result v9

    :cond_1
    if-nez v9, :cond_3

    iget v0, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int v0, v6, v0

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0, v6, v7, v8}, Landroid/widget/AbsListView;->createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/AbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    if-eqz p4, :cond_2

    invoke-super {p0, p1, p2, p3}, Landroid/widget/AdapterView;->showContextMenuForChild(Landroid/view/View;FF)Z

    move-result v9

    goto :goto_0

    :cond_2
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v9

    :cond_3
    :goto_0
    return v9
.end method

.method private greylist-max-o showContextMenuInternal(FFZ)Z
    .locals 5

    float-to-int v0, p1

    float-to-int v1, p2

    invoke-virtual {p0, v0, v1}, Landroid/widget/AbsListView;->pointToPosition(II)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, v0}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v1

    iget v3, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int v3, v0, v3

    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {p0, v3, v0, v1, v2}, Landroid/widget/AbsListView;->createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v4

    iput-object v4, p0, Landroid/widget/AbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    if-eqz p3, :cond_0

    invoke-super {p0, p0, p1, p2}, Landroid/widget/AdapterView;->showContextMenuForChild(Landroid/view/View;FF)Z

    move-result v4

    return v4

    :cond_0
    invoke-super {p0, p0}, Landroid/widget/AdapterView;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v4

    return v4

    :cond_1
    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/widget/AbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    :goto_0
    if-eqz p3, :cond_3

    invoke-super {p0, p1, p2}, Landroid/widget/AdapterView;->showContextMenu(FF)Z

    move-result v1

    return v1

    :cond_3
    invoke-super {p0}, Landroid/widget/AdapterView;->showContextMenu()Z

    move-result v1

    return v1
.end method

.method private blacklist showPointerIcon(Landroid/view/MotionEvent;I)V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v0

    iget-object v1, p0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    invoke-static {v1, p2}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/AbsListView;->semSetPointerIcon(ILandroid/view/PointerIcon;)V

    return-void
.end method

.method private greylist-max-o showPopup()V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWindowVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/widget/AbsListView;->createTextFilter(Z)V

    invoke-direct {p0}, Landroid/widget/AbsListView;->positionPopup()V

    invoke-virtual {p0}, Landroid/widget/AbsListView;->checkFocus()V

    :cond_0
    return-void
.end method

.method private greylist-max-o startScrollIfNeeded(IILandroid/view/MotionEvent;)Z
    .locals 9

    iget v0, p0, Landroid/widget/AbsListView;->mMotionY:I

    sub-int v0, p2, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Landroid/widget/AbsListView;->mScrollY:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    if-nez v2, :cond_1

    iget v5, p0, Landroid/widget/AbsListView;->mTouchSlop:I

    if-le v1, v5, :cond_7

    :cond_1
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getNestedScrollAxes()I

    move-result v5

    and-int/lit8 v5, v5, 0x2

    if-nez v5, :cond_7

    invoke-direct {p0}, Landroid/widget/AbsListView;->createScrollingCache()V

    if-eqz v2, :cond_2

    const/4 v5, 0x5

    iput v5, p0, Landroid/widget/AbsListView;->mTouchMode:I

    iput v4, p0, Landroid/widget/AbsListView;->mMotionCorrection:I

    goto :goto_2

    :cond_2
    const/4 v5, 0x3

    iput v5, p0, Landroid/widget/AbsListView;->mTouchMode:I

    iget v5, p0, Landroid/widget/AbsListView;->mTouchSlop:I

    if-lez v0, :cond_3

    goto :goto_1

    :cond_3
    neg-int v5, v5

    :goto_1
    iput v5, p0, Landroid/widget/AbsListView;->mMotionCorrection:I

    :goto_2
    iget-object v5, p0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    invoke-virtual {p0, v5}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-virtual {p0, v4}, Landroid/widget/AbsListView;->setPressed(Z)V

    iget v5, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    iget v6, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int/2addr v5, v6

    invoke-virtual {p0, v5}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-virtual {v5, v4}, Landroid/view/View;->setPressed(Z)V

    :cond_4
    iget v6, p0, Landroid/widget/AbsListView;->mPointerCount:I

    if-le v6, v3, :cond_5

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v6

    const/4 v7, 0x0

    :goto_3
    if-ge v7, v6, :cond_5

    invoke-virtual {p0, v7}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8, v4}, Landroid/view/View;->setPressed(Z)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_5
    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-interface {v4, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_6
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/AbsListView;->scrollIfNeeded(IILandroid/view/MotionEvent;)V

    return v3

    :cond_7
    return v4
.end method

.method private blacklist stopEdgeGlowRecede(F)V
    .locals 3

    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->getDistance()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v2, p1, v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->onPullDistance(FF)F

    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->getDistance()F

    move-result v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v2, p1, v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->onPullDistance(FF)F

    :cond_1
    return-void
.end method

.method private blacklist updateLongPressMultiSelection(IIZ)V
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v3

    iget-boolean v4, v0, Landroid/widget/AbsListView;->mIsFirstMultiSelectionMove:Z

    const/4 v5, 0x0

    const/4 v6, -0x1

    if-eqz v4, :cond_4

    iput v1, v0, Landroid/widget/AbsListView;->mSemDragStartX:I

    iput v2, v0, Landroid/widget/AbsListView;->mSemDragStartY:I

    invoke-super/range {p0 .. p2}, Landroid/widget/AdapterView;->semNotifyLongPressMultiSelectionStarted(II)V

    invoke-virtual/range {p0 .. p2}, Landroid/widget/AbsListView;->pointToPosition(II)I

    move-result v4

    iput v4, v0, Landroid/widget/AbsListView;->mSemTrackedChildPosition:I

    iput v4, v0, Landroid/widget/AbsListView;->mSemDragSelectedViewPosition:I

    iget v4, v0, Landroid/widget/AbsListView;->mSemTrackedChildPosition:I

    if-ne v4, v6, :cond_1

    invoke-virtual/range {p0 .. p2}, Landroid/widget/AbsListView;->semPointToNearPosition(II)I

    move-result v4

    iput v4, v0, Landroid/widget/AbsListView;->mSemTrackedChildPosition:I

    iget-object v4, v0, Landroid/widget/AbsListView;->mSemTrackedChild:Landroid/view/View;

    if-nez v4, :cond_2

    iget v4, v0, Landroid/widget/AbsListView;->mSemCloseChildPositionByTop:I

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v7

    sub-int/2addr v4, v7

    invoke-virtual {v0, v4}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, v0, Landroid/widget/AbsListView;->mSemCloseChildByTop:Landroid/view/View;

    iget-object v4, v0, Landroid/widget/AbsListView;->mSemCloseChildByTop:Landroid/view/View;

    if-eqz v4, :cond_0

    iget v4, v0, Landroid/widget/AbsListView;->mSemDragStartY:I

    iget-object v7, v0, Landroid/widget/AbsListView;->mSemCloseChildByTop:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v7

    sub-int/2addr v4, v7

    iput v4, v0, Landroid/widget/AbsListView;->mSemDistanceFromCloseChildTop:I

    :cond_0
    iget v4, v0, Landroid/widget/AbsListView;->mSemCloseChildPositionByBottom:I

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v7

    sub-int/2addr v4, v7

    invoke-virtual {v0, v4}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, v0, Landroid/widget/AbsListView;->mSemCloseChildByBottom:Landroid/view/View;

    iget-object v4, v0, Landroid/widget/AbsListView;->mSemCloseChildByBottom:Landroid/view/View;

    if-eqz v4, :cond_2

    iget v4, v0, Landroid/widget/AbsListView;->mSemDragStartY:I

    iget-object v7, v0, Landroid/widget/AbsListView;->mSemCloseChildByBottom:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v7

    sub-int/2addr v4, v7

    iput v4, v0, Landroid/widget/AbsListView;->mSemDistanceFromCloseChildBottom:I

    goto :goto_0

    :cond_1
    iget v4, v0, Landroid/widget/AbsListView;->mSemTrackedChildPosition:I

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v7

    sub-int/2addr v4, v7

    invoke-virtual {v0, v4}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, v0, Landroid/widget/AbsListView;->mSemTrackedChild:Landroid/view/View;

    :cond_2
    :goto_0
    iget-object v4, v0, Landroid/widget/AbsListView;->mSemTrackedChild:Landroid/view/View;

    if-eqz v4, :cond_3

    iget v4, v0, Landroid/widget/AbsListView;->mSemDragStartY:I

    iget-object v7, v0, Landroid/widget/AbsListView;->mSemTrackedChild:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v7

    sub-int/2addr v4, v7

    iput v4, v0, Landroid/widget/AbsListView;->mSemDistanceFromTrackedChildTop:I

    :cond_3
    iput-boolean v5, v0, Landroid/widget/AbsListView;->mIsFirstMultiSelectionMove:Z

    :cond_4
    const/4 v4, 0x0

    const/4 v7, 0x0

    iget-boolean v8, v0, Landroid/widget/AbsListView;->mIsEnabledPaddingInHoverScroll:Z

    if-eqz v8, :cond_5

    iget-object v8, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v8, Landroid/graphics/Rect;->top:I

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v8

    iget-object v9, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v8, v9

    goto :goto_1

    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v8

    :goto_1
    iput v1, v0, Landroid/widget/AbsListView;->mSemDragEndX:I

    iput v2, v0, Landroid/widget/AbsListView;->mSemDragEndY:I

    iget v7, v0, Landroid/widget/AbsListView;->mSemDragEndY:I

    if-gez v7, :cond_6

    iput v5, v0, Landroid/widget/AbsListView;->mSemDragEndY:I

    goto :goto_2

    :cond_6
    iget v7, v0, Landroid/widget/AbsListView;->mSemDragEndY:I

    if-le v7, v8, :cond_7

    iput v8, v0, Landroid/widget/AbsListView;->mSemDragEndY:I

    :cond_7
    :goto_2
    iget v7, v0, Landroid/widget/AbsListView;->mSemDragEndX:I

    iget v9, v0, Landroid/widget/AbsListView;->mSemDragEndY:I

    invoke-virtual {v0, v7, v9}, Landroid/widget/AbsListView;->pointToPosition(II)I

    move-result v7

    if-eq v7, v6, :cond_8

    iput v7, v0, Landroid/widget/AbsListView;->mSemDragSelectedViewPosition:I

    goto :goto_3

    :cond_8
    iget v9, v0, Landroid/widget/AbsListView;->mSemDragEndX:I

    iget v10, v0, Landroid/widget/AbsListView;->mSemDragEndY:I

    invoke-virtual {v0, v9, v10}, Landroid/widget/AbsListView;->semPointToNearPosition(II)I

    move-result v9

    iput v9, v0, Landroid/widget/AbsListView;->mSemDragSelectedViewPosition:I

    :goto_3
    iget v9, v0, Landroid/widget/AbsListView;->mSemTrackedChildPosition:I

    iget v10, v0, Landroid/widget/AbsListView;->mSemDragSelectedViewPosition:I

    if-ge v9, v10, :cond_9

    iget v9, v0, Landroid/widget/AbsListView;->mSemTrackedChildPosition:I

    iget v10, v0, Landroid/widget/AbsListView;->mSemDragSelectedViewPosition:I

    goto :goto_4

    :cond_9
    iget v9, v0, Landroid/widget/AbsListView;->mSemDragSelectedViewPosition:I

    iget v10, v0, Landroid/widget/AbsListView;->mSemTrackedChildPosition:I

    :goto_4
    iget v11, v0, Landroid/widget/AbsListView;->mSemDragStartX:I

    iget v12, v0, Landroid/widget/AbsListView;->mSemDragEndX:I

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v11

    iput v11, v0, Landroid/widget/AbsListView;->mSemDragBlockLeft:I

    iget v11, v0, Landroid/widget/AbsListView;->mSemDragStartY:I

    iget v12, v0, Landroid/widget/AbsListView;->mSemDragEndY:I

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v11

    iput v11, v0, Landroid/widget/AbsListView;->mSemDragBlockTop:I

    iget v11, v0, Landroid/widget/AbsListView;->mSemDragEndX:I

    iget v12, v0, Landroid/widget/AbsListView;->mSemDragStartX:I

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v11

    iput v11, v0, Landroid/widget/AbsListView;->mSemDragBlockRight:I

    iget v11, v0, Landroid/widget/AbsListView;->mSemDragEndY:I

    iget v12, v0, Landroid/widget/AbsListView;->mSemDragStartY:I

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v11

    iput v11, v0, Landroid/widget/AbsListView;->mSemDragBlockBottom:I

    const/4 v11, 0x0

    :goto_5
    if-ge v11, v3, :cond_15

    invoke-virtual {v0, v11}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    if-eqz v12, :cond_13

    invoke-virtual {v12}, Landroid/view/View;->getLeft()I

    move-result v13

    invoke-virtual {v12}, Landroid/view/View;->getTop()I

    move-result v14

    invoke-virtual {v0, v12}, Landroid/widget/AbsListView;->getPositionForView(Landroid/view/View;)I

    move-result v15

    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v16

    if-nez v16, :cond_12

    const/16 v16, 0x0

    const/16 v17, 0x0

    if-gt v9, v15, :cond_b

    if-gt v15, v10, :cond_b

    iget-object v6, v0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v6, :cond_a

    iget-object v6, v0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v15, v5}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v6

    if-eqz v6, :cond_a

    const/4 v6, 0x1

    move/from16 v17, v6

    goto :goto_6

    :cond_a
    const/4 v6, 0x0

    move/from16 v17, v6

    :goto_6
    const/16 v16, 0x1

    :cond_b
    if-eqz v16, :cond_f

    add-int/lit8 v5, v13, 0x1

    add-int/lit8 v6, v14, 0x1

    invoke-virtual {v0, v5, v6}, Landroid/widget/AbsListView;->pointToPosition(II)I

    move-result v5

    iput v5, v0, Landroid/widget/AbsListView;->mSemDragSelectedViewPosition:I

    iget v5, v0, Landroid/widget/AbsListView;->mSemDragSelectedViewPosition:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_e

    iget-object v5, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    iget v6, v0, Landroid/widget/AbsListView;->mSemDragSelectedViewPosition:I

    invoke-interface {v5, v6}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_e

    iget-object v5, v0, Landroid/widget/AbsListView;->mSemDragSelectedItemArray:Ljava/util/ArrayList;

    iget v6, v0, Landroid/widget/AbsListView;->mSemDragSelectedViewPosition:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_d

    if-eqz v17, :cond_c

    iget v5, v0, Landroid/widget/AbsListView;->mSemDragSelectedViewPosition:I

    if-gt v9, v5, :cond_c

    iget v5, v0, Landroid/widget/AbsListView;->mSemDragSelectedViewPosition:I

    if-gt v5, v10, :cond_c

    const/16 v17, 0x0

    move/from16 v18, v7

    goto :goto_7

    :cond_c
    iget v5, v0, Landroid/widget/AbsListView;->mSemDragSelectedViewPosition:I

    iget v6, v0, Landroid/widget/AbsListView;->mSemDragSelectedViewPosition:I

    move/from16 v18, v7

    invoke-virtual {v0, v6}, Landroid/widget/AbsListView;->getItemIdAtPosition(I)J

    move-result-wide v6

    const/4 v1, 0x0

    invoke-direct {v0, v1, v5, v6, v7}, Landroid/widget/AbsListView;->semPerformItemCheck(Landroid/view/View;IJ)V

    :goto_7
    iget-object v1, v0, Landroid/widget/AbsListView;->mSemDragSelectedItemArray:Ljava/util/ArrayList;

    iget v5, v0, Landroid/widget/AbsListView;->mSemDragSelectedViewPosition:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v1, v0, Landroid/widget/AbsListView;->mSemDragSelectedViewPosition:I

    const/4 v5, -0x1

    invoke-direct {v0, v1, v5}, Landroid/widget/AbsListView;->addToPressItemListArray(II)V

    iget v1, v0, Landroid/widget/AbsListView;->mSemDragSelectedViewPosition:I

    iget v5, v0, Landroid/widget/AbsListView;->mSemDragSelectedViewPosition:I

    invoke-virtual {v0, v5}, Landroid/widget/AbsListView;->getItemIdAtPosition(I)J

    move-result-wide v5

    invoke-super {v0, v12, v1, v5, v6}, Landroid/widget/AdapterView;->semNotifyLongPressMultiSelectionState(Landroid/view/View;IJ)Z

    const/4 v5, -0x1

    goto/16 :goto_8

    :cond_d
    move/from16 v18, v7

    const/4 v5, -0x1

    goto :goto_8

    :cond_e
    move/from16 v18, v7

    const/4 v5, -0x1

    goto :goto_8

    :cond_f
    move/from16 v18, v7

    add-int/lit8 v1, v13, 0x1

    add-int/lit8 v5, v14, 0x1

    invoke-virtual {v0, v1, v5}, Landroid/widget/AbsListView;->pointToPosition(II)I

    move-result v1

    iput v1, v0, Landroid/widget/AbsListView;->mSemDragSelectedViewPosition:I

    iget v1, v0, Landroid/widget/AbsListView;->mSemDragSelectedViewPosition:I

    const/4 v5, -0x1

    if-eq v1, v5, :cond_14

    iget-object v1, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    iget v5, v0, Landroid/widget/AbsListView;->mSemDragSelectedViewPosition:I

    invoke-interface {v1, v5}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_11

    iget-object v1, v0, Landroid/widget/AbsListView;->mSemDragSelectedItemArray:Ljava/util/ArrayList;

    iget v5, v0, Landroid/widget/AbsListView;->mSemDragSelectedViewPosition:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    iget v1, v0, Landroid/widget/AbsListView;->mSemDragSelectedViewPosition:I

    iget v5, v0, Landroid/widget/AbsListView;->mSemDragSelectedViewPosition:I

    invoke-virtual {v0, v5}, Landroid/widget/AbsListView;->getItemIdAtPosition(I)J

    move-result-wide v5

    const/4 v7, 0x0

    invoke-direct {v0, v7, v1, v5, v6}, Landroid/widget/AbsListView;->semPerformItemCheck(Landroid/view/View;IJ)V

    iget-object v1, v0, Landroid/widget/AbsListView;->mSemDragSelectedItemArray:Ljava/util/ArrayList;

    iget v5, v0, Landroid/widget/AbsListView;->mSemDragSelectedViewPosition:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget v1, v0, Landroid/widget/AbsListView;->mSemDragSelectedViewPosition:I

    const/4 v5, -0x1

    invoke-direct {v0, v1, v5}, Landroid/widget/AbsListView;->addToPressItemListArray(II)V

    iget v1, v0, Landroid/widget/AbsListView;->mSemDragSelectedViewPosition:I

    iget v6, v0, Landroid/widget/AbsListView;->mSemDragSelectedViewPosition:I

    invoke-virtual {v0, v6}, Landroid/widget/AbsListView;->getItemIdAtPosition(I)J

    move-result-wide v6

    invoke-super {v0, v12, v1, v6, v7}, Landroid/widget/AdapterView;->semNotifyLongPressMultiSelectionState(Landroid/view/View;IJ)Z

    goto :goto_8

    :cond_10
    const/4 v5, -0x1

    goto :goto_8

    :cond_11
    const/4 v5, -0x1

    goto :goto_8

    :cond_12
    move v5, v6

    move/from16 v18, v7

    goto :goto_8

    :cond_13
    move v5, v6

    move/from16 v18, v7

    :cond_14
    :goto_8
    add-int/lit8 v11, v11, 0x1

    move/from16 v1, p1

    move v6, v5

    move/from16 v7, v18

    const/4 v5, 0x0

    goto/16 :goto_5

    :cond_15
    move/from16 v18, v7

    if-eqz p3, :cond_1c

    iget v1, v0, Landroid/widget/AbsListView;->mHoverTopAreaHeight:I

    add-int/2addr v1, v4

    const/4 v5, 0x1

    if-gt v2, v1, :cond_17

    iget-boolean v1, v0, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    if-nez v1, :cond_16

    iput-boolean v5, v0, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v0, Landroid/widget/AbsListView;->mHoverScrollStartTime:J

    iget-object v1, v0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v1, :cond_16

    iget-object v1, v0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v1, v0, v5}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    :cond_16
    iget-object v1, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    invoke-virtual {v1, v5}, Landroid/widget/AbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_1c

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v0, Landroid/widget/AbsListView;->mHoverRecognitionStartTime:J

    const/4 v1, 0x2

    iput v1, v0, Landroid/widget/AbsListView;->mHoverScrollDirection:I

    iget-object v1, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    invoke-virtual {v1, v5}, Landroid/widget/AbsListView$HoverScrollHandler;->sendEmptyMessage(I)Z

    goto :goto_9

    :cond_17
    iget v1, v0, Landroid/widget/AbsListView;->mHoverBottomAreaHeight:I

    sub-int v1, v8, v1

    if-lt v2, v1, :cond_19

    iget-boolean v1, v0, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    if-nez v1, :cond_18

    iput-boolean v5, v0, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v0, Landroid/widget/AbsListView;->mHoverScrollStartTime:J

    iget-object v1, v0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v1, :cond_18

    iget-object v1, v0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v1, v0, v5}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    :cond_18
    iget-object v1, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    invoke-virtual {v1, v5}, Landroid/widget/AbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_1c

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v0, Landroid/widget/AbsListView;->mHoverRecognitionStartTime:J

    iput v5, v0, Landroid/widget/AbsListView;->mHoverScrollDirection:I

    iget-object v1, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    invoke-virtual {v1, v5}, Landroid/widget/AbsListView$HoverScrollHandler;->sendEmptyMessage(I)Z

    goto :goto_9

    :cond_19
    iget-boolean v1, v0, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    if-eqz v1, :cond_1a

    iget-object v1, v0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v1, :cond_1a

    iget-object v1, v0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    const/4 v6, 0x0

    invoke-interface {v1, v0, v6}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    :cond_1a
    const-wide/16 v6, 0x0

    iput-wide v6, v0, Landroid/widget/AbsListView;->mHoverScrollStartTime:J

    iput-wide v6, v0, Landroid/widget/AbsListView;->mHoverRecognitionStartTime:J

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    iget-object v1, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    invoke-virtual {v1, v5}, Landroid/widget/AbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_1b

    iget-object v1, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    invoke-virtual {v1, v5}, Landroid/widget/AbsListView$HoverScrollHandler;->removeMessages(I)V

    :cond_1b
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/widget/AbsListView;->mIsHoverOverscrolled:Z

    :cond_1c
    :goto_9
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->invalidate()V

    return-void
.end method

.method private greylist-max-o updateOnScreenCheckedViews()V
    .locals 8

    iget v0, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v3, 0xb

    if-lt v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_3

    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    add-int v5, v0, v3

    instance-of v6, v4, Landroid/widget/Checkable;

    if-eqz v6, :cond_1

    move-object v6, v4

    check-cast v6, Landroid/widget/Checkable;

    iget-object v7, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v7, v5}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v7

    invoke-interface {v6, v7}, Landroid/widget/Checkable;->setChecked(Z)V

    goto :goto_2

    :cond_1
    if-eqz v2, :cond_2

    iget-object v6, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v6

    invoke-virtual {v4, v6}, Landroid/view/View;->setActivated(Z)V

    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method private greylist-max-o useDefaultSelector()V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x1080062

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public blacklist addExtraPaddingInBottomHoverArea(I)V
    .locals 3

    int-to-float v0, p1

    iget-object v1, p0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/widget/AbsListView;->mExtraPaddingInBottomHoverArea:I

    return-void
.end method

.method public blacklist addExtraPaddingInTopHoverArea(I)V
    .locals 3

    int-to-float v0, p1

    iget-object v1, p0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/widget/AbsListView;->mExtraPaddingInTopHoverArea:I

    return-void
.end method

.method public whitelist addTouchables(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    iget v1, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v2, :cond_0

    return-void

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    add-int v5, v1, v3

    invoke-interface {v2, v5}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {v4, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public whitelist afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public whitelist beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public whitelist canScrollList(I)Z
    .locals 9

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget v2, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    iget-object v3, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    const/4 v4, 0x1

    if-lez p1, :cond_3

    add-int/lit8 v5, v0, -0x1

    invoke-virtual {p0, v5}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v5

    add-int v6, v2, v0

    iget v7, p0, Landroid/widget/AbsListView;->mItemCount:I

    if-lt v6, v7, :cond_1

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v7

    iget v8, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v8

    if-le v5, v7, :cond_2

    :cond_1
    move v1, v4

    :cond_2
    return v1

    :cond_3
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    if-gtz v2, :cond_4

    iget v6, v3, Landroid/graphics/Rect;->top:I

    if-ge v5, v6, :cond_5

    :cond_4
    move v1, v4

    :cond_5
    return v1
.end method

.method public whitelist checkInputConnectionProxy(Landroid/view/View;)Z
    .locals 1

    iget-object v0, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected whitelist checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    instance-of v0, p1, Landroid/widget/AbsListView$LayoutParams;

    return v0
.end method

.method public whitelist clearChoices()V
    .locals 1

    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    return-void
.end method

.method public whitelist clearTextFilter()V
    .locals 2

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFiltered:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/widget/AbsListView;->getTextFilterInput()Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mFiltered:Z

    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/widget/AbsListView;->dismissPopup()V

    :cond_0
    return-void
.end method

.method protected whitelist computeVerticalScrollExtent()I
    .locals 7

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_3

    iget-boolean v2, p0, Landroid/widget/AbsListView;->mSmoothScrollbarEnabled:Z

    if-eqz v2, :cond_2

    mul-int/lit8 v2, v0, 0x64

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v4

    if-lez v4, :cond_0

    mul-int/lit8 v5, v3, 0x64

    div-int/2addr v5, v4

    add-int/2addr v2, v5

    :cond_0
    add-int/lit8 v5, v0, -0x1

    invoke-virtual {p0, v5}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v4

    if-lez v4, :cond_1

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v6

    sub-int v6, v5, v6

    mul-int/lit8 v6, v6, 0x64

    div-int/2addr v6, v4

    sub-int/2addr v2, v6

    :cond_1
    return v2

    :cond_2
    const/4 v1, 0x1

    return v1

    :cond_3
    return v1
.end method

.method protected whitelist computeVerticalScrollOffset()I
    .locals 9

    iget v0, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    if-ltz v0, :cond_4

    if-lez v1, :cond_4

    iget-boolean v3, p0, Landroid/widget/AbsListView;->mSmoothScrollbarEnabled:Z

    if-eqz v3, :cond_1

    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v5

    if-lez v5, :cond_0

    mul-int/lit8 v6, v0, 0x64

    mul-int/lit8 v7, v4, 0x64

    div-int/2addr v7, v5

    sub-int/2addr v6, v7

    iget v7, p0, Landroid/widget/AbsListView;->mScrollY:I

    int-to-float v7, v7

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    iget v8, p0, Landroid/widget/AbsListView;->mItemCount:I

    int-to-float v8, v8

    mul-float/2addr v7, v8

    const/high16 v8, 0x42c80000    # 100.0f

    mul-float/2addr v7, v8

    float-to-int v7, v7

    add-int/2addr v6, v7

    invoke-static {v6, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    return v2

    :cond_0
    goto :goto_1

    :cond_1
    iget v2, p0, Landroid/widget/AbsListView;->mItemCount:I

    if-nez v0, :cond_2

    const/4 v3, 0x0

    goto :goto_0

    :cond_2
    add-int v3, v0, v1

    if-ne v3, v2, :cond_3

    move v3, v2

    goto :goto_0

    :cond_3
    div-int/lit8 v3, v1, 0x2

    add-int/2addr v3, v0

    :goto_0
    int-to-float v4, v0

    int-to-float v5, v1

    int-to-float v6, v3

    int-to-float v7, v2

    div-float/2addr v6, v7

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    float-to-int v4, v4

    return v4

    :cond_4
    :goto_1
    return v2
.end method

.method protected whitelist computeVerticalScrollRange()I
    .locals 3

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mSmoothScrollbarEnabled:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/widget/AbsListView;->mItemCount:I

    mul-int/lit8 v0, v0, 0x64

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v1, p0, Landroid/widget/AbsListView;->mScrollY:I

    if-eqz v1, :cond_1

    iget v1, p0, Landroid/widget/AbsListView;->mScrollY:I

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget v2, p0, Landroid/widget/AbsListView;->mItemCount:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    iget v0, p0, Landroid/widget/AbsListView;->mItemCount:I

    :cond_1
    :goto_0
    return v0
.end method

.method greylist-max-o confirmCheckedPositionsById()V
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->clear()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, v0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v3}, Landroid/util/LongSparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_5

    iget-object v3, v0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v2}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v10

    iget-object v3, v0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v2}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v4, v3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v12

    cmp-long v4, v10, v12

    const/4 v14, 0x1

    if-eqz v4, :cond_4

    add-int/lit8 v4, v3, -0x14

    const/4 v5, 0x0

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v15

    add-int/lit8 v4, v3, 0x14

    iget v5, v0, Landroid/widget/AbsListView;->mItemCount:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v9

    const/4 v4, 0x0

    move v5, v15

    :goto_1
    if-ge v5, v9, :cond_1

    iget-object v6, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v6, v5}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v6

    cmp-long v8, v10, v6

    if-nez v8, :cond_0

    const/4 v4, 0x1

    iget-object v8, v0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v8, v5, v14}, Landroid/util/SparseBooleanArray;->put(IZ)V

    iget-object v8, v0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v8, v2, v14}, Landroid/util/LongSparseArray;->setValueAt(ILjava/lang/Object;)V

    move v14, v4

    goto :goto_2

    :cond_0
    add-int/lit8 v5, v5, 0x1

    const/4 v14, 0x1

    goto :goto_1

    :cond_1
    move v14, v4

    :goto_2
    if-nez v14, :cond_3

    iget-object v4, v0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v4, v10, v11}, Landroid/util/LongSparseArray;->delete(J)V

    add-int/lit8 v2, v2, -0x1

    iget v4, v0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    iput v4, v0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    const/4 v1, 0x1

    iget-object v4, v0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v4, :cond_2

    iget-object v4, v0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    if-eqz v4, :cond_2

    iget-object v4, v0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    iget-object v5, v0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    const/16 v16, 0x0

    move v6, v3

    move-wide v7, v10

    move/from16 v17, v9

    move/from16 v9, v16

    invoke-virtual/range {v4 .. v9}, Landroid/widget/AbsListView$MultiChoiceModeWrapper;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    goto :goto_3

    :cond_2
    move/from16 v17, v9

    goto :goto_3

    :cond_3
    move/from16 v17, v9

    :goto_3
    const/4 v5, 0x1

    goto :goto_4

    :cond_4
    iget-object v4, v0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    const/4 v5, 0x1

    invoke-virtual {v4, v3, v5}, Landroid/util/SparseBooleanArray;->put(IZ)V

    :goto_4
    add-int/2addr v2, v5

    goto/16 :goto_0

    :cond_5
    if-eqz v1, :cond_6

    iget-object v2, v0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v2, :cond_6

    iget-object v2, v0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    invoke-virtual {v2}, Landroid/view/ActionMode;->invalidate()V

    :cond_6
    return-void
.end method

.method greylist-max-o createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    new-instance v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/widget/AdapterView$AdapterContextMenuInfo;-><init>(Landroid/view/View;IJ)V

    return-object v0
.end method

.method greylist-max-o createPositionScroller()Landroid/widget/AbsListView$AbsPositionScroller;
    .locals 1

    new-instance v0, Landroid/widget/AbsListView$PositionScroller;

    invoke-direct {v0, p0}, Landroid/widget/AbsListView$PositionScroller;-><init>(Landroid/widget/AbsListView;)V

    return-object v0
.end method

.method public whitelist deferNotifyDataSetChanged()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mDeferNotifyDataSetChanged:Z

    return-void
.end method

.method public whitelist dispatchDragEvent(Landroid/view/DragEvent;)Z
    .locals 17

    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getAction()I

    move-result v1

    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getClipDescription()Landroid/content/ClipDescription;

    move-result-object v2

    if-eqz v2, :cond_19

    const-string v3, "cropUri"

    invoke-virtual {v2}, Landroid/content/ClipDescription;->getLabel()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_7

    :cond_0
    const/4 v3, 0x1

    if-ne v1, v3, :cond_2

    iget v4, v0, Landroid/widget/AbsListView;->mDragScrollWorkingZonePx:I

    if-gtz v4, :cond_1

    iget-object v4, v0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    const/high16 v5, 0x41c80000    # 25.0f

    invoke-static {v3, v5, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v0, Landroid/widget/AbsListView;->mDragScrollWorkingZonePx:I

    :cond_1
    invoke-super/range {p0 .. p1}, Landroid/widget/AdapterView;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    return v3

    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    const/4 v6, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v6

    :cond_3
    iget v8, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    add-int/2addr v8, v7

    iget v9, v0, Landroid/widget/AbsListView;->mItemCount:I

    const/4 v10, 0x0

    if-ge v8, v9, :cond_4

    move v8, v3

    goto :goto_0

    :cond_4
    move v8, v10

    :goto_0
    if-nez v8, :cond_7

    if-lez v7, :cond_7

    add-int/lit8 v9, v7, -0x1

    invoke-virtual {v0, v9}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v11

    iget v12, v0, Landroid/widget/AbsListView;->mBottom:I

    iget-object v13, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v12, v13

    if-gt v11, v12, :cond_6

    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v11

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v12

    iget-object v13, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v12, v13

    if-le v11, v12, :cond_5

    goto :goto_1

    :cond_5
    move v11, v10

    goto :goto_2

    :cond_6
    :goto_1
    move v11, v3

    :goto_2
    move v8, v11

    :cond_7
    iget v9, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    if-lez v9, :cond_8

    move v9, v3

    goto :goto_3

    :cond_8
    move v9, v10

    :goto_3
    if-nez v9, :cond_a

    if-lez v7, :cond_a

    invoke-virtual {v0, v10}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v12

    iget-object v13, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->top:I

    if-ge v12, v13, :cond_9

    move v12, v3

    goto :goto_4

    :cond_9
    move v12, v10

    :goto_4
    move v9, v12

    :cond_a
    iget v11, v0, Landroid/widget/AbsListView;->mDragScrollWorkingZonePx:I

    const/4 v12, 0x2

    if-le v5, v11, :cond_b

    iget v11, v0, Landroid/widget/AbsListView;->mDragScrollWorkingZonePx:I

    sub-int v11, v6, v11

    if-lt v5, v11, :cond_14

    :cond_b
    if-lez v4, :cond_14

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getRight()I

    move-result v11

    if-gt v4, v11, :cond_14

    if-nez v9, :cond_c

    if-nez v8, :cond_c

    goto/16 :goto_6

    :cond_c
    iget-object v11, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    if-nez v11, :cond_d

    new-instance v11, Landroid/widget/AbsListView$HoverScrollHandler;

    invoke-direct {v11, v0}, Landroid/widget/AbsListView$HoverScrollHandler;-><init>(Landroid/widget/AbsListView;)V

    iput-object v11, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    :cond_d
    iget-boolean v11, v0, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    if-nez v11, :cond_e

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    iput-wide v13, v0, Landroid/widget/AbsListView;->mHoverScrollStartTime:J

    :cond_e
    packed-switch v1, :pswitch_data_0

    goto/16 :goto_5

    :pswitch_0
    iput-boolean v3, v0, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    if-ltz v5, :cond_f

    iget v10, v0, Landroid/widget/AbsListView;->mDragScrollWorkingZonePx:I

    if-gt v5, v10, :cond_f

    iget-object v10, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    invoke-virtual {v10, v3}, Landroid/widget/AbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v10

    if-nez v10, :cond_13

    iput-boolean v3, v0, Landroid/widget/AbsListView;->mIsDragScrolled:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iput-wide v10, v0, Landroid/widget/AbsListView;->mHoverRecognitionStartTime:J

    iput v12, v0, Landroid/widget/AbsListView;->mHoverScrollDirection:I

    iget-object v10, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    invoke-virtual {v10, v3}, Landroid/widget/AbsListView$HoverScrollHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_5

    :cond_f
    iget v10, v0, Landroid/widget/AbsListView;->mDragScrollWorkingZonePx:I

    sub-int v10, v6, v10

    if-lt v5, v10, :cond_13

    if-gt v5, v6, :cond_13

    iget-object v10, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    invoke-virtual {v10, v3}, Landroid/widget/AbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v10

    if-nez v10, :cond_13

    iput-boolean v3, v0, Landroid/widget/AbsListView;->mIsDragScrolled:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iput-wide v10, v0, Landroid/widget/AbsListView;->mHoverRecognitionStartTime:J

    iput v3, v0, Landroid/widget/AbsListView;->mHoverScrollDirection:I

    iget-object v10, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    invoke-virtual {v10, v3}, Landroid/widget/AbsListView$HoverScrollHandler;->sendEmptyMessage(I)Z

    goto :goto_5

    :pswitch_1
    iget-boolean v11, v0, Landroid/widget/AbsListView;->mIsDragScrolled:Z

    if-eqz v11, :cond_10

    iput-boolean v10, v0, Landroid/widget/AbsListView;->mIsDragScrolled:Z

    :cond_10
    :pswitch_2
    iget-object v11, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    invoke-virtual {v11, v3}, Landroid/widget/AbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v11

    if-eqz v11, :cond_11

    iget-object v11, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    invoke-virtual {v11, v3}, Landroid/widget/AbsListView$HoverScrollHandler;->removeMessages(I)V

    :cond_11
    iput-boolean v10, v0, Landroid/widget/AbsListView;->mIsDragScrolled:Z

    const-wide/16 v11, 0x0

    iput-wide v11, v0, Landroid/widget/AbsListView;->mHoverRecognitionStartTime:J

    iput-wide v11, v0, Landroid/widget/AbsListView;->mHoverScrollStartTime:J

    iput-boolean v10, v0, Landroid/widget/AbsListView;->mIsHoverOverscrolled:Z

    iput-boolean v10, v0, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    goto :goto_5

    :pswitch_3
    iput-boolean v3, v0, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    if-ltz v5, :cond_12

    iget v10, v0, Landroid/widget/AbsListView;->mDragScrollWorkingZonePx:I

    if-gt v5, v10, :cond_12

    iget-object v10, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    invoke-virtual {v10, v3}, Landroid/widget/AbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v10

    if-nez v10, :cond_13

    iput-boolean v3, v0, Landroid/widget/AbsListView;->mIsDragScrolled:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iput-wide v10, v0, Landroid/widget/AbsListView;->mHoverRecognitionStartTime:J

    iput v12, v0, Landroid/widget/AbsListView;->mHoverScrollDirection:I

    iget-object v10, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    invoke-virtual {v10, v3}, Landroid/widget/AbsListView$HoverScrollHandler;->sendEmptyMessage(I)Z

    goto :goto_5

    :cond_12
    iget v10, v0, Landroid/widget/AbsListView;->mDragScrollWorkingZonePx:I

    sub-int v10, v6, v10

    if-lt v5, v10, :cond_13

    if-gt v5, v6, :cond_13

    iget-object v10, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    invoke-virtual {v10, v3}, Landroid/widget/AbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v10

    if-nez v10, :cond_13

    iput-boolean v3, v0, Landroid/widget/AbsListView;->mIsDragScrolled:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iput-wide v10, v0, Landroid/widget/AbsListView;->mHoverRecognitionStartTime:J

    iput v3, v0, Landroid/widget/AbsListView;->mHoverScrollDirection:I

    iget-object v10, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    invoke-virtual {v10, v3}, Landroid/widget/AbsListView$HoverScrollHandler;->sendEmptyMessage(I)Z

    :cond_13
    :goto_5
    invoke-super/range {p0 .. p1}, Landroid/widget/AdapterView;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v3

    return v3

    :cond_14
    :goto_6
    iget-object v11, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    if-eqz v11, :cond_15

    iget-object v11, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    invoke-virtual {v11, v3}, Landroid/widget/AbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v11

    if-eqz v11, :cond_15

    iget-object v11, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    invoke-virtual {v11, v3}, Landroid/widget/AbsListView$HoverScrollHandler;->removeMessages(I)V

    :cond_15
    iget-boolean v3, v0, Landroid/widget/AbsListView;->mIsHoverOverscrolled:Z

    if-nez v3, :cond_16

    iget-wide v13, v0, Landroid/widget/AbsListView;->mHoverScrollStartTime:J

    const-wide/16 v15, 0x0

    cmp-long v3, v13, v15

    if-eqz v3, :cond_17

    :cond_16
    iput-boolean v10, v0, Landroid/widget/AbsListView;->mIsHoverOverscrolled:Z

    :cond_17
    const-wide/16 v13, 0x0

    iput-wide v13, v0, Landroid/widget/AbsListView;->mHoverRecognitionStartTime:J

    iput-wide v13, v0, Landroid/widget/AbsListView;->mHoverScrollStartTime:J

    iput-boolean v10, v0, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    if-ne v1, v12, :cond_18

    iget-boolean v3, v0, Landroid/widget/AbsListView;->mIsDragScrolled:Z

    if-eqz v3, :cond_18

    iput-boolean v10, v0, Landroid/widget/AbsListView;->mIsDragScrolled:Z

    :cond_18
    invoke-super/range {p0 .. p1}, Landroid/widget/AdapterView;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v3

    return v3

    :cond_19
    :goto_7
    invoke-super/range {p0 .. p1}, Landroid/widget/AdapterView;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v3

    return v3

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected whitelist dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 11

    const/4 v0, 0x0

    iget v1, p0, Landroid/widget/AbsListView;->mGroupFlags:I

    const/16 v2, 0x22

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    iget v3, p0, Landroid/widget/AbsListView;->mScrollX:I

    iget v4, p0, Landroid/widget/AbsListView;->mScrollY:I

    iget v5, p0, Landroid/widget/AbsListView;->mPaddingLeft:I

    add-int/2addr v5, v3

    iget v6, p0, Landroid/widget/AbsListView;->mPaddingTop:I

    add-int/2addr v6, v4

    iget v7, p0, Landroid/widget/AbsListView;->mRight:I

    add-int/2addr v7, v3

    iget v8, p0, Landroid/widget/AbsListView;->mLeft:I

    sub-int/2addr v7, v8

    iget v8, p0, Landroid/widget/AbsListView;->mPaddingRight:I

    sub-int/2addr v7, v8

    iget v8, p0, Landroid/widget/AbsListView;->mBottom:I

    add-int/2addr v8, v4

    iget v9, p0, Landroid/widget/AbsListView;->mTop:I

    sub-int/2addr v8, v9

    iget v9, p0, Landroid/widget/AbsListView;->mPaddingBottom:I

    sub-int/2addr v8, v9

    invoke-virtual {p1, v5, v6, v7, v8}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    iget v5, p0, Landroid/widget/AbsListView;->mGroupFlags:I

    and-int/lit8 v5, v5, -0x23

    iput v5, p0, Landroid/widget/AbsListView;->mGroupFlags:I

    :cond_1
    iget-boolean v3, p0, Landroid/widget/AbsListView;->mDrawSelectorOnTop:Z

    if-nez v3, :cond_2

    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->drawSelector(Landroid/graphics/Canvas;)V

    :cond_2
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->dispatchDraw(Landroid/graphics/Canvas;)V

    if-eqz v3, :cond_3

    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->drawSelector(Landroid/graphics/Canvas;)V

    :cond_3
    if-eqz v1, :cond_4

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    iget v4, p0, Landroid/widget/AbsListView;->mGroupFlags:I

    or-int/2addr v2, v4

    iput v2, p0, Landroid/widget/AbsListView;->mGroupFlags:I

    :cond_4
    iget-boolean v2, p0, Landroid/widget/AbsListView;->mIsDragBlockEnabled:Z

    if-eqz v2, :cond_8

    iget-boolean v2, p0, Landroid/widget/AbsListView;->mIsLongPressMultiSelection:Z

    if-nez v2, :cond_8

    iget v2, p0, Landroid/widget/AbsListView;->mSemDragBlockLeft:I

    if-nez v2, :cond_5

    iget v2, p0, Landroid/widget/AbsListView;->mSemDragBlockTop:I

    if-nez v2, :cond_5

    return-void

    :cond_5
    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v5

    iget v6, p0, Landroid/widget/AbsListView;->mSemTrackedChildPosition:I

    if-lt v6, v4, :cond_7

    iget v6, p0, Landroid/widget/AbsListView;->mSemTrackedChildPosition:I

    if-gt v6, v5, :cond_7

    iget v6, p0, Landroid/widget/AbsListView;->mSemTrackedChildPosition:I

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {p0, v6}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Landroid/widget/AbsListView;->mSemTrackedChild:Landroid/view/View;

    iget-object v6, p0, Landroid/widget/AbsListView;->mSemTrackedChild:Landroid/view/View;

    if-eqz v6, :cond_6

    iget-object v6, p0, Landroid/widget/AbsListView;->mSemTrackedChild:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v2

    :cond_6
    iget v6, p0, Landroid/widget/AbsListView;->mSemDistanceFromTrackedChildTop:I

    add-int/2addr v6, v2

    iput v6, p0, Landroid/widget/AbsListView;->mSemDragStartY:I

    :cond_7
    iget v6, p0, Landroid/widget/AbsListView;->mSemDragStartY:I

    iget v7, p0, Landroid/widget/AbsListView;->mSemDragEndY:I

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    iput v6, p0, Landroid/widget/AbsListView;->mSemDragBlockTop:I

    iget v6, p0, Landroid/widget/AbsListView;->mSemDragEndY:I

    iget v7, p0, Landroid/widget/AbsListView;->mSemDragStartY:I

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, p0, Landroid/widget/AbsListView;->mSemDragBlockBottom:I

    iget-object v6, p0, Landroid/widget/AbsListView;->mSemDragBlockRect:Landroid/graphics/Rect;

    iget v7, p0, Landroid/widget/AbsListView;->mSemDragBlockLeft:I

    iget v8, p0, Landroid/widget/AbsListView;->mSemDragBlockTop:I

    iget v9, p0, Landroid/widget/AbsListView;->mSemDragBlockRight:I

    iget v10, p0, Landroid/widget/AbsListView;->mSemDragBlockBottom:I

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v6, p0, Landroid/widget/AbsListView;->mSemDragBlockImage:Landroid/graphics/drawable/Drawable;

    iget-object v7, p0, Landroid/widget/AbsListView;->mSemDragBlockRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v6, p0, Landroid/widget/AbsListView;->mSemDragBlockImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_8
    return-void
.end method

.method public whitelist dispatchDrawableHotspotChanged(FF)V
    .locals 0

    return-void
.end method

.method protected whitelist dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->isHoveringUIEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-super/range {p0 .. p1}, Landroid/widget/AdapterView;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    return v2

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    iget-boolean v3, v0, Landroid/widget/AbsListView;->mHoveringEnabled:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    iget v3, v0, Landroid/widget/AbsListView;->mTouchMode:I

    if-ne v3, v4, :cond_1

    iget-boolean v3, v0, Landroid/widget/AbsListView;->mIsPenPressed:Z

    if-eq v3, v4, :cond_2

    :cond_1
    invoke-direct/range {p0 .. p1}, Landroid/widget/AbsListView;->onHoverDrawableState(Landroid/view/MotionEvent;)V

    :cond_2
    invoke-static {}, Landroid/widget/TextView;->semIsTextViewHovered()Z

    move-result v3

    iput-boolean v3, v0, Landroid/widget/AbsListView;->mNewTextViewHoverState:Z

    iget-boolean v3, v0, Landroid/widget/AbsListView;->mNewTextViewHoverState:Z

    const/16 v5, 0x20

    const/4 v6, 0x2

    const/4 v7, 0x0

    if-nez v3, :cond_4

    iget-boolean v3, v0, Landroid/widget/AbsListView;->mOldTextViewHoverState:Z

    if-eqz v3, :cond_4

    iget-boolean v3, v0, Landroid/widget/AbsListView;->mIsDragBlockEnabled:Z

    if-eqz v3, :cond_4

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v3

    if-eq v3, v5, :cond_3

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v3

    if-ne v3, v6, :cond_4

    :cond_3
    iput-boolean v4, v0, Landroid/widget/AbsListView;->mIsNeedPenSelectIconSet:Z

    goto :goto_0

    :cond_4
    iput-boolean v7, v0, Landroid/widget/AbsListView;->mIsNeedPenSelectIconSet:Z

    :goto_0
    iget-boolean v3, v0, Landroid/widget/AbsListView;->mNewTextViewHoverState:Z

    iput-boolean v3, v0, Landroid/widget/AbsListView;->mOldTextViewHoverState:Z

    const/16 v3, 0x9

    const/16 v8, 0x4e35

    const/16 v9, 0xa

    const/16 v10, 0x4e21

    if-eq v2, v3, :cond_a

    iget-boolean v3, v0, Landroid/widget/AbsListView;->mHoverScrollStateChanged:Z

    if-eqz v3, :cond_5

    goto :goto_1

    :cond_5
    const/4 v3, 0x7

    if-ne v2, v3, :cond_9

    iget-boolean v3, v0, Landroid/widget/AbsListView;->mIsDragBlockEnabled:Z

    if-eqz v3, :cond_6

    iget-boolean v3, v0, Landroid/widget/AbsListView;->mIsPenSelectPointerSetted:Z

    if-nez v3, :cond_6

    invoke-virtual {v1, v7}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v3

    if-ne v3, v6, :cond_6

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v3

    if-eq v3, v5, :cond_7

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v3

    if-eq v3, v6, :cond_7

    :cond_6
    iget-boolean v3, v0, Landroid/widget/AbsListView;->mIsNeedPenSelectIconSet:Z

    if-eqz v3, :cond_8

    :cond_7
    invoke-direct {v0, v1, v8}, Landroid/widget/AbsListView;->showPointerIcon(Landroid/view/MotionEvent;I)V

    iput-boolean v4, v0, Landroid/widget/AbsListView;->mIsPenSelectPointerSetted:Z

    goto/16 :goto_4

    :cond_8
    iget-boolean v3, v0, Landroid/widget/AbsListView;->mIsDragBlockEnabled:Z

    if-eqz v3, :cond_13

    iget-boolean v3, v0, Landroid/widget/AbsListView;->mIsPenSelectPointerSetted:Z

    if-eqz v3, :cond_13

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v3

    if-eq v3, v5, :cond_13

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v3

    if-eq v3, v6, :cond_13

    invoke-direct {v0, v1, v10}, Landroid/widget/AbsListView;->showPointerIcon(Landroid/view/MotionEvent;I)V

    iput-boolean v7, v0, Landroid/widget/AbsListView;->mIsPenSelectPointerSetted:Z

    goto/16 :goto_4

    :cond_9
    if-ne v2, v9, :cond_13

    iget-boolean v3, v0, Landroid/widget/AbsListView;->mIsPenSelectPointerSetted:Z

    if-eqz v3, :cond_13

    invoke-direct {v0, v1, v10}, Landroid/widget/AbsListView;->showPointerIcon(Landroid/view/MotionEvent;I)V

    iput-boolean v7, v0, Landroid/widget/AbsListView;->mIsPenSelectPointerSetted:Z

    goto/16 :goto_4

    :cond_a
    :goto_1
    invoke-virtual {v1, v7}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v3

    iput-boolean v4, v0, Landroid/widget/AbsListView;->mNeedsHoverScroll:Z

    iput-boolean v7, v0, Landroid/widget/AbsListView;->mHoverScrollStateChanged:Z

    iget-boolean v11, v0, Landroid/widget/AbsListView;->mHoverScrollEnable:Z

    if-nez v11, :cond_b

    iput-boolean v7, v0, Landroid/widget/AbsListView;->mNeedsHoverScroll:Z

    :cond_b
    iget-boolean v11, v0, Landroid/widget/AbsListView;->mNeedsHoverScroll:Z

    if-eqz v11, :cond_11

    if-ne v3, v6, :cond_11

    iget-object v11, v0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string/jumbo v12, "pen_hovering"

    invoke-static {v11, v12, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    if-ne v11, v4, :cond_c

    move v11, v4

    goto :goto_2

    :cond_c
    move v11, v7

    :goto_2
    iget-object v12, v0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "car_mode_on"

    const/4 v14, -0x3

    invoke-static {v12, v13, v7, v14}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v12

    if-ne v12, v4, :cond_d

    move v12, v4

    goto :goto_3

    :cond_d
    move v12, v7

    :goto_3
    if-eqz v11, :cond_e

    if-eqz v12, :cond_f

    :cond_e
    iput-boolean v7, v0, Landroid/widget/AbsListView;->mNeedsHoverScroll:Z

    :cond_f
    if-eqz v11, :cond_11

    iget-boolean v13, v0, Landroid/widget/AbsListView;->mIsDragBlockEnabled:Z

    if-eqz v13, :cond_11

    iget-boolean v13, v0, Landroid/widget/AbsListView;->mIsPenSelectPointerSetted:Z

    if-nez v13, :cond_11

    if-ne v3, v6, :cond_11

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v13

    if-eq v13, v5, :cond_10

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v13

    if-ne v13, v6, :cond_11

    :cond_10
    invoke-direct {v0, v1, v8}, Landroid/widget/AbsListView;->showPointerIcon(Landroid/view/MotionEvent;I)V

    iput-boolean v4, v0, Landroid/widget/AbsListView;->mIsPenSelectPointerSetted:Z

    :cond_11
    iget-boolean v8, v0, Landroid/widget/AbsListView;->mNeedsHoverScroll:Z

    if-eqz v8, :cond_12

    const/4 v8, 0x3

    if-ne v3, v8, :cond_12

    iput-boolean v7, v0, Landroid/widget/AbsListView;->mNeedsHoverScroll:Z

    :cond_12
    nop

    :cond_13
    :goto_4
    iget-boolean v3, v0, Landroid/widget/AbsListView;->mNeedsHoverScroll:Z

    if-nez v3, :cond_14

    invoke-super/range {p0 .. p1}, Landroid/widget/AdapterView;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    return v3

    :cond_14
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    float-to-int v8, v8

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v13

    iget-object v14, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    if-nez v14, :cond_15

    new-instance v14, Landroid/widget/AbsListView$HoverScrollHandler;

    invoke-direct {v14, v0}, Landroid/widget/AbsListView$HoverScrollHandler;-><init>(Landroid/widget/AbsListView;)V

    iput-object v14, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    :cond_15
    iget v14, v0, Landroid/widget/AbsListView;->mHoverTopAreaHeight:I

    if-lez v14, :cond_16

    iget v14, v0, Landroid/widget/AbsListView;->mHoverBottomAreaHeight:I

    if-gtz v14, :cond_17

    :cond_16
    iget-object v14, v0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v14

    const/high16 v15, 0x41c80000    # 25.0f

    invoke-static {v4, v15, v14}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v14

    const/high16 v16, 0x3f000000    # 0.5f

    add-float v14, v14, v16

    float-to-int v14, v14

    iput v14, v0, Landroid/widget/AbsListView;->mHoverTopAreaHeight:I

    iget-object v14, v0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v14

    invoke-static {v4, v15, v14}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v14

    add-float v14, v14, v16

    float-to-int v14, v14

    iput v14, v0, Landroid/widget/AbsListView;->mHoverBottomAreaHeight:I

    :cond_17
    iget-boolean v14, v0, Landroid/widget/AbsListView;->mIsEnabledPaddingInHoverScroll:Z

    if-eqz v14, :cond_18

    iget-object v14, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v11, v14, Landroid/graphics/Rect;->top:I

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v14

    iget-object v15, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v14, v15

    goto :goto_5

    :cond_18
    iget v11, v0, Landroid/widget/AbsListView;->mExtraPaddingInTopHoverArea:I

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v14

    iget v15, v0, Landroid/widget/AbsListView;->mExtraPaddingInBottomHoverArea:I

    sub-int/2addr v14, v15

    :goto_5
    iget v12, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    add-int/2addr v12, v13

    iget v15, v0, Landroid/widget/AbsListView;->mItemCount:I

    if-ge v12, v15, :cond_19

    move v12, v4

    goto :goto_6

    :cond_19
    move v12, v7

    :goto_6
    if-nez v12, :cond_1c

    if-lez v13, :cond_1c

    add-int/lit8 v15, v13, -0x1

    invoke-virtual {v0, v15}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    invoke-virtual {v15}, Landroid/view/View;->getBottom()I

    move-result v9

    iget v10, v0, Landroid/widget/AbsListView;->mBottom:I

    iget-object v4, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v10, v4

    if-gt v9, v10, :cond_1b

    invoke-virtual {v15}, Landroid/view/View;->getBottom()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v9

    iget-object v10, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v9, v10

    if-le v4, v9, :cond_1a

    goto :goto_7

    :cond_1a
    move v4, v7

    goto :goto_8

    :cond_1b
    :goto_7
    const/4 v4, 0x1

    :goto_8
    move v12, v4

    :cond_1c
    iget v4, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    if-lez v4, :cond_1d

    const/4 v4, 0x1

    goto :goto_9

    :cond_1d
    move v4, v7

    :goto_9
    if-nez v4, :cond_1f

    if-lez v13, :cond_1f

    invoke-virtual {v0, v7}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v10

    iget-object v15, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->top:I

    if-ge v10, v15, :cond_1e

    const/4 v10, 0x1

    goto :goto_a

    :cond_1e
    move v10, v7

    :goto_a
    move v4, v10

    :cond_1f
    invoke-virtual {v1, v7}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v9

    if-ne v9, v6, :cond_20

    const/4 v9, 0x1

    goto :goto_b

    :cond_20
    move v9, v7

    :goto_b
    iget v10, v0, Landroid/widget/AbsListView;->mHoverTopAreaHeight:I

    add-int/2addr v10, v11

    const/4 v15, 0x4

    if-le v8, v10, :cond_22

    iget v10, v0, Landroid/widget/AbsListView;->mHoverBottomAreaHeight:I

    sub-int v10, v14, v10

    if-lt v8, v10, :cond_21

    goto :goto_c

    :cond_21
    move v10, v8

    const/4 v5, 0x1

    goto/16 :goto_f

    :cond_22
    :goto_c
    if-lez v3, :cond_3a

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getRight()I

    move-result v10

    if-gt v3, v10, :cond_3a

    if-nez v4, :cond_23

    if-eqz v12, :cond_21

    :cond_23
    if-lt v8, v11, :cond_24

    iget v10, v0, Landroid/widget/AbsListView;->mHoverTopAreaHeight:I

    add-int/2addr v10, v11

    if-gt v8, v10, :cond_24

    if-nez v4, :cond_24

    iget-boolean v10, v0, Landroid/widget/AbsListView;->mIsHoverOverscrolled:Z

    if-nez v10, :cond_21

    :cond_24
    iget v10, v0, Landroid/widget/AbsListView;->mHoverBottomAreaHeight:I

    sub-int v10, v14, v10

    if-lt v8, v10, :cond_25

    if-gt v8, v14, :cond_25

    if-nez v12, :cond_25

    iget-boolean v10, v0, Landroid/widget/AbsListView;->mIsHoverOverscrolled:Z

    if-nez v10, :cond_21

    :cond_25
    if-eqz v9, :cond_27

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v10

    if-eq v10, v5, :cond_26

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v5

    const/4 v10, 0x2

    if-eq v5, v10, :cond_26

    goto :goto_d

    :cond_26
    move v10, v8

    const/4 v5, 0x1

    goto/16 :goto_f

    :cond_27
    :goto_d
    if-eqz v9, :cond_39

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->isLockScreenMode()Z

    move-result v5

    if-nez v5, :cond_38

    iget-boolean v5, v0, Landroid/widget/AbsListView;->mSemEnableGoToTop:Z

    if-eqz v5, :cond_28

    iget v5, v0, Landroid/widget/AbsListView;->mSemGoToTopState:I

    if-eqz v5, :cond_28

    iget-object v5, v0, Landroid/widget/AbsListView;->mSemGoToTopRect:Landroid/graphics/Rect;

    invoke-virtual {v5, v3, v8}, Landroid/graphics/Rect;->contains(II)Z

    move-result v5

    if-eqz v5, :cond_28

    move v10, v8

    const/4 v5, 0x1

    goto/16 :goto_f

    :cond_28
    iget-boolean v5, v0, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    if-nez v5, :cond_29

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v0, Landroid/widget/AbsListView;->mHoverScrollStartTime:J

    :cond_29
    const/16 v5, 0x4e2f

    const/16 v6, 0x4e2b

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    move v10, v8

    goto/16 :goto_e

    :pswitch_1
    iget-object v5, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/AbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v5

    if-eqz v5, :cond_2a

    iget-object v5, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    invoke-virtual {v5, v6}, Landroid/widget/AbsListView$HoverScrollHandler;->removeMessages(I)V

    :cond_2a
    const/16 v5, 0x4e21

    invoke-direct {v0, v1, v5}, Landroid/widget/AbsListView;->showPointerIcon(Landroid/view/MotionEvent;I)V

    const-wide/16 v5, 0x0

    iput-wide v5, v0, Landroid/widget/AbsListView;->mHoverRecognitionStartTime:J

    iput-wide v5, v0, Landroid/widget/AbsListView;->mHoverScrollStartTime:J

    const/4 v5, 0x0

    iput-boolean v5, v0, Landroid/widget/AbsListView;->mIsHoverOverscrolled:Z

    iput-boolean v5, v0, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    iput-boolean v5, v0, Landroid/widget/AbsListView;->mIsSendHoverScrollState:Z

    iget v6, v0, Landroid/widget/AbsListView;->mHoverScrollStateForListener:I

    if-eqz v6, :cond_2b

    iput v5, v0, Landroid/widget/AbsListView;->mHoverScrollStateForListener:I

    iget-object v6, v0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v6, :cond_2b

    iget v6, v0, Landroid/widget/AbsListView;->mTouchMode:I

    if-eq v6, v15, :cond_2b

    iget-object v6, v0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v6, v0, v5}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    :cond_2b
    invoke-super/range {p0 .. p1}, Landroid/widget/AdapterView;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    return v5

    :pswitch_2
    const/4 v7, 0x1

    iput-boolean v7, v0, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    if-lt v8, v11, :cond_2d

    iget v10, v0, Landroid/widget/AbsListView;->mHoverTopAreaHeight:I

    add-int/2addr v10, v11

    if-gt v8, v10, :cond_2d

    iget-object v5, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    invoke-virtual {v5, v7}, Landroid/widget/AbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v5

    if-nez v5, :cond_2c

    move v10, v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iput-wide v7, v0, Landroid/widget/AbsListView;->mHoverRecognitionStartTime:J

    invoke-direct {v0, v1, v6}, Landroid/widget/AbsListView;->showPointerIcon(Landroid/view/MotionEvent;I)V

    const/4 v5, 0x2

    iput v5, v0, Landroid/widget/AbsListView;->mHoverScrollDirection:I

    iget-object v5, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/AbsListView$HoverScrollHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_e

    :cond_2c
    move v10, v8

    goto/16 :goto_e

    :cond_2d
    move v10, v8

    iget v6, v0, Landroid/widget/AbsListView;->mHoverBottomAreaHeight:I

    sub-int v6, v14, v6

    if-lt v10, v6, :cond_37

    if-gt v10, v14, :cond_37

    iget-object v6, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/AbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v6

    if-nez v6, :cond_37

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iput-wide v7, v0, Landroid/widget/AbsListView;->mHoverRecognitionStartTime:J

    invoke-direct {v0, v1, v5}, Landroid/widget/AbsListView;->showPointerIcon(Landroid/view/MotionEvent;I)V

    const/4 v5, 0x1

    iput v5, v0, Landroid/widget/AbsListView;->mHoverScrollDirection:I

    iget-object v6, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    invoke-virtual {v6, v5}, Landroid/widget/AbsListView$HoverScrollHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_e

    :pswitch_3
    move v10, v8

    iget-boolean v7, v0, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    if-nez v7, :cond_2e

    const/4 v5, 0x1

    iput-boolean v5, v0, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    const/16 v5, 0xa

    invoke-virtual {v1, v5}, Landroid/view/MotionEvent;->setAction(I)V

    invoke-super/range {p0 .. p1}, Landroid/widget/AdapterView;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    return v5

    :cond_2e
    if-lt v10, v11, :cond_31

    iget v7, v0, Landroid/widget/AbsListView;->mHoverTopAreaHeight:I

    add-int/2addr v7, v11

    if-gt v10, v7, :cond_31

    iget-object v5, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Landroid/widget/AbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v5

    if-nez v5, :cond_37

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v0, Landroid/widget/AbsListView;->mHoverRecognitionStartTime:J

    iget-boolean v5, v0, Landroid/widget/AbsListView;->mIsHoverOverscrolled:Z

    if-eqz v5, :cond_2f

    iget v5, v0, Landroid/widget/AbsListView;->mHoverScrollDirection:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_30

    :cond_2f
    const/16 v5, 0x4e2b

    invoke-direct {v0, v1, v5}, Landroid/widget/AbsListView;->showPointerIcon(Landroid/view/MotionEvent;I)V

    :cond_30
    const/4 v5, 0x2

    iput v5, v0, Landroid/widget/AbsListView;->mHoverScrollDirection:I

    iget-object v5, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/AbsListView$HoverScrollHandler;->sendEmptyMessage(I)Z

    goto :goto_e

    :cond_31
    iget v6, v0, Landroid/widget/AbsListView;->mHoverBottomAreaHeight:I

    sub-int v6, v14, v6

    if-lt v10, v6, :cond_35

    if-gt v10, v14, :cond_35

    iget-object v6, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/AbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v6

    if-nez v6, :cond_34

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v0, Landroid/widget/AbsListView;->mHoverRecognitionStartTime:J

    iget-boolean v6, v0, Landroid/widget/AbsListView;->mIsHoverOverscrolled:Z

    if-eqz v6, :cond_32

    iget v6, v0, Landroid/widget/AbsListView;->mHoverScrollDirection:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_33

    :cond_32
    invoke-direct {v0, v1, v5}, Landroid/widget/AbsListView;->showPointerIcon(Landroid/view/MotionEvent;I)V

    :cond_33
    const/4 v5, 0x1

    iput v5, v0, Landroid/widget/AbsListView;->mHoverScrollDirection:I

    iget-object v6, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    invoke-virtual {v6, v5}, Landroid/widget/AbsListView$HoverScrollHandler;->sendEmptyMessage(I)Z

    goto :goto_e

    :cond_34
    const/4 v5, 0x1

    goto :goto_e

    :cond_35
    const/4 v5, 0x1

    iget-object v6, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    invoke-virtual {v6, v5}, Landroid/widget/AbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v6

    if-eqz v6, :cond_36

    iget-object v6, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    invoke-virtual {v6, v5}, Landroid/widget/AbsListView$HoverScrollHandler;->removeMessages(I)V

    :cond_36
    const/16 v5, 0x4e21

    invoke-direct {v0, v1, v5}, Landroid/widget/AbsListView;->showPointerIcon(Landroid/view/MotionEvent;I)V

    const-wide/16 v5, 0x0

    iput-wide v5, v0, Landroid/widget/AbsListView;->mHoverRecognitionStartTime:J

    iput-wide v5, v0, Landroid/widget/AbsListView;->mHoverScrollStartTime:J

    const/4 v5, 0x0

    iput-boolean v5, v0, Landroid/widget/AbsListView;->mIsHoverOverscrolled:Z

    iput-boolean v5, v0, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    iput-boolean v5, v0, Landroid/widget/AbsListView;->mIsHoverScrolled:Z

    iput-boolean v5, v0, Landroid/widget/AbsListView;->mIsSendHoverScrollState:Z

    nop

    :cond_37
    :goto_e
    const/4 v5, 0x1

    return v5

    :cond_38
    move v10, v8

    const/4 v5, 0x1

    goto :goto_f

    :cond_39
    move v10, v8

    const/4 v5, 0x1

    goto :goto_f

    :cond_3a
    move v10, v8

    const/4 v5, 0x1

    :goto_f
    iget-object v6, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    invoke-virtual {v6, v5}, Landroid/widget/AbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v6

    if-eqz v6, :cond_3b

    iget-object v6, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    invoke-virtual {v6, v5}, Landroid/widget/AbsListView$HoverScrollHandler;->removeMessages(I)V

    const/16 v5, 0x4e21

    invoke-direct {v0, v1, v5}, Landroid/widget/AbsListView;->showPointerIcon(Landroid/view/MotionEvent;I)V

    :cond_3b
    iget v5, v0, Landroid/widget/AbsListView;->mHoverTopAreaHeight:I

    add-int/2addr v5, v11

    if-le v10, v5, :cond_3c

    iget v5, v0, Landroid/widget/AbsListView;->mHoverBottomAreaHeight:I

    sub-int v5, v14, v5

    if-lt v10, v5, :cond_3d

    :cond_3c
    if-lez v3, :cond_3d

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getRight()I

    move-result v5

    if-le v3, v5, :cond_3e

    :cond_3d
    const/4 v5, 0x0

    iput-boolean v5, v0, Landroid/widget/AbsListView;->mIsHoverOverscrolled:Z

    :cond_3e
    iget-boolean v5, v0, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    if-nez v5, :cond_3f

    iget-wide v5, v0, Landroid/widget/AbsListView;->mHoverScrollStartTime:J

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_40

    :cond_3f
    const/16 v5, 0x4e21

    invoke-direct {v0, v1, v5}, Landroid/widget/AbsListView;->showPointerIcon(Landroid/view/MotionEvent;I)V

    :cond_40
    const-wide/16 v5, 0x0

    iput-wide v5, v0, Landroid/widget/AbsListView;->mHoverRecognitionStartTime:J

    iput-wide v5, v0, Landroid/widget/AbsListView;->mHoverScrollStartTime:J

    const/4 v5, 0x0

    iput-boolean v5, v0, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    iput-boolean v5, v0, Landroid/widget/AbsListView;->mIsSendHoverScrollState:Z

    const/16 v6, 0xa

    if-ne v2, v6, :cond_41

    iget v6, v0, Landroid/widget/AbsListView;->mHoverScrollStateForListener:I

    if-eqz v6, :cond_41

    iput v5, v0, Landroid/widget/AbsListView;->mHoverScrollStateForListener:I

    iget-object v6, v0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v6, :cond_41

    iget v6, v0, Landroid/widget/AbsListView;->mTouchMode:I

    if-eq v6, v15, :cond_41

    iget-object v6, v0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v6, v0, v5}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    :cond_41
    invoke-super/range {p0 .. p1}, Landroid/widget/AdapterView;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    return v5

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected whitelist dispatchSetPressed(Z)V
    .locals 0

    return-void
.end method

.method public whitelist dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v7, v1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    invoke-static {}, Landroid/text/MultiSelection;->isNeedToScroll()Z

    move-result v9

    iget-object v3, p0, Landroid/widget/AbsListView;->mSemDragSelectedItemArray:Ljava/util/ArrayList;

    if-nez v3, :cond_0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Landroid/widget/AbsListView;->mSemDragSelectedItemArray:Ljava/util/ArrayList;

    :cond_0
    iget-object v3, p0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    if-nez v3, :cond_1

    new-instance v3, Landroid/widget/AbsListView$HoverScrollHandler;

    invoke-direct {v3, p0}, Landroid/widget/AbsListView$HoverScrollHandler;-><init>(Landroid/widget/AbsListView;)V

    iput-object v3, p0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    :cond_1
    invoke-static {}, Landroid/widget/TextView;->semIsTextSelectionProgressing()Z

    move-result v3

    iput-boolean v3, p0, Landroid/widget/AbsListView;->mIsTextSelectionStarted:Z

    const/16 v3, 0xd3

    const/4 v4, -0x3

    const-string v5, "car_mode_on"

    const/4 v6, 0x0

    const/4 v10, 0x1

    if-ne v8, v3, :cond_3

    iput-boolean v10, p0, Landroid/widget/AbsListView;->mIsNeedPenSelection:Z

    iput v0, p0, Landroid/widget/AbsListView;->mTouchdownX:I

    iput v7, p0, Landroid/widget/AbsListView;->mTouchdownY:I

    iget-object v3, p0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v5, v6, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v10, :cond_2

    move v3, v10

    goto :goto_0

    :cond_2
    move v3, v6

    :goto_0
    if-eqz v3, :cond_3

    iput-boolean v6, p0, Landroid/widget/AbsListView;->mIsNeedPenSelection:Z

    :cond_3
    iget-boolean v3, p0, Landroid/widget/AbsListView;->mIsTextSelectionStarted:Z

    if-eqz v3, :cond_4

    iput-boolean v6, p0, Landroid/widget/AbsListView;->mIsNeedPenSelection:Z

    :cond_4
    iget v3, p0, Landroid/widget/AbsListView;->mHoverTopAreaHeight:I

    if-lez v3, :cond_5

    iget v3, p0, Landroid/widget/AbsListView;->mHoverBottomAreaHeight:I

    if-gtz v3, :cond_6

    :cond_5
    iget-object v3, p0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    const/high16 v11, 0x41c80000    # 25.0f

    invoke-static {v10, v11, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    const/high16 v12, 0x3f000000    # 0.5f

    add-float/2addr v3, v12

    float-to-int v3, v3

    iput v3, p0, Landroid/widget/AbsListView;->mHoverTopAreaHeight:I

    iget-object v3, p0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v10, v11, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    add-float/2addr v3, v12

    float-to-int v3, v3

    iput v3, p0, Landroid/widget/AbsListView;->mHoverBottomAreaHeight:I

    :cond_6
    iget-boolean v3, p0, Landroid/widget/AbsListView;->mIsEnabledPaddingInHoverScroll:Z

    if-eqz v3, :cond_7

    iget-object v3, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v3

    iget-object v11, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v11

    move v11, v1

    move v12, v3

    goto :goto_1

    :cond_7
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v3

    move v11, v1

    move v12, v3

    :goto_1
    iget-boolean v1, p0, Landroid/widget/AbsListView;->mIsEnabledPaddingInHoverScroll:Z

    if-eqz v1, :cond_9

    if-lt v7, v11, :cond_8

    if-le v7, v12, :cond_9

    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-eq v1, v10, :cond_9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/16 v2, 0xd4

    if-eq v1, v2, :cond_9

    return v10

    :cond_9
    const/4 v1, 0x2

    sparse-switch v8, :sswitch_data_0

    goto/16 :goto_4

    :sswitch_0
    move-object v1, p0

    move v2, v0

    move v3, v7

    move v4, v11

    move v5, v12

    move v6, v9

    invoke-direct/range {v1 .. v6}, Landroid/widget/AbsListView;->semMultiSelection(IIIIZ)V

    goto/16 :goto_4

    :sswitch_1
    goto/16 :goto_4

    :sswitch_2
    iget v2, p0, Landroid/widget/AbsListView;->mSemGoToTopState:I

    if-eqz v2, :cond_b

    invoke-direct {p0}, Landroid/widget/AbsListView;->semIsSupportGotoTop()Z

    move-result v2

    if-eqz v2, :cond_b

    iget v2, p0, Landroid/widget/AbsListView;->mSemGoToTopState:I

    if-ne v2, v1, :cond_a

    iput v10, p0, Landroid/widget/AbsListView;->mSemGoToTopState:I

    :cond_a
    iget-object v2, p0, Landroid/widget/AbsListView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    sget-object v3, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_b
    iget-boolean v2, p0, Landroid/widget/AbsListView;->mIsLongPressMultiSelection:Z

    if-eqz v2, :cond_f

    iget v2, p0, Landroid/widget/AbsListView;->mSemDragEndX:I

    iget v3, p0, Landroid/widget/AbsListView;->mSemDragEndY:I

    invoke-direct {p0, v2, v3}, Landroid/widget/AbsListView;->endLongPressMultiSelection(II)V

    goto :goto_2

    :sswitch_3
    iget-boolean v2, p0, Landroid/widget/AbsListView;->mIsCtrlMultiSelection:Z

    if-eqz v2, :cond_c

    move-object v1, p0

    move v2, v0

    move v3, v7

    move v4, v11

    move v5, v12

    move v6, v9

    invoke-direct/range {v1 .. v6}, Landroid/widget/AbsListView;->semMultiSelection(IIIIZ)V

    return v10

    :cond_c
    iget-boolean v2, p0, Landroid/widget/AbsListView;->mIsLongPressMultiSelection:Z

    if-eqz v2, :cond_d

    invoke-direct {p0, v0, v7, v10}, Landroid/widget/AbsListView;->updateLongPressMultiSelection(IIZ)V

    :cond_d
    iget v2, p0, Landroid/widget/AbsListView;->mSemGoToTopState:I

    if-ne v2, v1, :cond_19

    invoke-direct {p0}, Landroid/widget/AbsListView;->semIsSupportGotoTop()Z

    move-result v1

    if-eqz v1, :cond_19

    iget-object v1, p0, Landroid/widget/AbsListView;->mSemGoToTopRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v0, v7}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-nez v1, :cond_e

    iput v10, p0, Landroid/widget/AbsListView;->mSemGoToTopState:I

    invoke-virtual {p0, v10}, Landroid/widget/AbsListView;->semAutoHide(I)V

    iget-object v1, p0, Landroid/widget/AbsListView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    sget-object v2, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_e
    return v10

    :cond_f
    :goto_2
    :sswitch_4
    iget-boolean v2, p0, Landroid/widget/AbsListView;->mIsCtrlMultiSelection:Z

    if-eqz v2, :cond_11

    iget-boolean v1, p0, Landroid/widget/AbsListView;->mIsTextSelectionStarted:Z

    if-nez v1, :cond_10

    iget-boolean v1, p0, Landroid/widget/AbsListView;->mIsFirstPenClick:Z

    xor-int/2addr v1, v10

    iput-boolean v1, p0, Landroid/widget/AbsListView;->mIsFirstPenClick:Z

    :cond_10
    invoke-direct {p0, v8, v0, v7}, Landroid/widget/AbsListView;->semMultiSelectionEnd(III)V

    iput-boolean v6, p0, Landroid/widget/AbsListView;->mIsCtrlMultiSelection:Z

    return v10

    :cond_11
    iget-boolean v2, p0, Landroid/widget/AbsListView;->mIsLongPressMultiSelection:Z

    if-eqz v2, :cond_12

    invoke-direct {p0, v0, v7}, Landroid/widget/AbsListView;->endLongPressMultiSelection(II)V

    :cond_12
    :sswitch_5
    iget v2, p0, Landroid/widget/AbsListView;->mSemGoToTopState:I

    if-ne v2, v1, :cond_15

    invoke-direct {p0}, Landroid/widget/AbsListView;->semIsSupportGotoTop()Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-direct {p0}, Landroid/widget/AbsListView;->canScrollUp()Z

    move-result v1

    if-eqz v1, :cond_14

    iput-boolean v10, p0, Landroid/widget/AbsListView;->mGoToToping:Z

    const-string v1, "AbsListView"

    const-string v2, " can scroll top "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_13

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v2

    if-ge v1, v2, :cond_13

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->setSelection(I)V

    :cond_13
    iput-boolean v10, p0, Landroid/widget/AbsListView;->mSemCanGoFuther:Z

    new-instance v2, Landroid/widget/AbsListView$12;

    invoke-direct {v2, p0}, Landroid/widget/AbsListView$12;-><init>(Landroid/widget/AbsListView;)V

    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    :cond_14
    invoke-virtual {p0, v6}, Landroid/widget/AbsListView;->semAutoHide(I)V

    iget-object v1, p0, Landroid/widget/AbsListView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    sget-object v2, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    invoke-virtual {p0, v6}, Landroid/widget/AbsListView;->playSoundEffect(I)V

    return v10

    :cond_15
    invoke-direct {p0, v8, v0, v7}, Landroid/widget/AbsListView;->semMultiSelectionEnd(III)V

    goto/16 :goto_4

    :sswitch_6
    iput-boolean v6, p0, Landroid/widget/AbsListView;->mGoToToping:Z

    iget v2, p0, Landroid/widget/AbsListView;->mSemGoToTopState:I

    if-eq v2, v1, :cond_16

    invoke-direct {p0}, Landroid/widget/AbsListView;->semIsSupportGotoTop()Z

    move-result v2

    if-eqz v2, :cond_16

    iget-object v2, p0, Landroid/widget/AbsListView;->mSemGoToTopRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v0, v7}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->semSetupGoToTop(I)V

    iget-object v1, p0, Landroid/widget/AbsListView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    int-to-float v2, v0

    int-to-float v3, v7

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    iget-object v1, p0, Landroid/widget/AbsListView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    const v2, 0x101009e

    const v3, 0x10100a1

    const v4, 0x10100a7

    filled-new-array {v4, v2, v3}, [I

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    return v10

    :cond_16
    iget-boolean v1, p0, Landroid/widget/AbsListView;->mIsCtrlkeyPressed:Z

    if-eqz v1, :cond_19

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_19

    iput-boolean v10, p0, Landroid/widget/AbsListView;->mIsCtrlMultiSelection:Z

    iput-boolean v10, p0, Landroid/widget/AbsListView;->mIsNeedPenSelection:Z

    iput v0, p0, Landroid/widget/AbsListView;->mTouchdownX:I

    iput v7, p0, Landroid/widget/AbsListView;->mTouchdownY:I

    iget-object v1, p0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v5, v6, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-ne v1, v10, :cond_17

    move v1, v10

    goto :goto_3

    :cond_17
    move v1, v6

    :goto_3
    move v13, v1

    if-eqz v13, :cond_18

    iput-boolean v6, p0, Landroid/widget/AbsListView;->mIsNeedPenSelection:Z

    :cond_18
    move-object v1, p0

    move v2, v0

    move v3, v7

    move v4, v11

    move v5, v12

    move v6, v9

    invoke-direct/range {v1 .. v6}, Landroid/widget/AbsListView;->semMultiSelection(IIIIZ)V

    return v10

    :cond_19
    :goto_4
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_6
        0x1 -> :sswitch_4
        0x2 -> :sswitch_3
        0x3 -> :sswitch_2
        0xd3 -> :sswitch_1
        0xd4 -> :sswitch_5
        0xd5 -> :sswitch_0
    .end sparse-switch
.end method

.method public whitelist draw(Landroid/graphics/Canvas;)V
    .locals 13

    invoke-super {p0, p1}, Landroid/widget/AdapterView;->draw(Landroid/graphics/Canvas;)V

    invoke-direct {p0}, Landroid/widget/AbsListView;->shouldDisplayEdgeEffects()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    iget v0, p0, Landroid/widget/AbsListView;->mScrollY:I

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getClipToPadding()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v4

    iget v5, p0, Landroid/widget/AbsListView;->mPaddingLeft:I

    sub-int/2addr v4, v5

    iget v5, p0, Landroid/widget/AbsListView;->mPaddingRight:I

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v5

    iget v6, p0, Landroid/widget/AbsListView;->mPaddingTop:I

    sub-int/2addr v5, v6

    iget v6, p0, Landroid/widget/AbsListView;->mPaddingBottom:I

    sub-int/2addr v5, v6

    iget v6, p0, Landroid/widget/AbsListView;->mPaddingLeft:I

    iget v7, p0, Landroid/widget/AbsListView;->mPaddingTop:I

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    iget-object v8, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v8, v4, v5}, Landroid/widget/EdgeEffect;->setSize(II)V

    iget-object v8, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v8, v4, v5}, Landroid/widget/EdgeEffect;->setSize(II)V

    iget-object v8, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v8}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v8

    if-nez v8, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v8

    add-int v9, v6, v4

    iget-object v10, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v10}, Landroid/widget/EdgeEffect;->getMaxHeight()I

    move-result v10

    add-int/2addr v10, v7

    invoke-virtual {p1, v6, v7, v9, v10}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    iget v9, p0, Landroid/widget/AbsListView;->mFirstPositionDistanceGuess:I

    add-int/2addr v9, v0

    invoke-static {v2, v9}, Ljava/lang/Math;->min(II)I

    move-result v9

    add-int/2addr v9, v7

    int-to-float v10, v6

    int-to-float v11, v9

    invoke-virtual {p1, v10, v11}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v10, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v10, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-direct {p0}, Landroid/widget/AbsListView;->invalidateEdgeEffects()V

    :cond_1
    invoke-virtual {p1, v8}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_2
    iget-object v8, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v8}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v8

    if-nez v8, :cond_5

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v8

    add-int v9, v7, v5

    iget-object v10, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v10}, Landroid/widget/EdgeEffect;->getMaxHeight()I

    move-result v10

    sub-int/2addr v9, v10

    add-int v10, v6, v4

    add-int v11, v7, v5

    invoke-virtual {p1, v6, v9, v10, v11}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    neg-int v9, v4

    add-int/2addr v9, v6

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v10

    iget v11, p0, Landroid/widget/AbsListView;->mLastPositionDistanceGuess:I

    add-int/2addr v11, v0

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    if-eqz v3, :cond_3

    iget v11, p0, Landroid/widget/AbsListView;->mPaddingBottom:I

    goto :goto_1

    :cond_3
    move v11, v2

    :goto_1
    sub-int/2addr v10, v11

    int-to-float v11, v9

    int-to-float v12, v10

    invoke-virtual {p1, v11, v12}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v11, 0x43340000    # 180.0f

    int-to-float v12, v4

    invoke-virtual {p1, v11, v12, v1}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget-object v11, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v11, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-direct {p0}, Landroid/widget/AbsListView;->invalidateEdgeEffects()V

    :cond_4
    invoke-virtual {p1, v8}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_5
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mSemEnableGoToTop:Z

    if-eqz v0, :cond_6

    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->drawGoToTop(Landroid/graphics/Canvas;)V

    :cond_6
    invoke-direct {p0}, Landroid/widget/AbsListView;->semIsTalkBackIsRunning()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroid/widget/AbsListView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroid/widget/AbsListView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroid/widget/AbsListView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_7
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mAppWidgetIndicator:Z

    if-eqz v0, :cond_8

    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->drawIndicator(Landroid/graphics/Canvas;)V

    :cond_8
    return-void
.end method

.method protected whitelist drawableStateChanged()V
    .locals 0

    invoke-super {p0}, Landroid/widget/AdapterView;->drawableStateChanged()V

    invoke-virtual {p0}, Landroid/widget/AbsListView;->updateSelectorState()V

    return-void
.end method

.method protected greylist-max-o encodeProperties(Landroid/view/ViewHierarchyEncoder;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/AdapterView;->encodeProperties(Landroid/view/ViewHierarchyEncoder;)V

    const-string v0, "drawing:cacheColorHint"

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getCacheColorHint()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    const-string v0, "list:fastScrollEnabled"

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isFastScrollEnabled()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    const-string v0, "list:scrollingCacheEnabled"

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isScrollingCacheEnabled()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    const-string v0, "list:smoothScrollbarEnabled"

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isSmoothScrollbarEnabled()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    const-string v0, "list:stackFromBottom"

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isStackFromBottom()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    const-string v0, "list:textFilterEnabled"

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isTextFilterEnabled()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "selectedView"

    invoke-virtual {p1, v1}, Landroid/view/ViewHierarchyEncoder;->addPropertyKey(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/view/View;->encode(Landroid/view/ViewHierarchyEncoder;)V

    :cond_0
    return-void
.end method

.method abstract greylist-max-o fillGap(Z)V
.end method

.method protected whitelist test-api finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method greylist-max-o findClosestMotionRow(I)I
    .locals 3

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->findMotionRow(I)I

    move-result v2

    if-eq v2, v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    iget v1, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x1

    :goto_0
    return v1
.end method

.method abstract greylist findMotionRow(I)I
.end method

.method public whitelist fling(I)V
    .locals 1

    iget-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/AbsListView$FlingRunnable;

    invoke-direct {v0, p0}, Landroid/widget/AbsListView$FlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    iget-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {v0, p1}, Landroid/widget/AbsListView$FlingRunnable;->start(I)V

    return-void
.end method

.method protected whitelist generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 4

    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {v0, v3, v1, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(III)V

    return-object v0
.end method

.method public bridge synthetic whitelist generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/AbsListView$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method protected whitelist generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {v0, p1}, Landroid/widget/AbsListView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public whitelist generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/AbsListView$LayoutParams;
    .locals 2

    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/AbsListView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public whitelist getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    const-class v0, Landroid/widget/AbsListView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method greylist-max-o getAccessibilityFocusedChild(Landroid/view/View;)Landroid/view/View;
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :goto_0
    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_0

    if-eq v0, p0, :cond_0

    move-object p1, v0

    check-cast p1, Landroid/view/View;

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    :cond_0
    instance-of v1, v0, Landroid/view/View;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    return-object v1

    :cond_1
    return-object p1
.end method

.method public whitelist getBottomEdgeEffectColor()I
    .locals 1

    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->getColor()I

    move-result v0

    return v0
.end method

.method protected whitelist getBottomFadingEdgeStrength()F
    .locals 7

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    invoke-super {p0}, Landroid/widget/AdapterView;->getBottomFadingEdgeStrength()F

    move-result v1

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget v2, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    add-int/2addr v2, v0

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Landroid/widget/AbsListView;->mItemCount:I

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_1

    const/high16 v2, 0x3f800000    # 1.0f

    return v2

    :cond_1
    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getVerticalFadingEdgeLength()I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Landroid/widget/AbsListView;->mPaddingBottom:I

    sub-int v5, v3, v5

    if-le v2, v5, :cond_2

    sub-int v5, v2, v3

    iget v6, p0, Landroid/widget/AbsListView;->mPaddingBottom:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    div-float/2addr v5, v4

    goto :goto_0

    :cond_2
    move v5, v1

    :goto_0
    return v5
.end method

.method protected whitelist getBottomPaddingOffset()I
    .locals 2

    iget v0, p0, Landroid/widget/AbsListView;->mGroupFlags:I

    const/16 v1, 0x22

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget v0, p0, Landroid/widget/AbsListView;->mPaddingBottom:I

    :goto_0
    return v0
.end method

.method public whitelist getCacheColorHint()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    iget v0, p0, Landroid/widget/AbsListView;->mCacheColorHint:I

    return v0
.end method

.method public whitelist getCheckedItemCount()I
    .locals 1

    iget v0, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    return v0
.end method

.method public whitelist getCheckedItemIds()[J
    .locals 6

    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->size()I

    move-result v1

    new-array v2, v1, [J

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    invoke-virtual {v0, v3}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v4

    aput-wide v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v2

    :cond_2
    :goto_1
    const/4 v0, 0x0

    new-array v0, v0, [J

    return-object v0
.end method

.method public whitelist getCheckedItemPosition()I
    .locals 2

    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public whitelist getCheckedItemPositions()Landroid/util/SparseBooleanArray;
    .locals 1

    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getChoiceMode()I
    .locals 1

    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    return v0
.end method

.method protected whitelist getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    iget-object v0, p0, Landroid/widget/AbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    return-object v0
.end method

.method public whitelist getFocusedRect(Landroid/graphics/Rect;)V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-ne v1, p0, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    invoke-virtual {p0, v0, p1}, Landroid/widget/AbsListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->getFocusedRect(Landroid/graphics/Rect;)V

    :goto_0
    return-void
.end method

.method greylist-max-o getFooterViewsCount()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method greylist-max-o getHeaderViewsCount()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method greylist-max-o getHeightForPosition(I)I
    .locals 6

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    sub-int v2, p1, v0

    if-ltz v2, :cond_0

    if-ge v2, v1, :cond_0

    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v4

    return v4

    :cond_0
    iget-object v3, p0, Landroid/widget/AbsListView;->mIsScrap:[Z

    invoke-virtual {p0, p1, v3}, Landroid/widget/AbsListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v3

    iget v4, p0, Landroid/widget/AbsListView;->mWidthMeasureSpec:I

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/View;->measure(II)V

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    iget-object v5, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v5, v3, p1}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    return v4
.end method

.method protected whitelist getLeftPaddingOffset()I
    .locals 2

    iget v0, p0, Landroid/widget/AbsListView;->mGroupFlags:I

    const/16 v1, 0x22

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget v0, p0, Landroid/widget/AbsListView;->mPaddingLeft:I

    neg-int v0, v0

    :goto_0
    return v0
.end method

.method public whitelist getListPaddingBottom()I
    .locals 1

    iget-object v0, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    return v0
.end method

.method public whitelist getListPaddingLeft()I
    .locals 1

    iget-object v0, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    return v0
.end method

.method public whitelist getListPaddingRight()I
    .locals 1

    iget-object v0, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    return v0
.end method

.method public whitelist getListPaddingTop()I
    .locals 1

    iget-object v0, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method protected whitelist getRightPaddingOffset()I
    .locals 2

    iget v0, p0, Landroid/widget/AbsListView;->mGroupFlags:I

    const/16 v1, 0x22

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget v0, p0, Landroid/widget/AbsListView;->mPaddingRight:I

    :goto_0
    return v0
.end method

.method public whitelist getSelectedView()Landroid/view/View;
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    iget v0, p0, Landroid/widget/AbsListView;->mItemCount:I

    if-lez v0, :cond_0

    iget v0, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    if-ltz v0, :cond_0

    iget v0, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    iget v1, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method greylist-max-o getSelectionModeForAccessibility()I
    .locals 2

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChoiceMode()I

    move-result v0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    return v1

    :pswitch_0
    const/4 v1, 0x2

    return v1

    :pswitch_1
    const/4 v1, 0x1

    return v1

    :pswitch_2
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public whitelist getSelector()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public whitelist getSolidColor()I
    .locals 1

    iget v0, p0, Landroid/widget/AbsListView;->mCacheColorHint:I

    return v0
.end method

.method public whitelist getTextFilter()Ljava/lang/CharSequence;
    .locals 1

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mTextFilterEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getTopEdgeEffectColor()I
    .locals 1

    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->getColor()I

    move-result v0

    return v0
.end method

.method protected whitelist getTopFadingEdgeStrength()F
    .locals 5

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    invoke-super {p0}, Landroid/widget/AdapterView;->getTopFadingEdgeStrength()F

    move-result v1

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget v2, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    if-lez v2, :cond_1

    const/high16 v2, 0x3f800000    # 1.0f

    return v2

    :cond_1
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getVerticalFadingEdgeLength()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Landroid/widget/AbsListView;->mPaddingTop:I

    if-ge v2, v4, :cond_2

    iget v4, p0, Landroid/widget/AbsListView;->mPaddingTop:I

    sub-int v4, v2, v4

    neg-int v4, v4

    int-to-float v4, v4

    div-float/2addr v4, v3

    goto :goto_0

    :cond_2
    move v4, v1

    :goto_0
    return v4
.end method

.method protected whitelist getTopPaddingOffset()I
    .locals 2

    iget v0, p0, Landroid/widget/AbsListView;->mGroupFlags:I

    const/16 v1, 0x22

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget v0, p0, Landroid/widget/AbsListView;->mPaddingTop:I

    neg-int v0, v0

    :goto_0
    return v0
.end method

.method public blacklist getTouchSlop()I
    .locals 1

    iget v0, p0, Landroid/widget/AbsListView;->mTouchSlop:I

    return v0
.end method

.method public whitelist getTranscriptMode()I
    .locals 1

    iget v0, p0, Landroid/widget/AbsListView;->mTranscriptMode:I

    return v0
.end method

.method public whitelist getVerticalScrollbarWidth()I
    .locals 2

    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {v0}, Landroid/widget/FastScroller;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Landroid/widget/AdapterView;->getVerticalScrollbarWidth()I

    move-result v0

    iget-object v1, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {v1}, Landroid/widget/FastScroller;->getWidth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mSemFastScroll:Landroid/widget/SemFastScroller;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/AbsListView;->mSemFastScroll:Landroid/widget/SemFastScroller;

    invoke-virtual {v0}, Landroid/widget/SemFastScroller;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-super {p0}, Landroid/widget/AdapterView;->getVerticalScrollbarWidth()I

    move-result v0

    iget-object v1, p0, Landroid/widget/AbsListView;->mSemFastScroll:Landroid/widget/SemFastScroller;

    invoke-virtual {v1}, Landroid/widget/SemFastScroller;->getWidth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0

    :cond_1
    invoke-super {p0}, Landroid/widget/AdapterView;->getVerticalScrollbarWidth()I

    move-result v0

    return v0
.end method

.method greylist-max-o handleBoundsChange()V
    .locals 6

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mInLayout:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_3

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/AbsListView;->mDataChanged:Z

    invoke-virtual {p0}, Landroid/widget/AbsListView;->rememberSyncState()V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    if-eqz v4, :cond_1

    iget v5, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-lt v5, v1, :cond_1

    iget v5, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ge v5, v1, :cond_2

    :cond_1
    invoke-virtual {v3}, Landroid/view/View;->forceLayout()V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method protected whitelist handleDataChanged()V
    .locals 12

    iget v0, p0, Landroid/widget/AbsListView;->mItemCount:I

    iget v1, p0, Landroid/widget/AbsListView;->mLastHandledItemCount:I

    iget v2, p0, Landroid/widget/AbsListView;->mItemCount:I

    iput v2, p0, Landroid/widget/AbsListView;->mLastHandledItemCount:I

    iget-boolean v2, p0, Landroid/widget/AbsListView;->mIsMultiFocusEnabled:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v2, :cond_0

    iget v2, p0, Landroid/widget/AbsListView;->mItemCount:I

    iget v3, p0, Landroid/widget/AbsListView;->mOldAdapterItemCount:I

    if-eq v2, v3, :cond_0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/widget/AbsListView;->mSemPressItemListArray:Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroid/widget/AbsListView;->resetPressItemListArray()V

    iget v2, p0, Landroid/widget/AbsListView;->mItemCount:I

    iput v2, p0, Landroid/widget/AbsListView;->mOldAdapterItemCount:I

    :cond_0
    iget v2, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Landroid/widget/AbsListView;->confirmCheckedPositionsById()V

    :cond_1
    iget-object v2, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v2}, Landroid/widget/AbsListView$RecycleBin;->clearTransientStateViews()V

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-lez v0, :cond_10

    iget-boolean v6, p0, Landroid/widget/AbsListView;->mNeedSync:Z

    if-eqz v6, :cond_9

    iput-boolean v4, p0, Landroid/widget/AbsListView;->mNeedSync:Z

    iput-object v2, p0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    iget v6, p0, Landroid/widget/AbsListView;->mTranscriptMode:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_2

    iput v3, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    return-void

    :cond_2
    iget v6, p0, Landroid/widget/AbsListView;->mTranscriptMode:I

    if-ne v6, v5, :cond_6

    iget-boolean v6, p0, Landroid/widget/AbsListView;->mForceTranscriptScroll:Z

    if-eqz v6, :cond_3

    iput-boolean v4, p0, Landroid/widget/AbsListView;->mForceTranscriptScroll:Z

    iput v3, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    return-void

    :cond_3
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v6

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v8

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getPaddingBottom()I

    move-result v9

    sub-int/2addr v8, v9

    add-int/lit8 v9, v6, -0x1

    invoke-virtual {p0, v9}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    if-eqz v9, :cond_4

    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v10

    goto :goto_0

    :cond_4
    move v10, v8

    :goto_0
    iget v11, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    add-int/2addr v11, v6

    if-lt v11, v1, :cond_5

    if-gt v10, v8, :cond_5

    iput v3, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    return-void

    :cond_5
    invoke-virtual {p0}, Landroid/widget/AbsListView;->awakenScrollBars()Z

    :cond_6
    iget v6, p0, Landroid/widget/AbsListView;->mSyncMode:I

    const/4 v8, 0x5

    packed-switch v6, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    iput v8, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    iget v2, p0, Landroid/widget/AbsListView;->mSyncPosition:I

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/lit8 v3, v0, -0x1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p0, Landroid/widget/AbsListView;->mSyncPosition:I

    return-void

    :pswitch_1
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isInTouchMode()Z

    move-result v6

    if-eqz v6, :cond_7

    iput v8, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    iget v2, p0, Landroid/widget/AbsListView;->mSyncPosition:I

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/lit8 v3, v0, -0x1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p0, Landroid/widget/AbsListView;->mSyncPosition:I

    return-void

    :cond_7
    invoke-virtual {p0}, Landroid/widget/AbsListView;->findSyncPosition()I

    move-result v6

    if-ltz v6, :cond_9

    invoke-virtual {p0, v6, v5}, Landroid/widget/AbsListView;->lookForSelectablePosition(IZ)I

    move-result v9

    if-ne v9, v6, :cond_9

    iput v6, p0, Landroid/widget/AbsListView;->mSyncPosition:I

    iget-wide v2, p0, Landroid/widget/AbsListView;->mSyncHeight:J

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v4

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_8

    iput v8, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    goto :goto_1

    :cond_8
    iput v7, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    :goto_1
    invoke-virtual {p0, v6}, Landroid/widget/AbsListView;->setNextSelectedPositionInt(I)V

    return-void

    :cond_9
    :goto_2
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isInTouchMode()Z

    move-result v6

    if-nez v6, :cond_f

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getSelectedItemPosition()I

    move-result v6

    move v7, v6

    if-lt v6, v0, :cond_a

    add-int/lit8 v6, v0, -0x1

    :cond_a
    if-gez v6, :cond_b

    const/4 v6, 0x0

    :cond_b
    iget-boolean v8, p0, Landroid/widget/AbsListView;->mIsForceSelection:Z

    if-eqz v8, :cond_c

    move v6, v7

    :cond_c
    invoke-virtual {p0, v6, v5}, Landroid/widget/AbsListView;->lookForSelectablePosition(IZ)I

    move-result v8

    if-ltz v8, :cond_d

    invoke-virtual {p0, v8}, Landroid/widget/AbsListView;->setNextSelectedPositionInt(I)V

    return-void

    :cond_d
    invoke-virtual {p0, v6, v4}, Landroid/widget/AbsListView;->lookForSelectablePosition(IZ)I

    move-result v8

    if-ltz v8, :cond_e

    invoke-virtual {p0, v8}, Landroid/widget/AbsListView;->setNextSelectedPositionInt(I)V

    return-void

    :cond_e
    goto :goto_3

    :cond_f
    iget v6, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    if-ltz v6, :cond_10

    return-void

    :cond_10
    :goto_3
    iget-boolean v6, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    if-eqz v6, :cond_11

    goto :goto_4

    :cond_11
    move v3, v5

    :goto_4
    iput v3, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    const/4 v3, -0x1

    iput v3, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    const-wide/high16 v5, -0x8000000000000000L

    iput-wide v5, p0, Landroid/widget/AbsListView;->mSelectedRowId:J

    iput v3, p0, Landroid/widget/AbsListView;->mNextSelectedPosition:I

    iput-wide v5, p0, Landroid/widget/AbsListView;->mNextSelectedRowId:J

    iput-boolean v4, p0, Landroid/widget/AbsListView;->mNeedSync:Z

    iput-object v2, p0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    iput v3, p0, Landroid/widget/AbsListView;->mSelectorPosition:I

    invoke-virtual {p0}, Landroid/widget/AbsListView;->checkSelectionChanged()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected greylist-max-o handleScrollBarDragging(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist hasTextFilter()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFiltered:Z

    return v0
.end method

.method greylist-max-o hideSelector()V
    .locals 3

    iget v0, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    iget v0, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    iget v0, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    iput v0, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    :cond_0
    iget v0, p0, Landroid/widget/AbsListView;->mNextSelectedPosition:I

    if-ltz v0, :cond_1

    iget v0, p0, Landroid/widget/AbsListView;->mNextSelectedPosition:I

    iget v2, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    if-eq v0, v2, :cond_1

    iget v0, p0, Landroid/widget/AbsListView;->mNextSelectedPosition:I

    iput v0, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    :cond_1
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->setSelectedPositionInt(I)V

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->setNextSelectedPositionInt(I)V

    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/AbsListView;->mSelectedTop:I

    iput v1, p0, Landroid/widget/AbsListView;->mSelectorPosition:I

    :cond_2
    return-void
.end method

.method protected greylist-max-o internalSetPadding(IIII)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AdapterView;->internalSetPadding(IIII)V

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isLayoutRequested()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->handleBoundsChange()V

    :cond_0
    return-void
.end method

.method public whitelist invalidateViews()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mDataChanged:Z

    invoke-virtual {p0}, Landroid/widget/AbsListView;->rememberSyncState()V

    invoke-virtual {p0}, Landroid/widget/AbsListView;->requestLayout()V

    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidate()V

    return-void
.end method

.method greylist invokeOnItemScrollListener()V
    .locals 4

    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    iget v1, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v2

    iget v3, p0, Landroid/widget/AbsListView;->mItemCount:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/FastScroller;->onScroll(III)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mSemFastScroll:Landroid/widget/SemFastScroller;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/AbsListView;->mSemFastScroll:Landroid/widget/SemFastScroller;

    iget v1, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v2

    iget v3, p0, Landroid/widget/AbsListView;->mItemCount:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/SemFastScroller;->onScroll(III)V

    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    iget v1, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v2

    iget v3, p0, Landroid/widget/AbsListView;->mItemCount:I

    invoke-interface {v0, p0, v1, v2, v3}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0, v0}, Landroid/widget/AbsListView;->onScrollChanged(IIII)V

    return-void
.end method

.method public whitelist isDrawSelectorOnTop()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mDrawSelectorOnTop:Z

    return v0
.end method

.method public whitelist isFastScrollAlwaysVisible()Z
    .locals 3

    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFastScrollEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFastScrollAlwaysVisible:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    :cond_1
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {v0}, Landroid/widget/FastScroller;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {v0}, Landroid/widget/FastScroller;->isAlwaysShowEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    return v1
.end method

.method public whitelist isFastScrollEnabled()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFastScrollEnabled:Z

    return v0

    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {v0}, Landroid/widget/FastScroller;->isEnabled()Z

    move-result v0

    return v0
.end method

.method protected whitelist isInFilterMode()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFiltered:Z

    return v0
.end method

.method public whitelist isItemChecked(I)Z
    .locals 1

    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isLockScreenMode()Z
    .locals 2

    iget-object v0, p0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v1

    return v1
.end method

.method public blacklist isMultiFocusEnabled()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mIsMultiFocusEnabled:Z

    return v0
.end method

.method protected whitelist isPaddingOffsetRequired()Z
    .locals 2

    iget v0, p0, Landroid/widget/AbsListView;->mGroupFlags:I

    const/16 v1, 0x22

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist isScrollingCacheEnabled()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mScrollingCacheEnabled:Z

    return v0
.end method

.method public whitelist isSelectedChildViewEnabled()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mIsChildViewEnabled:Z

    return v0
.end method

.method protected blacklist isSemUsingAdapterView()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public whitelist isSmoothScrollbarEnabled()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mSmoothScrollbarEnabled:Z

    return v0
.end method

.method public whitelist isStackFromBottom()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    return v0
.end method

.method public whitelist isTextFilterEnabled()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mTextFilterEnabled:Z

    return v0
.end method

.method protected greylist-max-r isVerticalScrollBarHidden()Z
    .locals 1

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isFastScrollEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/AbsListView;->semIsFastScrollEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public whitelist jumpDrawablesToCurrentState()V
    .locals 1

    invoke-super {p0}, Landroid/widget/AdapterView;->jumpDrawablesToCurrentState()V

    iget-object v0, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    :cond_0
    return-void
.end method

.method greylist-max-o keyPressed()V
    .locals 9

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isClickable()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isFocused()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Landroid/widget/AbsListView;->touchModeDrawsInPressedState()Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_1
    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8

    iget v2, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    iget v3, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    iget-object v4, p0, Landroid/widget/AbsListView;->mNextClickable:Landroid/view/View;

    if-nez v4, :cond_3

    invoke-virtual {v2}, Landroid/view/View;->hasExplicitFocusable()Z

    move-result v4

    if-eqz v4, :cond_2

    return-void

    :cond_2
    invoke-virtual {v2, v3}, Landroid/view/View;->setPressed(Z)V

    goto :goto_0

    :cond_3
    iget-boolean v4, p0, Landroid/widget/AbsListView;->mAppWidgetInnerFocus:Z

    if-eqz v4, :cond_4

    iget-object v4, p0, Landroid/widget/AbsListView;->mNextClickable:Landroid/view/View;

    if-eqz v4, :cond_4

    iget-object v4, p0, Landroid/widget/AbsListView;->mNextClickable:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->setPressed(Z)V

    :cond_4
    :goto_0
    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->setPressed(Z)V

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isLongClickable()Z

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_6

    instance-of v5, v4, Landroid/graphics/drawable/TransitionDrawable;

    if-eqz v5, :cond_6

    if-eqz v3, :cond_5

    move-object v5, v4

    check-cast v5, Landroid/graphics/drawable/TransitionDrawable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    goto :goto_1

    :cond_5
    move-object v5, v4

    check-cast v5, Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    :cond_6
    :goto_1
    iget-object v5, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    iget-object v6, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v7

    invoke-virtual {v5}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v8

    invoke-virtual {v6, v7, v8}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    if-eqz v3, :cond_8

    iget-boolean v6, p0, Landroid/widget/AbsListView;->mDataChanged:Z

    if-nez v6, :cond_8

    iget-object v6, p0, Landroid/widget/AbsListView;->mPendingCheckForKeyLongPress:Landroid/widget/AbsListView$CheckForKeyLongPress;

    if-nez v6, :cond_7

    new-instance v6, Landroid/widget/AbsListView$CheckForKeyLongPress;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7}, Landroid/widget/AbsListView$CheckForKeyLongPress;-><init>(Landroid/widget/AbsListView;Landroid/widget/AbsListView$CheckForKeyLongPress-IA;)V

    iput-object v6, p0, Landroid/widget/AbsListView;->mPendingCheckForKeyLongPress:Landroid/widget/AbsListView$CheckForKeyLongPress;

    goto :goto_2

    :cond_7
    iget-object v6, p0, Landroid/widget/AbsListView;->mPendingCheckForKeyLongPress:Landroid/widget/AbsListView$CheckForKeyLongPress;

    invoke-virtual {p0, v6}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    :goto_2
    iget-object v6, p0, Landroid/widget/AbsListView;->mPendingCheckForKeyLongPress:Landroid/widget/AbsListView$CheckForKeyLongPress;

    invoke-virtual {v6}, Landroid/widget/AbsListView$CheckForKeyLongPress;->rememberWindowAttachCount()V

    iget-object v6, p0, Landroid/widget/AbsListView;->mPendingCheckForKeyLongPress:Landroid/widget/AbsListView$CheckForKeyLongPress;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v7

    int-to-long v7, v7

    invoke-virtual {p0, v6, v7, v8}, Landroid/widget/AbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_8
    return-void

    :cond_9
    :goto_3
    return-void
.end method

.method protected whitelist layoutChildren()V
    .locals 0

    return-void
.end method

.method greylist-max-o obtainView(I[Z)Landroid/view/View;
    .locals 9

    const-string/jumbo v0, "obtainView"

    const-wide/16 v1, 0x8

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    const/4 v0, 0x0

    aput-boolean v0, p2, v0

    iget-object v3, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v3, p1}, Landroid/widget/AbsListView$RecycleBin;->getTransientStateView(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/AbsListView$LayoutParams;

    iget v2, v1, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    iget-object v5, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v5, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v5

    if-ne v2, v5, :cond_0

    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p1, v3, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    if-eq v2, v3, :cond_0

    invoke-direct {p0, v2, p1}, Landroid/widget/AbsListView;->setItemViewLayoutParams(Landroid/view/View;I)V

    iget-object v5, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v5, v2, p1}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    :cond_0
    aput-boolean v4, p2, v0

    invoke-virtual {v3}, Landroid/view/View;->dispatchFinishTemporaryDetach()V

    return-object v3

    :cond_1
    const/4 v5, 0x0

    iget-object v6, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v6, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v6

    const/4 v7, -0x2

    if-eq v6, v7, :cond_2

    iget-object v6, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v6, p1}, Landroid/widget/AbsListView$RecycleBin;->getScrapView(I)Landroid/view/View;

    move-result-object v5

    :cond_2
    iget-object v6, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v6, p1, v5, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    if-eqz v5, :cond_4

    if-eq v6, v5, :cond_3

    iget-object v0, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v0, v5, p1}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    goto :goto_0

    :cond_3
    invoke-virtual {v6}, Landroid/view/View;->isTemporarilyDetached()Z

    move-result v7

    if-eqz v7, :cond_4

    aput-boolean v4, p2, v0

    invoke-virtual {v6}, Landroid/view/View;->dispatchFinishTemporaryDetach()V

    :cond_4
    :goto_0
    if-nez v6, :cond_6

    const-string v0, " try again to check child on obtainview"

    const-string v7, "AbsListView"

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v8, 0x0

    invoke-interface {v0, p1, v8, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    if-nez v6, :cond_6

    const-string v0, " child is null again"

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " position = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mAdapter ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " getChildCount = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mAdapter.getCount = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mItemCount = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/widget/AbsListView;->mItemCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mOldItemCount = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/widget/AbsListView;->mOldItemCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v0, v0, Landroid/widget/HeaderViewListAdapter;

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HeaderCount = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v1, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {v1}, Landroid/widget/HeaderViewListAdapter;->getHeadersCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FooterCount = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v1, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {v1}, Landroid/widget/HeaderViewListAdapter;->getFootersCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-object v8

    :cond_6
    iget v0, p0, Landroid/widget/AbsListView;->mCacheColorHint:I

    if-eqz v0, :cond_7

    iget v0, p0, Landroid/widget/AbsListView;->mCacheColorHint:I

    invoke-virtual {v6, v0}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    :cond_7
    invoke-virtual {v6}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {v6, v4}, Landroid/view/View;->setImportantForAccessibility(I)V

    :cond_8
    invoke-direct {p0, v6, p1}, Landroid/widget/AbsListView;->setItemViewLayoutParams(Landroid/view/View;I)V

    iget-object v0, p0, Landroid/widget/AbsListView;->mAccessibilityDelegate:Landroid/widget/AbsListView$ListItemAccessibilityDelegate;

    if-nez v0, :cond_9

    new-instance v0, Landroid/widget/AbsListView$ListItemAccessibilityDelegate;

    invoke-direct {v0, p0}, Landroid/widget/AbsListView$ListItemAccessibilityDelegate;-><init>(Landroid/widget/AbsListView;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mAccessibilityDelegate:Landroid/widget/AbsListView$ListItemAccessibilityDelegate;

    :cond_9
    invoke-virtual {v6}, Landroid/view/View;->getAccessibilityDelegate()Landroid/view/View$AccessibilityDelegate;

    move-result-object v0

    if-nez v0, :cond_a

    iget-object v0, p0, Landroid/widget/AbsListView;->mAccessibilityDelegate:Landroid/widget/AbsListView$ListItemAccessibilityDelegate;

    invoke-virtual {v6, v0}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    :cond_a
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-object v6
.end method

.method protected whitelist onAttachedToWindow()V
    .locals 3

    invoke-super {p0}, Landroid/widget/AdapterView;->onAttachedToWindow()V

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    iget-boolean v1, p0, Landroid/widget/AbsListView;->mTextFilterEnabled:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroid/widget/AbsListView;->mGlobalLayoutListenerAddedFilter:Z

    if-nez v1, :cond_0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/AbsListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    if-nez v1, :cond_1

    new-instance v1, Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-direct {v1, p0}, Landroid/widget/AbsListView$AdapterDataSetObserver;-><init>(Landroid/widget/AbsListView;)V

    iput-object v1, p0, Landroid/widget/AbsListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, Landroid/widget/AbsListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/AbsListView;->mDataChanged:Z

    iget v1, p0, Landroid/widget/AbsListView;->mItemCount:I

    iput v1, p0, Landroid/widget/AbsListView;->mOldItemCount:I

    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    iput v1, p0, Landroid/widget/AbsListView;->mItemCount:I

    :cond_1
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getVerticalScrollbarPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/FastScroller;->setScrollbarPosition(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/widget/AbsListView;->mSemFastScroll:Landroid/widget/SemFastScroller;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/widget/AbsListView;->mSemFastScroll:Landroid/widget/SemFastScroller;

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getVerticalScrollbarPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/SemFastScroller;->setScrollbarPosition(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public whitelist onCancelPendingInputEvents()V
    .locals 1

    invoke-super {p0}, Landroid/widget/AdapterView;->onCancelPendingInputEvents()V

    iget-object v0, p0, Landroid/widget/AbsListView;->mPerformClick:Landroid/widget/AbsListView$PerformClick;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mPerformClick:Landroid/widget/AbsListView$PerformClick;

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForTap:Landroid/widget/AbsListView$CheckForTap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForTap:Landroid/widget/AbsListView$CheckForTap;

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_1
    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_2
    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForKeyLongPress:Landroid/widget/AbsListView$CheckForKeyLongPress;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForKeyLongPress:Landroid/widget/AbsListView$CheckForKeyLongPress;

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_3
    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForDoublePenClick:Landroid/widget/AbsListView$CheckForDoublePenClick;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForDoublePenClick:Landroid/widget/AbsListView$CheckForDoublePenClick;

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_4
    return-void
.end method

.method public whitelist onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 2

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isTextFilterEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/AbsListView;->mPublicInputConnection:Landroid/widget/AbsListView$InputConnectionWrapper;

    if-nez v0, :cond_0

    new-instance v0, Landroid/view/inputmethod/BaseInputConnection;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/view/inputmethod/BaseInputConnection;-><init>(Landroid/view/View;Z)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mDefInputConnection:Landroid/view/inputmethod/InputConnection;

    new-instance v0, Landroid/widget/AbsListView$InputConnectionWrapper;

    invoke-direct {v0, p0, p1}, Landroid/widget/AbsListView$InputConnectionWrapper;-><init>(Landroid/widget/AbsListView;Landroid/view/inputmethod/EditorInfo;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mPublicInputConnection:Landroid/widget/AbsListView$InputConnectionWrapper;

    :cond_0
    const/16 v0, 0xb1

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    const/4 v0, 0x6

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    iget-object v0, p0, Landroid/widget/AbsListView;->mPublicInputConnection:Landroid/widget/AbsListView$InputConnectionWrapper;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method protected whitelist onDetachedFromWindow()V
    .locals 5

    invoke-super {p0}, Landroid/widget/AdapterView;->onDetachedFromWindow()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mIsDetaching:Z

    invoke-direct {p0}, Landroid/widget/AbsListView;->dismissPopup()V

    iget-object v0, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v0}, Landroid/widget/AbsListView$RecycleBin;->clear()V

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    iget-boolean v1, p0, Landroid/widget/AbsListView;->mTextFilterEnabled:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iput-boolean v2, p0, Landroid/widget/AbsListView;->mGlobalLayoutListenerAddedFilter:Z

    :cond_0
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/AbsListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v4, p0, Landroid/widget/AbsListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-interface {v1, v4}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    iput-object v3, p0, Landroid/widget/AbsListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    :cond_1
    iget-object v1, p0, Landroid/widget/AbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/widget/AbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    invoke-virtual {v1}, Landroid/os/StrictMode$Span;->finish()V

    iput-object v3, p0, Landroid/widget/AbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    :cond_2
    iget-object v1, p0, Landroid/widget/AbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/widget/AbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    invoke-virtual {v1}, Landroid/os/StrictMode$Span;->finish()V

    iput-object v3, p0, Landroid/widget/AbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    :cond_3
    iget-object v1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_4
    iget-object v1, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-eqz v1, :cond_5

    iget-object v1, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {v1}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    :cond_5
    iget-object v1, p0, Landroid/widget/AbsListView;->mClearScrollingCache:Ljava/lang/Runnable;

    if-eqz v1, :cond_6

    iget-object v1, p0, Landroid/widget/AbsListView;->mClearScrollingCache:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_6
    iget-object v1, p0, Landroid/widget/AbsListView;->mPerformClick:Landroid/widget/AbsListView$PerformClick;

    if-eqz v1, :cond_7

    iget-object v1, p0, Landroid/widget/AbsListView;->mPerformClick:Landroid/widget/AbsListView$PerformClick;

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_7
    iget-object v1, p0, Landroid/widget/AbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    if-eqz v1, :cond_8

    iget-object v1, p0, Landroid/widget/AbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v1, p0, Landroid/widget/AbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    :cond_8
    iget v1, p0, Landroid/widget/AbsListView;->mTouchMode:I

    const/4 v3, -0x1

    if-eq v1, v3, :cond_9

    iput v3, p0, Landroid/widget/AbsListView;->mTouchMode:I

    :cond_9
    invoke-direct {p0}, Landroid/widget/AbsListView;->releaseAllBoosters()V

    iput-boolean v2, p0, Landroid/widget/AbsListView;->mIsDetaching:Z

    return-void
.end method

.method protected whitelist onDisplayHint(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onDisplayHint(I)V

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/widget/AbsListView;->dismissPopup()V

    goto :goto_0

    :sswitch_1
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFiltered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroid/widget/AbsListView;->showPopup()V

    :cond_0
    :goto_0
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mPopupHidden:Z

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x4 -> :sswitch_0
    .end sparse-switch
.end method

.method protected whitelist onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Landroid/widget/AbsListView;->mSemFastScroll:Landroid/widget/SemFastScroller;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mSemFastScroll:Landroid/widget/SemFastScroller;

    invoke-virtual {v0}, Landroid/widget/SemFastScroller;->updateLayout()V

    :cond_0
    return-void
.end method

.method public whitelist onFilterComplete(I)V
    .locals 1

    iget v0, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    if-gez v0, :cond_0

    if-lez p1, :cond_0

    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    invoke-virtual {p0}, Landroid/widget/AbsListView;->resurrectSelection()Z

    :cond_0
    return-void
.end method

.method protected whitelist onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroid/widget/AdapterView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    if-eqz p1, :cond_1

    iget v0, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    if-gez v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mDataChanged:Z

    iget v0, p0, Landroid/widget/AbsListView;->mItemCount:I

    iput v0, p0, Landroid/widget/AbsListView;->mOldItemCount:I

    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    iput v0, p0, Landroid/widget/AbsListView;->mItemCount:I

    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resurrectSelection()Z

    :cond_1
    return-void
.end method

.method public whitelist onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 14

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_4

    :sswitch_0
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionButton()I

    move-result v0

    const/16 v3, 0x20

    if-eq v0, v3, :cond_0

    if-ne v0, v1, :cond_11

    :cond_0
    iget v1, p0, Landroid/widget/AbsListView;->mTouchMode:I

    if-eqz v1, :cond_1

    iget v1, p0, Landroid/widget/AbsListView;->mTouchMode:I

    if-ne v1, v2, :cond_11

    :cond_1
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->isDesktopMode()Z

    move-result v2

    if-eqz v2, :cond_2

    goto/16 :goto_4

    :cond_2
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->performStylusButtonPressAction(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_11

    iget-object v2, p0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v2, p0, Landroid/widget/AbsListView;->mPendingCheckForTap:Landroid/widget/AbsListView$CheckForTap;

    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto/16 :goto_4

    :sswitch_1
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x9

    const/16 v1, 0x9

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v1

    goto :goto_0

    :cond_3
    const/high16 v0, 0x400000

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x1a

    const/16 v1, 0x1a

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v1

    goto :goto_0

    :cond_4
    const/4 v0, -0x1

    const/4 v1, 0x0

    :goto_0
    iget-boolean v3, p0, Landroid/widget/AbsListView;->mAppWidgetSnapScroll:Z

    if-eqz v3, :cond_6

    const/4 v3, 0x0

    cmpg-float v3, v1, v3

    if-gez v3, :cond_5

    const/16 v3, 0x82

    goto :goto_1

    :cond_5
    const/16 v3, 0x21

    :goto_1
    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->semHandleGenericMotionEvent(I)Z

    move-result v3

    if-eqz v3, :cond_6

    return v2

    :cond_6
    iget-boolean v3, p0, Landroid/widget/AbsListView;->mIsHoveredByMouse:Z

    if-eqz v3, :cond_7

    iput-boolean v2, p0, Landroid/widget/AbsListView;->mIsMouseHoverScroll:Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Landroid/widget/AbsListView;->mIsMouseHoverScrollX:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Landroid/widget/AbsListView;->mIsMouseHoverScrollY:I

    :cond_7
    iget v3, p0, Landroid/widget/AbsListView;->mVerticalScrollFactor:F

    mul-float/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    if-eqz v3, :cond_11

    const/4 v4, 0x0

    if-lez v3, :cond_8

    move v5, v4

    goto :goto_2

    :cond_8
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v5

    sub-int/2addr v5, v2

    :goto_2
    const/4 v6, 0x0

    invoke-virtual {p0, v5}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_9

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v6

    :cond_9
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getOverScrollMode()I

    move-result v8

    invoke-virtual {p0, v3, v3}, Landroid/widget/AbsListView;->trackMotionScroll(II)Z

    move-result v9

    if-nez v9, :cond_b

    invoke-static {}, Landroid/view/flags/Flags;->scrollFeedbackApi()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-direct {p0}, Landroid/widget/AbsListView;->initHapticScrollFeedbackProviderIfNotExists()V

    iget-object v4, p0, Landroid/widget/AbsListView;->mHapticScrollFeedbackProvider:Landroid/view/HapticScrollFeedbackProvider;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v10

    invoke-virtual {v4, v9, v10, v0, v3}, Landroid/view/HapticScrollFeedbackProvider;->onScrollProgress(IIII)V

    :cond_a
    invoke-direct {p0}, Landroid/widget/AbsListView;->initDifferentialFlingHelperIfNotExists()V

    iget-object v4, p0, Landroid/widget/AbsListView;->mDifferentialMotionFlingHelper:Landroid/widget/DifferentialMotionFlingHelper;

    invoke-virtual {v4, p1, v0}, Landroid/widget/DifferentialMotionFlingHelper;->onMotionEvent(Landroid/view/MotionEvent;I)V

    return v2

    :cond_b
    const/16 v9, 0x2002

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v9

    if-nez v9, :cond_10

    if-eqz v7, :cond_10

    if-eqz v8, :cond_c

    if-ne v8, v2, :cond_10

    invoke-direct {p0}, Landroid/widget/AbsListView;->contentFits()Z

    move-result v9

    if-nez v9, :cond_10

    :cond_c
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v9

    sub-int v10, v9, v6

    sub-int v10, v3, v10

    int-to-float v10, v10

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v10, v11

    if-lez v3, :cond_d

    move v4, v2

    :cond_d
    invoke-static {}, Landroid/view/flags/Flags;->scrollFeedbackApi()Z

    move-result v11

    if-eqz v11, :cond_e

    invoke-direct {p0}, Landroid/widget/AbsListView;->initHapticScrollFeedbackProviderIfNotExists()V

    iget-object v11, p0, Landroid/widget/AbsListView;->mHapticScrollFeedbackProvider:Landroid/view/HapticScrollFeedbackProvider;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v12

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v13

    invoke-virtual {v11, v12, v13, v0, v4}, Landroid/view/HapticScrollFeedbackProvider;->onScrollLimit(IIIZ)V

    :cond_e
    const/high16 v11, 0x3f000000    # 0.5f

    if-eqz v4, :cond_f

    iget-object v12, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v12, v10, v11}, Landroid/widget/EdgeEffect;->onPullDistance(FF)F

    iget-object v11, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v11}, Landroid/widget/EdgeEffect;->onRelease()V

    goto :goto_3

    :cond_f
    iget-object v12, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    neg-float v13, v10

    invoke-virtual {v12, v13, v11}, Landroid/widget/EdgeEffect;->onPullDistance(FF)F

    iget-object v11, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v11}, Landroid/widget/EdgeEffect;->onRelease()V

    :goto_3
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidate()V

    return v2

    :cond_10
    nop

    :cond_11
    :goto_4
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_1
        0xb -> :sswitch_0
    .end sparse-switch
.end method

.method public whitelist onGlobalLayout()V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFiltered:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mPopupHidden:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Landroid/widget/AbsListView;->showPopup()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Landroid/widget/AbsListView;->dismissPopup()V

    :cond_1
    :goto_0
    return-void
.end method

.method public whitelist onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;ILandroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isEnabled()Z

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    instance-of v2, v1, Landroid/widget/AbsListView$LayoutParams;

    if-eqz v2, :cond_1

    move-object v2, v1

    check-cast v2, Landroid/widget/AbsListView$LayoutParams;

    iget-boolean v2, v2, Landroid/widget/AbsListView$LayoutParams;->isEnabled:Z

    and-int/2addr v0, v2

    :cond_1
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getSelectedItemPosition()I

    move-result v2

    if-ne p2, v2, :cond_2

    const/4 v2, 0x1

    invoke-virtual {p3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSelected(Z)V

    sget-object v2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_CLEAR_SELECTION:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-direct {p0, p3, v0, v2}, Landroid/widget/AbsListView;->addAccessibilityActionIfEnabled(Landroid/view/accessibility/AccessibilityNodeInfo;ZLandroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    goto :goto_0

    :cond_2
    sget-object v2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SELECT:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-direct {p0, p3, v0, v2}, Landroid/widget/AbsListView;->addAccessibilityActionIfEnabled(Landroid/view/accessibility/AccessibilityNodeInfo;ZLandroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    :goto_0
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->isItemClickable(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_CLICK:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-direct {p0, p3, v0, v2}, Landroid/widget/AbsListView;->addAccessibilityActionIfEnabled(Landroid/view/accessibility/AccessibilityNodeInfo;ZLandroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    invoke-virtual {p3, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    :cond_3
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isLongClickable()Z

    move-result v2

    if-eqz v2, :cond_4

    sget-object v2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_LONG_CLICK:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-direct {p0, p3, v0, v2}, Landroid/widget/AbsListView;->addAccessibilityActionIfEnabled(Landroid/view/accessibility/AccessibilityNodeInfo;ZLandroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    invoke-virtual {p3, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLongClickable(Z)V

    :cond_4
    return-void
.end method

.method public greylist-max-o onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Landroid/widget/AbsListView;->canScrollUp()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_BACKWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_UP:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    :cond_0
    invoke-direct {p0}, Landroid/widget/AbsListView;->canScrollDown()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_FORWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_DOWN:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    :cond_1
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_CLICK:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->removeAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)Z

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->SEM_ACTION_AUTOSCROLL_ON:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->SEM_ACTION_AUTOSCROLL_OFF:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    return-void
.end method

.method public whitelist onInterceptHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {v0, p1}, Landroid/widget/FastScroller;->onInterceptHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mSemFastScroll:Landroid/widget/SemFastScroller;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/AbsListView;->mSemFastScroll:Landroid/widget/SemFastScroller;

    invoke-virtual {v0, p1}, Landroid/widget/SemFastScroller;->onInterceptHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onInterceptHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public whitelist onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    iget-object v1, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {v1}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    :cond_0
    iget-boolean v1, p0, Landroid/widget/AbsListView;->mIsDetaching:Z

    const/4 v2, 0x0

    if-nez v1, :cond_b

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isAttachedToWindow()Z

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_4

    :cond_1
    iget-object v1, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {v1, p1}, Landroid/widget/FastScroller;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_2

    return v3

    :cond_2
    iget-object v1, p0, Landroid/widget/AbsListView;->mSemFastScroll:Landroid/widget/SemFastScroller;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/widget/AbsListView;->mSemFastScroll:Landroid/widget/SemFastScroller;

    invoke-virtual {v1, p1}, Landroid/widget/SemFastScroller;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_3

    return v3

    :cond_3
    const/4 v1, -0x1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_3

    :pswitch_1
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_3

    :pswitch_2
    iget v4, p0, Landroid/widget/AbsListView;->mTouchMode:I

    packed-switch v4, :pswitch_data_1

    goto :goto_0

    :pswitch_3
    iget v4, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v4

    if-ne v4, v1, :cond_4

    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    :cond_4
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    float-to-int v1, v1

    invoke-direct {p0}, Landroid/widget/AbsListView;->initVelocityTrackerIfNotExists()V

    iget-object v5, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    float-to-int v5, v5

    const/4 v6, 0x0

    invoke-direct {p0, v5, v1, v6}, Landroid/widget/AbsListView;->startScrollIfNeeded(IILandroid/view/MotionEvent;)Z

    move-result v5

    if-eqz v5, :cond_5

    return v3

    :cond_5
    :goto_0
    goto :goto_3

    :pswitch_4
    iput v1, p0, Landroid/widget/AbsListView;->mTouchMode:I

    iput v1, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    invoke-direct {p0}, Landroid/widget/AbsListView;->recycleVelocityTracker()V

    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    invoke-virtual {p0}, Landroid/widget/AbsListView;->stopNestedScroll()V

    goto :goto_3

    :pswitch_5
    iget v1, p0, Landroid/widget/AbsListView;->mTouchMode:I

    const/4 v4, 0x6

    if-eq v1, v4, :cond_9

    const/4 v4, 0x5

    if-ne v1, v4, :cond_6

    goto :goto_2

    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    iput v6, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    invoke-virtual {p0, v5}, Landroid/widget/AbsListView;->findMotionRow(I)I

    move-result v6

    invoke-direct {p0}, Landroid/widget/AbsListView;->doesTouchStopStretch()Z

    move-result v7

    const/4 v8, 0x4

    if-eqz v7, :cond_7

    iput v8, p0, Landroid/widget/AbsListView;->mTouchMode:I

    move v1, v8

    goto :goto_1

    :cond_7
    if-eq v1, v8, :cond_8

    if-ltz v6, :cond_8

    iget v7, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int v7, v6, v7

    invoke-virtual {p0, v7}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v9

    iput v9, p0, Landroid/widget/AbsListView;->mMotionViewOriginalTop:I

    iput v4, p0, Landroid/widget/AbsListView;->mMotionX:I

    iput v5, p0, Landroid/widget/AbsListView;->mMotionY:I

    iput v6, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    iput v2, p0, Landroid/widget/AbsListView;->mTouchMode:I

    invoke-direct {p0}, Landroid/widget/AbsListView;->clearScrollingCache()V

    :cond_8
    :goto_1
    const/high16 v7, -0x80000000

    iput v7, p0, Landroid/widget/AbsListView;->mLastY:I

    invoke-direct {p0}, Landroid/widget/AbsListView;->initOrResetVelocityTracker()V

    iget-object v7, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v7, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    iput v2, p0, Landroid/widget/AbsListView;->mNestedYOffset:I

    const/4 v7, 0x2

    invoke-virtual {p0, v7}, Landroid/widget/AbsListView;->startNestedScroll(I)Z

    if-ne v1, v8, :cond_a

    return v3

    :cond_9
    :goto_2
    iput v2, p0, Landroid/widget/AbsListView;->mMotionCorrection:I

    return v3

    :cond_a
    :goto_3
    return v2

    :cond_b
    :goto_4
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
    .end packed-switch
.end method

.method blacklist onJumpScrollToTopFinished()V
    .locals 2

    const-string v0, "AbsListView"

    const-string/jumbo v1, "onJumpScrollToTopFinished()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public whitelist onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x1

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mIsCtrlkeyPressed:Z

    goto :goto_0

    :sswitch_1
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mIsShiftkeyPressed:Z

    goto :goto_0

    :sswitch_2
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mIsCtrlkeyPressed:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->resetPressItemListArray()V

    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    :sswitch_data_0
    .sparse-switch
        0x1f -> :sswitch_2
        0x3b -> :sswitch_1
        0x3c -> :sswitch_1
        0x71 -> :sswitch_0
        0x72 -> :sswitch_0
    .end sparse-switch
.end method

.method public whitelist onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 6

    invoke-static {p1}, Landroid/view/KeyEvent;->isConfirmKey(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isEnabled()Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    return v2

    :cond_0
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mAppWidgetInnerFocus:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/AbsListView;->mNextClickable:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/AbsListView;->mNextClickable:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    iget-object v0, p0, Landroid/widget/AbsListView;->mNextClickable:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->setPressed(Z)V

    return v2

    :cond_1
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    if-ltz v0, :cond_3

    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_3

    iget v0, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    iget-object v3, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v3

    if-ge v0, v3, :cond_3

    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    iget v3, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    invoke-interface {v0, v3}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    iget v3, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int/2addr v0, v3

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    iget v3, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    iget-wide v4, p0, Landroid/widget/AbsListView;->mSelectedRowId:J

    invoke-virtual {p0, v0, v3, v4, v5}, Landroid/widget/AbsListView;->performItemClick(Landroid/view/View;IJ)Z

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    :cond_2
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->setPressed(Z)V

    return v2

    :cond_3
    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_2

    :sswitch_0
    iput-boolean v1, p0, Landroid/widget/AbsListView;->mIsCtrlkeyPressed:Z

    goto/16 :goto_2

    :sswitch_1
    iput-boolean v1, p0, Landroid/widget/AbsListView;->mIsShiftkeyPressed:Z

    iput v1, p0, Landroid/widget/AbsListView;->mOldKeyCode:I

    iput v1, p0, Landroid/widget/AbsListView;->mCurrentKeyCode:I

    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/AbsListView;->mFirstPressedPoint:I

    goto/16 :goto_2

    :sswitch_2
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mIsCtrlkeyPressed:Z

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Landroid/widget/AbsListView;->resetPressItemListArray()V

    goto/16 :goto_2

    :sswitch_3
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mIsShiftkeyPressed:Z

    if-eqz v0, :cond_5

    iget v0, p0, Landroid/widget/AbsListView;->mOldKeyCode:I

    if-nez v0, :cond_4

    iput p1, p0, Landroid/widget/AbsListView;->mOldKeyCode:I

    goto :goto_0

    :cond_4
    iput p1, p0, Landroid/widget/AbsListView;->mCurrentKeyCode:I

    :cond_5
    :goto_0
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_9

    iget v0, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    if-ltz v0, :cond_9

    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_9

    iget v0, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_9

    iget v0, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    iget v1, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget v1, p0, Landroid/widget/AbsListView;->mSemCurrentFocusPosition:I

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-boolean v2, p0, Landroid/widget/AbsListView;->mIsShiftkeyPressed:Z

    if-eqz v2, :cond_7

    if-eqz v0, :cond_7

    iget v2, p0, Landroid/widget/AbsListView;->mCurrentKeyCode:I

    if-nez v2, :cond_6

    invoke-virtual {p0}, Landroid/widget/AbsListView;->resetPressItemListArray()V

    iget v2, p0, Landroid/widget/AbsListView;->mSemCurrentFocusPosition:I

    iget-wide v3, p0, Landroid/widget/AbsListView;->mSelectedRowId:J

    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/widget/AbsListView;->semNotifyKeyPressState(Landroid/view/View;IJ)Z

    iget v2, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    iget-wide v3, p0, Landroid/widget/AbsListView;->mSelectedRowId:J

    invoke-virtual {p0, v0, v2, v3, v4}, Landroid/widget/AbsListView;->semNotifyKeyPressState(Landroid/view/View;IJ)Z

    iget v2, p0, Landroid/widget/AbsListView;->mSemCurrentFocusPosition:I

    iget v3, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    invoke-direct {p0, v2, v3}, Landroid/widget/AbsListView;->addToPressItemListArray(II)V

    iget v2, p0, Landroid/widget/AbsListView;->mSemCurrentFocusPosition:I

    iput v2, p0, Landroid/widget/AbsListView;->mFirstPressedPoint:I

    goto :goto_1

    :cond_6
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resetPressItemListArray()V

    iget v2, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    iget-wide v3, p0, Landroid/widget/AbsListView;->mSelectedRowId:J

    invoke-virtual {p0, v0, v2, v3, v4}, Landroid/widget/AbsListView;->semNotifyKeyPressState(Landroid/view/View;IJ)Z

    iget v2, p0, Landroid/widget/AbsListView;->mFirstPressedPoint:I

    iget v3, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    invoke-direct {p0, v2, v3}, Landroid/widget/AbsListView;->addToPressItemListArray(II)V

    :cond_7
    :goto_1
    iget v2, p0, Landroid/widget/AbsListView;->mCurrentKeyCode:I

    if-eqz v2, :cond_8

    iget v2, p0, Landroid/widget/AbsListView;->mCurrentKeyCode:I

    iput v2, p0, Landroid/widget/AbsListView;->mOldKeyCode:I

    :cond_8
    nop

    :cond_9
    :goto_2
    invoke-super {p0, p1, p2}, Landroid/widget/AdapterView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_3
        0x14 -> :sswitch_3
        0x15 -> :sswitch_3
        0x16 -> :sswitch_3
        0x1f -> :sswitch_2
        0x3b -> :sswitch_1
        0x3c -> :sswitch_1
        0x71 -> :sswitch_0
        0x72 -> :sswitch_0
    .end sparse-switch
.end method

.method protected whitelist onLayout(ZIIII)V
    .locals 6

    invoke-super/range {p0 .. p5}, Landroid/widget/AdapterView;->onLayout(ZIIII)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mInLayout:Z

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    if-eqz p1, :cond_1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->forceLayout()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v2}, Landroid/widget/AbsListView$RecycleBin;->markChildrenDirty()V

    :cond_1
    invoke-virtual {p0}, Landroid/widget/AbsListView;->layoutChildren()V

    if-eqz p1, :cond_2

    const-string v2, "AbsListView"

    const-string v3, " in onLayout changed "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mSemSizeChnage:Z

    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->semSetupGoToTop(I)V

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->semAutoHide(I)V

    :cond_2
    sub-int v2, p5, p3

    div-int/lit8 v2, v2, 0x3

    iput v2, p0, Landroid/widget/AbsListView;->mOverscrollMax:I

    iget-object v2, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v2

    iget v4, p0, Landroid/widget/AbsListView;->mItemCount:I

    invoke-virtual {v0, v2, v4}, Landroid/widget/FastScroller;->onItemCountChanged(II)V

    goto :goto_1

    :cond_3
    iget-object v2, p0, Landroid/widget/AbsListView;->mSemFastScroll:Landroid/widget/SemFastScroller;

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroid/widget/AbsListView;->mSemFastScroll:Landroid/widget/SemFastScroller;

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v4

    iget v5, p0, Landroid/widget/AbsListView;->mItemCount:I

    invoke-virtual {v2, v4, v5}, Landroid/widget/SemFastScroller;->onItemCountChanged(II)V

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isLayoutRequested()Z

    move-result v2

    if-eqz v2, :cond_4

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mInLayout:Z

    invoke-virtual {p0}, Landroid/widget/AbsListView;->layoutChildren()V

    iput-boolean v3, p0, Landroid/widget/AbsListView;->mInLayout:Z

    :cond_4
    :goto_1
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mInLayout:Z

    return-void
.end method

.method protected whitelist onMeasure(II)V
    .locals 8

    iget-object v0, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroid/widget/AbsListView;->useDefaultSelector()V

    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, p0, Landroid/widget/AbsListView;->mSelectionLeftPadding:I

    iget v2, p0, Landroid/widget/AbsListView;->mPaddingLeft:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    iget v1, p0, Landroid/widget/AbsListView;->mSelectionTopPadding:I

    iget v2, p0, Landroid/widget/AbsListView;->mPaddingTop:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    iget v1, p0, Landroid/widget/AbsListView;->mSelectionRightPadding:I

    iget v2, p0, Landroid/widget/AbsListView;->mPaddingRight:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iget v1, p0, Landroid/widget/AbsListView;->mSelectionBottomPadding:I

    iget v2, p0, Landroid/widget/AbsListView;->mPaddingBottom:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Landroid/widget/AbsListView;->mTranscriptMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {p0, v4}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v5

    goto :goto_0

    :cond_1
    move v5, v3

    :goto_0
    iget v6, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    add-int/2addr v6, v1

    iget v7, p0, Landroid/widget/AbsListView;->mLastHandledItemCount:I

    if-lt v6, v7, :cond_2

    if-gt v5, v3, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    iput-boolean v2, p0, Landroid/widget/AbsListView;->mForceTranscriptScroll:Z

    :cond_3
    return-void
.end method

.method public whitelist onNestedFling(Landroid/view/View;FFZ)Z
    .locals 3

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    if-nez p4, :cond_2

    if-lez v0, :cond_2

    float-to-int v1, p3

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->canScrollList(I)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Landroid/widget/AbsListView;->mMinimumVelocity:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    iget-object v1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-nez v1, :cond_0

    new-instance v1, Landroid/widget/AbsListView$FlingRunnable;

    invoke-direct {v1, p0}, Landroid/widget/AbsListView$FlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    iput-object v1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1, p3}, Landroid/widget/AbsListView;->dispatchNestedPreFling(FF)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    float-to-int v2, p3

    invoke-virtual {v1, v2}, Landroid/widget/AbsListView$FlingRunnable;->start(I)V

    :cond_1
    const/4 v1, 0x1

    return v1

    :cond_2
    invoke-virtual {p0, p2, p3, p4}, Landroid/widget/AbsListView;->dispatchNestedFling(FFZ)Z

    move-result v1

    return v1
.end method

.method public whitelist onNestedScroll(Landroid/view/View;IIII)V
    .locals 13

    move-object v6, p0

    move/from16 v7, p5

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    div-int/lit8 v8, v0, 0x2

    invoke-virtual {p0, v8}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    if-eqz v9, :cond_0

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v10, v0

    if-eqz v9, :cond_1

    neg-int v0, v7

    neg-int v1, v7

    invoke-virtual {p0, v0, v1}, Landroid/widget/AbsListView;->trackMotionScroll(II)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    move/from16 v0, p5

    const/4 v1, 0x0

    if-eqz v9, :cond_2

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int v1, v2, v10

    sub-int/2addr v0, v1

    move v11, v0

    move v12, v1

    goto :goto_1

    :cond_2
    move v11, v0

    move v12, v1

    :goto_1
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x0

    move-object v0, p0

    move v2, v12

    move v4, v11

    invoke-virtual/range {v0 .. v5}, Landroid/widget/AbsListView;->dispatchNestedScroll(IIII[I)Z

    :cond_3
    return-void
.end method

.method public whitelist onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroid/widget/AdapterView;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->startNestedScroll(I)Z

    return-void
.end method

.method protected whitelist onOverScrolled(IIZZ)V
    .locals 3

    iget v0, p0, Landroid/widget/AbsListView;->mScrollY:I

    if-eq v0, p2, :cond_1

    iget v0, p0, Landroid/widget/AbsListView;->mScrollX:I

    iget v1, p0, Landroid/widget/AbsListView;->mScrollX:I

    iget v2, p0, Landroid/widget/AbsListView;->mScrollY:I

    invoke-virtual {p0, v0, p2, v1, v2}, Landroid/widget/AbsListView;->onScrollChanged(IIII)V

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mSemEnableFillOut:Z

    if-nez v0, :cond_0

    iput p2, p0, Landroid/widget/AbsListView;->mScrollY:I

    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidateParentIfNeeded()V

    invoke-virtual {p0}, Landroid/widget/AbsListView;->awakenScrollBars()Z

    :cond_1
    return-void
.end method

.method public whitelist onProvideContentCaptureStructure(Landroid/view/ViewStructure;I)V
    .locals 6

    invoke-super {p0, p1, p2}, Landroid/widget/AdapterView;->onProvideContentCaptureStructure(Landroid/view/ViewStructure;I)V

    sget-boolean v0, Landroid/widget/AbsListView;->sContentCaptureReportingEnabledByDeviceConfig:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewStructure;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v1, "AbsListView"

    const-string v2, "Unexpected null extras Bundle in ViewStructure"

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_3

    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v4}, Landroid/view/View;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    const-string v3, "android.view.ViewStructure.extra.ACTIVE_CHILDREN_IDS"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    nop

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v3

    const-string v4, "android.view.ViewStructure.extra.FIRST_ACTIVE_POSITION"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public whitelist onRemoteAdapterConnected()Z
    .locals 3

    iget-object v0, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mDeferNotifyDataSetChanged:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v0}, Landroid/widget/RemoteViewsAdapter;->notifyDataSetChanged()V

    iput-boolean v2, p0, Landroid/widget/AbsListView;->mDeferNotifyDataSetChanged:Z

    :cond_0
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mDeferSetSelectionFromTop:Z

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/widget/AbsListView;->mDeferSetSelectionPosition:I

    invoke-virtual {p0, v0, v2}, Landroid/widget/AbsListView;->setSelectionFromTop(II)V

    iput-boolean v2, p0, Landroid/widget/AbsListView;->mDeferSetSelectionFromTop:Z

    :cond_1
    return v2

    :cond_2
    iget-object v0, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v0}, Landroid/widget/RemoteViewsAdapter;->superNotifyDataSetChanged()V

    const/4 v0, 0x1

    return v0

    :cond_3
    return v2
.end method

.method public whitelist onRemoteAdapterDisconnected()V
    .locals 0

    return-void
.end method

.method public whitelist onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;
    .locals 1

    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    if-eqz v0, :cond_0

    const/16 v0, 0x2002

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {v0, p1, p2}, Landroid/widget/FastScroller;->onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/AdapterView;->onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 6

    move-object v0, p1

    check-cast v0, Landroid/widget/AbsListView$SavedState;

    invoke-virtual {v0}, Landroid/widget/AbsListView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/AdapterView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/AbsListView;->mDataChanged:Z

    iget v2, v0, Landroid/widget/AbsListView$SavedState;->height:I

    int-to-long v2, v2

    iput-wide v2, p0, Landroid/widget/AbsListView;->mSyncHeight:J

    iget-wide v2, v0, Landroid/widget/AbsListView$SavedState;->selectedId:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    iput-boolean v1, p0, Landroid/widget/AbsListView;->mNeedSync:Z

    iput-object v0, p0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    iget-wide v1, v0, Landroid/widget/AbsListView$SavedState;->selectedId:J

    iput-wide v1, p0, Landroid/widget/AbsListView;->mSyncRowId:J

    iget v1, v0, Landroid/widget/AbsListView$SavedState;->position:I

    iput v1, p0, Landroid/widget/AbsListView;->mSyncPosition:I

    iget v1, v0, Landroid/widget/AbsListView$SavedState;->viewTop:I

    iput v1, p0, Landroid/widget/AbsListView;->mSpecificTop:I

    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/AbsListView;->mSyncMode:I

    goto :goto_0

    :cond_0
    iget-wide v2, v0, Landroid/widget/AbsListView$SavedState;->firstId:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1

    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->setSelectedPositionInt(I)V

    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->setNextSelectedPositionInt(I)V

    iput v2, p0, Landroid/widget/AbsListView;->mSelectorPosition:I

    iput-boolean v1, p0, Landroid/widget/AbsListView;->mNeedSync:Z

    iput-object v0, p0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    iget-wide v2, v0, Landroid/widget/AbsListView$SavedState;->firstId:J

    iput-wide v2, p0, Landroid/widget/AbsListView;->mSyncRowId:J

    iget v2, v0, Landroid/widget/AbsListView$SavedState;->position:I

    iput v2, p0, Landroid/widget/AbsListView;->mSyncPosition:I

    iget v2, v0, Landroid/widget/AbsListView$SavedState;->viewTop:I

    iput v2, p0, Landroid/widget/AbsListView;->mSpecificTop:I

    iput v1, p0, Landroid/widget/AbsListView;->mSyncMode:I

    :cond_1
    :goto_0
    iget-object v1, v0, Landroid/widget/AbsListView$SavedState;->filter:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->setFilterText(Ljava/lang/String;)V

    iget-object v1, v0, Landroid/widget/AbsListView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    if-eqz v1, :cond_2

    iget-object v1, v0, Landroid/widget/AbsListView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    iput-object v1, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    :cond_2
    iget-object v1, v0, Landroid/widget/AbsListView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    if-eqz v1, :cond_3

    iget-object v1, v0, Landroid/widget/AbsListView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    iput-object v1, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    :cond_3
    iget v1, v0, Landroid/widget/AbsListView$SavedState;->checkedItemCount:I

    iput v1, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    iget-boolean v1, v0, Landroid/widget/AbsListView$SavedState;->inActionMode:Z

    if-eqz v1, :cond_4

    iget v1, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    :cond_4
    invoke-virtual {p0}, Landroid/widget/AbsListView;->requestLayout()V

    return-void
.end method

.method public whitelist onRtlPropertiesChanged(I)V
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onRtlPropertiesChanged(I)V

    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getVerticalScrollbarPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FastScroller;->setScrollbarPosition(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mSemFastScroll:Landroid/widget/SemFastScroller;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/AbsListView;->mSemFastScroll:Landroid/widget/SemFastScroller;

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getVerticalScrollbarPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SemFastScroller;->setScrollbarPosition(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public whitelist onSaveInstanceState()Landroid/os/Parcelable;
    .locals 11

    invoke-direct {p0}, Landroid/widget/AbsListView;->dismissPopup()V

    invoke-super {p0}, Landroid/widget/AdapterView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Landroid/widget/AbsListView$SavedState;

    invoke-direct {v1, v0}, Landroid/widget/AbsListView$SavedState;-><init>(Landroid/os/Parcelable;)V

    iget-object v2, p0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    iget-wide v2, v2, Landroid/widget/AbsListView$SavedState;->selectedId:J

    iput-wide v2, v1, Landroid/widget/AbsListView$SavedState;->selectedId:J

    iget-object v2, p0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    iget-wide v2, v2, Landroid/widget/AbsListView$SavedState;->firstId:J

    iput-wide v2, v1, Landroid/widget/AbsListView$SavedState;->firstId:J

    iget-object v2, p0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    iget v2, v2, Landroid/widget/AbsListView$SavedState;->viewTop:I

    iput v2, v1, Landroid/widget/AbsListView$SavedState;->viewTop:I

    iget-object v2, p0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    iget v2, v2, Landroid/widget/AbsListView$SavedState;->position:I

    iput v2, v1, Landroid/widget/AbsListView$SavedState;->position:I

    iget-object v2, p0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    iget v2, v2, Landroid/widget/AbsListView$SavedState;->height:I

    iput v2, v1, Landroid/widget/AbsListView$SavedState;->height:I

    iget-object v2, p0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    iget-object v2, v2, Landroid/widget/AbsListView$SavedState;->filter:Ljava/lang/String;

    iput-object v2, v1, Landroid/widget/AbsListView$SavedState;->filter:Ljava/lang/String;

    iget-object v2, p0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    iget-boolean v2, v2, Landroid/widget/AbsListView$SavedState;->inActionMode:Z

    iput-boolean v2, v1, Landroid/widget/AbsListView$SavedState;->inActionMode:Z

    iget-object v2, p0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    iget v2, v2, Landroid/widget/AbsListView$SavedState;->checkedItemCount:I

    iput v2, v1, Landroid/widget/AbsListView$SavedState;->checkedItemCount:I

    iget-object v2, p0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    iget-object v2, v2, Landroid/widget/AbsListView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    iput-object v2, v1, Landroid/widget/AbsListView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    iget-object v2, p0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    iget-object v2, v2, Landroid/widget/AbsListView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    iput-object v2, v1, Landroid/widget/AbsListView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    return-object v1

    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-lez v2, :cond_1

    iget v2, p0, Landroid/widget/AbsListView;->mItemCount:I

    if-lez v2, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    move v2, v4

    :goto_0
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getSelectedItemId()J

    move-result-wide v5

    iput-wide v5, v1, Landroid/widget/AbsListView$SavedState;->selectedId:J

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v7

    iput v7, v1, Landroid/widget/AbsListView$SavedState;->height:I

    const-wide/16 v7, 0x0

    cmp-long v7, v5, v7

    const-wide/16 v8, -0x1

    if-ltz v7, :cond_2

    iget v7, p0, Landroid/widget/AbsListView;->mSelectedTop:I

    iput v7, v1, Landroid/widget/AbsListView$SavedState;->viewTop:I

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getSelectedItemPosition()I

    move-result v7

    iput v7, v1, Landroid/widget/AbsListView$SavedState;->position:I

    iput-wide v8, v1, Landroid/widget/AbsListView$SavedState;->firstId:J

    goto :goto_1

    :cond_2
    if-eqz v2, :cond_4

    iget v7, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    if-lez v7, :cond_4

    invoke-virtual {p0, v4}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v8

    iput v8, v1, Landroid/widget/AbsListView$SavedState;->viewTop:I

    iget v8, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    iget v9, p0, Landroid/widget/AbsListView;->mItemCount:I

    if-lt v8, v9, :cond_3

    iget v9, p0, Landroid/widget/AbsListView;->mItemCount:I

    add-int/lit8 v8, v9, -0x1

    :cond_3
    iput v8, v1, Landroid/widget/AbsListView$SavedState;->position:I

    iget-object v9, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v9, v8}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v9

    iput-wide v9, v1, Landroid/widget/AbsListView$SavedState;->firstId:J

    goto :goto_1

    :cond_4
    iput v4, v1, Landroid/widget/AbsListView$SavedState;->viewTop:I

    iput-wide v8, v1, Landroid/widget/AbsListView$SavedState;->firstId:J

    iput v4, v1, Landroid/widget/AbsListView$SavedState;->position:I

    :goto_1
    const/4 v7, 0x0

    iput-object v7, v1, Landroid/widget/AbsListView$SavedState;->filter:Ljava/lang/String;

    iget-boolean v7, p0, Landroid/widget/AbsListView;->mFiltered:Z

    if-eqz v7, :cond_5

    iget-object v7, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    if-eqz v7, :cond_5

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    if-eqz v8, :cond_5

    invoke-interface {v8}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v1, Landroid/widget/AbsListView$SavedState;->filter:Ljava/lang/String;

    :cond_5
    iget v7, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    const/4 v8, 0x3

    if-ne v7, v8, :cond_6

    iget-object v7, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v7, :cond_6

    goto :goto_2

    :cond_6
    move v3, v4

    :goto_2
    iput-boolean v3, v1, Landroid/widget/AbsListView$SavedState;->inActionMode:Z

    iget-object v3, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v3, :cond_7

    iget-object v3, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->clone()Landroid/util/SparseBooleanArray;

    move-result-object v3

    iput-object v3, v1, Landroid/widget/AbsListView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    :cond_7
    iget-object v3, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v3, :cond_9

    new-instance v3, Landroid/util/LongSparseArray;

    invoke-direct {v3}, Landroid/util/LongSparseArray;-><init>()V

    iget-object v4, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v4}, Landroid/util/LongSparseArray;->size()I

    move-result v4

    const/4 v7, 0x0

    :goto_3
    if-ge v7, v4, :cond_8

    iget-object v8, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v8, v7}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v8

    iget-object v10, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v10, v7}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v3, v8, v9, v10}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_8
    iput-object v3, v1, Landroid/widget/AbsListView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    :cond_9
    iget v3, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    iput v3, v1, Landroid/widget/AbsListView$SavedState;->checkedItemCount:I

    iget-object v3, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    if-eqz v3, :cond_a

    iget-object v3, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v3}, Landroid/widget/RemoteViewsAdapter;->saveRemoteViewsCache()V

    :cond_a
    return-object v1
.end method

.method protected whitelist onSizeChanged(IIII)V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/AbsListView;->handleBoundsChange()V

    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/widget/FastScroller;->onSizeChanged(IIII)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mSemFastScroll:Landroid/widget/SemFastScroller;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/AbsListView;->mSemFastScroll:Landroid/widget/SemFastScroller;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/widget/SemFastScroller;->onSizeChanged(IIII)V

    :cond_1
    :goto_0
    return-void
.end method

.method public whitelist onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .locals 1

    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 5

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isTextFilterEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/widget/AbsListView;->createTextFilter(Z)V

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    iget-object v2, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    if-nez v2, :cond_0

    if-lez v1, :cond_0

    invoke-direct {p0}, Landroid/widget/AbsListView;->showPopup()V

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mFiltered:Z

    goto :goto_0

    :cond_0
    if-eqz v2, :cond_1

    if-nez v1, :cond_1

    invoke-direct {p0}, Landroid/widget/AbsListView;->dismissPopup()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mFiltered:Z

    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v0, v0, Landroid/widget/Filterable;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v0, Landroid/widget/Filterable;

    invoke-interface {v0}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1, p0}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterListener;)V

    goto :goto_1

    :cond_2
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "You cannot call onTextChanged with a non filterable adapter"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_3
    :goto_1
    return-void
.end method

.method public whitelist onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mAppWidgetEnabled:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isEnabled()Z

    move-result v0

    const-string v2, "AbsListView"

    const/4 v3, 0x0

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onTouchEvent() mIsLongPressMultiSelection : "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v4, p0, Landroid/widget/AbsListView;->mIsLongPressMultiSelection:Z

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isClickable()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isLongClickable()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move v1, v3

    :cond_2
    :goto_0
    return v1

    :cond_3
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {v0}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    :cond_4
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mIsDetaching:Z

    if-nez v0, :cond_11

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_5

    goto/16 :goto_5

    :cond_5
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->startNestedScroll(I)Z

    iget-object v2, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    if-eqz v2, :cond_6

    iget-object v2, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {v2, p1}, Landroid/widget/FastScroller;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_6

    return v1

    :cond_6
    iget-object v2, p0, Landroid/widget/AbsListView;->mSemFastScroll:Landroid/widget/SemFastScroller;

    if-eqz v2, :cond_b

    iget-object v2, p0, Landroid/widget/AbsListView;->mSemFastScroll:Landroid/widget/SemFastScroller;

    invoke-virtual {v2, p1}, Landroid/widget/SemFastScroller;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    iget-object v4, p0, Landroid/widget/AbsListView;->mSemFastScrollEventListener:Landroid/widget/AbsListView$SemFastScrollEventListener;

    if-eqz v4, :cond_9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    if-ne v4, v0, :cond_8

    :cond_7
    iget-object v0, p0, Landroid/widget/AbsListView;->mSemFastScroll:Landroid/widget/SemFastScroller;

    invoke-virtual {v0}, Landroid/widget/SemFastScroller;->getEffectState()I

    move-result v0

    if-ne v0, v1, :cond_8

    iget-object v0, p0, Landroid/widget/AbsListView;->mSemFastScrollEventListener:Landroid/widget/AbsListView$SemFastScrollEventListener;

    iget-object v4, p0, Landroid/widget/AbsListView;->mSemFastScroll:Landroid/widget/SemFastScroller;

    invoke-virtual {v4}, Landroid/widget/SemFastScroller;->getScrollY()F

    move-result v4

    invoke-interface {v0, v4}, Landroid/widget/AbsListView$SemFastScrollEventListener;->onPressed(F)V

    goto :goto_1

    :cond_8
    iget-object v0, p0, Landroid/widget/AbsListView;->mSemFastScrollEventListener:Landroid/widget/AbsListView$SemFastScrollEventListener;

    iget-object v4, p0, Landroid/widget/AbsListView;->mSemFastScroll:Landroid/widget/SemFastScroller;

    invoke-virtual {v4}, Landroid/widget/SemFastScroller;->getScrollY()F

    move-result v4

    invoke-interface {v0, v4}, Landroid/widget/AbsListView$SemFastScrollEventListener;->onReleased(F)V

    :cond_9
    :goto_1
    iget-object v0, p0, Landroid/widget/AbsListView;->mSemFastScroll:Landroid/widget/SemFastScroller;

    invoke-virtual {v0}, Landroid/widget/SemFastScroller;->getEffectState()I

    move-result v0

    if-ne v0, v1, :cond_a

    move v0, v1

    goto :goto_2

    :cond_a
    move v0, v3

    :goto_2
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mSemFastScrollEffectState:Z

    if-eqz v2, :cond_b

    return v1

    :cond_b
    invoke-direct {p0}, Landroid/widget/AbsListView;->initVelocityTrackerIfNotExists()V

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    if-nez v2, :cond_c

    iput v3, p0, Landroid/widget/AbsListView;->mNestedYOffset:I

    :cond_c
    iget v4, p0, Landroid/widget/AbsListView;->mNestedYOffset:I

    int-to-float v4, v4

    const/4 v5, 0x0

    invoke-virtual {v0, v5, v4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_4

    :pswitch_1
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    iget v3, p0, Landroid/widget/AbsListView;->mMotionX:I

    iget v4, p0, Landroid/widget/AbsListView;->mMotionY:I

    invoke-virtual {p0, v3, v4}, Landroid/widget/AbsListView;->pointToPosition(II)I

    move-result v5

    if-ltz v5, :cond_e

    iget v6, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int v6, v5, v6

    invoke-virtual {p0, v6}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v7

    iput v7, p0, Landroid/widget/AbsListView;->mMotionViewOriginalTop:I

    iput v5, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    iget-object v7, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v7, :cond_d

    iget-object v7, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v7, v5}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v7

    if-eqz v7, :cond_d

    invoke-virtual {v6}, Landroid/view/View;->hasFocusable()Z

    move-result v7

    if-nez v7, :cond_d

    invoke-virtual {p0}, Landroid/widget/AbsListView;->layoutChildren()V

    :cond_d
    goto :goto_3

    :cond_e
    invoke-virtual {p0}, Landroid/widget/AbsListView;->layoutChildren()V

    :goto_3
    iput v4, p0, Landroid/widget/AbsListView;->mLastY:I

    iget v6, p0, Landroid/widget/AbsListView;->mPointerCount:I

    sub-int/2addr v6, v1

    iput v6, p0, Landroid/widget/AbsListView;->mPointerCount:I

    goto :goto_4

    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    float-to-int v7, v7

    iput v3, p0, Landroid/widget/AbsListView;->mMotionCorrection:I

    iput v5, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    iput v6, p0, Landroid/widget/AbsListView;->mMotionX:I

    iput v7, p0, Landroid/widget/AbsListView;->mMotionY:I

    invoke-virtual {p0, v6, v7}, Landroid/widget/AbsListView;->pointToPosition(II)I

    move-result v3

    if-ltz v3, :cond_f

    iget v8, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int v8, v3, v8

    invoke-virtual {p0, v8}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v9

    iput v9, p0, Landroid/widget/AbsListView;->mMotionViewOriginalTop:I

    iput v3, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    :cond_f
    iput v7, p0, Landroid/widget/AbsListView;->mLastY:I

    iget v8, p0, Landroid/widget/AbsListView;->mPointerCount:I

    add-int/2addr v8, v1

    iput v8, p0, Landroid/widget/AbsListView;->mPointerCount:I

    goto :goto_4

    :pswitch_3
    invoke-direct {p0}, Landroid/widget/AbsListView;->onTouchCancel()V

    goto :goto_4

    :pswitch_4
    invoke-direct {p0, p1, v0}, Landroid/widget/AbsListView;->onTouchMove(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)V

    goto :goto_4

    :pswitch_5
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->onTouchUp(Landroid/view/MotionEvent;)V

    goto :goto_4

    :pswitch_6
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->onTouchDown(Landroid/view/MotionEvent;)V

    nop

    :goto_4
    iget-object v3, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_10

    iget-object v3, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_10
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    return v1

    :cond_11
    :goto_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onTouchEvent() mIsDetaching : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/widget/AbsListView;->mIsDetaching:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isAttachedToWindow() : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isAttachedToWindow()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public whitelist onTouchModeChanged(Z)V
    .locals 2

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/widget/AbsListView;->hideSelector()V

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->layoutChildren()V

    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsListView;->updateSelectorState()V

    goto :goto_0

    :cond_1
    iget v0, p0, Landroid/widget/AbsListView;->mTouchMode:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    const/4 v1, 0x6

    if-ne v0, v1, :cond_5

    :cond_2
    iget-object v1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {v1}, Landroid/widget/AbsListView$FlingRunnable;->endFling()V

    :cond_3
    iget-object v1, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {v1}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    :cond_4
    iget v1, p0, Landroid/widget/AbsListView;->mScrollY:I

    if-eqz v1, :cond_5

    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/AbsListView;->mScrollY:I

    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidateParentCaches()V

    invoke-direct {p0}, Landroid/widget/AbsListView;->finishGlows()V

    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidate()V

    :cond_5
    :goto_0
    return-void
.end method

.method protected whitelist onVisibilityChanged(Landroid/view/View;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/widget/AdapterView;->onVisibilityChanged(Landroid/view/View;I)V

    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/AbsListView;->mHoverPosition:I

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Landroid/widget/AbsListView;->releaseAllBoosters()V

    :goto_0
    return-void
.end method

.method public whitelist onWindowFocusChanged(Z)V
    .locals 5

    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onWindowFocusChanged(Z)V

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isInTouchMode()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const/4 v2, 0x0

    if-nez p1, :cond_2

    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->setChildrenDrawingCacheEnabled(Z)V

    iget-object v3, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v3, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-static {v3, v2}, Landroid/widget/AbsListView$FlingRunnable;->-$$Nest$fputmSuppressIdleStateChangeCall(Landroid/widget/AbsListView$FlingRunnable;Z)V

    iget-object v3, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {v3}, Landroid/widget/AbsListView$FlingRunnable;->endFling()V

    iget-object v3, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {v3}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    :cond_0
    iget v3, p0, Landroid/widget/AbsListView;->mScrollY:I

    if-eqz v3, :cond_1

    iput v2, p0, Landroid/widget/AbsListView;->mScrollY:I

    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidateParentCaches()V

    invoke-direct {p0}, Landroid/widget/AbsListView;->finishGlows()V

    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidate()V

    :cond_1
    invoke-direct {p0}, Landroid/widget/AbsListView;->dismissPopup()V

    if-ne v0, v1, :cond_5

    iget v2, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    iput v2, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    goto :goto_0

    :cond_2
    iget-boolean v3, p0, Landroid/widget/AbsListView;->mFiltered:Z

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Landroid/widget/AbsListView;->mPopupHidden:Z

    if-nez v3, :cond_3

    invoke-direct {p0}, Landroid/widget/AbsListView;->showPopup()V

    :cond_3
    iget v3, p0, Landroid/widget/AbsListView;->mLastTouchMode:I

    if-eq v0, v3, :cond_5

    iget v3, p0, Landroid/widget/AbsListView;->mLastTouchMode:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_5

    if-ne v0, v1, :cond_4

    invoke-virtual {p0}, Landroid/widget/AbsListView;->resurrectSelection()Z

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Landroid/widget/AbsListView;->hideSelector()V

    iput v2, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    invoke-virtual {p0}, Landroid/widget/AbsListView;->layoutChildren()V

    :cond_5
    :goto_0
    iput v0, p0, Landroid/widget/AbsListView;->mLastTouchMode:I

    if-nez p1, :cond_6

    invoke-direct {p0}, Landroid/widget/AbsListView;->releaseAllBoosters()V

    :cond_6
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->semAutoHide(I)V

    return-void
.end method

.method public greylist-max-o performAccessibilityActionInternal(ILandroid/os/Bundle;)Z
    .locals 7

    invoke-super {p0, p1, p2}, Landroid/widget/AdapterView;->performAccessibilityActionInternal(ILandroid/os/Bundle;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x7

    if-eqz p2, :cond_1

    const-string v2, "auto_scroll_speed_level_count"

    const/16 v3, 0xf

    invoke-virtual {p2, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    add-int/lit8 v3, v2, -0x1

    const/16 v4, 0x78c

    div-int/2addr v4, v3

    iput v4, p0, Landroid/widget/AbsListView;->mAutoscrollDurationGap:I

    const-string v3, "auto_scroll_speed_level"

    const/16 v4, 0x8

    invoke-virtual {p2, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    :cond_1
    const/16 v2, 0xc8

    const/16 v3, 0x7f0

    const-string v4, "AbsListView"

    const/4 v5, 0x0

    sparse-switch p1, :sswitch_data_0

    return v5

    :sswitch_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SEM_ACTION_AUTOSCROLL_SPEED_DOWN, current duration = "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v6, p0, Landroid/widget/AbsListView;->mAutoscrollDuration:I

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Landroid/widget/AbsListView;->canScrollDown()Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p0, Landroid/widget/AbsListView;->mAutoscrollDuration:I

    if-ge v2, v3, :cond_2

    iget v2, p0, Landroid/widget/AbsListView;->mAutoscrollDuration:I

    iget v3, p0, Landroid/widget/AbsListView;->mAutoscrollDurationGap:I

    add-int/2addr v2, v3

    iput v2, p0, Landroid/widget/AbsListView;->mAutoscrollDuration:I

    :cond_2
    iget v2, p0, Landroid/widget/AbsListView;->mAutoscrollDuration:I

    invoke-direct {p0, v2}, Landroid/widget/AbsListView;->autoScrollWithDuration(I)V

    return v1

    :cond_3
    return v5

    :sswitch_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SEM_ACTION_AUTOSCROLL_SPEED_UP, current duration = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/widget/AbsListView;->mAutoscrollDuration:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Landroid/widget/AbsListView;->canScrollDown()Z

    move-result v2

    if-eqz v2, :cond_5

    iget v2, p0, Landroid/widget/AbsListView;->mAutoscrollDuration:I

    const/16 v3, 0x64

    if-le v2, v3, :cond_4

    iget v2, p0, Landroid/widget/AbsListView;->mAutoscrollDuration:I

    iget v3, p0, Landroid/widget/AbsListView;->mAutoscrollDurationGap:I

    sub-int/2addr v2, v3

    iput v2, p0, Landroid/widget/AbsListView;->mAutoscrollDuration:I

    :cond_4
    iget v2, p0, Landroid/widget/AbsListView;->mAutoscrollDuration:I

    invoke-direct {p0, v2}, Landroid/widget/AbsListView;->autoScrollWithDuration(I)V

    return v1

    :cond_5
    return v5

    :sswitch_2
    const-string v2, "SEM_ACTION_AUTOSCROLL_TOP"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Landroid/widget/AbsListView;->canScrollUp()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p0, v5, v5, v5}, Landroid/widget/AbsListView;->smoothScrollToPositionFromTop(III)V

    return v1

    :cond_6
    return v5

    :sswitch_3
    const-string v2, "SEM_ACTION_AUTOSCROLL_OFF"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v5, v5}, Landroid/widget/AbsListView;->smoothScrollBy(II)V

    iget-object v2, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-eqz v2, :cond_7

    iget-object v2, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {v2}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    :cond_7
    return v1

    :sswitch_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "case SEM_ACTION_AUTOSCROLL_ON, canScrollDown = "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Landroid/widget/AbsListView;->canScrollDown()Z

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-direct {p0}, Landroid/widget/AbsListView;->canScrollDown()Z

    move-result v2

    if-eqz v2, :cond_8

    iget v2, p0, Landroid/widget/AbsListView;->mAutoscrollDurationGap:I

    mul-int/2addr v2, v0

    sub-int/2addr v3, v2

    iput v3, p0, Landroid/widget/AbsListView;->mAutoscrollDuration:I

    iget v2, p0, Landroid/widget/AbsListView;->mAutoscrollDuration:I

    invoke-direct {p0, v2}, Landroid/widget/AbsListView;->autoScrollWithDuration(I)V

    return v1

    :cond_8
    return v5

    :sswitch_5
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-direct {p0}, Landroid/widget/AbsListView;->canScrollUp()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v3

    iget-object v4, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    neg-int v4, v3

    invoke-virtual {p0, v4, v2}, Landroid/widget/AbsListView;->smoothScrollBy(II)V

    iget v2, p0, Landroid/widget/AbsListView;->mFocusedPos:I

    sub-int/2addr v2, v1

    invoke-virtual {p0, v2, v1}, Landroid/widget/AbsListView;->semSendBroadcastPosition(II)V

    iget-boolean v2, p0, Landroid/widget/AbsListView;->mAppWidgetIndicator:Z

    if-eqz v2, :cond_9

    iget v2, p0, Landroid/widget/AbsListView;->mFocusedPos:I

    sub-int/2addr v2, v1

    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->semInvalidateIndicator(I)V

    :cond_9
    return v1

    :cond_a
    return v5

    :sswitch_6
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-direct {p0}, Landroid/widget/AbsListView;->canScrollDown()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getCount()I

    move-result v4

    sub-int/2addr v4, v1

    if-eq v3, v4, :cond_c

    :cond_b
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getCount()I

    move-result v4

    sub-int/2addr v4, v1

    if-ge v3, v4, :cond_e

    :cond_c
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v3

    iget-object v4, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    invoke-virtual {p0, v3, v2}, Landroid/widget/AbsListView;->smoothScrollBy(II)V

    iget v2, p0, Landroid/widget/AbsListView;->mFocusedPos:I

    add-int/2addr v2, v1

    invoke-virtual {p0, v2, v1}, Landroid/widget/AbsListView;->semSendBroadcastPosition(II)V

    iget-boolean v2, p0, Landroid/widget/AbsListView;->mAppWidgetIndicator:Z

    if-eqz v2, :cond_d

    iget v2, p0, Landroid/widget/AbsListView;->mFocusedPos:I

    add-int/2addr v2, v1

    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->semInvalidateIndicator(I)V

    :cond_d
    return v1

    :cond_e
    return v5

    nop

    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_6
        0x2000 -> :sswitch_5
        0x400000 -> :sswitch_4
        0x800000 -> :sswitch_3
        0x1020038 -> :sswitch_5
        0x102003a -> :sswitch_6
        0x4000000 -> :sswitch_2
        0x10000000 -> :sswitch_1
        0x20000000 -> :sswitch_0
    .end sparse-switch
.end method

.method public whitelist performItemClick(Landroid/view/View;IJ)Z
    .locals 12

    move-object v0, p0

    move v7, p2

    const/4 v1, 0x0

    const/4 v8, 0x1

    iget v2, v0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-eqz v2, :cond_c

    const/4 v9, 0x1

    const/4 v10, 0x0

    iget v1, v0, Landroid/widget/AbsListView;->mChoiceMode:I

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v1, v2, :cond_6

    iget v1, v0, Landroid/widget/AbsListView;->mChoiceMode:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    iget-object v1, v0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_0

    goto :goto_2

    :cond_0
    iget v1, v0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-ne v1, v4, :cond_5

    iget-object v1, v0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p2, v3}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v1

    xor-int/2addr v1, v4

    if-eqz v1, :cond_2

    iget-object v2, v0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->clear()V

    iget-object v2, v0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p2, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    iget-object v2, v0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v2, :cond_1

    iget-object v2, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v2}, Landroid/util/LongSparseArray;->clear()V

    iget-object v2, v0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v3, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v5, v6, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    :cond_1
    iput v4, v0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    goto :goto_0

    :cond_2
    iget-object v2, v0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, v0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v3}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_3
    iput v3, v0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    :cond_4
    :goto_0
    const/4 v10, 0x1

    goto :goto_5

    :cond_5
    :goto_1
    goto :goto_5

    :cond_6
    :goto_2
    iget-object v1, v0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p2, v3}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v1

    xor-int/2addr v1, v4

    move v11, v1

    iget-object v1, v0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p2, v11}, Landroid/util/SparseBooleanArray;->put(IZ)V

    iget-object v1, v0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v1, :cond_8

    iget-object v1, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v1

    if-eqz v1, :cond_8

    if-eqz v11, :cond_7

    iget-object v1, v0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v2, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_3

    :cond_7
    iget-object v1, v0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v2, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/util/LongSparseArray;->delete(J)V

    :cond_8
    :goto_3
    if-eqz v11, :cond_9

    iget v1, v0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    add-int/2addr v1, v4

    iput v1, v0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    goto :goto_4

    :cond_9
    iget v1, v0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    sub-int/2addr v1, v4

    iput v1, v0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    :goto_4
    iget-object v1, v0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_a

    iget-object v1, v0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    iget-object v2, v0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    move v3, p2

    move-wide v4, p3

    move v6, v11

    invoke-virtual/range {v1 .. v6}, Landroid/widget/AbsListView$MultiChoiceModeWrapper;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    const/4 v8, 0x0

    :cond_a
    const/4 v10, 0x1

    goto :goto_1

    :goto_5
    if-eqz v10, :cond_b

    invoke-direct {p0}, Landroid/widget/AbsListView;->updateOnScreenCheckedViews()V

    :cond_b
    move v1, v9

    :cond_c
    if-eqz v8, :cond_d

    invoke-super/range {p0 .. p4}, Landroid/widget/AdapterView;->performItemClick(Landroid/view/View;IJ)Z

    move-result v2

    or-int/2addr v1, v2

    :cond_d
    return v1
.end method

.method greylist performLongPress(Landroid/view/View;IJ)Z
    .locals 7

    const/high16 v5, -0x40800000    # -1.0f

    const/high16 v6, -0x40800000    # -1.0f

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    invoke-virtual/range {v0 .. v6}, Landroid/widget/AbsListView;->performLongPress(Landroid/view/View;IJFF)Z

    move-result v0

    return v0
.end method

.method greylist-max-r performLongPress(Landroid/view/View;IJFF)Z
    .locals 9

    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    const/4 v1, 0x1

    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-ne v0, v2, :cond_0

    iput-boolean v1, p0, Landroid/widget/AbsListView;->mIsDragBlockEnabled:Z

    :cond_0
    invoke-virtual {p0, p2, v1}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    invoke-static {v1}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->performHapticFeedback(I)Z

    :cond_1
    return v1

    :cond_2
    const/4 v0, 0x0

    iget-object v2, p0, Landroid/widget/AbsListView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    if-eqz v2, :cond_3

    iget-object v3, p0, Landroid/widget/AbsListView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    move-object v4, p0

    move-object v5, p1

    move v6, p2

    move-wide v7, p3

    invoke-interface/range {v3 .. v8}, Landroid/widget/AdapterView$OnItemLongClickListener;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result v0

    :cond_3
    if-nez v0, :cond_5

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/AbsListView;->createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/AbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v3, p5, v2

    if-eqz v3, :cond_4

    cmpl-float v2, p6, v2

    if-eqz v2, :cond_4

    invoke-super {p0, p0, p5, p6}, Landroid/widget/AdapterView;->showContextMenuForChild(Landroid/view/View;FF)Z

    move-result v0

    goto :goto_0

    :cond_4
    invoke-super {p0, p0}, Landroid/widget/AdapterView;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v0

    :cond_5
    :goto_0
    if-eqz v0, :cond_6

    invoke-direct {p0}, Landroid/widget/AbsListView;->semGetEnableVibrationAtLongPress()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {v1}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->performHapticFeedback(I)Z

    :cond_6
    return v0
.end method

.method public whitelist pointToPosition(II)I
    .locals 6

    iget-object v0, p0, Landroid/widget/AbsListView;->mTouchFrame:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/widget/AbsListView;->mTouchFrame:Landroid/graphics/Rect;

    iget-object v0, p0, Landroid/widget/AbsListView;->mTouchFrame:Landroid/graphics/Rect;

    :cond_0
    instance-of v1, p0, Landroid/widget/ListView;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    move-object v1, p0

    check-cast v1, Landroid/widget/ListView;

    iget v1, v1, Landroid/widget/ListView;->mDividerHeight:I

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    iput v1, p0, Landroid/widget/AbsListView;->mHasDividerHeight:I

    iget v1, p0, Landroid/widget/AbsListView;->mHasDividerHeight:I

    if-lez v1, :cond_2

    move-object v1, p0

    check-cast v1, Landroid/widget/ListView;

    iget-object v1, v1, Landroid/widget/ListView;->mDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    :cond_2
    iput-boolean v2, p0, Landroid/widget/AbsListView;->mHasDivier:Z

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    add-int/lit8 v2, v1, -0x1

    :goto_1
    if-ltz v2, :cond_5

    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v3, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    iget-boolean v4, p0, Landroid/widget/AbsListView;->mHasDivier:Z

    if-eqz v4, :cond_3

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    iget v5, p0, Landroid/widget/AbsListView;->mHasDividerHeight:I

    add-int/2addr v4, v5

    iput v4, v0, Landroid/graphics/Rect;->bottom:I

    :cond_3
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_4

    iget v4, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    add-int/2addr v4, v2

    return v4

    :cond_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_5
    const/4 v2, -0x1

    return v2
.end method

.method public whitelist pointToRowId(II)J
    .locals 3

    invoke-virtual {p0, p1, p2}, Landroid/widget/AbsListView;->pointToPosition(II)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, v0}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v1

    return-wide v1

    :cond_0
    const-wide/high16 v1, -0x8000000000000000L

    return-wide v1
.end method

.method greylist-max-o positionSelector(ILandroid/view/View;)V
    .locals 6

    const/high16 v4, -0x40800000    # -1.0f

    const/high16 v5, -0x40800000    # -1.0f

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/AbsListView;->positionSelector(ILandroid/view/View;ZFF)V

    return-void
.end method

.method greylist-max-o positionSelectorLikeFocus(ILandroid/view/View;)V
    .locals 9

    iget-object v0, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/widget/AbsListView;->mSelectorPosition:I

    if-eq v0, p1, :cond_0

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v7

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v8

    const/4 v4, 0x1

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v5, v7

    move v6, v8

    invoke-direct/range {v1 .. v6}, Landroid/widget/AbsListView;->positionSelector(ILandroid/view/View;ZFF)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/widget/AbsListView;->positionSelector(ILandroid/view/View;)V

    :goto_0
    return-void
.end method

.method greylist-max-o positionSelectorLikeTouch(ILandroid/view/View;FF)V
    .locals 6

    const/4 v3, 0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/widget/AbsListView;->positionSelector(ILandroid/view/View;ZFF)V

    return-void
.end method

.method public whitelist reclaimViews(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    iget-object v1, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-static {v1}, Landroid/widget/AbsListView$RecycleBin;->-$$Nest$fgetmRecyclerListener(Landroid/widget/AbsListView$RecycleBin;)Landroid/widget/AbsListView$RecyclerListener;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/AbsListView$LayoutParams;

    if-eqz v4, :cond_0

    iget-object v5, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    iget v6, v4, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    invoke-virtual {v5, v6}, Landroid/widget/AbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    invoke-virtual {v3}, Landroid/view/View;->resetSubtreeAutofillIds()V

    if-eqz v1, :cond_0

    invoke-interface {v1, v3}, Landroid/widget/AbsListView$RecyclerListener;->onMovedToScrapHeap(Landroid/view/View;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v2, p1}, Landroid/widget/AbsListView$RecycleBin;->reclaimScrapViews(Ljava/util/List;)V

    invoke-virtual {p0}, Landroid/widget/AbsListView;->removeAllViewsInLayout()V

    return-void
.end method

.method greylist-max-o reconcileSelectedPosition()I
    .locals 2

    iget v0, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    if-gez v0, :cond_0

    iget v0, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    :cond_0
    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v1, p0, Landroid/widget/AbsListView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method blacklist removePendingCallbacks()V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/widget/AbsListView;->mPendingCheckForTap:Landroid/widget/AbsListView$CheckForTap;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    const/4 v1, -0x1

    iput v1, p0, Landroid/widget/AbsListView;->mTouchMode:I

    return-void
.end method

.method greylist-max-p reportScrollStateChange(I)V
    .locals 4

    iget v0, p0, Landroid/widget/AbsListView;->mLastScrollState:I

    const/4 v1, 0x1

    if-eq p1, v0, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "reportScrollStateChange() newState : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "AbsListView"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mAppWidgetImmersiveEnalbed:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mOnScrollOffsetListener:Landroid/widget/AbsListView$OnScrollOffsetListener;

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mOnScrollOffsetListener:Landroid/widget/AbsListView$OnScrollOffsetListener;

    invoke-interface {v0, p0}, Landroid/widget/AbsListView$OnScrollOffsetListener;->onScrollMotionDone(Landroid/widget/AbsListView;)V

    :cond_0
    if-eqz p1, :cond_2

    iget v0, p0, Landroid/widget/AbsListView;->mLastScrollState:I

    if-nez v0, :cond_2

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mSemEnableGoToTop:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/AbsListView;->mSemAutoHide:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->semSetupGoToTop(I)V

    :cond_1
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    if-nez v0, :cond_2

    invoke-static {v1}, Lcom/samsung/android/os/SemPerfManager;->onScrollEvent(Z)V

    iput-boolean v1, p0, Landroid/widget/AbsListView;->mDVFSLockAcquired:Z

    :cond_2
    if-nez p1, :cond_5

    iget v0, p0, Landroid/widget/AbsListView;->mLastScrollState:I

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mSemEnableGoToTop:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mGoToToping:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/EdgeEffect;->setSize(II)V

    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    const/16 v2, 0x2710

    invoke-virtual {v0, v2}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidate()V

    :cond_3
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->semAutoHide(I)V

    :cond_4
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mDVFSLockAcquired:Z

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/samsung/android/os/SemPerfManager;->onScrollEvent(Z)V

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mDVFSLockAcquired:Z

    :cond_5
    if-eqz p1, :cond_6

    iget v0, p0, Landroid/widget/AbsListView;->mLastScrollState:I

    if-eqz v0, :cond_6

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->semSetupGoToTop(I)V

    :cond_6
    iput p1, p0, Landroid/widget/AbsListView;->mLastScrollState:I

    iget-object v0, p0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_8

    iget-object v0, p0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p0, p1}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    goto :goto_0

    :cond_7
    if-eqz p1, :cond_8

    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->semSetupGoToTop(I)V

    :cond_8
    :goto_0
    if-eqz p1, :cond_9

    const/4 v0, 0x2

    if-ne p1, v0, :cond_a

    :cond_9
    iput-boolean v1, p0, Landroid/widget/AbsListView;->mReportChildrenToContentCaptureOnNextUpdate:Z

    :cond_a
    return-void
.end method

.method public whitelist requestDisallowInterceptTouchEvent(Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-direct {p0}, Landroid/widget/AbsListView;->recycleVelocityTracker()V

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->requestDisallowInterceptTouchEvent(Z)V

    return-void
.end method

.method public whitelist requestLayout()V
    .locals 1

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mBlockLayoutRequests:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mInLayout:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/widget/AdapterView;->requestLayout()V

    :cond_0
    return-void
.end method

.method greylist-max-o requestLayoutIfNecessary()V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->resetList()V

    invoke-virtual {p0}, Landroid/widget/AbsListView;->requestLayout()V

    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidate()V

    :cond_0
    return-void
.end method

.method greylist-max-o resetList()V
    .locals 4

    invoke-virtual {p0}, Landroid/widget/AbsListView;->removeAllViewsInLayout()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mDataChanged:Z

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/widget/AbsListView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mNeedSync:Z

    iput-object v1, p0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    const/4 v1, -0x1

    iput v1, p0, Landroid/widget/AbsListView;->mOldSelectedPosition:I

    const-wide/high16 v2, -0x8000000000000000L

    iput-wide v2, p0, Landroid/widget/AbsListView;->mOldSelectedRowId:J

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->setSelectedPositionInt(I)V

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->setNextSelectedPositionInt(I)V

    iput v0, p0, Landroid/widget/AbsListView;->mSelectedTop:I

    iput v1, p0, Landroid/widget/AbsListView;->mSelectorPosition:I

    iget-object v0, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidate()V

    return-void
.end method

.method public blacklist resetPressItemListArray()V
    .locals 1

    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/AbsListView;->mSemPressItemListArray:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mSemPressItemListArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidate()V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method greylist-max-o resurrectSelection()Z
    .locals 16

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    if-gtz v1, :cond_0

    return v2

    :cond_0
    const/4 v3, 0x0

    iget-object v4, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget v5, v0, Landroid/widget/AbsListView;->mBottom:I

    iget v6, v0, Landroid/widget/AbsListView;->mTop:I

    sub-int/2addr v5, v6

    iget-object v6, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v6

    iget v6, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    iget v7, v0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    const/4 v8, 0x1

    const/4 v9, 0x1

    if-lt v7, v6, :cond_3

    add-int v10, v6, v1

    if-ge v7, v10, :cond_3

    move v10, v7

    iget v11, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int v11, v10, v11

    invoke-virtual {v0, v11}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {v11}, Landroid/view/View;->getBottom()I

    move-result v12

    if-ge v3, v4, :cond_1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getVerticalFadingEdgeLength()I

    move-result v13

    add-int v3, v4, v13

    goto :goto_0

    :cond_1
    if-le v12, v5, :cond_2

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    sub-int v13, v5, v13

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getVerticalFadingEdgeLength()I

    move-result v14

    sub-int v3, v13, v14

    :cond_2
    :goto_0
    goto :goto_4

    :cond_3
    if-ge v7, v6, :cond_8

    move v10, v6

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v1, :cond_7

    invoke-virtual {v0, v11}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/View;->getTop()I

    move-result v13

    if-nez v11, :cond_5

    move v3, v13

    if-gtz v6, :cond_4

    if-ge v13, v4, :cond_5

    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getVerticalFadingEdgeLength()I

    move-result v14

    add-int/2addr v4, v14

    :cond_5
    if-lt v13, v4, :cond_6

    add-int v10, v6, v11

    move v3, v13

    goto :goto_2

    :cond_6
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_7
    :goto_2
    goto :goto_4

    :cond_8
    iget v10, v0, Landroid/widget/AbsListView;->mItemCount:I

    const/4 v8, 0x0

    add-int v11, v6, v1

    sub-int/2addr v11, v9

    add-int/lit8 v12, v1, -0x1

    :goto_3
    if-ltz v12, :cond_c

    invoke-virtual {v0, v12}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v14

    invoke-virtual {v13}, Landroid/view/View;->getBottom()I

    move-result v15

    add-int/lit8 v9, v1, -0x1

    if-ne v12, v9, :cond_a

    move v3, v14

    add-int v9, v6, v1

    if-lt v9, v10, :cond_9

    if-le v15, v5, :cond_a

    :cond_9
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getVerticalFadingEdgeLength()I

    move-result v9

    sub-int/2addr v5, v9

    :cond_a
    if-gt v15, v5, :cond_b

    add-int v9, v6, v12

    move v3, v14

    move v10, v9

    goto :goto_4

    :cond_b
    add-int/lit8 v12, v12, -0x1

    const/4 v9, 0x1

    goto :goto_3

    :cond_c
    move v10, v11

    :goto_4
    const/4 v9, -0x1

    iput v9, v0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    iget-object v11, v0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {v0, v11}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v11, v0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-eqz v11, :cond_d

    iget-object v11, v0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {v11}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    :cond_d
    iput v9, v0, Landroid/widget/AbsListView;->mTouchMode:I

    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->clearScrollingCache()V

    iput v3, v0, Landroid/widget/AbsListView;->mSpecificTop:I

    invoke-virtual {v0, v10, v8}, Landroid/widget/AbsListView;->lookForSelectablePosition(IZ)I

    move-result v9

    if-lt v9, v6, :cond_e

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v10

    if-gt v9, v10, :cond_e

    const/4 v10, 0x4

    iput v10, v0, Landroid/widget/AbsListView;->mLayoutMode:I

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->updateSelectorState()V

    invoke-virtual {v0, v9}, Landroid/widget/AbsListView;->setSelectionInt(I)V

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->invokeOnItemScrollListener()V

    goto :goto_5

    :cond_e
    const/4 v9, -0x1

    :goto_5
    invoke-virtual {v0, v2}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    if-ltz v9, :cond_f

    const/4 v2, 0x1

    :cond_f
    return v2
.end method

.method greylist resurrectSelectionIfNeeded()Z
    .locals 1

    iget v0, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    if-gez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->resurrectSelection()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->updateSelectorState()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist scrollListBy(I)V
    .locals 2

    neg-int v0, p1

    neg-int v1, p1

    invoke-virtual {p0, v0, v1}, Landroid/widget/AbsListView;->trackMotionScroll(II)Z

    return-void
.end method

.method public blacklist semAllowDeferNotifyAfterRemoteViewsAdapterSet(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Allow notify after RemoteViewsAdapter set "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AbsListView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Landroid/widget/AbsListView;->mAllowDeferNotifyAfterRemoteViewsAdapterSet:Z

    return-void
.end method

.method public blacklist semAutoHide(I)V
    .locals 3

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mSemEnableGoToTop:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    invoke-virtual {p0}, Landroid/widget/AbsListView;->semIsFastScrollEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/widget/AbsListView;->mSemAutoHide:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Landroid/widget/AbsListView;->mSemAutoHide:Ljava/lang/Runnable;

    iget v1, p0, Landroid/widget/AbsListView;->GO_TO_TOP_HIDE:I

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/AbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Landroid/widget/AbsListView;->mSemAutoHide:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Landroid/widget/AbsListView;->mSemAutoHide:Ljava/lang/Runnable;

    iget v1, p0, Landroid/widget/AbsListView;->GO_TO_TOP_HIDE:I

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/AbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public whitelist semFinishMultiChoiceMode()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    :cond_0
    return-void
.end method

.method public whitelist semForceLongPressMultiSelectionForClickableItems()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mLongPressMultiSelectionEnabled:Z

    if-eqz v0, :cond_0

    const-string v0, "AbsListView"

    const-string/jumbo v1, "requested semForceLongPressMultiSelectionForClickableItems by app"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mHasPerformedLongPress:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mIsLongPressMultiSelection:Z

    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/AbsListView;->mTouchMode:I

    :cond_0
    return-void
.end method

.method protected blacklist semGetItemCount()I
    .locals 2

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v1

    :goto_0
    return v1
.end method

.method public blacklist semGetLastScrollState()I
    .locals 1

    iget v0, p0, Landroid/widget/AbsListView;->mLastScrollState:I

    return v0
.end method

.method public blacklist semHandleGenericMotionEvent(I)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method blacklist semInvalidateIndicator(I)V
    .locals 3

    if-gez p1, :cond_0

    return-void

    :cond_0
    iget v0, p0, Landroid/widget/AbsListView;->mNewFocusedPos:I

    if-eq v0, p1, :cond_2

    iput p1, p0, Landroid/widget/AbsListView;->mNewFocusedPos:I

    iget-object v0, p0, Landroid/widget/AbsListView;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_2

    iget v0, p0, Landroid/widget/AbsListView;->mNewFocusedPos:I

    iget v1, p0, Landroid/widget/AbsListView;->mFocusedPos:I

    if-eq v0, v1, :cond_2

    iget v0, p0, Landroid/widget/AbsListView;->mIndicatorAnimatedSize:I

    iget v1, p0, Landroid/widget/AbsListView;->mIndicatorFocusedSize:I

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Landroid/widget/AbsListView;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/AbsListView;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    iget-object v0, p0, Landroid/widget/AbsListView;->mAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Landroid/widget/AbsListView;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_2
    return-void
.end method

.method public whitelist semIsFastScrollCustomEffectEnabled()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mSemFastScrollCustomEffectEnabled:Z

    return v0
.end method

.method public blacklist semIsFastScrollEnabled()Z
    .locals 1

    iget-object v0, p0, Landroid/widget/AbsListView;->mSemFastScroll:Landroid/widget/SemFastScroller;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFastScrollEnabled:Z

    return v0

    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mSemFastScroll:Landroid/widget/SemFastScroller;

    invoke-virtual {v0}, Landroid/widget/SemFastScroller;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public blacklist semIsFluidScrollerEnabled()Z
    .locals 1

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isFastScrollEnabled()Z

    move-result v0

    return v0
.end method

.method public blacklist semIsLongPressTriggeredByKey()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mIsLongPressTriggeredByKey:Z

    return v0
.end method

.method protected blacklist semIsShowingScrollbar()Z
    .locals 1

    invoke-super {p0}, Landroid/widget/AdapterView;->semIsShowingScrollbar()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFastScrollEnabled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist semNotifyKeyPressState(Landroid/view/View;IJ)Z
    .locals 8

    const/4 v0, 0x0

    iget-boolean v1, p0, Landroid/widget/AbsListView;->mIsShiftkeyPressed:Z

    if-eqz v1, :cond_0

    iget-boolean v7, p0, Landroid/widget/AbsListView;->mIsShiftkeyPressed:Z

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-wide v5, p3

    invoke-super/range {v2 .. v7}, Landroid/widget/AdapterView;->semNotifyKeyPress(Landroid/view/View;IJZ)Z

    move-result v0

    :cond_0
    return v0
.end method

.method public whitelist semPointToNearPosition(II)I
    .locals 20

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v3

    move/from16 v4, p2

    const v5, 0x7fffffff

    const/4 v6, 0x0

    add-int/lit8 v7, v3, -0x1

    :goto_0
    if-ltz v7, :cond_2

    invoke-virtual {v0, v7}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    if-eqz v8, :cond_1

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v9

    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v10

    add-int v11, v9, v10

    div-int/lit8 v11, v11, 0x2

    if-ne v6, v11, :cond_0

    goto :goto_1

    :cond_0
    move v6, v11

    sub-int v12, v2, v11

    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v12

    if-ge v12, v5, :cond_2

    move v5, v12

    move v4, v11

    :cond_1
    :goto_1
    add-int/lit8 v7, v7, -0x1

    goto :goto_0

    :cond_2
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    add-int/lit8 v13, v3, -0x1

    :goto_2
    if-ltz v13, :cond_a

    invoke-virtual {v0, v13}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    if-eqz v14, :cond_8

    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v15

    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {v14}, Landroid/view/View;->getLeft()I

    move-result v16

    invoke-virtual {v14}, Landroid/view/View;->getRight()I

    move-result v17

    move/from16 v18, v5

    add-int/lit8 v5, v3, -0x1

    if-ne v13, v5, :cond_3

    add-int/lit8 v5, v3, -0x1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v19

    add-int v11, v5, v19

    add-int/lit8 v5, v3, -0x1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v19

    add-int v12, v5, v19

    sub-int v5, v1, v16

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v7

    sub-int v5, v1, v17

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v8

    :cond_3
    if-lt v4, v15, :cond_5

    if-gt v4, v0, :cond_5

    sub-int v5, v1, v16

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v9

    sub-int v5, v1, v17

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v10

    if-gt v9, v7, :cond_4

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v5

    add-int v11, v13, v5

    move v7, v9

    :cond_4
    if-gt v10, v8, :cond_5

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v5

    add-int v12, v13, v5

    move v8, v10

    :cond_5
    if-gt v4, v0, :cond_6

    if-nez v13, :cond_9

    :cond_6
    if-ge v7, v8, :cond_7

    return v11

    :cond_7
    return v12

    :cond_8
    move/from16 v18, v5

    :cond_9
    add-int/lit8 v13, v13, -0x1

    move-object/from16 v0, p0

    move/from16 v5, v18

    goto :goto_2

    :cond_a
    move/from16 v18, v5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "semPointToNearPosition didn\'t find valid position!! "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ", "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, "AbsListView"

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    return v0
.end method

.method blacklist semSendBroadcastPosition(II)V
    .locals 3

    if-gez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "appWidgetId"

    packed-switch p2, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    iget-object v1, p0, Landroid/widget/AbsListView;->mAppWidgetGetFirstPosition:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.widget.ListView.APPWIDGET_FIRST_POSITION"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "appwidgetFirstPosition"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget v2, p0, Landroid/widget/AbsListView;->mAppWidgetId:I

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v0, p0, Landroid/widget/AbsListView;->mAppWidgetGetFirstPosition:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Landroid/widget/AbsListView;->semSendBroadcastPositionInternal(Ljava/lang/String;Landroid/content/Intent;)V

    goto :goto_2

    :pswitch_1
    iget-object v1, p0, Landroid/widget/AbsListView;->mAppWidgetGetCurrentPosition:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.android.app.clockpackage.APPWIDGET_CURRENT_POSITION"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "appwidgetCurrentPosition"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget v2, p0, Landroid/widget/AbsListView;->mAppWidgetId:I

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v0, p0, Landroid/widget/AbsListView;->mAppWidgetGetCurrentPosition:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Landroid/widget/AbsListView;->semSendBroadcastPositionInternal(Ljava/lang/String;Landroid/content/Intent;)V

    :cond_1
    invoke-direct {p0}, Landroid/widget/AbsListView;->semIsTalkBackIsRunning()Z

    move-result v0

    if-eqz v0, :cond_5

    iget v0, p0, Landroid/widget/AbsListView;->mFocusedPos:I

    sub-int/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    iget v0, p0, Landroid/widget/AbsListView;->mFocusedPos:I

    sub-int/2addr v0, p1

    const/4 v2, 0x0

    if-lez v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    if-eqz v0, :cond_3

    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    :goto_1
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/view/View;->requestAccessibilityFocus()Z

    :cond_4
    nop

    :cond_5
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public blacklist semSetAppWidgetEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/AbsListView;->mAppWidgetEnabled:Z

    return-void
.end method

.method public blacklist semSetAppWidgetGetCurrentPosition(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/AbsListView;->mAppWidgetGetCurrentPosition:Ljava/lang/String;

    return-void
.end method

.method public blacklist semSetAppWidgetGetFirstPosition(Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Landroid/widget/AbsListView;->mAppWidgetGetFirstPosition:Ljava/lang/String;

    iget v0, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Landroid/widget/AbsListView;->semSendBroadcastPosition(II)V

    return-void
.end method

.method public blacklist semSetAppWidgetImmersiveEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/AbsListView;->mAppWidgetImmersiveEnalbed:Z

    return-void
.end method

.method public blacklist semSetAppWidgetIndicator(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/AbsListView;->mAppWidgetIndicator:Z

    return-void
.end method

.method public blacklist semSetAppWidgetIndicatorBottomPadding(I)V
    .locals 0

    iput p1, p0, Landroid/widget/AbsListView;->mIndicatorBottomPadding:I

    return-void
.end method

.method public blacklist semSetAppWidgetIndicatorMarginHorizontal(I)V
    .locals 0

    iput p1, p0, Landroid/widget/AbsListView;->mIndicatorMarginHorizontal:I

    return-void
.end method

.method public blacklist semSetAppWidgetIndicatorWhere(I)V
    .locals 0

    iput p1, p0, Landroid/widget/AbsListView;->mIndicatorWhere:I

    return-void
.end method

.method public blacklist semSetAppWidgetInnerFocus(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/AbsListView;->mAppWidgetInnerFocus:Z

    return-void
.end method

.method public blacklist semSetAppWidgetNeedLayoutSpecificDone(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/AbsListView;->mNeedLayoutSpecificDone:Z

    return-void
.end method

.method public blacklist semSetAppWidgetSnapScroll(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/AbsListView;->mAppWidgetSnapScroll:Z

    return-void
.end method

.method public whitelist semSetClickableInMultiSelectMode(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/AbsListView;->mIsSemOnClickEnabled:Z

    return-void
.end method

.method public whitelist semSetCtrlKeyPressed(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/AbsListView;->mIsCtrlkeyPressed:Z

    return-void
.end method

.method public blacklist semSetCustomMultiChoiceModeEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/AbsListView;->mSemCustomMultiChoiceMode:Z

    return-void
.end method

.method public whitelist semSetDragBlockEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/AbsListView;->mIsDragBlockEnabled:Z

    return-void
.end method

.method public blacklist semSetEnableVibrationAtLongPress(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/AbsListView;->mEnableVibrationAtLongPress:Z

    return-void
.end method

.method public whitelist semSetFastScrollCustomEffectEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/AbsListView;->mSemFastScrollCustomEffectEnabled:Z

    return-void
.end method

.method public blacklist semSetFastScrollEnabled(Z)V
    .locals 1

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFastScrollEnabled:Z

    if-eq v0, p1, :cond_1

    iput-boolean p1, p0, Landroid/widget/AbsListView;->mFastScrollEnabled:Z

    invoke-direct {p0}, Landroid/widget/AbsListView;->isOwnerThread()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->semSetFastScrollEnabledUiThread(Z)V

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/widget/AbsListView$11;

    invoke-direct {v0, p0, p1}, Landroid/widget/AbsListView$11;-><init>(Landroid/widget/AbsListView;Z)V

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public blacklist semSetFastScrollEnabledForAppWidget(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/AbsListView;->mAppWidgetFastScroll:Z

    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->semSetFastScrollEnabled(Z)V

    return-void
.end method

.method public whitelist semSetFastScrollEventListener(Landroid/widget/AbsListView$SemFastScrollEventListener;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-object p1, p0, Landroid/widget/AbsListView;->mSemFastScrollEventListener:Landroid/widget/AbsListView$SemFastScrollEventListener;

    return-void
.end method

.method public blacklist semSetFastScrollStyle(I)V
    .locals 1

    iget-object v0, p0, Landroid/widget/AbsListView;->mSemFastScroll:Landroid/widget/SemFastScroller;

    if-nez v0, :cond_0

    iput p1, p0, Landroid/widget/AbsListView;->mFastScrollStyle:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mSemFastScroll:Landroid/widget/SemFastScroller;

    invoke-virtual {v0, p1}, Landroid/widget/SemFastScroller;->setStyle(I)V

    :goto_0
    return-void
.end method

.method public blacklist semSetFluidScrollerEnabled(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->setFastScrollEnabled(Z)V

    return-void
.end method

.method public blacklist semSetFluidScrollerEventListener(Landroid/widget/AbsListView$SemFluidScrollerEventListener;)V
    .locals 0

    return-void
.end method

.method public blacklist semSetFluidScrollerStyle(I)V
    .locals 0

    return-void
.end method

.method public whitelist semSetForcedEdgeEffectEnabled(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-boolean p1, p0, Landroid/widget/AbsListView;->mSemForcedDrawEdgeEffect:Z

    return-void
.end method

.method public whitelist semSetGoToTopEnabled(Z)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/widget/AbsListView;->semSetGoToTopEnabled(ZI)V

    return-void
.end method

.method public whitelist semSetGoToTopEnabled(ZI)V
    .locals 10

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mAppWidgetGoToTop:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x30

    const/16 v2, 0x20

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1080a26

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1080a28

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :goto_1
    iput-object v2, p0, Landroid/widget/AbsListView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    goto :goto_3

    :cond_2
    if-nez p2, :cond_3

    iget-object v0, p0, Landroid/widget/AbsListView;->mSemGoToTopLightImage:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    :cond_3
    iget-object v0, p0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x1080a25

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_2
    iput-object v0, p0, Landroid/widget/AbsListView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    :goto_3
    iget-object v0, p0, Landroid/widget/AbsListView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_6

    iput-boolean p1, p0, Landroid/widget/AbsListView;->mSemEnableGoToTop:Z

    iget-object v0, p0, Landroid/widget/AbsListView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v0

    const/16 v2, 0xff

    if-eq v0, v2, :cond_4

    iget-object v0, p0, Landroid/widget/AbsListView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_4
    iget-object v0, p0, Landroid/widget/AbsListView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Landroid/widget/AbsListView;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsListView;->mSemGoToTopBitmap:Landroid/graphics/Bitmap;

    iget-object v0, p0, Landroid/widget/AbsListView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    if-eqz p1, :cond_5

    iget-object v0, p0, Landroid/widget/AbsListView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    goto :goto_4

    :cond_5
    iget-object v0, p0, Landroid/widget/AbsListView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :goto_4
    filled-new-array {v1, v2}, [I

    move-result-object v0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsListView;->mSemGoToTopFadeInAnimator:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Landroid/widget/AbsListView;->mSemGoToTopFadeInAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v3, 0x14d

    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Landroid/widget/AbsListView;->mSemGoToTopFadeInAnimator:Landroid/animation/ValueAnimator;

    new-instance v5, Landroid/view/animation/PathInterpolator;

    const v6, 0x3ea8f5c3    # 0.33f

    const/4 v7, 0x0

    const v8, 0x3e99999a    # 0.3f

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Landroid/widget/AbsListView;->mSemGoToTopFadeInAnimator:Landroid/animation/ValueAnimator;

    new-instance v5, Landroid/widget/AbsListView$8;

    invoke-direct {v5, p0}, Landroid/widget/AbsListView$8;-><init>(Landroid/widget/AbsListView;)V

    invoke-virtual {v0, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    filled-new-array {v2, v1}, [I

    move-result-object v0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsListView;->mSemGoToTopFadeOutAnimator:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Landroid/widget/AbsListView;->mSemGoToTopFadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Landroid/widget/AbsListView;->mSemGoToTopFadeOutAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/PathInterpolator;

    invoke-direct {v1, v6, v7, v8, v9}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Landroid/widget/AbsListView;->mSemGoToTopFadeOutAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/widget/AbsListView$9;

    invoke-direct {v1, p0}, Landroid/widget/AbsListView$9;-><init>(Landroid/widget/AbsListView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Landroid/widget/AbsListView;->mSemGoToTopFadeOutAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/widget/AbsListView$10;

    invoke-direct {v1, p0}, Landroid/widget/AbsListView$10;-><init>(Landroid/widget/AbsListView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050467

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    new-instance v1, Landroid/graphics/RenderNode;

    const-string v2, "goToTop"

    invoke-direct {v1, v2}, Landroid/graphics/RenderNode;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Landroid/widget/AbsListView;->mGoToTopRenderNode:Landroid/graphics/RenderNode;

    iget-object v1, p0, Landroid/widget/AbsListView;->mGoToTopRenderNode:Landroid/graphics/RenderNode;

    int-to-float v2, v0

    invoke-virtual {v1, v2}, Landroid/graphics/RenderNode;->setElevation(F)Z

    :cond_6
    return-void
.end method

.method public blacklist semSetGoToTopEnabledForAppWidget(Z)V
    .locals 1

    iput-boolean p1, p0, Landroid/widget/AbsListView;->mAppWidgetGoToTop:Z

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/widget/AbsListView;->semSetGoToTopEnabled(ZI)V

    return-void
.end method

.method public blacklist semSetGoToTopOffsetForAppWidget(I)V
    .locals 0

    iput p1, p0, Landroid/widget/AbsListView;->mAppWidgetGoToTopOffset:I

    return-void
.end method

.method public whitelist semSetHoverScrollEnabled(Z)V
    .locals 1

    iput-boolean p1, p0, Landroid/widget/AbsListView;->mHoverScrollEnable:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mHoverScrollStateChanged:Z

    return-void
.end method

.method public whitelist semSetLongPressMultiSelectionEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/AbsListView;->mLongPressMultiSelectionEnabled:Z

    return-void
.end method

.method public blacklist semSetMultiFocusEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/AbsListView;->mIsMultiFocusEnabled:Z

    return-void
.end method

.method public blacklist semSetScrollBarBottomPadding(I)V
    .locals 1

    iget-object v0, p0, Landroid/widget/AbsListView;->mSemFastScroll:Landroid/widget/SemFastScroller;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mSemFastScroll:Landroid/widget/SemFastScroller;

    invoke-virtual {v0, p1}, Landroid/widget/SemFastScroller;->semSetScrollBarBottomPadding(I)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->semSetScrollBarBottomPadding(I)V

    :goto_0
    return-void
.end method

.method public blacklist semSetScrollBarTopPadding(I)V
    .locals 1

    iget-object v0, p0, Landroid/widget/AbsListView;->mSemFastScroll:Landroid/widget/SemFastScroller;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mSemFastScroll:Landroid/widget/SemFastScroller;

    invoke-virtual {v0, p1}, Landroid/widget/SemFastScroller;->semSetScrollBarTopPadding(I)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->semSetScrollBarTopPadding(I)V

    :goto_0
    return-void
.end method

.method public blacklist semSetSelection(I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->setSelection(I)V

    return-void
.end method

.method public whitelist semSetSmoothScrollEnabled(Z)V
    .locals 1

    iget-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/AbsListView$FlingRunnable;

    invoke-direct {v0, p0}, Landroid/widget/AbsListView$FlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-static {v0}, Landroid/widget/AbsListView$FlingRunnable;->-$$Nest$fgetmScroller(Landroid/widget/AbsListView$FlingRunnable;)Landroid/widget/OverScroller;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/OverScroller;->semSetSmoothScrollEnabled(Z)V

    return-void
.end method

.method public blacklist semSetupGoToTop(I)V
    .locals 25

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->semIsTalkBackIsRunning()Z

    move-result v1

    if-nez v1, :cond_16

    iget-boolean v1, v0, Landroid/widget/AbsListView;->mSemEnableGoToTop:Z

    if-nez v1, :cond_0

    move/from16 v2, p1

    goto/16 :goto_9

    :cond_0
    iget-object v1, v0, Landroid/widget/AbsListView;->mSemAutoHide:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v1, 0x1

    move/from16 v2, p1

    if-ne v2, v1, :cond_1

    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->canScrollUp()Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v2, 0x0

    :cond_1
    const/4 v3, -0x1

    if-ne v2, v3, :cond_3

    iget-boolean v4, v0, Landroid/widget/AbsListView;->mSemSizeChnage:Z

    if-eqz v4, :cond_3

    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->canScrollUp()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->canScrollDown()Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    iget v2, v0, Landroid/widget/AbsListView;->mSemGoToTopLastState:I

    goto :goto_0

    :cond_3
    if-ne v2, v3, :cond_5

    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->canScrollUp()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->canScrollDown()Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_4
    const/4 v2, 0x1

    :cond_5
    :goto_0
    if-eqz v2, :cond_6

    iget-object v3, v0, Landroid/widget/AbsListView;->mSemGoToToFadeOutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v3}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_6
    if-eq v2, v1, :cond_7

    iget-object v3, v0, Landroid/widget/AbsListView;->mSemGoToToFadeInRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v3}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_7
    :goto_1
    iget v3, v0, Landroid/widget/AbsListView;->mShowFadeOutGTP:I

    if-nez v3, :cond_8

    if-nez v2, :cond_8

    iget v3, v0, Landroid/widget/AbsListView;->mSemGoToTopLastState:I

    if-eqz v3, :cond_8

    iget-object v3, v0, Landroid/widget/AbsListView;->mSemGoToToFadeOutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v3}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    :cond_8
    const/4 v3, 0x2

    if-eq v2, v3, :cond_9

    iget-object v4, v0, Landroid/widget/AbsListView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    sget-object v5, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_9
    iput v2, v0, Landroid/widget/AbsListView;->mSemGoToTopState:I

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v5

    iget v6, v0, Landroid/widget/AbsListView;->mPaddingLeft:I

    sub-int v6, v4, v6

    iget v7, v0, Landroid/widget/AbsListView;->mPaddingRight:I

    sub-int/2addr v6, v7

    iget v7, v0, Landroid/widget/AbsListView;->mPaddingLeft:I

    div-int/lit8 v8, v6, 0x2

    add-int/2addr v7, v8

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    filled-new-array {v12, v12}, [I

    move-result-object v13

    invoke-virtual {v0, v13}, Landroid/widget/AbsListView;->getLocationInWindow([I)V

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v14

    iget-object v15, v0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "window"

    invoke-virtual {v15, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getRotation()I

    move-result v15

    if-eq v15, v1, :cond_b

    const/4 v1, 0x3

    if-ne v15, v1, :cond_a

    goto :goto_2

    :cond_a
    move v1, v12

    goto :goto_3

    :cond_b
    :goto_2
    const/4 v1, 0x1

    :goto_3
    new-instance v16, Landroid/graphics/Rect;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v17, v16

    move-object/from16 v12, v17

    invoke-virtual {v0, v12}, Landroid/widget/AbsListView;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    if-eqz v1, :cond_c

    move-object/from16 v17, v3

    iget v3, v12, Landroid/graphics/Rect;->left:I

    goto :goto_4

    :cond_c
    move-object/from16 v17, v3

    const/4 v3, 0x0

    :goto_4
    if-eqz v1, :cond_d

    move/from16 v18, v1

    iget v1, v12, Landroid/graphics/Rect;->right:I

    goto :goto_5

    :cond_d
    move/from16 v18, v1

    iget v1, v14, Landroid/util/DisplayMetrics;->widthPixels:I

    :goto_5
    move/from16 v19, v6

    const/16 v16, 0x0

    aget v6, v13, v16

    if-ge v6, v3, :cond_e

    iget-boolean v6, v0, Landroid/widget/AbsListView;->mAppWidgetGoToTop:Z

    if-nez v6, :cond_e

    aget v6, v13, v16

    neg-int v6, v6

    move/from16 v20, v3

    iget v3, v0, Landroid/widget/AbsListView;->mPaddingLeft:I

    if-le v6, v3, :cond_f

    iget v3, v0, Landroid/widget/AbsListView;->mPaddingLeft:I

    sub-int v3, v6, v3

    const/16 v21, 0x2

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v7, v3

    goto :goto_6

    :cond_e
    move/from16 v20, v3

    :cond_f
    :goto_6
    const/4 v3, 0x0

    aget v6, v13, v3

    add-int/2addr v6, v4

    if-le v6, v1, :cond_10

    iget-boolean v6, v0, Landroid/widget/AbsListView;->mAppWidgetGoToTop:Z

    if-nez v6, :cond_10

    aget v6, v13, v3

    add-int/2addr v6, v4

    iget v3, v14, Landroid/util/DisplayMetrics;->widthPixels:I

    sub-int/2addr v6, v3

    iget v3, v0, Landroid/widget/AbsListView;->mPaddingRight:I

    if-le v6, v3, :cond_10

    iget v3, v0, Landroid/widget/AbsListView;->mPaddingRight:I

    sub-int v3, v6, v3

    const/16 v21, 0x2

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v7, v3

    :cond_10
    packed-switch v2, :pswitch_data_0

    move/from16 v22, v1

    move/from16 v23, v4

    move/from16 v24, v5

    const/4 v3, 0x0

    goto/16 :goto_8

    :pswitch_0
    iget-object v3, v0, Landroid/widget/AbsListView;->mSemGoToToFadeOutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v3}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v3, v0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x105046a

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    iget-object v3, v0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    iget-boolean v3, v0, Landroid/widget/AbsListView;->mAppWidgetGoToTop:Z

    if-eqz v3, :cond_11

    iget-object v3, v0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x1050469

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iget v6, v0, Landroid/widget/AbsListView;->mAppWidgetGoToTopOffset:I

    add-int/2addr v3, v6

    move v11, v3

    goto :goto_7

    :cond_11
    iget-object v3, v0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x1050468

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    move v11, v3

    :goto_7
    iget-object v3, v0, Landroid/widget/AbsListView;->mSemGoToTopRect:Landroid/graphics/Rect;

    div-int/lit8 v6, v9, 0x2

    sub-int v6, v7, v6

    sub-int v21, v5, v10

    sub-int v21, v21, v8

    move/from16 v22, v1

    sub-int v1, v21, v11

    div-int/lit8 v21, v9, 0x2

    move/from16 v23, v4

    add-int v4, v7, v21

    sub-int v21, v5, v8

    move/from16 v24, v5

    sub-int v5, v21, v11

    invoke-virtual {v3, v6, v1, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    const/4 v3, 0x0

    goto :goto_8

    :pswitch_1
    move/from16 v22, v1

    move/from16 v23, v4

    move/from16 v24, v5

    iget v1, v0, Landroid/widget/AbsListView;->mShowFadeOutGTP:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_12

    iget-object v1, v0, Landroid/widget/AbsListView;->mSemGoToTopRect:Landroid/graphics/Rect;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v3, v3, v3}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_8

    :cond_12
    const/4 v3, 0x0

    :goto_8
    iget v1, v0, Landroid/widget/AbsListView;->mShowFadeOutGTP:I

    const/4 v4, 0x2

    if-ne v1, v4, :cond_13

    iput v3, v0, Landroid/widget/AbsListView;->mShowFadeOutGTP:I

    :cond_13
    iget-object v1, v0, Landroid/widget/AbsListView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    iget-object v3, v0, Landroid/widget/AbsListView;->mSemGoToTopRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    const/4 v1, 0x1

    if-ne v2, v1, :cond_15

    iget v1, v0, Landroid/widget/AbsListView;->mSemGoToTopLastState:I

    if-eqz v1, :cond_14

    iget-object v1, v0, Landroid/widget/AbsListView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v1

    if-eqz v1, :cond_14

    iget-boolean v1, v0, Landroid/widget/AbsListView;->mSemSizeChnage:Z

    if-eqz v1, :cond_15

    :cond_14
    iget-object v1, v0, Landroid/widget/AbsListView;->mSemGoToToFadeInRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    :cond_15
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/widget/AbsListView;->mSemSizeChnage:Z

    iget v3, v0, Landroid/widget/AbsListView;->mSemGoToTopState:I

    iput v3, v0, Landroid/widget/AbsListView;->mSemGoToTopLastState:I

    iget-object v3, v0, Landroid/widget/AbsListView;->mOutline:Landroid/graphics/Outline;

    iget-object v4, v0, Landroid/widget/AbsListView;->mSemGoToTopRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    iget-object v5, v0, Landroid/widget/AbsListView;->mSemGoToTopRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-virtual {v3, v1, v1, v4, v5}, Landroid/graphics/Outline;->setOval(IIII)V

    iget-object v3, v0, Landroid/widget/AbsListView;->mGoToTopRenderNode:Landroid/graphics/RenderNode;

    iget-object v4, v0, Landroid/widget/AbsListView;->mSemGoToTopRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/RenderNode;->setPosition(Landroid/graphics/Rect;)Z

    iget-object v3, v0, Landroid/widget/AbsListView;->mGoToTopRenderNode:Landroid/graphics/RenderNode;

    invoke-virtual {v3, v1}, Landroid/graphics/RenderNode;->setClipToBounds(Z)Z

    return-void

    :cond_16
    move/from16 v2, p1

    :goto_9
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public blacklist semShowGoToTOP()V
    .locals 2

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mSemEnableGoToTop:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/widget/AbsListView;->canScrollUp()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/widget/AbsListView;->mSemGoToTopState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->semSetupGoToTop(I)V

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->semAutoHide(I)V

    :cond_0
    return-void
.end method

.method public blacklist semSmoothScrollBy(I)V
    .locals 3

    iget-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/AbsListView$FlingRunnable;

    invoke-direct {v0, p0}, Landroid/widget/AbsListView$FlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mSemScrollRemains:Ljava/util/LinkedList;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Landroid/widget/AbsListView;->mSemScrollRemains:Ljava/util/LinkedList;

    new-instance v0, Landroid/widget/AbsListView$SemSmoothScrollByMove;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/widget/AbsListView$SemSmoothScrollByMove;-><init>(Landroid/widget/AbsListView;Landroid/widget/AbsListView$SemSmoothScrollByMove-IA;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mSemSmoothScrollByMove:Landroid/widget/AbsListView$SemSmoothScrollByMove;

    const/high16 v0, 0x43160000    # 150.0f

    iget v1, p0, Landroid/widget/AbsListView;->mDensityScale:F

    mul-float/2addr v1, v0

    float-to-int v0, v1

    iput v0, p0, Landroid/widget/AbsListView;->mSemScrollAmount:I

    :cond_1
    iget-object v0, p0, Landroid/widget/AbsListView;->mSemScrollRemains:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Landroid/widget/AbsListView;->mSemScrollAmount:I

    if-le v1, v2, :cond_3

    if-lez p1, :cond_2

    :goto_0
    iget v1, p0, Landroid/widget/AbsListView;->mSemScrollAmount:I

    if-le p1, v1, :cond_3

    iget-object v1, p0, Landroid/widget/AbsListView;->mSemScrollRemains:Ljava/util/LinkedList;

    iget v2, p0, Landroid/widget/AbsListView;->mSemScrollAmount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    iget v1, p0, Landroid/widget/AbsListView;->mSemScrollAmount:I

    sub-int/2addr p1, v1

    goto :goto_0

    :cond_2
    :goto_1
    iget v1, p0, Landroid/widget/AbsListView;->mSemScrollAmount:I

    neg-int v1, v1

    if-ge p1, v1, :cond_3

    iget-object v1, p0, Landroid/widget/AbsListView;->mSemScrollRemains:Ljava/util/LinkedList;

    iget v2, p0, Landroid/widget/AbsListView;->mSemScrollAmount:I

    neg-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    iget v1, p0, Landroid/widget/AbsListView;->mSemScrollAmount:I

    add-int/2addr p1, v1

    goto :goto_1

    :cond_3
    iget-object v1, p0, Landroid/widget/AbsListView;->mSemScrollRemains:Ljava/util/LinkedList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    if-eqz v0, :cond_4

    iget-object v1, p0, Landroid/widget/AbsListView;->mSemSmoothScrollByMove:Landroid/widget/AbsListView$SemSmoothScrollByMove;

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    :cond_4
    return-void
.end method

.method public whitelist semStartMultiChoiceMode()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    :cond_0
    return-void
.end method

.method greylist-max-o sendToTextFilter(IILandroid/view/KeyEvent;)Z
    .locals 10

    invoke-direct {p0}, Landroid/widget/AbsListView;->acceptFilter()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x1

    sparse-switch p1, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    iget-boolean v2, p0, Landroid/widget/AbsListView;->mFiltered:Z

    goto :goto_1

    :sswitch_1
    const/4 v2, 0x0

    goto :goto_1

    :sswitch_2
    iget-boolean v4, p0, Landroid/widget/AbsListView;->mFiltered:Z

    if-eqz v4, :cond_4

    iget-object v4, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v4, :cond_4

    iget-object v4, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4, p3, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    :cond_1
    const/4 v0, 0x1

    :cond_2
    goto :goto_0

    :cond_3
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-ne v4, v3, :cond_2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v4

    if-nez v4, :cond_4

    const/4 v0, 0x1

    iget-object v4, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    :goto_0
    const/4 v2, 0x0

    nop

    :goto_1
    if-eqz v2, :cond_c

    invoke-direct {p0, v3}, Landroid/widget/AbsListView;->createTextFilter(Z)V

    move-object v4, p3

    invoke-virtual {v4}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v5

    if-lez v5, :cond_5

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v5

    invoke-static {p3, v5, v6, v1}, Landroid/view/KeyEvent;->changeTimeRepeat(Landroid/view/KeyEvent;JI)Landroid/view/KeyEvent;

    move-result-object v4

    :cond_5
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    const/16 v6, 0x72

    const/16 v7, 0x71

    const/16 v8, 0x3c

    const/16 v9, 0x3b

    packed-switch v5, :pswitch_data_0

    goto :goto_4

    :pswitch_0
    iget-object v1, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v1, p1, p2, p3}, Landroid/widget/EditText;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_4

    :pswitch_1
    iget-object v3, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v3, p1, v4}, Landroid/widget/EditText;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eq p1, v9, :cond_8

    if-ne p1, v8, :cond_6

    goto :goto_2

    :cond_6
    if-eq p1, v7, :cond_7

    if-ne p1, v6, :cond_c

    :cond_7
    iput-boolean v1, p0, Landroid/widget/AbsListView;->mIsCtrlkeyPressed:Z

    goto :goto_4

    :cond_8
    :goto_2
    iput-boolean v1, p0, Landroid/widget/AbsListView;->mIsShiftkeyPressed:Z

    iput v1, p0, Landroid/widget/AbsListView;->mOldKeyCode:I

    iput v1, p0, Landroid/widget/AbsListView;->mCurrentKeyCode:I

    const/4 v1, -0x1

    iput v1, p0, Landroid/widget/AbsListView;->mFirstPressedPoint:I

    goto :goto_4

    :pswitch_2
    iget-object v1, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v1, p1, v4}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eq p1, v9, :cond_b

    if-ne p1, v8, :cond_9

    goto :goto_3

    :cond_9
    if-eq p1, v7, :cond_a

    if-ne p1, v6, :cond_c

    :cond_a
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mIsCtrlkeyPressed:Z

    goto :goto_4

    :cond_b
    :goto_3
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mIsShiftkeyPressed:Z

    :cond_c
    :goto_4
    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_2
        0x13 -> :sswitch_1
        0x14 -> :sswitch_1
        0x15 -> :sswitch_1
        0x16 -> :sswitch_1
        0x17 -> :sswitch_1
        0x3e -> :sswitch_0
        0x42 -> :sswitch_1
        0x6f -> :sswitch_2
        0xa0 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic whitelist setAdapter(Landroid/widget/Adapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public whitelist setAdapter(Landroid/widget/ListAdapter;)V
    .locals 1

    if-eqz p1, :cond_2

    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mAdapterHasStableIds:Z

    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mAdapterHasStableIds:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    :cond_0
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mSemEnableGoToTop:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Landroid/widget/AbsListView;->semPlayGotoToFadeOut()V

    invoke-direct {p0}, Landroid/widget/AbsListView;->initGoToTOP()V

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mSemAdapterChanged:Z

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mAppWidgetIndicator:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Landroid/widget/AbsListView;->initIndicator()V

    :cond_2
    invoke-virtual {p0}, Landroid/widget/AbsListView;->clearChoices()V

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mIsMultiFocusEnabled:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/AbsListView;->mSemPressItemListArray:Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroid/widget/AbsListView;->resetPressItemListArray()V

    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    iput v0, p0, Landroid/widget/AbsListView;->mOldAdapterItemCount:I

    :cond_3
    return-void
.end method

.method public whitelist setBottomEdgeEffectColor(I)V
    .locals 1

    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v0, p1}, Landroid/widget/EdgeEffect;->setColor(I)V

    invoke-direct {p0}, Landroid/widget/AbsListView;->invalidateEdgeEffects()V

    return-void
.end method

.method public whitelist setCacheColorHint(I)V
    .locals 3

    iget v0, p0, Landroid/widget/AbsListView;->mCacheColorHint:I

    if-eq p1, v0, :cond_1

    iput p1, p0, Landroid/widget/AbsListView;->mCacheColorHint:I

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v1, p1}, Landroid/widget/AbsListView$RecycleBin;->setCacheColorHint(I)V

    :cond_1
    return-void
.end method

.method public whitelist setChoiceMode(I)V
    .locals 5

    iput p1, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    iget-object v0, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    :cond_0
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-nez v0, :cond_1

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0, v2}, Landroid/util/SparseBooleanArray;-><init>(I)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    :cond_1
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0, v2}, Landroid/util/LongSparseArray;-><init>(I)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    :cond_2
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-ne v0, v1, :cond_3

    invoke-virtual {p0}, Landroid/widget/AbsListView;->clearChoices()V

    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->setLongClickable(Z)V

    :cond_3
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    const/4 v4, 0x2

    if-ne v0, v4, :cond_4

    iput-boolean v3, p0, Landroid/widget/AbsListView;->mIsDragBlockEnabled:Z

    goto :goto_0

    :cond_4
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-ne v0, v1, :cond_5

    iput-boolean v3, p0, Landroid/widget/AbsListView;->mIsDragBlockEnabled:Z

    goto :goto_0

    :cond_5
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-eqz v0, :cond_6

    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-ne v0, v3, :cond_7

    :cond_6
    iput-boolean v2, p0, Landroid/widget/AbsListView;->mIsDragBlockEnabled:Z

    :cond_7
    :goto_0
    return-void
.end method

.method public whitelist setDrawSelectorOnTop(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/AbsListView;->mDrawSelectorOnTop:Z

    return-void
.end method

.method public whitelist setEdgeEffectColor(I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->setTopEdgeEffectColor(I)V

    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->setBottomEdgeEffectColor(I)V

    return-void
.end method

.method public blacklist setEnableDoubleFling(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/AbsListView;->mDoubleFlingEnabled:Z

    return-void
.end method

.method public blacklist setEnableHoverDrawable(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/AbsListView;->mHoveringEnabled:Z

    return-void
.end method

.method public blacklist setEnablePaddingInHoverScroll(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/AbsListView;->mIsEnabledPaddingInHoverScroll:Z

    return-void
.end method

.method public whitelist setFastScrollAlwaysVisible(Z)V
    .locals 1

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFastScrollAlwaysVisible:Z

    if-eq v0, p1, :cond_2

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFastScrollEnabled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->setFastScrollEnabled(Z)V

    :cond_0
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mFastScrollAlwaysVisible:Z

    invoke-direct {p0}, Landroid/widget/AbsListView;->isOwnerThread()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->setFastScrollerAlwaysVisibleUiThread(Z)V

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/widget/AbsListView$2;

    invoke-direct {v0, p0, p1}, Landroid/widget/AbsListView$2;-><init>(Landroid/widget/AbsListView;Z)V

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public whitelist setFastScrollEnabled(Z)V
    .locals 1

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFastScrollEnabled:Z

    if-eq v0, p1, :cond_2

    iput-boolean p1, p0, Landroid/widget/AbsListView;->mFastScrollEnabled:Z

    invoke-direct {p0}, Landroid/widget/AbsListView;->isOwnerThread()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mSemFastScrollCustomEffectEnabled:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->semSetFastScrollEnabledUiThread(Z)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->setFastScrollerEnabledUiThread(Z)V

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/widget/AbsListView$1;

    invoke-direct {v0, p0, p1}, Landroid/widget/AbsListView$1;-><init>(Landroid/widget/AbsListView;Z)V

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public whitelist setFastScrollStyle(I)V
    .locals 1

    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    if-nez v0, :cond_0

    iput p1, p0, Landroid/widget/AbsListView;->mFastScrollStyle:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {v0, p1}, Landroid/widget/FastScroller;->setStyle(I)V

    :goto_0
    return-void
.end method

.method public blacklist setFastScrollTrackPadding(II)V
    .locals 0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isFastScrollEnabled()Z

    return-void
.end method

.method public whitelist setFilterText(Ljava/lang/String;)V
    .locals 2

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mTextFilterEnabled:Z

    if-eqz v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/AbsListView;->createTextFilter(Z)V

    iget-object v0, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v0, v0, Landroid/widget/Filterable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v0, Landroid/widget/Filterable;

    invoke-interface {v0}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mFiltered:Z

    iget-object v0, p0, Landroid/widget/AbsListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-virtual {v0}, Landroid/widget/AbsListView$AdapterDataSetObserver;->clearSavedState()V

    :cond_1
    return-void
.end method

.method public blacklist setForcedClick(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/AbsListView;->mForcedClick:Z

    return-void
.end method

.method protected greylist-max-o setFrame(IIII)Z
    .locals 3

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AdapterView;->setFrame(IIII)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWindowVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-boolean v2, p0, Landroid/widget/AbsListView;->mFiltered:Z

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    iget-object v2, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0}, Landroid/widget/AbsListView;->positionPopup()V

    :cond_1
    return v0
.end method

.method public whitelist setFriction(F)V
    .locals 1

    iget-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/AbsListView$FlingRunnable;

    invoke-direct {v0, p0}, Landroid/widget/AbsListView$FlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-static {v0}, Landroid/widget/AbsListView$FlingRunnable;->-$$Nest$fgetmScroller(Landroid/widget/AbsListView$FlingRunnable;)Landroid/widget/OverScroller;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/OverScroller;->setFriction(F)V

    return-void
.end method

.method public whitelist setItemChecked(IZ)V
    .locals 11

    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x3

    if-eqz p2, :cond_2

    iget v1, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-ne v1, v0, :cond_2

    iget-object v1, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-nez v1, :cond_2

    iget-object v1, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    invoke-virtual {v1}, Landroid/widget/AbsListView$MultiChoiceModeWrapper;->hasWrappedCallback()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "AbsListView: attempted to start selection mode for CHOICE_MODE_MULTIPLE_MODAL but no choice mode callback was supplied. Call setMultiChoiceModeListener to set a callback."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    iget v1, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v1, v2, :cond_b

    iget v1, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-ne v1, v0, :cond_3

    goto :goto_3

    :cond_3
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v4

    goto :goto_1

    :cond_4
    move v0, v3

    :goto_1
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->isItemChecked(I)Z

    move-result v1

    if-eq v1, p2, :cond_5

    move v1, v4

    goto :goto_2

    :cond_5
    move v1, v3

    :goto_2
    if-nez p2, :cond_6

    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->isItemChecked(I)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_6
    iget-object v2, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->clear()V

    if-eqz v0, :cond_7

    iget-object v2, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v2}, Landroid/util/LongSparseArray;->clear()V

    :cond_7
    if-eqz p2, :cond_9

    iget-object v2, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p1, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    if-eqz v0, :cond_8

    iget-object v2, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v3, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v5, v6, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    :cond_8
    iput v4, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    goto/16 :goto_6

    :cond_9
    iget-object v2, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v3}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v2

    if-nez v2, :cond_12

    :cond_a
    iput v3, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    goto :goto_6

    :cond_b
    :goto_3
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v1, :cond_d

    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v1

    if-eqz v1, :cond_d

    if-eqz p2, :cond_c

    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v5, v6, v2}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_4

    :cond_c
    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Landroid/util/LongSparseArray;->delete(J)V

    :cond_d
    :goto_4
    if-eq v0, p2, :cond_e

    move v3, v4

    :cond_e
    move v1, v3

    if-eqz v1, :cond_10

    if-eqz p2, :cond_f

    iget v2, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    add-int/2addr v2, v4

    iput v2, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    goto :goto_5

    :cond_f
    iget v2, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    sub-int/2addr v2, v4

    iput v2, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    :cond_10
    :goto_5
    iget-object v2, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v2, :cond_11

    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    iget-object v5, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    iget-object v6, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    move v7, p1

    move-wide v8, v2

    move v10, p2

    invoke-virtual/range {v5 .. v10}, Landroid/widget/AbsListView$MultiChoiceModeWrapper;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    :cond_11
    nop

    :cond_12
    :goto_6
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mInLayout:Z

    if-nez v0, :cond_14

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mBlockLayoutRequests:Z

    if-nez v0, :cond_14

    if-eqz v1, :cond_14

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mForcedClick:Z

    if-nez v0, :cond_13

    iput-boolean v4, p0, Landroid/widget/AbsListView;->mDataChanged:Z

    :cond_13
    invoke-virtual {p0}, Landroid/widget/AbsListView;->rememberSyncState()V

    invoke-virtual {p0}, Landroid/widget/AbsListView;->requestLayout()V

    :cond_14
    return-void
.end method

.method public whitelist setMultiChoiceModeListener(Landroid/widget/AbsListView$MultiChoiceModeListener;)V
    .locals 1

    iget-object v0, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    invoke-direct {v0, p0}, Landroid/widget/AbsListView$MultiChoiceModeWrapper;-><init>(Landroid/widget/AbsListView;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    invoke-virtual {v0, p1}, Landroid/widget/AbsListView$MultiChoiceModeWrapper;->setWrapped(Landroid/widget/AbsListView$MultiChoiceModeListener;)V

    return-void
.end method

.method public blacklist setMultiFocusListItem(II)V
    .locals 1

    iget-object v0, p0, Landroid/widget/AbsListView;->mSemPressItemListArray:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resetPressItemListArray()V

    invoke-direct {p0, p1, p2}, Landroid/widget/AbsListView;->addToPressItemListArray(II)V

    return-void
.end method

.method public whitelist setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {p0}, Landroid/widget/AbsListView;->invokeOnItemScrollListener()V

    return-void
.end method

.method public blacklist setOnScrollOffsetListener(Landroid/widget/AbsListView$OnScrollOffsetListener;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/AbsListView;->mOnScrollOffsetListener:Landroid/widget/AbsListView$OnScrollOffsetListener;

    return-void
.end method

.method public blacklist setOverScrollEffectPadding(II)V
    .locals 0

    return-void
.end method

.method public whitelist setRecyclerListener(Landroid/widget/AbsListView$RecyclerListener;)V
    .locals 1

    iget-object v0, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-static {v0, p1}, Landroid/widget/AbsListView$RecycleBin;->-$$Nest$fputmRecyclerListener(Landroid/widget/AbsListView$RecycleBin;Landroid/widget/AbsListView$RecyclerListener;)V

    return-void
.end method

.method public whitelist setRemoteViewsAdapter(Landroid/content/Intent;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/widget/AbsListView;->setRemoteViewsAdapter(Landroid/content/Intent;Z)V

    return-void
.end method

.method public greylist-max-o setRemoteViewsAdapter(Landroid/content/Intent;Z)V
    .locals 4

    iget-object v0, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    const-string v1, "AbsListView"

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent$FilterComparison;

    invoke-direct {v0, p1}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    new-instance v2, Landroid/content/Intent$FilterComparison;

    iget-object v3, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v3}, Landroid/widget/RemoteViewsAdapter;->getRemoteViewsServiceIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent$FilterComparison;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "Equals previous remoteAadpter"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mAllowDeferNotifyAfterRemoteViewsAdapterSet:Z

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mDeferNotifyDataSetChanged:Z

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mDeferNotifyDataSetChanged:Z

    if-eqz v0, :cond_1

    const-string v0, "AppWidget deferNotify enabled"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    new-instance v0, Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1, p0, p2}, Landroid/widget/RemoteViewsAdapter;-><init>(Landroid/content/Context;Landroid/content/Intent;Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;Z)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    iget-object v0, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v0}, Landroid/widget/RemoteViewsAdapter;->isDataReady()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_2
    return-void
.end method

.method public greylist-max-o setRemoteViewsAdapterAsync(Landroid/content/Intent;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Landroid/widget/RemoteViewsAdapter$AsyncRemoteAdapterAction;

    invoke-direct {v0, p0, p1}, Landroid/widget/RemoteViewsAdapter$AsyncRemoteAdapterAction;-><init>(Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;Landroid/content/Intent;)V

    return-object v0
.end method

.method public blacklist setRemoteViewsInteractionHandler(Landroid/widget/RemoteViews$InteractionHandler;)V
    .locals 1

    iget-object v0, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/RemoteViewsAdapter;->setRemoteViewsInteractionHandler(Landroid/widget/RemoteViews$InteractionHandler;)V

    :cond_0
    return-void
.end method

.method public whitelist setScrollBarStyle(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/AdapterView;->setScrollBarStyle(I)V

    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {v0, p1}, Landroid/widget/FastScroller;->setScrollBarStyle(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mSemFastScroll:Landroid/widget/SemFastScroller;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/AbsListView;->mSemFastScroll:Landroid/widget/SemFastScroller;

    invoke-virtual {v0, p1}, Landroid/widget/SemFastScroller;->setScrollBarStyle(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public whitelist setScrollIndicators(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/AbsListView;->mScrollUp:Landroid/view/View;

    iput-object p2, p0, Landroid/widget/AbsListView;->mScrollDown:Landroid/view/View;

    return-void
.end method

.method public whitelist setScrollingCacheEnabled(Z)V
    .locals 1

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mScrollingCacheEnabled:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    invoke-direct {p0}, Landroid/widget/AbsListView;->clearScrollingCache()V

    :cond_0
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mScrollingCacheEnabled:Z

    return-void
.end method

.method public whitelist setSelectedChildViewEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/AbsListView;->mIsChildViewEnabled:Z

    return-void
.end method

.method public blacklist setSelectionForcely(I)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mIsForceSelection:Z

    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->setSelection(I)V

    return-void
.end method

.method public whitelist setSelectionFromTop(II)V
    .locals 2

    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iput-boolean v1, p0, Landroid/widget/AbsListView;->mDeferSetSelectionFromTop:Z

    iput p1, p0, Landroid/widget/AbsListView;->mDeferSetSelectionPosition:I

    return-void

    :cond_0
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mAppWidgetSnapScroll:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1, v1}, Landroid/widget/AbsListView;->semSendBroadcastPosition(II)V

    :cond_1
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mAppWidgetIndicator:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->semInvalidateIndicator(I)V

    :cond_2
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mSemEnableGoToTop:Z

    if-eqz v0, :cond_3

    invoke-direct {p0}, Landroid/widget/AbsListView;->canScrollUp()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Landroid/widget/AbsListView;->mSemGoToTopState:I

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Landroid/widget/AbsListView;->mSemGoToToFadeOutRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->semSetupGoToTop(I)V

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->semAutoHide(I)V

    :cond_3
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0, p1, v1}, Landroid/widget/AbsListView;->lookForSelectablePosition(IZ)I

    move-result p1

    if-ltz p1, :cond_5

    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->setNextSelectedPositionInt(I)V

    goto :goto_0

    :cond_4
    iput p1, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    :cond_5
    :goto_0
    if-ltz p1, :cond_8

    const/4 v0, 0x4

    iput v0, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    iget-object v0, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, p2

    iput v0, p0, Landroid/widget/AbsListView;->mSpecificTop:I

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mNeedSync:Z

    if-eqz v0, :cond_6

    iput p1, p0, Landroid/widget/AbsListView;->mSyncPosition:I

    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/AbsListView;->mSyncRowId:J

    :cond_6
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {v0}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    :cond_7
    invoke-virtual {p0}, Landroid/widget/AbsListView;->requestLayout()V

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mAppWidgetSnapScroll:Z

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mNeedLayoutSpecificDone:Z

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mIsLayoutSpecificDone:Z

    :cond_8
    return-void
.end method

.method abstract greylist-max-o setSelectionInt(I)V
.end method

.method public whitelist setSelector(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public whitelist setSelector(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    iget-object v0, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iget-object v0, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iput-object p1, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iput v1, p0, Landroid/widget/AbsListView;->mSelectionLeftPadding:I

    iget v1, v0, Landroid/graphics/Rect;->top:I

    iput v1, p0, Landroid/widget/AbsListView;->mSelectionTopPadding:I

    iget v1, v0, Landroid/graphics/Rect;->right:I

    iput v1, p0, Landroid/widget/AbsListView;->mSelectionRightPadding:I

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iput v1, p0, Landroid/widget/AbsListView;->mSelectionBottomPadding:I

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    invoke-virtual {p0}, Landroid/widget/AbsListView;->updateSelectorState()V

    return-void
.end method

.method public whitelist setSmoothScrollbarEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/AbsListView;->mSmoothScrollbarEnabled:Z

    return-void
.end method

.method public whitelist setStackFromBottom(Z)V
    .locals 1

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    invoke-virtual {p0}, Landroid/widget/AbsListView;->requestLayoutIfNecessary()V

    :cond_0
    return-void
.end method

.method public blacklist setSweepListAnimator(Lcom/samsung/android/animation/SemSweepListAnimator;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/AbsListView;->mSweepListAnimator:Lcom/samsung/android/animation/SemSweepListAnimator;

    return-void
.end method

.method public whitelist setTextFilterEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/AbsListView;->mTextFilterEnabled:Z

    return-void
.end method

.method public whitelist setTopEdgeEffectColor(I)V
    .locals 1

    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v0, p1}, Landroid/widget/EdgeEffect;->setColor(I)V

    invoke-direct {p0}, Landroid/widget/AbsListView;->invalidateEdgeEffects()V

    return-void
.end method

.method public blacklist setTouchSlop(I)V
    .locals 0

    iput p1, p0, Landroid/widget/AbsListView;->mTouchSlop:I

    return-void
.end method

.method public whitelist setTranscriptMode(I)V
    .locals 0

    iput p1, p0, Landroid/widget/AbsListView;->mTranscriptMode:I

    return-void
.end method

.method public whitelist setVelocityScale(F)V
    .locals 0

    iput p1, p0, Landroid/widget/AbsListView;->mVelocityScale:F

    return-void
.end method

.method public whitelist setVerticalScrollbarPosition(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/AdapterView;->setVerticalScrollbarPosition(I)V

    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {v0, p1}, Landroid/widget/FastScroller;->setScrollbarPosition(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mSemFastScroll:Landroid/widget/SemFastScroller;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/AbsListView;->mSemFastScroll:Landroid/widget/SemFastScroller;

    invoke-virtual {v0, p1}, Landroid/widget/SemFastScroller;->setScrollbarPosition(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method greylist-max-o setVisibleRangeHint(II)V
    .locals 1

    iget-object v0, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v0, p1, p2}, Landroid/widget/RemoteViewsAdapter;->setVisibleRangeHint(II)V

    :cond_0
    return-void
.end method

.method public final blacklist shouldDrawSelector()Z
    .locals 1

    iget-object v0, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method greylist-max-o shouldShowSelector()Z
    .locals 1

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsListView;->touchModeDrawsInPressedState()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist showContextMenu()Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v0, v1}, Landroid/widget/AbsListView;->showContextMenuInternal(FFZ)Z

    move-result v0

    return v0
.end method

.method public whitelist showContextMenu(FF)Z
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/AbsListView;->showContextMenuInternal(FFZ)Z

    move-result v0

    return v0
.end method

.method public whitelist showContextMenuForChild(Landroid/view/View;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isShowingContextMenuWithCoords()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0, v1}, Landroid/widget/AbsListView;->showContextMenuForChildInternal(Landroid/view/View;FFZ)Z

    move-result v0

    return v0
.end method

.method public whitelist showContextMenuForChild(Landroid/view/View;FF)Z
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/AbsListView;->showContextMenuForChildInternal(Landroid/view/View;FFZ)Z

    move-result v0

    return v0
.end method

.method public whitelist smoothScrollBy(II)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v0}, Landroid/widget/AbsListView;->smoothScrollBy(IIZZ)V

    return-void
.end method

.method greylist smoothScrollBy(IIZZ)V
    .locals 8

    iget-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/AbsListView$FlingRunnable;

    invoke-direct {v0, p0}, Landroid/widget/AbsListView$FlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    :cond_0
    iget v0, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    add-int v2, v0, v1

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getPaddingTop()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    const/4 v5, 0x0

    if-eqz p1, :cond_3

    iget v6, p0, Landroid/widget/AbsListView;->mItemCount:I

    if-eqz v6, :cond_3

    if-eqz v1, :cond_3

    if-nez v0, :cond_1

    invoke-virtual {p0, v5}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v6

    if-ne v6, v3, :cond_1

    if-ltz p1, :cond_3

    :cond_1
    iget v6, p0, Landroid/widget/AbsListView;->mItemCount:I

    if-ne v2, v6, :cond_2

    add-int/lit8 v6, v1, -0x1

    invoke-virtual {p0, v6}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v6

    if-ne v6, v4, :cond_2

    if-lez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v6, 0x2

    invoke-virtual {p0, v6}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    iget-object v6, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {v6, p1, p2, p3, p4}, Landroid/widget/AbsListView$FlingRunnable;->startScroll(IIZZ)V

    goto :goto_1

    :cond_3
    :goto_0
    iget-object v6, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {v6}, Landroid/widget/AbsListView$FlingRunnable;->endFling()V

    iget-object v6, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-eqz v6, :cond_4

    iget-object v6, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {v6}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    :cond_4
    :goto_1
    invoke-direct {p0}, Landroid/widget/AbsListView;->semIsSupportGotoTop()Z

    move-result v6

    if-eqz v6, :cond_6

    iget-boolean v6, p0, Landroid/widget/AbsListView;->mSemCanGoFuther:Z

    if-eqz v6, :cond_6

    iget v6, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    if-nez v6, :cond_6

    invoke-direct {p0}, Landroid/widget/AbsListView;->canScrollUp()Z

    move-result v6

    if-nez v6, :cond_6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " re calculate done2 mPositionScroller = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "AbsListView"

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v5, p0, Landroid/widget/AbsListView;->mSemCanGoFuther:Z

    iget-object v5, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {v5}, Landroid/widget/AbsListView$FlingRunnable;->endFling()V

    iget-object v5, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-eqz v5, :cond_5

    iget-object v5, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {v5}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    :cond_5
    iget-boolean v5, p0, Landroid/widget/AbsListView;->mGoToToping:Z

    if-eqz v5, :cond_6

    iget-object v5, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/widget/EdgeEffect;->setSize(II)V

    iget-object v5, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    const/16 v6, 0x2710

    invoke-virtual {v5, v6}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidate()V

    :cond_6
    return-void
.end method

.method greylist-max-o smoothScrollByOffset(I)V
    .locals 9

    const/4 v0, -0x1

    if-gez p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v0

    goto :goto_0

    :cond_0
    if-lez p1, :cond_1

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v0

    :cond_1
    :goto_0
    const/4 v1, -0x1

    if-le v0, v1, :cond_4

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v1

    sub-int v1, v0, v1

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_4

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v4

    mul-int/2addr v3, v4

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v5

    mul-int/2addr v4, v5

    int-to-float v5, v4

    int-to-float v6, v3

    div-float/2addr v5, v6

    const/high16 v6, 0x3f400000    # 0.75f

    const/high16 v7, 0x3f400000    # 0.75f

    if-gez p1, :cond_2

    cmpg-float v8, v5, v7

    if-gez v8, :cond_2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    if-lez p1, :cond_3

    cmpg-float v7, v5, v7

    if-gez v7, :cond_3

    add-int/lit8 v0, v0, -0x1

    :cond_3
    :goto_1
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getCount()I

    move-result v3

    add-int v4, v0, p1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->smoothScrollToPosition(I)V

    :cond_4
    return-void
.end method

.method public whitelist smoothScrollToPosition(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/widget/AbsListView;->semSendBroadcastPosition(II)V

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mAppWidgetIndicator:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->semInvalidateIndicator(I)V

    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/AbsListView;->createPositionScroller()Landroid/widget/AbsListView$AbsPositionScroller;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    :cond_1
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {v0, p1}, Landroid/widget/AbsListView$AbsPositionScroller;->start(I)V

    return-void
.end method

.method public whitelist smoothScrollToPosition(II)V
    .locals 1

    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->createPositionScroller()Landroid/widget/AbsListView$AbsPositionScroller;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {v0, p1, p2}, Landroid/widget/AbsListView$AbsPositionScroller;->start(II)V

    return-void
.end method

.method public whitelist smoothScrollToPositionFromTop(II)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/widget/AbsListView;->semSendBroadcastPosition(II)V

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mAppWidgetIndicator:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->semInvalidateIndicator(I)V

    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/AbsListView;->createPositionScroller()Landroid/widget/AbsListView$AbsPositionScroller;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    :cond_1
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {v0, p1, p2}, Landroid/widget/AbsListView$AbsPositionScroller;->startWithOffset(II)V

    return-void
.end method

.method public whitelist smoothScrollToPositionFromTop(III)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/widget/AbsListView;->semSendBroadcastPosition(II)V

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mAppWidgetIndicator:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->semInvalidateIndicator(I)V

    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/AbsListView;->createPositionScroller()Landroid/widget/AbsListView$AbsPositionScroller;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    :cond_1
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {v0, p1, p2, p3}, Landroid/widget/AbsListView$AbsPositionScroller;->startWithOffset(III)V

    return-void
.end method

.method greylist-max-o touchModeDrawsInPressedState()Z
    .locals 1

    iget v0, p0, Landroid/widget/AbsListView;->mTouchMode:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    return v0

    :pswitch_0
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method greylist-max-p trackMotionScroll(II)Z
    .locals 25

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_0

    return v4

    :cond_0
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v6

    add-int/lit8 v7, v3, -0x1

    invoke-virtual {v0, v7}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v7

    iget-object v8, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget v11, v0, Landroid/widget/AbsListView;->mGroupFlags:I

    const/16 v12, 0x22

    and-int/2addr v11, v12

    if-ne v11, v12, :cond_1

    iget v9, v8, Landroid/graphics/Rect;->top:I

    iget v10, v8, Landroid/graphics/Rect;->bottom:I

    :cond_1
    sub-int v11, v9, v6

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v13

    sub-int/2addr v13, v10

    sub-int v14, v7, v13

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v15

    iget v5, v0, Landroid/widget/AbsListView;->mPaddingBottom:I

    sub-int/2addr v15, v5

    iget v5, v0, Landroid/widget/AbsListView;->mPaddingTop:I

    sub-int/2addr v15, v5

    if-gez v1, :cond_2

    add-int/lit8 v5, v15, -0x1

    neg-int v5, v5

    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_0

    :cond_2
    add-int/lit8 v5, v15, -0x1

    invoke-static {v5, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    :goto_0
    if-gez v2, :cond_3

    add-int/lit8 v5, v15, -0x1

    neg-int v5, v5

    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_1

    :cond_3
    add-int/lit8 v5, v15, -0x1

    invoke-static {v5, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    :goto_1
    iget v5, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    if-nez v5, :cond_4

    iget v4, v8, Landroid/graphics/Rect;->top:I

    sub-int v4, v6, v4

    iput v4, v0, Landroid/widget/AbsListView;->mFirstPositionDistanceGuess:I

    goto :goto_2

    :cond_4
    iget v4, v0, Landroid/widget/AbsListView;->mFirstPositionDistanceGuess:I

    add-int/2addr v4, v2

    iput v4, v0, Landroid/widget/AbsListView;->mFirstPositionDistanceGuess:I

    :goto_2
    add-int v4, v5, v3

    iget v12, v0, Landroid/widget/AbsListView;->mItemCount:I

    if-ne v4, v12, :cond_5

    iget v4, v8, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v7

    iput v4, v0, Landroid/widget/AbsListView;->mLastPositionDistanceGuess:I

    goto :goto_3

    :cond_5
    iget v4, v0, Landroid/widget/AbsListView;->mLastPositionDistanceGuess:I

    add-int/2addr v4, v2

    iput v4, v0, Landroid/widget/AbsListView;->mLastPositionDistanceGuess:I

    :goto_3
    if-nez v5, :cond_6

    iget v4, v8, Landroid/graphics/Rect;->top:I

    if-lt v6, v4, :cond_6

    if-ltz v2, :cond_6

    const/4 v4, 0x1

    goto :goto_4

    :cond_6
    const/4 v4, 0x0

    :goto_4
    add-int v12, v5, v3

    move/from16 v17, v6

    iget v6, v0, Landroid/widget/AbsListView;->mItemCount:I

    if-ne v12, v6, :cond_7

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v6

    iget v12, v8, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v12

    if-gt v7, v6, :cond_7

    if-gtz v2, :cond_7

    const/4 v6, 0x1

    goto :goto_5

    :cond_7
    const/4 v6, 0x0

    :goto_5
    if-nez v4, :cond_25

    if-eqz v6, :cond_8

    move/from16 v16, v3

    move/from16 p1, v4

    move/from16 p2, v6

    move/from16 v21, v7

    move/from16 v22, v9

    move/from16 v23, v10

    move/from16 v24, v13

    const/4 v3, 0x1

    const/4 v4, 0x0

    goto/16 :goto_13

    :cond_8
    if-gez v2, :cond_9

    const/4 v12, 0x1

    goto :goto_6

    :cond_9
    const/4 v12, 0x0

    :goto_6
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->isInTouchMode()Z

    move-result v18

    if-eqz v18, :cond_a

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->hideSelector()V

    :cond_a
    move/from16 p1, v4

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeaderViewsCount()I

    move-result v4

    move/from16 p2, v6

    iget v6, v0, Landroid/widget/AbsListView;->mItemCount:I

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getFooterViewsCount()I

    move-result v19

    sub-int v6, v6, v19

    const/16 v19, 0x0

    const/16 v20, 0x0

    if-eqz v12, :cond_f

    move/from16 v21, v7

    neg-int v7, v2

    move/from16 v22, v9

    iget v9, v0, Landroid/widget/AbsListView;->mGroupFlags:I

    move/from16 v23, v10

    const/16 v10, 0x22

    and-int/2addr v9, v10

    if-ne v9, v10, :cond_b

    iget v9, v8, Landroid/graphics/Rect;->top:I

    add-int/2addr v7, v9

    :cond_b
    const/4 v9, 0x0

    :goto_7
    if-ge v9, v3, :cond_e

    invoke-virtual {v0, v9}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    move/from16 v24, v13

    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v13

    if-lt v13, v7, :cond_c

    goto :goto_9

    :cond_c
    add-int/lit8 v20, v20, 0x1

    add-int v13, v5, v9

    invoke-virtual {v10}, Landroid/view/View;->clearAccessibilityFocus()V

    if-lt v13, v4, :cond_d

    if-ge v13, v6, :cond_d

    move/from16 v16, v7

    iget-object v7, v0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v7, v10, v13}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    goto :goto_8

    :cond_d
    move/from16 v16, v7

    :goto_8
    add-int/lit8 v9, v9, 0x1

    move/from16 v7, v16

    move/from16 v13, v24

    goto :goto_7

    :cond_e
    move/from16 v16, v7

    move/from16 v24, v13

    :goto_9
    move/from16 v16, v3

    move/from16 v3, v19

    move/from16 v7, v20

    goto :goto_d

    :cond_f
    move/from16 v21, v7

    move/from16 v22, v9

    move/from16 v23, v10

    move/from16 v24, v13

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v7

    sub-int/2addr v7, v2

    iget v9, v0, Landroid/widget/AbsListView;->mGroupFlags:I

    const/16 v10, 0x22

    and-int/2addr v9, v10

    if-ne v9, v10, :cond_10

    iget v9, v8, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v9

    :cond_10
    add-int/lit8 v9, v3, -0x1

    :goto_a
    if-ltz v9, :cond_13

    invoke-virtual {v0, v9}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v13

    if-gt v13, v7, :cond_11

    move/from16 v16, v3

    goto :goto_c

    :cond_11
    move/from16 v19, v9

    add-int/lit8 v20, v20, 0x1

    add-int v13, v5, v9

    invoke-virtual {v10}, Landroid/view/View;->clearAccessibilityFocus()V

    if-lt v13, v4, :cond_12

    if-ge v13, v6, :cond_12

    move/from16 v16, v3

    iget-object v3, v0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v3, v10, v13}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    goto :goto_b

    :cond_12
    move/from16 v16, v3

    :goto_b
    add-int/lit8 v9, v9, -0x1

    move/from16 v3, v16

    goto :goto_a

    :cond_13
    move/from16 v16, v3

    :goto_c
    move/from16 v3, v19

    move/from16 v7, v20

    :goto_d
    iget v9, v0, Landroid/widget/AbsListView;->mMotionViewOriginalTop:I

    add-int/2addr v9, v1

    iput v9, v0, Landroid/widget/AbsListView;->mMotionViewNewTop:I

    const/4 v9, 0x1

    iput-boolean v9, v0, Landroid/widget/AbsListView;->mBlockLayoutRequests:Z

    if-lez v7, :cond_14

    invoke-virtual {v0, v3, v7}, Landroid/widget/AbsListView;->detachViewsFromParent(II)V

    iget-object v9, v0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v9}, Landroid/widget/AbsListView$RecycleBin;->removeSkippedScrap()V

    :cond_14
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->awakenScrollBars()Z

    move-result v9

    if-nez v9, :cond_15

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->invalidate()V

    :cond_15
    invoke-virtual {v0, v2}, Landroid/widget/AbsListView;->offsetChildrenTopAndBottom(I)V

    iget-boolean v9, v0, Landroid/widget/AbsListView;->mAppWidgetImmersiveEnalbed:Z

    if-eqz v9, :cond_16

    iget-object v9, v0, Landroid/widget/AbsListView;->mOnScrollOffsetListener:Landroid/widget/AbsListView$OnScrollOffsetListener;

    if-eqz v9, :cond_16

    iget-object v9, v0, Landroid/widget/AbsListView;->mOnScrollOffsetListener:Landroid/widget/AbsListView$OnScrollOffsetListener;

    invoke-interface {v9, v0, v2}, Landroid/widget/AbsListView$OnScrollOffsetListener;->onScrollOffsetChanged(Landroid/widget/AbsListView;I)V

    :cond_16
    if-eqz v12, :cond_17

    iget v9, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    add-int/2addr v9, v7

    iput v9, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    :cond_17
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v9

    if-lt v11, v9, :cond_18

    if-ge v14, v9, :cond_19

    :cond_18
    invoke-virtual {v0, v12}, Landroid/widget/AbsListView;->fillGap(Z)V

    :cond_19
    iget-object v10, v0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v10}, Landroid/widget/AbsListView$RecycleBin;->fullyDetachScrapViews()V

    const/4 v10, 0x0

    const/4 v13, -0x1

    if-nez v18, :cond_1c

    move/from16 v19, v3

    iget v3, v0, Landroid/widget/AbsListView;->mSelectedPosition:I

    if-eq v3, v13, :cond_1b

    iget v3, v0, Landroid/widget/AbsListView;->mSelectedPosition:I

    iget v13, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int/2addr v3, v13

    if-ltz v3, :cond_1a

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v13

    if-ge v3, v13, :cond_1a

    iget v13, v0, Landroid/widget/AbsListView;->mSelectedPosition:I

    move/from16 v20, v4

    invoke-virtual {v0, v3}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v0, v13, v4}, Landroid/widget/AbsListView;->positionSelector(ILandroid/view/View;)V

    const/4 v10, 0x1

    goto :goto_e

    :cond_1a
    move/from16 v20, v4

    :goto_e
    goto/16 :goto_11

    :cond_1b
    move/from16 v20, v4

    goto :goto_f

    :cond_1c
    move/from16 v19, v3

    move/from16 v20, v4

    :goto_f
    iget-boolean v3, v0, Landroid/widget/AbsListView;->mIsMouseHoverScroll:Z

    if-eqz v3, :cond_1e

    iget v3, v0, Landroid/widget/AbsListView;->mSelectorPosition:I

    if-eq v3, v13, :cond_1e

    iget v3, v0, Landroid/widget/AbsListView;->mIsMouseHoverScrollX:I

    iget v4, v0, Landroid/widget/AbsListView;->mIsMouseHoverScrollY:I

    invoke-virtual {v0, v3, v4}, Landroid/widget/AbsListView;->pointToPosition(II)I

    move-result v3

    iput v3, v0, Landroid/widget/AbsListView;->mSelectorPosition:I

    iget v3, v0, Landroid/widget/AbsListView;->mSelectorPosition:I

    iget v4, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int/2addr v3, v4

    iget v4, v0, Landroid/widget/AbsListView;->mSelectorPosition:I

    if-eq v4, v13, :cond_1f

    if-ltz v3, :cond_1d

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_1d

    iget-object v4, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    iget v13, v0, Landroid/widget/AbsListView;->mSelectorPosition:I

    invoke-interface {v4, v13}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_1d

    invoke-virtual {v0, v3}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    const/4 v13, -0x1

    invoke-virtual {v0, v13, v4}, Landroid/widget/AbsListView;->positionSelector(ILandroid/view/View;)V

    goto :goto_10

    :cond_1d
    if-ltz v3, :cond_1f

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_1f

    iget-object v4, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    iget v13, v0, Landroid/widget/AbsListView;->mSelectorPosition:I

    invoke-interface {v4, v13}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v4

    if-nez v4, :cond_1f

    iget-object v4, v0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_10

    :cond_1e
    iget v3, v0, Landroid/widget/AbsListView;->mSelectorPosition:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1f

    iget v3, v0, Landroid/widget/AbsListView;->mSelectorPosition:I

    iget v4, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int/2addr v3, v4

    if-ltz v3, :cond_20

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_20

    iget v4, v0, Landroid/widget/AbsListView;->mSelectorPosition:I

    invoke-virtual {v0, v3}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v0, v4, v13}, Landroid/widget/AbsListView;->positionSelector(ILandroid/view/View;)V

    const/4 v10, 0x1

    goto :goto_11

    :cond_1f
    :goto_10
    nop

    :cond_20
    :goto_11
    if-nez v10, :cond_21

    iget-object v3, v0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->setEmpty()V

    :cond_21
    const/4 v3, 0x0

    iput-boolean v3, v0, Landroid/widget/AbsListView;->mBlockLayoutRequests:Z

    iget-boolean v3, v0, Landroid/widget/AbsListView;->mAppWidgetImmersiveEnalbed:Z

    if-eqz v3, :cond_23

    if-ltz v1, :cond_22

    iget-boolean v3, v0, Landroid/widget/AbsListView;->mSemEnableGoToTop:Z

    if-eqz v3, :cond_24

    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->canScrollUp()Z

    move-result v3

    if-eqz v3, :cond_24

    iget v3, v0, Landroid/widget/AbsListView;->mSemGoToTopState:I

    if-nez v3, :cond_24

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/widget/AbsListView;->semSetupGoToTop(I)V

    invoke-virtual {v0, v3}, Landroid/widget/AbsListView;->semAutoHide(I)V

    goto :goto_12

    :cond_22
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/AbsListView;->semSetupGoToTop(I)V

    goto :goto_12

    :cond_23
    iget-boolean v3, v0, Landroid/widget/AbsListView;->mSemEnableGoToTop:Z

    if-eqz v3, :cond_24

    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->canScrollUp()Z

    move-result v3

    if-eqz v3, :cond_24

    iget v3, v0, Landroid/widget/AbsListView;->mSemGoToTopState:I

    if-nez v3, :cond_24

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/widget/AbsListView;->semSetupGoToTop(I)V

    invoke-virtual {v0, v3}, Landroid/widget/AbsListView;->semAutoHide(I)V

    :cond_24
    :goto_12
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->invokeOnItemScrollListener()V

    const/4 v4, 0x0

    return v4

    :cond_25
    move/from16 v16, v3

    move/from16 p1, v4

    move/from16 p2, v6

    move/from16 v21, v7

    move/from16 v22, v9

    move/from16 v23, v10

    move/from16 v24, v13

    const/4 v3, 0x1

    const/4 v4, 0x0

    :goto_13
    if-eqz v2, :cond_26

    move v4, v3

    :cond_26
    return v4
.end method

.method blacklist triggerDoubleFling(I)V
    .locals 4

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    if-lez p1, :cond_1

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v2

    mul-int/lit8 v3, v1, 0x2

    if-le v2, v3, :cond_0

    mul-int/lit8 v2, v1, 0x2

    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->setSelection(I)V

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->smoothScrollToPosition(I)V

    goto :goto_0

    :cond_1
    if-gez p1, :cond_3

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v3

    sub-int/2addr v2, v3

    mul-int/lit8 v3, v1, 0x3

    if-le v2, v3, :cond_2

    add-int/lit8 v2, v0, -0x1

    mul-int/lit8 v3, v1, 0x3

    sub-int/2addr v2, v3

    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->setSelection(I)V

    :cond_2
    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->smoothScrollToPosition(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public blacklist triggerJumpScrollToTop()V
    .locals 1

    sget v0, Landroid/widget/AbsListView;->JUMP_SCROLL_TO_TOP_INITIATED:I

    iput v0, p0, Landroid/widget/AbsListView;->mJumpScrollToTopState:I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->triggerDoubleFling(I)V

    return-void
.end method

.method public blacklist updateCustomEdgeGlow(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    return-void
.end method

.method greylist-max-o updateScrollIndicators()V
    .locals 4

    iget-object v0, p0, Landroid/widget/AbsListView;->mScrollUp:Landroid/view/View;

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/AbsListView;->mScrollUp:Landroid/view/View;

    invoke-direct {p0}, Landroid/widget/AbsListView;->canScrollUp()Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Landroid/widget/AbsListView;->mScrollDown:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/widget/AbsListView;->mScrollDown:Landroid/view/View;

    invoke-direct {p0}, Landroid/widget/AbsListView;->canScrollDown()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    return-void
.end method

.method greylist updateSelectorState()V
    .locals 2

    iget-object v0, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/widget/AbsListView;->shouldShowSelector()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Landroid/widget/AbsListView;->getDrawableStateForSelector()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    sget-object v1, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public whitelist verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    iget-object v0, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_1

    invoke-super {p0, p1}, Landroid/widget/AdapterView;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/widget/AbsListView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method blacklist viewSelectorLikeFocus(Landroid/view/View;)V
    .locals 5

    iget-object v0, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    iget v1, p0, Landroid/widget/AbsListView;->mSelectorPosition:I

    iget v2, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    iget v2, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->top:I

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    :cond_0
    iget-object v2, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_2

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v3}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    sget-object v4, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    const/4 v4, 0x1

    invoke-virtual {v2, v4, v3}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    :cond_1
    invoke-virtual {p0}, Landroid/widget/AbsListView;->updateSelectorState()V

    :cond_2
    return-void
.end method
