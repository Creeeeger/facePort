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
        Landroid/widget/AbsListView$SemFluidScrollerEventListener;,
        Landroid/widget/AbsListView$SemSmoothScrollByMove;,
        Landroid/widget/AbsListView$CheckForDoublePenClick;,
        Landroid/widget/AbsListView$SemFastScrollEventListener;,
        Landroid/widget/AbsListView$HoverScrollHandler;,
        Landroid/widget/AbsListView$PositionScroller;,
        Landroid/widget/AbsListView$AbsPositionScroller;,
        Landroid/widget/AbsListView$RecycleBin;,
        Landroid/widget/AbsListView$RecyclerListener;,
        Landroid/widget/AbsListView$LayoutParams;,
        Landroid/widget/AbsListView$MultiChoiceModeWrapper;,
        Landroid/widget/AbsListView$MultiChoiceModeListener;,
        Landroid/widget/AbsListView$AdapterDataSetObserver;,
        Landroid/widget/AbsListView$InputConnectionWrapper;,
        Landroid/widget/AbsListView$FlingRunnable;,
        Landroid/widget/AbsListView$CheckForTap;,
        Landroid/widget/AbsListView$CheckForKeyLongPress;,
        Landroid/widget/AbsListView$CheckForLongPress;,
        Landroid/widget/AbsListView$PerformClick;,
        Landroid/widget/AbsListView$WindowRunnnable;,
        Landroid/widget/AbsListView$ListItemAccessibilityDelegate;,
        Landroid/widget/AbsListView$SavedState;,
        Landroid/widget/AbsListView$SelectionBoundsAdjuster;,
        Landroid/widget/AbsListView$OnScrollListener;
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
.field private static final greylist-max-o CHECK_POSITION_SEARCH_DISTANCE:I = 0x14

.field public static final whitelist CHOICE_MODE_MULTIPLE:I = 0x2

.field public static final whitelist CHOICE_MODE_MULTIPLE_MODAL:I = 0x3

.field public static final whitelist CHOICE_MODE_NONE:I = 0x0

.field public static final whitelist CHOICE_MODE_SINGLE:I = 0x1

.field private static final blacklist DRAGSCROLL_WORKING_ZONE_DP:I = 0x19

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

.field private greylist mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

.field private blacklist mCurrentKeyCode:I

.field private blacklist mDVFSLockAcquired:Z

.field greylist-max-r mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

.field private greylist-max-o mDefInputConnection:Landroid/view/inputmethod/InputConnection;

.field private greylist-max-o mDeferNotifyDataSetChanged:Z

.field private greylist-max-o mDensityScale:F

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

.field private greylist-max-o mForceTranscriptScroll:Z

.field private blacklist mForcedClick:Z

.field private greylist-max-o mGlobalLayoutListenerAddedFilter:Z

.field private blacklist mGoToTopRenderNode:Landroid/graphics/RenderNode;

.field private blacklist mGoToToping:Z

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

.field private blacklist mIsHoverOverscrolled:Z

.field private blacklist mIsHoverScrolled:Z

.field blacklist mIsHoveredByMouse:Z

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

.field private blacklist mNeedsHoverScroll:Z

.field private greylist-max-o mNestedYOffset:I

.field private blacklist mNewTextViewHoverState:Z

.field private blacklist mOldAdapterItemCount:I

.field private blacklist mOldHoverScrollDirection:I

.field private blacklist mOldKeyCode:I

.field private blacklist mOldTextViewHoverState:Z

.field private greylist-max-p mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

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

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 815
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Landroid/widget/AbsListView;->sLinearInterpolator:Landroid/view/animation/Interpolator;

    .line 8993
    const/4 v0, 0x0

    sput v0, Landroid/widget/AbsListView;->JUMP_SCROLL_TO_TOP_IDLE:I

    .line 8994
    const/4 v0, 0x1

    sput v0, Landroid/widget/AbsListView;->JUMP_SCROLL_TO_TOP_INITIATED:I

    .line 8995
    const/4 v0, 0x2

    sput v0, Landroid/widget/AbsListView;->JUMP_SCROLL_TO_TOP_FINISHING:I

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .line 896
    invoke-direct {p0, p1}, Landroid/widget/AdapterView;-><init>(Landroid/content/Context;)V

    .line 289
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    .line 323
    iput v0, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 351
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mDeferNotifyDataSetChanged:Z

    .line 356
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mDrawSelectorOnTop:Z

    .line 367
    const/4 v1, -0x1

    iput v1, p0, Landroid/widget/AbsListView;->mSelectorPosition:I

    .line 373
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 380
    new-instance v2, Landroid/widget/AbsListView$RecycleBin;

    invoke-direct {v2, p0}, Landroid/widget/AbsListView$RecycleBin;-><init>(Landroid/widget/AbsListView;)V

    iput-object v2, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    .line 386
    iput v0, p0, Landroid/widget/AbsListView;->mSelectionLeftPadding:I

    .line 391
    iput v0, p0, Landroid/widget/AbsListView;->mSelectionTopPadding:I

    .line 397
    iput v0, p0, Landroid/widget/AbsListView;->mSelectionRightPadding:I

    .line 402
    iput v0, p0, Landroid/widget/AbsListView;->mSelectionBottomPadding:I

    .line 408
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 413
    iput v0, p0, Landroid/widget/AbsListView;->mWidthMeasureSpec:I

    .line 463
    iput v1, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 500
    iput v0, p0, Landroid/widget/AbsListView;->mSelectedTop:I

    .line 545
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/widget/AbsListView;->mSmoothScrollbarEnabled:Z

    .line 565
    iput v1, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 567
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/widget/AbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 594
    iput v1, p0, Landroid/widget/AbsListView;->mLastTouchMode:I

    .line 597
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mScrollProfilingStarted:Z

    .line 600
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mFlingProfilingStarted:Z

    .line 608
    iput-object v3, p0, Landroid/widget/AbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 609
    iput-object v3, p0, Landroid/widget/AbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 671
    iput v0, p0, Landroid/widget/AbsListView;->mLastScrollState:I

    .line 701
    const/high16 v4, 0x3f800000    # 1.0f

    iput v4, p0, Landroid/widget/AbsListView;->mVelocityScale:F

    .line 703
    new-array v4, v2, [Z

    iput-object v4, p0, Landroid/widget/AbsListView;->mIsScrap:[Z

    .line 705
    const/4 v4, 0x2

    new-array v5, v4, [I

    iput-object v5, p0, Landroid/widget/AbsListView;->mScrollOffset:[I

    .line 706
    new-array v5, v4, [I

    iput-object v5, p0, Landroid/widget/AbsListView;->mScrollConsumed:[I

    .line 708
    new-array v4, v4, [F

    iput-object v4, p0, Landroid/widget/AbsListView;->mTmpPoint:[F

    .line 714
    iput v0, p0, Landroid/widget/AbsListView;->mNestedYOffset:I

    .line 724
    iput v1, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 789
    iput v0, p0, Landroid/widget/AbsListView;->mDirection:I

    .line 808
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mHasDivier:Z

    .line 809
    iput v0, p0, Landroid/widget/AbsListView;->mHasDividerHeight:I

    .line 8782
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mSemFastScrollEffectState:Z

    .line 8786
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mSemEnableGoToTop:Z

    .line 8787
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mSemSizeChnage:Z

    .line 8788
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mSemCanGoFuther:Z

    .line 8790
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Landroid/widget/AbsListView;->mSemGoToTopRect:Landroid/graphics/Rect;

    .line 8792
    new-instance v4, Landroid/graphics/Outline;

    invoke-direct {v4}, Landroid/graphics/Outline;-><init>()V

    iput-object v4, p0, Landroid/widget/AbsListView;->mOutline:Landroid/graphics/Outline;

    .line 8797
    iput v0, p0, Landroid/widget/AbsListView;->mSemGoToTopState:I

    .line 8798
    iput v0, p0, Landroid/widget/AbsListView;->mSemGoToTopLastState:I

    .line 8799
    iput v0, p0, Landroid/widget/AbsListView;->mShowFadeOutGTP:I

    .line 8800
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mGoToToping:Z

    .line 8801
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mShowGTPAtFirstTime:Z

    .line 8803
    const/16 v4, 0x9c4

    iput v4, p0, Landroid/widget/AbsListView;->GO_TO_TOP_HIDE:I

    .line 8807
    new-instance v4, Landroid/widget/AbsListView$5;

    invoke-direct {v4, p0}, Landroid/widget/AbsListView$5;-><init>(Landroid/widget/AbsListView;)V

    iput-object v4, p0, Landroid/widget/AbsListView;->mSemGoToToFadeOutRunnable:Ljava/lang/Runnable;

    .line 8812
    new-instance v4, Landroid/widget/AbsListView$6;

    invoke-direct {v4, p0}, Landroid/widget/AbsListView$6;-><init>(Landroid/widget/AbsListView;)V

    iput-object v4, p0, Landroid/widget/AbsListView;->mSemGoToToFadeInRunnable:Ljava/lang/Runnable;

    .line 8817
    new-instance v4, Landroid/widget/AbsListView$7;

    invoke-direct {v4, p0}, Landroid/widget/AbsListView$7;-><init>(Landroid/widget/AbsListView;)V

    iput-object v4, p0, Landroid/widget/AbsListView;->mSemAutoHide:Ljava/lang/Runnable;

    .line 8843
    iput v0, p0, Landroid/widget/AbsListView;->mHoverTopAreaHeight:I

    .line 8844
    iput v0, p0, Landroid/widget/AbsListView;->mHoverBottomAreaHeight:I

    .line 8846
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Landroid/widget/AbsListView;->mHoverRecognitionStartTime:J

    .line 8847
    const-wide/16 v6, 0x12c

    iput-wide v6, p0, Landroid/widget/AbsListView;->mHoverScrollTimeInterval:J

    .line 8848
    const-wide/16 v6, 0x1f4

    iput-wide v6, p0, Landroid/widget/AbsListView;->mPenDragScrollTimeInterval:J

    .line 8849
    iput-wide v4, p0, Landroid/widget/AbsListView;->mHoverScrollStartTime:J

    .line 8850
    iput v1, p0, Landroid/widget/AbsListView;->mHoverScrollDirection:I

    .line 8852
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mIsHoverOverscrolled:Z

    .line 8853
    iput-boolean v2, p0, Landroid/widget/AbsListView;->mHoverScrollEnable:Z

    .line 8854
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mHoverScrollStateChanged:Z

    .line 8855
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mIsSendHoverScrollState:Z

    .line 8857
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mNeedsHoverScroll:Z

    .line 8858
    iput v0, p0, Landroid/widget/AbsListView;->mHoverScrollStateForListener:I

    .line 8859
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mIsEnabledPaddingInHoverScroll:Z

    .line 8860
    iput v0, p0, Landroid/widget/AbsListView;->mExtraPaddingInTopHoverArea:I

    .line 8861
    iput v0, p0, Landroid/widget/AbsListView;->mExtraPaddingInBottomHoverArea:I

    .line 8871
    iput v1, p0, Landroid/widget/AbsListView;->mHoverPosition:I

    .line 8872
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mHoveredOnEllipsizedText:Z

    .line 8878
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    .line 8886
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mIsFirstPenClick:Z

    .line 8887
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mIsMovedbeforeUP:Z

    .line 8888
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mIsCtrlkeyPressed:Z

    .line 8889
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mIsShiftkeyPressed:Z

    .line 8890
    iput-boolean v2, p0, Landroid/widget/AbsListView;->mIsfirstMoveEvent:Z

    .line 8891
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mIsPenHovered:Z

    .line 8892
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mIsPenPressed:Z

    .line 8895
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mIsTextSelectionStarted:Z

    .line 8896
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mIsNeedPenSelection:Z

    .line 8898
    iput v0, p0, Landroid/widget/AbsListView;->mSemDragSelectedItemSize:I

    .line 8899
    iput v1, p0, Landroid/widget/AbsListView;->mSemDragSelectedViewPosition:I

    .line 8900
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mIsPenSelectPointerSetted:Z

    .line 8901
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mIsNeedPenSelectIconSet:Z

    .line 8902
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mOldTextViewHoverState:Z

    .line 8903
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mNewTextViewHoverState:Z

    .line 8904
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mPreviousTextViewScroll:Z

    .line 8908
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Landroid/widget/AbsListView;->mSemDragBlockRect:Landroid/graphics/Rect;

    .line 8909
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mIsDragBlockEnabled:Z

    .line 8911
    iput v0, p0, Landroid/widget/AbsListView;->mSemDragStartX:I

    .line 8912
    iput v0, p0, Landroid/widget/AbsListView;->mSemDragStartY:I

    .line 8913
    iput v0, p0, Landroid/widget/AbsListView;->mSemDragEndX:I

    .line 8914
    iput v0, p0, Landroid/widget/AbsListView;->mSemDragEndY:I

    .line 8916
    iput v0, p0, Landroid/widget/AbsListView;->mSemDragBlockLeft:I

    .line 8917
    iput v0, p0, Landroid/widget/AbsListView;->mSemDragBlockTop:I

    .line 8918
    iput v0, p0, Landroid/widget/AbsListView;->mSemDragBlockRight:I

    .line 8919
    iput v0, p0, Landroid/widget/AbsListView;->mSemDragBlockBottom:I

    .line 8921
    iput-object v3, p0, Landroid/widget/AbsListView;->mSemTrackedChild:Landroid/view/View;

    .line 8922
    iput v1, p0, Landroid/widget/AbsListView;->mSemTrackedChildPosition:I

    .line 8923
    iput v0, p0, Landroid/widget/AbsListView;->mSemDistanceFromTrackedChildTop:I

    .line 8925
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mIsCloseChildSetted:Z

    .line 8926
    iput v1, p0, Landroid/widget/AbsListView;->mOldHoverScrollDirection:I

    .line 8927
    iput-object v3, p0, Landroid/widget/AbsListView;->mSemCloseChildByTop:Landroid/view/View;

    .line 8928
    iput v1, p0, Landroid/widget/AbsListView;->mSemCloseChildPositionByTop:I

    .line 8929
    iput v0, p0, Landroid/widget/AbsListView;->mSemDistanceFromCloseChildTop:I

    .line 8930
    iput-object v3, p0, Landroid/widget/AbsListView;->mSemCloseChildByBottom:Landroid/view/View;

    .line 8931
    iput v1, p0, Landroid/widget/AbsListView;->mSemCloseChildPositionByBottom:I

    .line 8932
    iput v0, p0, Landroid/widget/AbsListView;->mSemDistanceFromCloseChildBottom:I

    .line 8934
    iput-boolean v2, p0, Landroid/widget/AbsListView;->mIsSemOnClickEnabled:Z

    .line 8935
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mIsLongPressMultiSelection:Z

    .line 8936
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mLongPressMultiSelectionEnabled:Z

    .line 8937
    iput-boolean v2, p0, Landroid/widget/AbsListView;->mIsFirstMultiSelectionMove:Z

    .line 8938
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mIsCtrlMultiSelection:Z

    .line 8942
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mIsHoverScrolled:Z

    .line 8943
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mIsMouseHoverScroll:Z

    .line 8944
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mIsHoveredByMouse:Z

    .line 8945
    iput v0, p0, Landroid/widget/AbsListView;->mIsMouseHoverScrollX:I

    .line 8946
    iput v0, p0, Landroid/widget/AbsListView;->mIsMouseHoverScrollY:I

    .line 8950
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mSemCustomMultiChoiceMode:Z

    .line 8954
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mIsMultiFocusEnabled:Z

    .line 8957
    iput v1, p0, Landroid/widget/AbsListView;->mFirstPressedPoint:I

    .line 8958
    iput v0, p0, Landroid/widget/AbsListView;->mOldAdapterItemCount:I

    .line 8959
    iput v0, p0, Landroid/widget/AbsListView;->mOldKeyCode:I

    .line 8960
    iput v0, p0, Landroid/widget/AbsListView;->mCurrentKeyCode:I

    .line 8962
    iput v1, p0, Landroid/widget/AbsListView;->mSemCurrentFocusPosition:I

    .line 8967
    const/16 v1, 0x64

    iput v1, p0, Landroid/widget/AbsListView;->SWITCH_CONTROL_SCROLL_MIN_DURATION:I

    .line 8968
    const/16 v1, 0x7f0

    iput v1, p0, Landroid/widget/AbsListView;->SWITCH_CONTROL_SCROLL_MAX_DURATION:I

    .line 8969
    const/16 v1, 0x8a

    iput v1, p0, Landroid/widget/AbsListView;->mAutoscrollDurationGap:I

    .line 8973
    const/16 v1, 0x2710

    iput v1, p0, Landroid/widget/AbsListView;->ON_ABSORB_VELOCITY:I

    .line 8975
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mDVFSLockAcquired:Z

    .line 8977
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mSemForcedDrawEdgeEffect:Z

    .line 8981
    iput-boolean v2, p0, Landroid/widget/AbsListView;->mHoveringEnabled:Z

    .line 8984
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mDoubleFlingEnabled:Z

    .line 8986
    iput-boolean v2, p0, Landroid/widget/AbsListView;->mEnableVibrationAtLongPress:Z

    .line 8987
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mIsLongPressTriggeredByKey:Z

    .line 8989
    iput-object v3, p0, Landroid/widget/AbsListView;->mSemSmoothScrollByMove:Landroid/widget/AbsListView$SemSmoothScrollByMove;

    .line 8990
    iput-object v3, p0, Landroid/widget/AbsListView;->mSemScrollRemains:Ljava/util/LinkedList;

    .line 8991
    const/16 v1, 0x1f4

    iput v1, p0, Landroid/widget/AbsListView;->mSemScrollAmount:I

    .line 8996
    sget v1, Landroid/widget/AbsListView;->JUMP_SCROLL_TO_TOP_IDLE:I

    iput v1, p0, Landroid/widget/AbsListView;->mJumpScrollToTopState:I

    .line 8999
    iput v0, p0, Landroid/widget/AbsListView;->mDragScrollWorkingZonePx:I

    .line 9000
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mIsDragScrolled:Z

    .line 9001
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mForcedClick:Z

    .line 9004
    iput v0, p0, Landroid/widget/AbsListView;->mPointerCount:I

    .line 897
    new-instance v0, Landroid/widget/EdgeEffect;

    invoke-direct {v0, p1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    .line 898
    new-instance v0, Landroid/widget/EdgeEffect;

    invoke-direct {v0, p1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    .line 900
    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v0, p0, v2}, Landroid/widget/EdgeEffect;->semSetHostView(Landroid/view/View;Z)V

    .line 901
    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v0, p0, v2}, Landroid/widget/EdgeEffect;->semSetHostView(Landroid/view/View;Z)V

    .line 903
    invoke-direct {p0}, Landroid/widget/AbsListView;->initAbsListView()V

    .line 905
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsListView;->mOwnerThread:Ljava/lang/Thread;

    .line 907
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->setVerticalScrollBarEnabled(Z)V

    .line 908
    sget-object v0, Lcom/android/internal/R$styleable;->View:[I

    invoke-virtual {p1, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 909
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->initializeScrollbarsInternal(Landroid/content/res/TypedArray;)V

    .line 910
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 911
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 914
    const v0, 0x101006a

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/AbsListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 915
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 918
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/AbsListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 919
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 922
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    invoke-direct/range {p0 .. p4}, Landroid/widget/AdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 289
    const/4 v10, 0x0

    iput v10, v7, Landroid/widget/AbsListView;->mChoiceMode:I

    .line 323
    iput v10, v7, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 351
    iput-boolean v10, v7, Landroid/widget/AbsListView;->mDeferNotifyDataSetChanged:Z

    .line 356
    iput-boolean v10, v7, Landroid/widget/AbsListView;->mDrawSelectorOnTop:Z

    .line 367
    const/4 v0, -0x1

    iput v0, v7, Landroid/widget/AbsListView;->mSelectorPosition:I

    .line 373
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v7, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 380
    new-instance v1, Landroid/widget/AbsListView$RecycleBin;

    invoke-direct {v1, v7}, Landroid/widget/AbsListView$RecycleBin;-><init>(Landroid/widget/AbsListView;)V

    iput-object v1, v7, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    .line 386
    iput v10, v7, Landroid/widget/AbsListView;->mSelectionLeftPadding:I

    .line 391
    iput v10, v7, Landroid/widget/AbsListView;->mSelectionTopPadding:I

    .line 397
    iput v10, v7, Landroid/widget/AbsListView;->mSelectionRightPadding:I

    .line 402
    iput v10, v7, Landroid/widget/AbsListView;->mSelectionBottomPadding:I

    .line 408
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v7, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 413
    iput v10, v7, Landroid/widget/AbsListView;->mWidthMeasureSpec:I

    .line 463
    iput v0, v7, Landroid/widget/AbsListView;->mTouchMode:I

    .line 500
    iput v10, v7, Landroid/widget/AbsListView;->mSelectedTop:I

    .line 545
    const/4 v11, 0x1

    iput-boolean v11, v7, Landroid/widget/AbsListView;->mSmoothScrollbarEnabled:Z

    .line 565
    iput v0, v7, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 567
    const/4 v1, 0x0

    iput-object v1, v7, Landroid/widget/AbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 594
    iput v0, v7, Landroid/widget/AbsListView;->mLastTouchMode:I

    .line 597
    iput-boolean v10, v7, Landroid/widget/AbsListView;->mScrollProfilingStarted:Z

    .line 600
    iput-boolean v10, v7, Landroid/widget/AbsListView;->mFlingProfilingStarted:Z

    .line 608
    iput-object v1, v7, Landroid/widget/AbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 609
    iput-object v1, v7, Landroid/widget/AbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 671
    iput v10, v7, Landroid/widget/AbsListView;->mLastScrollState:I

    .line 701
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v7, Landroid/widget/AbsListView;->mVelocityScale:F

    .line 703
    new-array v2, v11, [Z

    iput-object v2, v7, Landroid/widget/AbsListView;->mIsScrap:[Z

    .line 705
    const/4 v12, 0x2

    new-array v2, v12, [I

    iput-object v2, v7, Landroid/widget/AbsListView;->mScrollOffset:[I

    .line 706
    new-array v2, v12, [I

    iput-object v2, v7, Landroid/widget/AbsListView;->mScrollConsumed:[I

    .line 708
    new-array v2, v12, [F

    iput-object v2, v7, Landroid/widget/AbsListView;->mTmpPoint:[F

    .line 714
    iput v10, v7, Landroid/widget/AbsListView;->mNestedYOffset:I

    .line 724
    iput v0, v7, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 789
    iput v10, v7, Landroid/widget/AbsListView;->mDirection:I

    .line 808
    iput-boolean v10, v7, Landroid/widget/AbsListView;->mHasDivier:Z

    .line 809
    iput v10, v7, Landroid/widget/AbsListView;->mHasDividerHeight:I

    .line 8782
    iput-boolean v10, v7, Landroid/widget/AbsListView;->mSemFastScrollEffectState:Z

    .line 8786
    iput-boolean v10, v7, Landroid/widget/AbsListView;->mSemEnableGoToTop:Z

    .line 8787
    iput-boolean v10, v7, Landroid/widget/AbsListView;->mSemSizeChnage:Z

    .line 8788
    iput-boolean v10, v7, Landroid/widget/AbsListView;->mSemCanGoFuther:Z

    .line 8790
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, v7, Landroid/widget/AbsListView;->mSemGoToTopRect:Landroid/graphics/Rect;

    .line 8792
    new-instance v2, Landroid/graphics/Outline;

    invoke-direct {v2}, Landroid/graphics/Outline;-><init>()V

    iput-object v2, v7, Landroid/widget/AbsListView;->mOutline:Landroid/graphics/Outline;

    .line 8797
    iput v10, v7, Landroid/widget/AbsListView;->mSemGoToTopState:I

    .line 8798
    iput v10, v7, Landroid/widget/AbsListView;->mSemGoToTopLastState:I

    .line 8799
    iput v10, v7, Landroid/widget/AbsListView;->mShowFadeOutGTP:I

    .line 8800
    iput-boolean v10, v7, Landroid/widget/AbsListView;->mGoToToping:Z

    .line 8801
    iput-boolean v10, v7, Landroid/widget/AbsListView;->mShowGTPAtFirstTime:Z

    .line 8803
    const/16 v2, 0x9c4

    iput v2, v7, Landroid/widget/AbsListView;->GO_TO_TOP_HIDE:I

    .line 8807
    new-instance v2, Landroid/widget/AbsListView$5;

    invoke-direct {v2, v7}, Landroid/widget/AbsListView$5;-><init>(Landroid/widget/AbsListView;)V

    iput-object v2, v7, Landroid/widget/AbsListView;->mSemGoToToFadeOutRunnable:Ljava/lang/Runnable;

    .line 8812
    new-instance v2, Landroid/widget/AbsListView$6;

    invoke-direct {v2, v7}, Landroid/widget/AbsListView$6;-><init>(Landroid/widget/AbsListView;)V

    iput-object v2, v7, Landroid/widget/AbsListView;->mSemGoToToFadeInRunnable:Ljava/lang/Runnable;

    .line 8817
    new-instance v2, Landroid/widget/AbsListView$7;

    invoke-direct {v2, v7}, Landroid/widget/AbsListView$7;-><init>(Landroid/widget/AbsListView;)V

    iput-object v2, v7, Landroid/widget/AbsListView;->mSemAutoHide:Ljava/lang/Runnable;

    .line 8843
    iput v10, v7, Landroid/widget/AbsListView;->mHoverTopAreaHeight:I

    .line 8844
    iput v10, v7, Landroid/widget/AbsListView;->mHoverBottomAreaHeight:I

    .line 8846
    const-wide/16 v2, 0x0

    iput-wide v2, v7, Landroid/widget/AbsListView;->mHoverRecognitionStartTime:J

    .line 8847
    const-wide/16 v4, 0x12c

    iput-wide v4, v7, Landroid/widget/AbsListView;->mHoverScrollTimeInterval:J

    .line 8848
    const-wide/16 v4, 0x1f4

    iput-wide v4, v7, Landroid/widget/AbsListView;->mPenDragScrollTimeInterval:J

    .line 8849
    iput-wide v2, v7, Landroid/widget/AbsListView;->mHoverScrollStartTime:J

    .line 8850
    iput v0, v7, Landroid/widget/AbsListView;->mHoverScrollDirection:I

    .line 8852
    iput-boolean v10, v7, Landroid/widget/AbsListView;->mIsHoverOverscrolled:Z

    .line 8853
    iput-boolean v11, v7, Landroid/widget/AbsListView;->mHoverScrollEnable:Z

    .line 8854
    iput-boolean v10, v7, Landroid/widget/AbsListView;->mHoverScrollStateChanged:Z

    .line 8855
    iput-boolean v10, v7, Landroid/widget/AbsListView;->mIsSendHoverScrollState:Z

    .line 8857
    iput-boolean v10, v7, Landroid/widget/AbsListView;->mNeedsHoverScroll:Z

    .line 8858
    iput v10, v7, Landroid/widget/AbsListView;->mHoverScrollStateForListener:I

    .line 8859
    iput-boolean v10, v7, Landroid/widget/AbsListView;->mIsEnabledPaddingInHoverScroll:Z

    .line 8860
    iput v10, v7, Landroid/widget/AbsListView;->mExtraPaddingInTopHoverArea:I

    .line 8861
    iput v10, v7, Landroid/widget/AbsListView;->mExtraPaddingInBottomHoverArea:I

    .line 8871
    iput v0, v7, Landroid/widget/AbsListView;->mHoverPosition:I

    .line 8872
    iput-boolean v10, v7, Landroid/widget/AbsListView;->mHoveredOnEllipsizedText:Z

    .line 8878
    iput-boolean v10, v7, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    .line 8886
    iput-boolean v10, v7, Landroid/widget/AbsListView;->mIsFirstPenClick:Z

    .line 8887
    iput-boolean v10, v7, Landroid/widget/AbsListView;->mIsMovedbeforeUP:Z

    .line 8888
    iput-boolean v10, v7, Landroid/widget/AbsListView;->mIsCtrlkeyPressed:Z

    .line 8889
    iput-boolean v10, v7, Landroid/widget/AbsListView;->mIsShiftkeyPressed:Z

    .line 8890
    iput-boolean v11, v7, Landroid/widget/AbsListView;->mIsfirstMoveEvent:Z

    .line 8891
    iput-boolean v10, v7, Landroid/widget/AbsListView;->mIsPenHovered:Z

    .line 8892
    iput-boolean v10, v7, Landroid/widget/AbsListView;->mIsPenPressed:Z

    .line 8895
    iput-boolean v10, v7, Landroid/widget/AbsListView;->mIsTextSelectionStarted:Z

    .line 8896
    iput-boolean v10, v7, Landroid/widget/AbsListView;->mIsNeedPenSelection:Z

    .line 8898
    iput v10, v7, Landroid/widget/AbsListView;->mSemDragSelectedItemSize:I

    .line 8899
    iput v0, v7, Landroid/widget/AbsListView;->mSemDragSelectedViewPosition:I

    .line 8900
    iput-boolean v10, v7, Landroid/widget/AbsListView;->mIsPenSelectPointerSetted:Z

    .line 8901
    iput-boolean v10, v7, Landroid/widget/AbsListView;->mIsNeedPenSelectIconSet:Z

    .line 8902
    iput-boolean v10, v7, Landroid/widget/AbsListView;->mOldTextViewHoverState:Z

    .line 8903
    iput-boolean v10, v7, Landroid/widget/AbsListView;->mNewTextViewHoverState:Z

    .line 8904
    iput-boolean v10, v7, Landroid/widget/AbsListView;->mPreviousTextViewScroll:Z

    .line 8908
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, v7, Landroid/widget/AbsListView;->mSemDragBlockRect:Landroid/graphics/Rect;

    .line 8909
    iput-boolean v10, v7, Landroid/widget/AbsListView;->mIsDragBlockEnabled:Z

    .line 8911
    iput v10, v7, Landroid/widget/AbsListView;->mSemDragStartX:I

    .line 8912
    iput v10, v7, Landroid/widget/AbsListView;->mSemDragStartY:I

    .line 8913
    iput v10, v7, Landroid/widget/AbsListView;->mSemDragEndX:I

    .line 8914
    iput v10, v7, Landroid/widget/AbsListView;->mSemDragEndY:I

    .line 8916
    iput v10, v7, Landroid/widget/AbsListView;->mSemDragBlockLeft:I

    .line 8917
    iput v10, v7, Landroid/widget/AbsListView;->mSemDragBlockTop:I

    .line 8918
    iput v10, v7, Landroid/widget/AbsListView;->mSemDragBlockRight:I

    .line 8919
    iput v10, v7, Landroid/widget/AbsListView;->mSemDragBlockBottom:I

    .line 8921
    iput-object v1, v7, Landroid/widget/AbsListView;->mSemTrackedChild:Landroid/view/View;

    .line 8922
    iput v0, v7, Landroid/widget/AbsListView;->mSemTrackedChildPosition:I

    .line 8923
    iput v10, v7, Landroid/widget/AbsListView;->mSemDistanceFromTrackedChildTop:I

    .line 8925
    iput-boolean v10, v7, Landroid/widget/AbsListView;->mIsCloseChildSetted:Z

    .line 8926
    iput v0, v7, Landroid/widget/AbsListView;->mOldHoverScrollDirection:I

    .line 8927
    iput-object v1, v7, Landroid/widget/AbsListView;->mSemCloseChildByTop:Landroid/view/View;

    .line 8928
    iput v0, v7, Landroid/widget/AbsListView;->mSemCloseChildPositionByTop:I

    .line 8929
    iput v10, v7, Landroid/widget/AbsListView;->mSemDistanceFromCloseChildTop:I

    .line 8930
    iput-object v1, v7, Landroid/widget/AbsListView;->mSemCloseChildByBottom:Landroid/view/View;

    .line 8931
    iput v0, v7, Landroid/widget/AbsListView;->mSemCloseChildPositionByBottom:I

    .line 8932
    iput v10, v7, Landroid/widget/AbsListView;->mSemDistanceFromCloseChildBottom:I

    .line 8934
    iput-boolean v11, v7, Landroid/widget/AbsListView;->mIsSemOnClickEnabled:Z

    .line 8935
    iput-boolean v10, v7, Landroid/widget/AbsListView;->mIsLongPressMultiSelection:Z

    .line 8936
    iput-boolean v10, v7, Landroid/widget/AbsListView;->mLongPressMultiSelectionEnabled:Z

    .line 8937
    iput-boolean v11, v7, Landroid/widget/AbsListView;->mIsFirstMultiSelectionMove:Z

    .line 8938
    iput-boolean v10, v7, Landroid/widget/AbsListView;->mIsCtrlMultiSelection:Z

    .line 8942
    iput-boolean v10, v7, Landroid/widget/AbsListView;->mIsHoverScrolled:Z

    .line 8943
    iput-boolean v10, v7, Landroid/widget/AbsListView;->mIsMouseHoverScroll:Z

    .line 8944
    iput-boolean v10, v7, Landroid/widget/AbsListView;->mIsHoveredByMouse:Z

    .line 8945
    iput v10, v7, Landroid/widget/AbsListView;->mIsMouseHoverScrollX:I

    .line 8946
    iput v10, v7, Landroid/widget/AbsListView;->mIsMouseHoverScrollY:I

    .line 8950
    iput-boolean v10, v7, Landroid/widget/AbsListView;->mSemCustomMultiChoiceMode:Z

    .line 8954
    iput-boolean v10, v7, Landroid/widget/AbsListView;->mIsMultiFocusEnabled:Z

    .line 8957
    iput v0, v7, Landroid/widget/AbsListView;->mFirstPressedPoint:I

    .line 8958
    iput v10, v7, Landroid/widget/AbsListView;->mOldAdapterItemCount:I

    .line 8959
    iput v10, v7, Landroid/widget/AbsListView;->mOldKeyCode:I

    .line 8960
    iput v10, v7, Landroid/widget/AbsListView;->mCurrentKeyCode:I

    .line 8962
    iput v0, v7, Landroid/widget/AbsListView;->mSemCurrentFocusPosition:I

    .line 8967
    const/16 v0, 0x64

    iput v0, v7, Landroid/widget/AbsListView;->SWITCH_CONTROL_SCROLL_MIN_DURATION:I

    .line 8968
    const/16 v0, 0x7f0

    iput v0, v7, Landroid/widget/AbsListView;->SWITCH_CONTROL_SCROLL_MAX_DURATION:I

    .line 8969
    const/16 v0, 0x8a

    iput v0, v7, Landroid/widget/AbsListView;->mAutoscrollDurationGap:I

    .line 8973
    const/16 v0, 0x2710

    iput v0, v7, Landroid/widget/AbsListView;->ON_ABSORB_VELOCITY:I

    .line 8975
    iput-boolean v10, v7, Landroid/widget/AbsListView;->mDVFSLockAcquired:Z

    .line 8977
    iput-boolean v10, v7, Landroid/widget/AbsListView;->mSemForcedDrawEdgeEffect:Z

    .line 8981
    iput-boolean v11, v7, Landroid/widget/AbsListView;->mHoveringEnabled:Z

    .line 8984
    iput-boolean v10, v7, Landroid/widget/AbsListView;->mDoubleFlingEnabled:Z

    .line 8986
    iput-boolean v11, v7, Landroid/widget/AbsListView;->mEnableVibrationAtLongPress:Z

    .line 8987
    iput-boolean v10, v7, Landroid/widget/AbsListView;->mIsLongPressTriggeredByKey:Z

    .line 8989
    iput-object v1, v7, Landroid/widget/AbsListView;->mSemSmoothScrollByMove:Landroid/widget/AbsListView$SemSmoothScrollByMove;

    .line 8990
    iput-object v1, v7, Landroid/widget/AbsListView;->mSemScrollRemains:Ljava/util/LinkedList;

    .line 8991
    const/16 v0, 0x1f4

    iput v0, v7, Landroid/widget/AbsListView;->mSemScrollAmount:I

    .line 8996
    sget v0, Landroid/widget/AbsListView;->JUMP_SCROLL_TO_TOP_IDLE:I

    iput v0, v7, Landroid/widget/AbsListView;->mJumpScrollToTopState:I

    .line 8999
    iput v10, v7, Landroid/widget/AbsListView;->mDragScrollWorkingZonePx:I

    .line 9000
    iput-boolean v10, v7, Landroid/widget/AbsListView;->mIsDragScrolled:Z

    .line 9001
    iput-boolean v10, v7, Landroid/widget/AbsListView;->mForcedClick:Z

    .line 9004
    iput v10, v7, Landroid/widget/AbsListView;->mPointerCount:I

    .line 923
    new-instance v0, Landroid/widget/EdgeEffect;

    invoke-direct {v0, v8, v9}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, v7, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    .line 924
    new-instance v0, Landroid/widget/EdgeEffect;

    invoke-direct {v0, v8, v9}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, v7, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    .line 926
    iget-object v0, v7, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v0, v7, v11}, Landroid/widget/EdgeEffect;->semSetHostView(Landroid/view/View;Z)V

    .line 927
    iget-object v0, v7, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v0, v7, v11}, Landroid/widget/EdgeEffect;->semSetHostView(Landroid/view/View;Z)V

    .line 929
    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->initAbsListView()V

    .line 931
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, v7, Landroid/widget/AbsListView;->mOwnerThread:Ljava/lang/Thread;

    .line 933
    sget-object v0, Lcom/android/internal/R$styleable;->AbsListView:[I

    move/from16 v13, p3

    move/from16 v14, p4

    invoke-virtual {v8, v9, v0, v13, v14}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v15

    .line 935
    .local v15, "a":Landroid/content/res/TypedArray;
    sget-object v2, Lcom/android/internal/R$styleable;->AbsListView:[I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    move-object v4, v15

    move/from16 v5, p3

    move/from16 v6, p4

    invoke-virtual/range {v0 .. v6}, Landroid/widget/AbsListView;->saveAttributeDataForStyleable(Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    .line 938
    invoke-virtual {v15, v10}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 939
    .local v0, "selector":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 940
    invoke-virtual {v7, v0}, Landroid/widget/AbsListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 943
    :cond_0
    invoke-virtual {v15, v11, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, v7, Landroid/widget/AbsListView;->mDrawSelectorOnTop:Z

    .line 945
    invoke-virtual {v15, v12, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {v7, v1}, Landroid/widget/AbsListView;->setStackFromBottom(Z)V

    .line 947
    const/4 v1, 0x3

    invoke-virtual {v15, v1, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {v7, v1}, Landroid/widget/AbsListView;->setScrollingCacheEnabled(Z)V

    .line 949
    const/4 v1, 0x4

    invoke-virtual {v15, v1, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {v7, v1}, Landroid/widget/AbsListView;->setTextFilterEnabled(Z)V

    .line 951
    const/4 v1, 0x5

    invoke-virtual {v15, v1, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {v7, v1}, Landroid/widget/AbsListView;->setTranscriptMode(I)V

    .line 953
    const/4 v1, 0x6

    invoke-virtual {v15, v1, v10}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    invoke-virtual {v7, v2}, Landroid/widget/AbsListView;->setCacheColorHint(I)V

    .line 955
    const/16 v2, 0x9

    invoke-virtual {v15, v2, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {v7, v2}, Landroid/widget/AbsListView;->setSmoothScrollbarEnabled(Z)V

    .line 957
    const/4 v2, 0x7

    invoke-virtual {v15, v2, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    invoke-virtual {v7, v2}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    .line 960
    const/16 v2, 0x8

    invoke-virtual {v15, v2, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {v7, v2}, Landroid/widget/AbsListView;->setFastScrollEnabled(Z)V

    .line 962
    const/16 v2, 0xb

    invoke-virtual {v15, v2, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-virtual {v7, v2}, Landroid/widget/AbsListView;->setFastScrollStyle(I)V

    .line 964
    const/16 v2, 0xa

    invoke-virtual {v15, v2, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {v7, v2}, Landroid/widget/AbsListView;->setFastScrollAlwaysVisible(Z)V

    .line 967
    invoke-virtual {v15}, Landroid/content/res/TypedArray;->recycle()V

    .line 969
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->uiMode:I

    if-ne v2, v1, :cond_1

    .line 970
    invoke-virtual {v7, v10}, Landroid/widget/AbsListView;->setRevealOnFocusHint(Z)V

    .line 972
    :cond_1
    return-void
.end method

.method private greylist-max-o acceptFilter()Z
    .locals 1

    .line 2164
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mTextFilterEnabled:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/Filterable;

    if-eqz v0, :cond_0

    .line 2165
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

    .line 2164
    :goto_0
    return v0
.end method

.method static synthetic blacklist access$000(Landroid/widget/AbsListView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .line 149
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method static synthetic blacklist access$100(Landroid/widget/AbsListView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .line 149
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method static synthetic blacklist access$1000(Landroid/widget/AbsListView;IIIIIIIIZ)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsListView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # I
    .param p6, "x6"    # I
    .param p7, "x7"    # I
    .param p8, "x8"    # I
    .param p9, "x9"    # Z

    .line 149
    invoke-virtual/range {p0 .. p9}, Landroid/widget/AbsListView;->overScrollBy(IIIIIIIIZ)Z

    move-result v0

    return v0
.end method

.method static synthetic blacklist access$1100(Landroid/widget/AbsListView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .line 149
    iget v0, p0, Landroid/widget/AbsListView;->mScrollY:I

    return v0
.end method

.method static synthetic blacklist access$1200(Landroid/widget/AbsListView;IIIIIIIIZ)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsListView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # I
    .param p6, "x6"    # I
    .param p7, "x7"    # I
    .param p8, "x8"    # I
    .param p9, "x9"    # Z

    .line 149
    invoke-virtual/range {p0 .. p9}, Landroid/widget/AbsListView;->overScrollBy(IIIIIIIIZ)Z

    move-result v0

    return v0
.end method

.method static synthetic blacklist access$1300(Landroid/widget/AbsListView;Z)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/AbsListView;
    .param p1, "x1"    # Z

    .line 149
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->setChildrenDrawnWithCacheEnabled(Z)V

    return-void
.end method

.method static synthetic blacklist access$1400(Landroid/widget/AbsListView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .line 149
    iget v0, p0, Landroid/widget/AbsListView;->mPersistentDrawingCache:I

    return v0
.end method

.method static synthetic blacklist access$1500(Landroid/widget/AbsListView;Z)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/AbsListView;
    .param p1, "x1"    # Z

    .line 149
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->setChildrenDrawingCacheEnabled(Z)V

    return-void
.end method

.method static synthetic blacklist access$1600(Landroid/widget/AbsListView;Landroid/view/View;Z)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/AbsListView;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Z

    .line 149
    invoke-virtual {p0, p1, p2}, Landroid/widget/AbsListView;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic blacklist access$1700(Landroid/widget/AbsListView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .line 149
    iget-object v0, p0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic blacklist access$200(Landroid/widget/AbsListView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .line 149
    iget v0, p0, Landroid/widget/AbsListView;->mScrollY:I

    return v0
.end method

.method static synthetic blacklist access$300(Landroid/widget/AbsListView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .line 149
    iget v0, p0, Landroid/widget/AbsListView;->mScrollY:I

    return v0
.end method

.method static synthetic blacklist access$400(Landroid/widget/AbsListView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .line 149
    iget v0, p0, Landroid/widget/AbsListView;->mScrollY:I

    return v0
.end method

.method static synthetic blacklist access$500(Landroid/widget/AbsListView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .line 149
    iget v0, p0, Landroid/widget/AbsListView;->mPaddingBottom:I

    return v0
.end method

.method static synthetic blacklist access$600(Landroid/widget/AbsListView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .line 149
    iget v0, p0, Landroid/widget/AbsListView;->mPaddingTop:I

    return v0
.end method

.method static synthetic blacklist access$700(Landroid/widget/AbsListView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .line 149
    iget v0, p0, Landroid/widget/AbsListView;->mPaddingBottom:I

    return v0
.end method

.method static synthetic blacklist access$800(Landroid/widget/AbsListView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .line 149
    iget v0, p0, Landroid/widget/AbsListView;->mPaddingTop:I

    return v0
.end method

.method static synthetic blacklist access$900(Landroid/widget/AbsListView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .line 149
    iget v0, p0, Landroid/widget/AbsListView;->mScrollY:I

    return v0
.end method

.method private blacklist addAccessibilityActionIfEnabled(Landroid/view/accessibility/AccessibilityNodeInfo;ZLandroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V
    .locals 0
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p2, "enabled"    # Z
    .param p3, "action"    # Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 2832
    if-eqz p2, :cond_0

    .line 2833
    invoke-virtual {p1, p3}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 2835
    :cond_0
    return-void
.end method

.method private blacklist addToPressItemListArray(II)V
    .locals 4
    .param p1, "firstpoint"    # I
    .param p2, "secondpoint"    # I

    .line 9340
    const/4 v0, 0x0

    .line 9342
    .local v0, "checkCount":I
    iget-boolean v1, p0, Landroid/widget/AbsListView;->mIsMultiFocusEnabled:Z

    if-nez v1, :cond_0

    .line 9343
    return-void

    .line 9346
    :cond_0
    const/4 v1, -0x1

    if-ne p2, v1, :cond_2

    .line 9347
    iget-object v1, p0, Landroid/widget/AbsListView;->mSemPressItemListArray:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 9348
    iget-object v1, p0, Landroid/widget/AbsListView;->mSemPressItemListArray:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 9350
    :cond_1
    iget-object v1, p0, Landroid/widget/AbsListView;->mSemPressItemListArray:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 9353
    :cond_2
    if-ge p1, p2, :cond_5

    .line 9354
    sub-int v1, p2, p1

    add-int/lit8 v0, v1, 0x1

    .line 9355
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_4

    .line 9356
    iget-object v2, p0, Landroid/widget/AbsListView;->mSemPressItemListArray:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 9357
    iget-object v2, p0, Landroid/widget/AbsListView;->mSemPressItemListArray:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 9359
    :cond_3
    iget-object v2, p0, Landroid/widget/AbsListView;->mSemPressItemListArray:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9361
    :goto_1
    add-int/lit8 p1, p1, 0x1

    .line 9355
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v1    # "i":I
    :cond_4
    goto :goto_4

    .line 9363
    :cond_5
    if-le p1, p2, :cond_8

    .line 9364
    sub-int v1, p1, p2

    add-int/lit8 v0, v1, 0x1

    .line 9365
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    if-ge v1, v0, :cond_7

    .line 9366
    iget-object v2, p0, Landroid/widget/AbsListView;->mSemPressItemListArray:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 9367
    iget-object v2, p0, Landroid/widget/AbsListView;->mSemPressItemListArray:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_3

    .line 9369
    :cond_6
    iget-object v2, p0, Landroid/widget/AbsListView;->mSemPressItemListArray:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9371
    :goto_3
    add-int/lit8 p1, p1, -0x1

    .line 9365
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .end local v1    # "i":I
    :cond_7
    goto :goto_4

    .line 9374
    :cond_8
    iget-object v1, p0, Landroid/widget/AbsListView;->mSemPressItemListArray:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 9375
    iget-object v1, p0, Landroid/widget/AbsListView;->mSemPressItemListArray:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_4

    .line 9377
    :cond_9
    iget-object v1, p0, Landroid/widget/AbsListView;->mSemPressItemListArray:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9381
    :goto_4
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidate()V

    .line 9382
    return-void
.end method

.method private blacklist autoScrollWithDuration(I)V
    .locals 8
    .param p1, "duration"    # I

    .line 1787
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v0

    .line 1788
    .local v0, "firstPosition":I
    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1789
    .local v1, "firstView":Landroid/view/View;
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1791
    .local v2, "lastView":Landroid/view/View;
    const/4 v3, 0x0

    .line 1792
    .local v3, "height":I
    if-eqz v1, :cond_0

    .line 1793
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 1795
    :cond_0
    if-eqz v2, :cond_1

    .line 1796
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    .line 1799
    :cond_1
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getCount()I

    move-result v4

    .line 1800
    .local v4, "count":I
    add-int/lit8 v5, v4, -0x1

    mul-int v6, v0, v3

    div-int/lit8 v6, v6, 0x2

    mul-int/lit8 v6, v6, -0x1

    sub-int v7, v4, v0

    mul-int/2addr v7, p1

    invoke-virtual {p0, v5, v6, v7}, Landroid/widget/AbsListView;->smoothScrollToPositionFromTop(III)V

    .line 1804
    return-void
.end method

.method private greylist-max-r canScrollDown()Z
    .locals 8

    .line 2500
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 2503
    .local v0, "count":I
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

    .line 2506
    .local v1, "canScrollDown":Z
    :goto_0
    if-nez v1, :cond_2

    if-lez v0, :cond_2

    .line 2507
    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2508
    .local v2, "child":Landroid/view/View;
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

    .line 2511
    .end local v2    # "child":Landroid/view/View;
    :cond_2
    return v1
.end method

.method private greylist-max-r canScrollUp()Z
    .locals 6

    .line 2484
    iget v0, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 2487
    .local v0, "canScrollUp":Z
    :goto_0
    if-nez v0, :cond_2

    .line 2488
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v3

    if-lez v3, :cond_2

    .line 2489
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 2490
    .local v3, "child":Landroid/view/View;
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

    .line 2494
    .end local v3    # "child":Landroid/view/View;
    :cond_2
    return v0
.end method

.method private greylist-max-o clearScrollingCache()V
    .locals 1

    .line 5892
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isHardwareAccelerated()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5893
    iget-object v0, p0, Landroid/widget/AbsListView;->mClearScrollingCache:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 5894
    new-instance v0, Landroid/widget/AbsListView$4;

    invoke-direct {v0, p0}, Landroid/widget/AbsListView$4;-><init>(Landroid/widget/AbsListView;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mClearScrollingCache:Ljava/lang/Runnable;

    .line 5910
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mClearScrollingCache:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    .line 5912
    :cond_1
    return-void
.end method

.method private greylist-max-o contentFits()Z
    .locals 6

    .line 1390
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 1391
    .local v0, "childCount":I
    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 1392
    :cond_0
    iget v2, p0, Landroid/widget/AbsListView;->mItemCount:I

    const/4 v3, 0x0

    if-eq v0, v2, :cond_1

    return v3

    .line 1394
    :cond_1
    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    iget-object v4, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    if-lt v2, v4, :cond_2

    add-int/lit8 v2, v0, -0x1

    .line 1395
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

    .line 1394
    :goto_0
    return v1
.end method

.method private greylist-max-o createScrollingCache()V
    .locals 1

    .line 5884
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mScrollingCacheEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mCachingStarted:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isHardwareAccelerated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5885
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 5886
    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->setChildrenDrawingCacheEnabled(Z)V

    .line 5887
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mCachingActive:Z

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mCachingStarted:Z

    .line 5889
    :cond_0
    return-void
.end method

.method private greylist-max-o createTextFilter(Z)V
    .locals 2
    .param p1, "animateEntrance"    # Z

    .line 6987
    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-nez v0, :cond_0

    .line 6988
    new-instance v0, Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    .line 6989
    .local v0, "p":Landroid/widget/PopupWindow;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 6990
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 6991
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 6992
    invoke-direct {p0}, Landroid/widget/AbsListView;->getTextFilterInput()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 6993
    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 6994
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 6995
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 6996
    iput-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    .line 6997
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 6998
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/AbsListView;->mGlobalLayoutListenerAddedFilter:Z

    .line 7000
    .end local v0    # "p":Landroid/widget/PopupWindow;
    :cond_0
    if-eqz p1, :cond_1

    .line 7001
    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    const v1, 0x1030315

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    goto :goto_0

    .line 7003
    :cond_1
    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    const v1, 0x1030316

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 7005
    :goto_0
    return-void
.end method

.method private greylist-max-o dismissPopup()V
    .locals 1

    .line 6595
    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 6596
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 6598
    :cond_0
    return-void
.end method

.method private blacklist doesTouchStopStretch()Z
    .locals 2

    .line 4329
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

    .line 4330
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

    .line 4329
    :goto_0
    return v0
.end method

.method private blacklist drawGoToTop(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 9549
    iget v0, p0, Landroid/widget/AbsListView;->mScrollY:I

    .line 9550
    .local v0, "scrollY":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 9551
    .local v1, "restoreCount":I
    int-to-float v2, v0

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 9553
    invoke-direct {p0}, Landroid/widget/AbsListView;->canScrollUp()Z

    move-result v2

    if-nez v2, :cond_0

    iget v2, p0, Landroid/widget/AbsListView;->mSemGoToTopState:I

    if-eqz v2, :cond_0

    .line 9554
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->semSetupGoToTop(I)V

    .line 9557
    :cond_0
    iget-object v2, p0, Landroid/widget/AbsListView;->mSemGoToTopRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 9558
    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 9559
    invoke-virtual {p1}, Landroid/graphics/Canvas;->enableZ()V

    .line 9560
    iget-object v2, p0, Landroid/widget/AbsListView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v2

    int-to-float v2, v2

    const/high16 v4, 0x437f0000    # 255.0f

    div-float/2addr v2, v4

    .line 9561
    .local v2, "alpha":F
    iget-object v4, p0, Landroid/widget/AbsListView;->mGoToTopRenderNode:Landroid/graphics/RenderNode;

    invoke-virtual {v4}, Landroid/graphics/RenderNode;->beginRecording()Landroid/graphics/RecordingCanvas;

    move-result-object v4

    .line 9562
    .local v4, "recordingCanvas":Landroid/graphics/RecordingCanvas;
    iget-object v5, p0, Landroid/widget/AbsListView;->mOutline:Landroid/graphics/Outline;

    invoke-virtual {v5, v2}, Landroid/graphics/Outline;->setAlpha(F)V

    .line 9563
    iget-object v5, p0, Landroid/widget/AbsListView;->mGoToTopRenderNode:Landroid/graphics/RenderNode;

    iget-object v6, p0, Landroid/widget/AbsListView;->mOutline:Landroid/graphics/Outline;

    invoke-virtual {v5, v6}, Landroid/graphics/RenderNode;->setOutline(Landroid/graphics/Outline;)Z

    .line 9564
    iget-object v5, p0, Landroid/widget/AbsListView;->mGoToTopRenderNode:Landroid/graphics/RenderNode;

    invoke-virtual {v5, v2}, Landroid/graphics/RenderNode;->setAlpha(F)Z

    .line 9565
    iget-object v5, p0, Landroid/widget/AbsListView;->mSemGoToTopBitmap:Landroid/graphics/Bitmap;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v3, v3, v6}, Landroid/graphics/RecordingCanvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 9566
    iget-object v3, p0, Landroid/widget/AbsListView;->mGoToTopRenderNode:Landroid/graphics/RenderNode;

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->drawRenderNode(Landroid/graphics/RenderNode;)V

    .line 9567
    iget-object v3, p0, Landroid/widget/AbsListView;->mGoToTopRenderNode:Landroid/graphics/RenderNode;

    invoke-virtual {v3}, Landroid/graphics/RenderNode;->endRecording()V

    .line 9568
    invoke-virtual {p1}, Landroid/graphics/Canvas;->disableZ()V

    .line 9569
    .end local v2    # "alpha":F
    .end local v4    # "recordingCanvas":Landroid/graphics/RecordingCanvas;
    goto :goto_0

    .line 9570
    :cond_1
    iget-object v2, p0, Landroid/widget/AbsListView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 9573
    :cond_2
    :goto_0
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 9574
    return-void
.end method

.method private greylist-max-o drawSelector(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 3108
    invoke-virtual {p0}, Landroid/widget/AbsListView;->shouldDrawSelector()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3109
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 3110
    .local v0, "selector":Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 3111
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3114
    .end local v0    # "selector":Landroid/graphics/drawable/Drawable;
    :cond_0
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mIsMultiFocusEnabled:Z

    if-eqz v0, :cond_2

    .line 3115
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 3116
    .local v0, "tempSelectorRect":Landroid/graphics/Rect;
    const/4 v1, 0x0

    .line 3117
    .local v1, "selectedChild":Landroid/view/View;
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

    .line 3118
    .local v3, "selectedPosition":Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget v5, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int/2addr v4, v5

    invoke-virtual {p0, v4}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3119
    if-eqz v1, :cond_1

    .line 3120
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v6

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v7

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 3121
    iget-object v4, p0, Landroid/widget/AbsListView;->mMultiFocusImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 3122
    iget-object v4, p0, Landroid/widget/AbsListView;->mMultiFocusImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3124
    .end local v3    # "selectedPosition":Ljava/lang/Integer;
    :cond_1
    goto :goto_0

    .line 3126
    .end local v0    # "tempSelectorRect":Landroid/graphics/Rect;
    .end local v1    # "selectedChild":Landroid/view/View;
    :cond_2
    return-void
.end method

.method private blacklist drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 9577
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 9578
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 9577
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 9579
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 9580
    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p1, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 9581
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 9582
    return-object v0
.end method

.method private blacklist endLongPressMultiSelection(II)V
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 10413
    invoke-super {p0, p1, p2}, Landroid/widget/AdapterView;->semNotifyLongPressMultiSelectionEnded(II)V

    .line 10415
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mIsFirstMultiSelectionMove:Z

    .line 10416
    const/4 v1, -0x1

    iput v1, p0, Landroid/widget/AbsListView;->mSemDragSelectedViewPosition:I

    .line 10418
    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/AbsListView;->mSemDragStartX:I

    .line 10419
    iput v1, p0, Landroid/widget/AbsListView;->mSemDragStartY:I

    .line 10420
    iput v1, p0, Landroid/widget/AbsListView;->mSemDragEndX:I

    .line 10421
    iput v1, p0, Landroid/widget/AbsListView;->mSemDragEndY:I

    .line 10423
    iput v1, p0, Landroid/widget/AbsListView;->mSemDragBlockLeft:I

    .line 10424
    iput v1, p0, Landroid/widget/AbsListView;->mSemDragBlockTop:I

    .line 10425
    iput v1, p0, Landroid/widget/AbsListView;->mSemDragBlockRight:I

    .line 10426
    iput v1, p0, Landroid/widget/AbsListView;->mSemDragBlockBottom:I

    .line 10428
    iget-object v2, p0, Landroid/widget/AbsListView;->mSemDragSelectedItemArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 10429
    iput v1, p0, Landroid/widget/AbsListView;->mSemDragSelectedItemSize:I

    .line 10430
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/widget/AbsListView;->mSemTrackedChild:Landroid/view/View;

    .line 10431
    iput v1, p0, Landroid/widget/AbsListView;->mSemDistanceFromTrackedChildTop:I

    .line 10434
    iget-object v2, p0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    invoke-virtual {v2, v0}, Landroid/widget/AbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 10435
    iget-object v2, p0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    invoke-virtual {v2, v0}, Landroid/widget/AbsListView$HoverScrollHandler;->removeMessages(I)V

    .line 10437
    :cond_0
    iput-boolean v1, p0, Landroid/widget/AbsListView;->mIsHoverOverscrolled:Z

    .line 10439
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidate()V

    .line 10440
    iput-boolean v1, p0, Landroid/widget/AbsListView;->mIsLongPressMultiSelection:Z

    .line 10441
    return-void
.end method

.method private greylist-max-o finishGlows()V
    .locals 1

    .line 7236
    invoke-direct {p0}, Landroid/widget/AbsListView;->shouldDisplayEdgeEffects()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7237
    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->finish()V

    .line 7238
    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->finish()V

    .line 7240
    :cond_0
    return-void
.end method

.method static greylist-max-o getDistance(Landroid/graphics/Rect;Landroid/graphics/Rect;I)I
    .locals 8
    .param p0, "source"    # Landroid/graphics/Rect;
    .param p1, "dest"    # Landroid/graphics/Rect;
    .param p2, "direction"    # I

    .line 6641
    sparse-switch p2, :sswitch_data_0

    .line 6674
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT, FOCUS_FORWARD, FOCUS_BACKWARD}."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6649
    :sswitch_0
    iget v0, p0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 6650
    .local v0, "sX":I
    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    .line 6651
    .local v1, "sY":I
    iget v2, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    .line 6652
    .local v2, "dX":I
    iget v3, p1, Landroid/graphics/Rect;->top:I

    .line 6653
    .local v3, "dY":I
    goto :goto_0

    .line 6643
    .end local v0    # "sX":I
    .end local v1    # "sY":I
    .end local v2    # "dX":I
    .end local v3    # "dY":I
    :sswitch_1
    iget v0, p0, Landroid/graphics/Rect;->right:I

    .line 6644
    .restart local v0    # "sX":I
    iget v1, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    .line 6645
    .restart local v1    # "sY":I
    iget v2, p1, Landroid/graphics/Rect;->left:I

    .line 6646
    .restart local v2    # "dX":I
    iget v3, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    .line 6647
    .restart local v3    # "dY":I
    goto :goto_0

    .line 6661
    .end local v0    # "sX":I
    .end local v1    # "sY":I
    .end local v2    # "dX":I
    .end local v3    # "dY":I
    :sswitch_2
    iget v0, p0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 6662
    .restart local v0    # "sX":I
    iget v1, p0, Landroid/graphics/Rect;->top:I

    .line 6663
    .restart local v1    # "sY":I
    iget v2, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    .line 6664
    .restart local v2    # "dX":I
    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    .line 6665
    .restart local v3    # "dY":I
    goto :goto_0

    .line 6655
    .end local v0    # "sX":I
    .end local v1    # "sY":I
    .end local v2    # "dX":I
    .end local v3    # "dY":I
    :sswitch_3
    iget v0, p0, Landroid/graphics/Rect;->left:I

    .line 6656
    .restart local v0    # "sX":I
    iget v1, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    .line 6657
    .restart local v1    # "sY":I
    iget v2, p1, Landroid/graphics/Rect;->right:I

    .line 6658
    .restart local v2    # "dX":I
    iget v3, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    .line 6659
    .restart local v3    # "dY":I
    goto :goto_0

    .line 6668
    .end local v0    # "sX":I
    .end local v1    # "sY":I
    .end local v2    # "dX":I
    .end local v3    # "dY":I
    :sswitch_4
    iget v0, p0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 6669
    .restart local v0    # "sX":I
    iget v1, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    .line 6670
    .restart local v1    # "sY":I
    iget v2, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    .line 6671
    .restart local v2    # "dX":I
    iget v3, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    .line 6672
    .restart local v3    # "dY":I
    nop

    .line 6678
    :goto_0
    sub-int v4, v2, v0

    .line 6679
    .local v4, "deltaX":I
    sub-int v5, v3, v1

    .line 6680
    .local v5, "deltaY":I
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

    .line 3277
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mIsChildViewEnabled:Z

    if-eqz v0, :cond_0

    .line 3279
    invoke-super {p0}, Landroid/widget/AdapterView;->getDrawableState()[I

    move-result-object v0

    return-object v0

    .line 3285
    :cond_0
    sget-object v0, Landroid/widget/AbsListView;->ENABLED_STATE_SET:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    .line 3291
    .local v0, "enabledState":I
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->onCreateDrawableState(I)[I

    move-result-object v2

    .line 3293
    .local v2, "state":[I
    const/4 v3, -0x1

    .line 3294
    .local v3, "enabledPos":I
    array-length v4, v2

    sub-int/2addr v4, v1

    .local v4, "i":I
    :goto_0
    if-ltz v4, :cond_2

    .line 3295
    aget v5, v2, v4

    if-ne v5, v0, :cond_1

    .line 3296
    move v3, v4

    .line 3297
    goto :goto_1

    .line 3294
    :cond_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 3302
    .end local v4    # "i":I
    :cond_2
    :goto_1
    if-ltz v3, :cond_3

    .line 3303
    add-int/lit8 v4, v3, 0x1

    array-length v5, v2

    sub-int/2addr v5, v3

    sub-int/2addr v5, v1

    invoke-static {v2, v4, v2, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3307
    :cond_3
    return-object v2
.end method

.method private greylist-max-o getTextFilterInput()Landroid/widget/EditText;
    .locals 3

    .line 7008
    iget-object v0, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    if-nez v0, :cond_0

    .line 7009
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 7010
    .local v0, "layoutInflater":Landroid/view/LayoutInflater;
    const v1, 0x10901d4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    .line 7015
    const/16 v2, 0xb1

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setRawInputType(I)V

    .line 7017
    iget-object v1, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 7018
    iget-object v1, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v1, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 7020
    .end local v0    # "layoutInflater":Landroid/view/LayoutInflater;
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    return-object v0
.end method

.method private blacklist handleMessage(Landroid/os/Message;)V
    .locals 17
    .param p1, "msg"    # Landroid/os/Message;

    .line 9157
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_a

    .line 9159
    :pswitch_0
    const/4 v2, 0x0

    .line 9161
    .local v2, "offset":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 9162
    .local v3, "hoverRecognitionCurrentTime":J
    iget-wide v5, v0, Landroid/widget/AbsListView;->mHoverRecognitionStartTime:J

    sub-long v5, v3, v5

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    .line 9164
    .local v5, "hoverRecognitionDurationTime":J
    iget-boolean v7, v0, Landroid/widget/AbsListView;->mIsPenHovered:Z

    if-eqz v7, :cond_0

    iget-wide v8, v0, Landroid/widget/AbsListView;->mHoverScrollStartTime:J

    sub-long v8, v3, v8

    iget-wide v10, v0, Landroid/widget/AbsListView;->mHoverScrollTimeInterval:J

    cmp-long v8, v8, v10

    if-gez v8, :cond_0

    .line 9165
    goto/16 :goto_a

    .line 9166
    :cond_0
    iget-boolean v8, v0, Landroid/widget/AbsListView;->mIsPenPressed:Z

    if-eqz v8, :cond_1

    iget-wide v8, v0, Landroid/widget/AbsListView;->mHoverScrollStartTime:J

    sub-long v8, v3, v8

    iget-wide v10, v0, Landroid/widget/AbsListView;->mPenDragScrollTimeInterval:J

    cmp-long v8, v8, v10

    if-gez v8, :cond_1

    .line 9167
    goto/16 :goto_a

    .line 9170
    :cond_1
    const/4 v8, 0x1

    if-eqz v7, :cond_3

    iget-boolean v7, v0, Landroid/widget/AbsListView;->mIsSendHoverScrollState:Z

    if-nez v7, :cond_3

    .line 9171
    iget-object v7, v0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v7, :cond_2

    .line 9172
    iput v8, v0, Landroid/widget/AbsListView;->mHoverScrollStateForListener:I

    .line 9173
    invoke-interface {v7, v0, v8}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 9176
    :cond_2
    iput-boolean v8, v0, Landroid/widget/AbsListView;->mIsSendHoverScrollState:Z

    .line 9177
    iput-boolean v8, v0, Landroid/widget/AbsListView;->mIsHoverScrolled:Z

    .line 9180
    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v7

    .line 9185
    .local v7, "count":I
    iget v9, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    add-int/2addr v9, v7

    iget v10, v0, Landroid/widget/AbsListView;->mItemCount:I

    const/4 v11, 0x0

    if-ge v9, v10, :cond_4

    move v9, v8

    goto :goto_0

    :cond_4
    move v9, v11

    .line 9187
    .local v9, "canScrollDown":Z
    :goto_0
    if-nez v9, :cond_7

    if-lez v7, :cond_7

    .line 9188
    add-int/lit8 v10, v7, -0x1

    invoke-virtual {v0, v10}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 9189
    .local v10, "child":Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v12

    iget v13, v0, Landroid/widget/AbsListView;->mBottom:I

    iget-object v14, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v13, v14

    if-gt v12, v13, :cond_6

    .line 9190
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

    .line 9194
    .end local v10    # "child":Landroid/view/View;
    :cond_7
    iget v10, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    if-lez v10, :cond_8

    move v10, v8

    goto :goto_3

    :cond_8
    move v10, v11

    .line 9196
    .local v10, "canScrollUp":Z
    :goto_3
    if-nez v10, :cond_a

    .line 9197
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v12

    if-lez v12, :cond_a

    .line 9198
    invoke-virtual {v0, v11}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 9199
    .local v12, "child":Landroid/view/View;
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

    .line 9203
    .end local v12    # "child":Landroid/view/View;
    :cond_a
    const/high16 v12, 0x41700000    # 15.0f

    iget-object v13, v0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    .line 9204
    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v13

    .line 9203
    invoke-static {v8, v12, v13}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v12

    const/high16 v13, 0x3f000000    # 0.5f

    add-float/2addr v12, v13

    float-to-int v12, v12

    .line 9206
    .local v12, "mHoverScrollSpeed":I
    const-wide/16 v13, 0x3

    cmp-long v13, v5, v13

    if-nez v13, :cond_b

    .line 9207
    int-to-double v13, v12

    const-wide v15, 0x3fb999999999999aL    # 0.1

    mul-double/2addr v13, v15

    double-to-int v13, v13

    add-int/2addr v12, v13

    goto :goto_5

    .line 9208
    :cond_b
    const-wide/16 v13, 0x4

    cmp-long v13, v5, v13

    if-nez v13, :cond_c

    .line 9209
    int-to-double v13, v12

    const-wide v15, 0x3fc999999999999aL    # 0.2

    mul-double/2addr v13, v15

    double-to-int v13, v13

    add-int/2addr v12, v13

    goto :goto_5

    .line 9210
    :cond_c
    const-wide/16 v13, 0x5

    cmp-long v13, v5, v13

    if-ltz v13, :cond_d

    .line 9211
    int-to-double v13, v12

    const-wide v15, 0x3fd3333333333333L    # 0.3

    mul-double/2addr v13, v15

    double-to-int v13, v13

    add-int/2addr v12, v13

    .line 9214
    :cond_d
    :goto_5
    iget v13, v0, Landroid/widget/AbsListView;->mHoverScrollDirection:I

    const/4 v14, 0x2

    if-ne v13, v14, :cond_10

    .line 9215
    mul-int/lit8 v2, v12, -0x1

    .line 9216
    iget-object v15, v0, Landroid/widget/AbsListView;->mSemTrackedChild:Landroid/view/View;

    if-nez v15, :cond_e

    iget-object v15, v0, Landroid/widget/AbsListView;->mSemCloseChildByBottom:Landroid/view/View;

    if-nez v15, :cond_f

    :cond_e
    iget v15, v0, Landroid/widget/AbsListView;->mOldHoverScrollDirection:I

    if-eq v15, v13, :cond_13

    iget-boolean v15, v0, Landroid/widget/AbsListView;->mIsCloseChildSetted:Z

    if-ne v15, v8, :cond_13

    .line 9217
    :cond_f
    iget-object v15, v0, Landroid/widget/AbsListView;->mSemCloseChildByBottom:Landroid/view/View;

    iput-object v15, v0, Landroid/widget/AbsListView;->mSemTrackedChild:Landroid/view/View;

    .line 9218
    iget v15, v0, Landroid/widget/AbsListView;->mSemDistanceFromCloseChildBottom:I

    iput v15, v0, Landroid/widget/AbsListView;->mSemDistanceFromTrackedChildTop:I

    .line 9219
    iget v15, v0, Landroid/widget/AbsListView;->mSemCloseChildPositionByBottom:I

    iput v15, v0, Landroid/widget/AbsListView;->mSemTrackedChildPosition:I

    .line 9220
    iput v13, v0, Landroid/widget/AbsListView;->mOldHoverScrollDirection:I

    .line 9221
    iput-boolean v8, v0, Landroid/widget/AbsListView;->mIsCloseChildSetted:Z

    goto :goto_6

    .line 9224
    :cond_10
    move v2, v12

    .line 9225
    iget-object v15, v0, Landroid/widget/AbsListView;->mSemTrackedChild:Landroid/view/View;

    if-nez v15, :cond_11

    iget-object v15, v0, Landroid/widget/AbsListView;->mSemCloseChildByTop:Landroid/view/View;

    if-nez v15, :cond_12

    :cond_11
    iget v15, v0, Landroid/widget/AbsListView;->mOldHoverScrollDirection:I

    if-eq v15, v13, :cond_13

    iget-boolean v15, v0, Landroid/widget/AbsListView;->mIsCloseChildSetted:Z

    if-ne v15, v8, :cond_13

    .line 9226
    :cond_12
    iget-object v15, v0, Landroid/widget/AbsListView;->mSemCloseChildByTop:Landroid/view/View;

    iput-object v15, v0, Landroid/widget/AbsListView;->mSemTrackedChild:Landroid/view/View;

    .line 9227
    iget v15, v0, Landroid/widget/AbsListView;->mSemDistanceFromCloseChildTop:I

    iput v15, v0, Landroid/widget/AbsListView;->mSemDistanceFromTrackedChildTop:I

    .line 9228
    iget v15, v0, Landroid/widget/AbsListView;->mSemCloseChildPositionByTop:I

    iput v15, v0, Landroid/widget/AbsListView;->mSemTrackedChildPosition:I

    .line 9229
    iput v13, v0, Landroid/widget/AbsListView;->mOldHoverScrollDirection:I

    .line 9230
    iput-boolean v8, v0, Landroid/widget/AbsListView;->mIsCloseChildSetted:Z

    .line 9234
    :cond_13
    :goto_6
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v13

    sub-int/2addr v13, v8

    invoke-virtual {v0, v13}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    if-nez v13, :cond_14

    .line 9235
    goto/16 :goto_a

    .line 9238
    :cond_14
    if-gez v2, :cond_15

    if-nez v10, :cond_16

    :cond_15
    if-lez v2, :cond_18

    if-eqz v9, :cond_18

    .line 9239
    :cond_16
    invoke-virtual {v0, v2, v11}, Landroid/widget/AbsListView;->smoothScrollBy(II)V

    .line 9243
    iget-boolean v13, v0, Landroid/widget/AbsListView;->mIsLongPressMultiSelection:Z

    if-eqz v13, :cond_17

    .line 9244
    iget v13, v0, Landroid/widget/AbsListView;->mSemDragEndX:I

    iget v14, v0, Landroid/widget/AbsListView;->mSemDragEndY:I

    invoke-direct {v0, v13, v14, v11}, Landroid/widget/AbsListView;->updateLongPressMultiSelection(IIZ)V

    .line 9248
    :cond_17
    iget-object v11, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    const-wide/16 v13, 0x0

    invoke-virtual {v11, v8, v13, v14}, Landroid/widget/AbsListView$HoverScrollHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_a

    .line 9251
    :cond_18
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getOverScrollMode()I

    move-result v13

    .line 9252
    .local v13, "overScrollMode":I
    if-eqz v13, :cond_1a

    if-ne v13, v8, :cond_19

    .line 9253
    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->contentFits()Z

    move-result v15

    if-nez v15, :cond_19

    goto :goto_7

    :cond_19
    goto :goto_8

    :cond_1a
    :goto_7
    move v11, v8

    .line 9255
    .local v11, "canOverScroll":Z
    :goto_8
    if-eqz v11, :cond_1f

    iget-boolean v15, v0, Landroid/widget/AbsListView;->mIsHoverOverscrolled:Z

    if-nez v15, :cond_1f

    .line 9256
    iget v15, v0, Landroid/widget/AbsListView;->mHoverScrollDirection:I

    if-ne v15, v14, :cond_1b

    .line 9257
    iget-object v14, v0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v8

    invoke-virtual {v14, v15, v8}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 9258
    iget-object v8, v0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    const/16 v14, 0x2710

    invoke-virtual {v8, v14}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    .line 9260
    iget-object v8, v0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v8}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v8

    if-nez v8, :cond_1c

    .line 9261
    iget-object v8, v0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v8}, Landroid/widget/EdgeEffect;->onRelease()V

    goto :goto_9

    .line 9263
    :cond_1b
    const/4 v8, 0x1

    if-ne v15, v8, :cond_1c

    .line 9264
    iget-object v14, v0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v8

    invoke-virtual {v14, v15, v8}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 9265
    iget-object v8, v0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    const/16 v14, 0x2710

    invoke-virtual {v8, v14}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    .line 9267
    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Landroid/widget/AbsListView;->semSetupGoToTop(I)V

    .line 9268
    invoke-virtual {v0, v8}, Landroid/widget/AbsListView;->semAutoHide(I)V

    .line 9269
    iget-object v8, v0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v8}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v8

    if-nez v8, :cond_1c

    .line 9270
    iget-object v8, v0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v8}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 9274
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

    .line 9275
    :cond_1d
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->invalidate()V

    .line 9277
    :cond_1e
    const/4 v8, 0x1

    iput-boolean v8, v0, Landroid/widget/AbsListView;->mIsHoverOverscrolled:Z

    .line 9280
    :cond_1f
    if-nez v11, :cond_20

    iget-boolean v8, v0, Landroid/widget/AbsListView;->mIsHoverOverscrolled:Z

    if-nez v8, :cond_20

    .line 9281
    const/4 v8, 0x1

    iput-boolean v8, v0, Landroid/widget/AbsListView;->mIsHoverOverscrolled:Z

    .line 9284
    .end local v11    # "canOverScroll":Z
    .end local v13    # "overScrollMode":I
    :cond_20
    nop

    .line 9288
    .end local v2    # "offset":I
    .end local v3    # "hoverRecognitionCurrentTime":J
    .end local v5    # "hoverRecognitionDurationTime":J
    .end local v7    # "count":I
    .end local v9    # "canScrollDown":Z
    .end local v10    # "canScrollUp":Z
    .end local v12    # "mHoverScrollSpeed":I
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
    .param p1, "edgeEffect"    # Landroid/widget/EdgeEffect;

    .line 11464
    iput-object p1, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    .line 11465
    return-void
.end method

.method private greylist hidden_mEdgeGlowTop()Landroid/widget/EdgeEffect;
    .locals 1

    .line 11480
    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    return-object v0
.end method

.method private greylist hidden_mEdgeGlowTop(Landroid/widget/EdgeEffect;)V
    .locals 0
    .param p1, "edgeEffect"    # Landroid/widget/EdgeEffect;

    .line 11472
    iput-object p1, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    .line 11473
    return-void
.end method

.method private greylist-max-o initAbsListView()V
    .locals 7

    .line 976
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->setClickable(Z)V

    .line 977
    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->setFocusableInTouchMode(Z)V

    .line 978
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->setWillNotDraw(Z)V

    .line 979
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 980
    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->setScrollingCacheEnabled(Z)V

    .line 982
    iget-object v1, p0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    .line 983
    .local v1, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    iput v2, p0, Landroid/widget/AbsListView;->mTouchSlop:I

    .line 984
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledVerticalScrollFactor()F

    move-result v2

    iput v2, p0, Landroid/widget/AbsListView;->mVerticalScrollFactor:F

    .line 985
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v2

    iput v2, p0, Landroid/widget/AbsListView;->mMinimumVelocity:I

    .line 986
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v2

    iput v2, p0, Landroid/widget/AbsListView;->mMaximumVelocity:I

    .line 987
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledOverscrollDistance()I

    move-result v2

    iput v2, p0, Landroid/widget/AbsListView;->mOverscrollDistance:I

    .line 988
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledOverflingDistance()I

    move-result v2

    iput v2, p0, Landroid/widget/AbsListView;->mOverflingDistance:I

    .line 990
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    iput v2, p0, Landroid/widget/AbsListView;->mDensityScale:F

    .line 993
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 994
    .local v2, "value":Landroid/util/TypedValue;
    iget-object v3, p0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    const v4, 0x1120164

    invoke-virtual {v3, v4, v2, v0}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v3

    .line 996
    .local v3, "resolved":Z
    if-eqz v3, :cond_0

    .line 997
    iget-object v4, p0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, v2, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Landroid/widget/AbsListView;->mMultiFocusImage:Landroid/graphics/drawable/Drawable;

    .line 999
    :cond_0
    iget-object v4, p0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    const v5, 0x1120163

    invoke-virtual {v4, v5, v2, v0}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v3

    .line 1000
    if-eqz v3, :cond_1

    .line 1001
    iget-object v4, p0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, v2, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Landroid/widget/AbsListView;->mSemDragBlockImage:Landroid/graphics/drawable/Drawable;

    .line 1003
    :cond_1
    iget-object v4, p0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    const v5, 0x112012d

    invoke-virtual {v4, v5, v2, v0}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v0

    .line 1004
    .end local v3    # "resolved":Z
    .local v0, "resolved":Z
    if-eqz v0, :cond_2

    .line 1005
    iget-object v3, p0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, v2, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Landroid/widget/AbsListView;->mSemGoToTopLightImage:Landroid/graphics/drawable/Drawable;

    .line 1010
    :cond_2
    sget-boolean v3, Landroid/widget/AbsListView;->sIsSamsungBasicInteraction:Z

    if-eqz v3, :cond_3

    .line 1011
    iget-object v3, p0, Landroid/widget/AbsListView;->mSemFillOutPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1012
    iget-object v3, p0, Landroid/widget/AbsListView;->mSemFillOutPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x106035e

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 1016
    :cond_3
    return-void
.end method

.method private blacklist initGoToTOP()V
    .locals 2

    .line 9426
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/AbsListView;->mSemGoToTopRect:Landroid/graphics/Rect;

    .line 9427
    iget v0, p0, Landroid/widget/AbsListView;->mSemGoToTopState:I

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 9428
    iget-object v0, p0, Landroid/widget/AbsListView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 9430
    :cond_0
    iput v1, p0, Landroid/widget/AbsListView;->mSemGoToTopState:I

    .line 9431
    iput v1, p0, Landroid/widget/AbsListView;->mSemGoToTopLastState:I

    .line 9432
    iput-boolean v1, p0, Landroid/widget/AbsListView;->mShowGTPAtFirstTime:Z

    .line 9433
    iput v1, p0, Landroid/widget/AbsListView;->mShowFadeOutGTP:I

    .line 9434
    iget-object v0, p0, Landroid/widget/AbsListView;->mSemAutoHide:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 9435
    iget-object v0, p0, Landroid/widget/AbsListView;->mSemGoToToFadeInRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 9436
    iget-object v0, p0, Landroid/widget/AbsListView;->mSemGoToToFadeOutRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 9437
    return-void
.end method

.method private greylist-max-o initOrResetVelocityTracker()V
    .locals 1

    .line 5114
    iget-object v0, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 5115
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_0

    .line 5117
    :cond_0
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 5119
    :goto_0
    return-void
.end method

.method private greylist-max-o initVelocityTrackerIfNotExists()V
    .locals 1

    .line 5122
    iget-object v0, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 5123
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 5125
    :cond_0
    return-void
.end method

.method private blacklist invalidateEdgeEffects()V
    .locals 1

    .line 4334
    invoke-direct {p0}, Landroid/widget/AbsListView;->shouldDisplayEdgeEffects()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4335
    return-void

    .line 4337
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidate()V

    .line 4338
    return-void
.end method

.method private greylist-max-o isItemClickable(Landroid/view/View;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 2838
    invoke-virtual {p1}, Landroid/view/View;->hasExplicitFocusable()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private greylist-max-o isOwnerThread()Z
    .locals 2

    .line 1516
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
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 9057
    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 9058
    .local v1, "action":I
    const/4 v2, 0x0

    move-object/from16 v3, p1

    invoke-virtual {v3, v2}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v4

    .line 9059
    .local v4, "toolType":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getFlags()I

    move-result v5

    .line 9062
    .local v5, "flags":I
    const/16 v6, 0xa

    const/4 v7, 0x1

    const/4 v8, 0x7

    if-eq v1, v8, :cond_0

    const/16 v8, 0x9

    if-ne v1, v8, :cond_1

    :cond_0
    const/4 v8, 0x2

    if-ne v4, v8, :cond_1

    .line 9063
    iput-boolean v7, v0, Landroid/widget/AbsListView;->mIsPenHovered:Z

    goto :goto_0

    .line 9064
    :cond_1
    if-ne v1, v6, :cond_2

    .line 9065
    iput-boolean v2, v0, Landroid/widget/AbsListView;->mIsPenHovered:Z

    .line 9069
    :cond_2
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v8

    .line 9070
    .local v8, "viewRootImpl":Landroid/view/ViewRootImpl;
    if-eqz v8, :cond_4

    invoke-virtual {v8}, Landroid/view/ViewRootImpl;->isDesktopMode()Z

    move-result v9

    if-eqz v9, :cond_4

    const/4 v9, 0x3

    if-eq v4, v9, :cond_3

    const/high16 v9, 0x4000000

    and-int/2addr v9, v5

    if-eqz v9, :cond_4

    :cond_3
    move v9, v7

    goto :goto_1

    :cond_4
    move v9, v2

    :goto_1
    iput-boolean v9, v0, Landroid/widget/AbsListView;->mIsHoveredByMouse:Z

    .line 9074
    iget-object v9, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v9, :cond_f

    iget-object v9, v0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v9, :cond_f

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v9

    if-eqz v9, :cond_f

    iget-boolean v9, v0, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    if-ne v9, v7, :cond_5

    goto/16 :goto_3

    .line 9078
    :cond_5
    iget-boolean v9, v0, Landroid/widget/AbsListView;->mIsHoveredByMouse:Z

    if-eqz v9, :cond_e

    .line 9079
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->isInTouchMode()Z

    move-result v9

    if-nez v9, :cond_6

    .line 9080
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->hideSelector()V

    .line 9081
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->updateSelectorState()V

    .line 9084
    :cond_6
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->isHovered()Z

    move-result v9

    if-nez v9, :cond_7

    iget-boolean v9, v0, Landroid/widget/AbsListView;->mIsHoverScrolled:Z

    if-eqz v9, :cond_7

    .line 9085
    invoke-virtual {v0, v7}, Landroid/widget/AbsListView;->setHovered(Z)V

    .line 9086
    iput-boolean v2, v0, Landroid/widget/AbsListView;->mIsHoverScrolled:Z

    .line 9088
    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    float-to-int v9, v9

    .line 9089
    .local v9, "x":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    float-to-int v10, v10

    .line 9090
    .local v10, "y":I
    invoke-virtual {v0, v9, v10}, Landroid/widget/AbsListView;->pointToPosition(II)I

    move-result v11

    .line 9091
    .local v11, "newHoverPosition":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->shouldShowSelector()Z

    move-result v12

    .line 9093
    .local v12, "shouldShowSelector":Z
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

    .line 9094
    iput v14, v0, Landroid/widget/AbsListView;->mSelectorPosition:I

    .line 9095
    iget-object v2, v0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    .line 9096
    return-void

    .line 9099
    :cond_8
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->isHovered()Z

    move-result v13

    if-nez v13, :cond_9

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->isInTouchMode()Z

    move-result v13

    if-nez v13, :cond_9

    .line 9100
    iget-object v13, v0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    sget-object v15, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v13, v15}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 9103
    :cond_9
    if-gez v11, :cond_c

    .line 9104
    if-nez v12, :cond_a

    .line 9105
    iget-object v6, v0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->setEmpty()V

    .line 9108
    :cond_a
    iget-boolean v6, v0, Landroid/widget/AbsListView;->mHoveredOnEllipsizedText:Z

    if-eqz v6, :cond_b

    .line 9109
    iget-object v6, v0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    sget-object v7, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 9110
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->postInvalidateOnAnimation()V

    .line 9111
    iput-boolean v2, v0, Landroid/widget/AbsListView;->mHoveredOnEllipsizedText:Z

    .line 9113
    :cond_b
    iput v14, v0, Landroid/widget/AbsListView;->mHoverPosition:I

    .line 9114
    return-void

    .line 9117
    :cond_c
    iput v11, v0, Landroid/widget/AbsListView;->mHoverPosition:I

    .line 9118
    iget v13, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int v13, v11, v13

    invoke-virtual {v0, v13}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 9120
    .local v13, "child":Landroid/view/View;
    iget-object v15, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    iget v14, v0, Landroid/widget/AbsListView;->mHoverPosition:I

    invoke-interface {v15, v14}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v14

    if-eqz v14, :cond_d

    iget-boolean v14, v0, Landroid/widget/AbsListView;->mIsHoveredByMouse:Z

    if-eqz v14, :cond_d

    .line 9121
    iget v14, v0, Landroid/widget/AbsListView;->mHoverPosition:I

    invoke-virtual {v0, v14, v13}, Landroid/widget/AbsListView;->positionSelector(ILandroid/view/View;)V

    .line 9122
    iput-boolean v7, v0, Landroid/widget/AbsListView;->mHoveredOnEllipsizedText:Z

    .line 9123
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->updateSelectorState()V

    goto :goto_2

    .line 9125
    :cond_d
    iget-object v7, v0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->setEmpty()V

    .line 9126
    iget-object v7, v0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    sget-object v14, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v7, v14}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 9127
    iput-boolean v2, v0, Landroid/widget/AbsListView;->mHoveredOnEllipsizedText:Z

    .line 9130
    :goto_2
    if-ne v1, v6, :cond_e

    .line 9131
    iput-boolean v2, v0, Landroid/widget/AbsListView;->mHoveredOnEllipsizedText:Z

    .line 9132
    const/4 v2, -0x1

    iput v2, v0, Landroid/widget/AbsListView;->mHoverPosition:I

    .line 9133
    iget-object v2, v0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    sget-object v6, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v2, v6}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 9134
    iget-object v2, v0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    .line 9135
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->postInvalidateOnAnimation()V

    .line 9138
    .end local v9    # "x":I
    .end local v10    # "y":I
    .end local v11    # "newHoverPosition":I
    .end local v12    # "shouldShowSelector":Z
    .end local v13    # "child":Landroid/view/View;
    :cond_e
    return-void

    .line 9075
    :cond_f
    :goto_3
    return-void
.end method

.method private greylist-max-o onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 5266
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const v1, 0xff00

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x8

    .line 5268
    .local v0, "pointerIndex":I
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 5269
    .local v1, "pointerId":I
    iget v2, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    if-ne v1, v2, :cond_1

    .line 5273
    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 5274
    .local v3, "newPointerIndex":I
    :goto_0
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Landroid/widget/AbsListView;->mMotionX:I

    .line 5275
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Landroid/widget/AbsListView;->mMotionY:I

    .line 5276
    iput v2, p0, Landroid/widget/AbsListView;->mMotionCorrection:I

    .line 5277
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    iput v2, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 5281
    iget v2, p0, Landroid/widget/AbsListView;->mMotionY:I

    iput v2, p0, Landroid/widget/AbsListView;->mLastY:I

    .line 5284
    .end local v3    # "newPointerIndex":I
    :cond_1
    return-void
.end method

.method private greylist-max-o onTouchCancel()V
    .locals 4

    .line 4858
    iget v0, p0, Landroid/widget/AbsListView;->mTouchMode:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 4871
    iput v1, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4872
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->setPressed(Z)V

    .line 4873
    iget v0, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    iget v3, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int/2addr v0, v3

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 4874
    .local v0, "motionView":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 4875
    invoke-virtual {v0, v2}, Landroid/view/View;->setPressed(Z)V

    goto :goto_0

    .line 4868
    .end local v0    # "motionView":Landroid/view/View;
    :pswitch_0
    goto :goto_1

    .line 4860
    :pswitch_1
    iget-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-nez v0, :cond_0

    .line 4861
    new-instance v0, Landroid/widget/AbsListView$FlingRunnable;

    invoke-direct {v0, p0}, Landroid/widget/AbsListView$FlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    .line 4863
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {v0}, Landroid/widget/AbsListView$FlingRunnable;->startSpringback()V

    .line 4864
    goto :goto_1

    .line 4877
    .restart local v0    # "motionView":Landroid/view/View;
    :cond_1
    :goto_0
    invoke-direct {p0}, Landroid/widget/AbsListView;->clearScrollingCache()V

    .line 4878
    iget-object v3, p0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4880
    iget-object v3, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-eqz v3, :cond_2

    invoke-direct {p0}, Landroid/widget/AbsListView;->semIsTalkBackIsRunning()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 4881
    iget-object v3, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {v3}, Landroid/widget/AbsListView$FlingRunnable;->endFling()V

    .line 4884
    :cond_2
    invoke-direct {p0}, Landroid/widget/AbsListView;->recycleVelocityTracker()V

    .line 4887
    .end local v0    # "motionView":Landroid/view/View;
    :goto_1
    invoke-direct {p0}, Landroid/widget/AbsListView;->shouldDisplayEdgeEffects()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4888
    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 4889
    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 4891
    :cond_3
    iput v1, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 4893
    iput v2, p0, Landroid/widget/AbsListView;->mPointerCount:I

    .line 4895
    return-void

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private greylist-max-o onTouchDown(Landroid/view/MotionEvent;)V
    .locals 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 4517
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mHasPerformedLongPress:Z

    .line 4518
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 4519
    invoke-virtual {p0}, Landroid/widget/AbsListView;->hideSelector()V

    .line 4521
    iget v1, p0, Landroid/widget/AbsListView;->mPointerCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/widget/AbsListView;->mPointerCount:I

    .line 4524
    iget v1, p0, Landroid/widget/AbsListView;->mTouchMode:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_2

    .line 4526
    iget-object v1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-eqz v1, :cond_0

    .line 4527
    invoke-virtual {v1}, Landroid/widget/AbsListView$FlingRunnable;->endFling()V

    .line 4529
    :cond_0
    iget-object v1, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-eqz v1, :cond_1

    .line 4530
    invoke-virtual {v1}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    .line 4532
    :cond_1
    const/4 v1, 0x5

    iput v1, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4533
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Landroid/widget/AbsListView;->mMotionX:I

    .line 4534
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Landroid/widget/AbsListView;->mMotionY:I

    .line 4535
    iput v1, p0, Landroid/widget/AbsListView;->mLastY:I

    .line 4536
    iput v0, p0, Landroid/widget/AbsListView;->mMotionCorrection:I

    .line 4537
    iput v0, p0, Landroid/widget/AbsListView;->mDirection:I

    .line 4538
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-direct {p0, v0}, Landroid/widget/AbsListView;->stopEdgeGlowRecede(F)V

    goto/16 :goto_1

    .line 4540
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    .line 4541
    .local v1, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    .line 4542
    .local v2, "y":I
    invoke-virtual {p0, v1, v2}, Landroid/widget/AbsListView;->pointToPosition(II)I

    move-result v3

    .line 4544
    .local v3, "motionPosition":I
    iget-boolean v4, p0, Landroid/widget/AbsListView;->mDataChanged:Z

    if-nez v4, :cond_6

    .line 4545
    iget v4, p0, Landroid/widget/AbsListView;->mTouchMode:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_4

    .line 4547
    invoke-direct {p0}, Landroid/widget/AbsListView;->createScrollingCache()V

    .line 4548
    const/4 v4, 0x3

    iput v4, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4549
    iput v0, p0, Landroid/widget/AbsListView;->mMotionCorrection:I

    .line 4550
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->findMotionRow(I)I

    move-result v3

    .line 4551
    iget-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-eqz v0, :cond_3

    .line 4552
    invoke-virtual {v0}, Landroid/widget/AbsListView$FlingRunnable;->flywheelTouch()V

    .line 4554
    :cond_3
    int-to-float v0, v1

    invoke-direct {p0, v0}, Landroid/widget/AbsListView;->stopEdgeGlowRecede(F)V

    goto :goto_0

    .line 4555
    :cond_4
    if-ltz v3, :cond_6

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v4

    check-cast v4, Landroid/widget/ListAdapter;

    invoke-interface {v4, v3}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 4559
    iput v0, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4562
    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForTap:Landroid/widget/AbsListView$CheckForTap;

    if-nez v0, :cond_5

    .line 4563
    new-instance v0, Landroid/widget/AbsListView$CheckForTap;

    const/4 v4, 0x0

    invoke-direct {v0, p0, v4}, Landroid/widget/AbsListView$CheckForTap;-><init>(Landroid/widget/AbsListView;Landroid/widget/AbsListView$CheckForTap-IA;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForTap:Landroid/widget/AbsListView$CheckForTap;

    .line 4566
    :cond_5
    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForTap:Landroid/widget/AbsListView$CheckForTap;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iput v4, v0, Landroid/widget/AbsListView$CheckForTap;->x:F

    .line 4567
    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForTap:Landroid/widget/AbsListView$CheckForTap;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iput v4, v0, Landroid/widget/AbsListView$CheckForTap;->y:F

    .line 4568
    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForTap:Landroid/widget/AbsListView$CheckForTap;

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {p0, v0, v4, v5}, Landroid/widget/AbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4572
    :cond_6
    :goto_0
    if-ltz v3, :cond_7

    .line 4574
    iget v0, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int v0, v3, v0

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 4575
    .local v0, "v":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v4

    iput v4, p0, Landroid/widget/AbsListView;->mMotionViewOriginalTop:I

    .line 4578
    .end local v0    # "v":Landroid/view/View;
    :cond_7
    iput v1, p0, Landroid/widget/AbsListView;->mMotionX:I

    .line 4579
    iput v2, p0, Landroid/widget/AbsListView;->mMotionY:I

    .line 4580
    iput v3, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 4581
    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/widget/AbsListView;->mLastY:I

    .line 4584
    .end local v1    # "x":I
    .end local v2    # "y":I
    .end local v3    # "motionPosition":I
    :goto_1
    iget v0, p0, Landroid/widget/AbsListView;->mTouchMode:I

    if-nez v0, :cond_8

    iget v0, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_8

    .line 4585
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->performButtonActionOnTouchDown(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 4586
    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForTap:Landroid/widget/AbsListView$CheckForTap;

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4588
    :cond_8
    return-void
.end method

.method private greylist-max-o onTouchMove(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)V
    .locals 8
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .param p2, "vtev"    # Landroid/view/MotionEvent;

    .line 4600
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mHasPerformedLongPress:Z

    if-eqz v0, :cond_0

    .line 4602
    return-void

    .line 4605
    :cond_0
    iget v0, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 4606
    .local v0, "pointerIndex":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 4607
    const/4 v0, 0x0

    .line 4608
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 4611
    :cond_1
    iget-boolean v1, p0, Landroid/widget/AbsListView;->mDataChanged:Z

    if-eqz v1, :cond_2

    .line 4614
    invoke-virtual {p0}, Landroid/widget/AbsListView;->layoutChildren()V

    .line 4617
    :cond_2
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    float-to-int v1, v1

    .line 4619
    .local v1, "y":I
    iget v2, p0, Landroid/widget/AbsListView;->mTouchMode:I

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    .line 4652
    :pswitch_1
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    float-to-int v2, v2

    invoke-direct {p0, v2, v1, p2}, Landroid/widget/AbsListView;->scrollIfNeeded(IILandroid/view/MotionEvent;)V

    goto :goto_1

    .line 4625
    :pswitch_2
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    float-to-int v2, v2

    invoke-direct {p0, v2, v1, p2}, Landroid/widget/AbsListView;->startScrollIfNeeded(IILandroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 4626
    goto :goto_1

    .line 4630
    :cond_3
    iget v2, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    iget v3, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 4631
    .local v2, "motionView":Landroid/view/View;
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    .line 4632
    .local v3, "x":F
    int-to-float v4, v1

    iget v5, p0, Landroid/widget/AbsListView;->mTouchSlop:I

    int-to-float v5, v5

    invoke-virtual {p0, v3, v4, v5}, Landroid/widget/AbsListView;->pointInView(FFF)Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_6

    .line 4633
    invoke-virtual {p0, v5}, Landroid/widget/AbsListView;->setPressed(Z)V

    .line 4634
    if-eqz v2, :cond_4

    .line 4635
    invoke-virtual {v2, v5}, Landroid/view/View;->setPressed(Z)V

    .line 4637
    :cond_4
    iget v4, p0, Landroid/widget/AbsListView;->mTouchMode:I

    if-nez v4, :cond_5

    .line 4638
    iget-object v4, p0, Landroid/widget/AbsListView;->mPendingCheckForTap:Landroid/widget/AbsListView$CheckForTap;

    goto :goto_0

    :cond_5
    iget-object v4, p0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    .line 4637
    :goto_0
    invoke-virtual {p0, v4}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4639
    const/4 v4, 0x2

    iput v4, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4640
    invoke-virtual {p0}, Landroid/widget/AbsListView;->updateSelectorState()V

    goto :goto_1

    .line 4641
    :cond_6
    if-eqz v2, :cond_7

    .line 4643
    iget-object v4, p0, Landroid/widget/AbsListView;->mTmpPoint:[F

    .line 4644
    .local v4, "point":[F
    aput v3, v4, v5

    .line 4645
    int-to-float v6, v1

    const/4 v7, 0x1

    aput v6, v4, v7

    .line 4646
    invoke-virtual {p0, v4, v2}, Landroid/widget/AbsListView;->transformPointToViewLocal([FLandroid/view/View;)V

    .line 4647
    aget v5, v4, v5

    aget v6, v4, v7

    invoke-virtual {v2, v5, v6}, Landroid/view/View;->drawableHotspotChanged(FF)V

    .line 4655
    .end local v2    # "motionView":Landroid/view/View;
    .end local v3    # "x":F
    .end local v4    # "point":[F
    :cond_7
    :goto_1
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
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 4659
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

    .line 4661
    iget v1, v0, Landroid/widget/AbsListView;->mTouchMode:I

    const/4 v3, 0x2

    const/16 v4, 0x3e8

    const/4 v5, -0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_7

    .line 4806
    :pswitch_1
    iget-object v1, v0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-nez v1, :cond_0

    .line 4807
    new-instance v1, Landroid/widget/AbsListView$FlingRunnable;

    invoke-direct {v1, v0}, Landroid/widget/AbsListView$FlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    iput-object v1, v0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    .line 4809
    :cond_0
    iget-object v1, v0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 4810
    .local v1, "velocityTracker":Landroid/view/VelocityTracker;
    iget v6, v0, Landroid/widget/AbsListView;->mMaximumVelocity:I

    int-to-float v6, v6

    invoke-virtual {v1, v4, v6}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 4811
    iget v4, v0, Landroid/widget/AbsListView;->mActivePointerId:I

    invoke-virtual {v1, v4}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v4

    float-to-int v4, v4

    .line 4813
    .local v4, "initialVelocity":I
    invoke-virtual {v0, v3}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 4814
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v6, v0, Landroid/widget/AbsListView;->mMinimumVelocity:I

    if-le v3, v6, :cond_1

    .line 4815
    iget-object v3, v0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    neg-int v6, v4

    invoke-virtual {v3, v6}, Landroid/widget/AbsListView$FlingRunnable;->startOverfling(I)V

    goto/16 :goto_7

    .line 4817
    :cond_1
    iget-object v3, v0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {v3}, Landroid/widget/AbsListView$FlingRunnable;->startSpringback()V

    goto/16 :goto_7

    .line 4741
    .end local v1    # "velocityTracker":Landroid/view/VelocityTracker;
    .end local v4    # "initialVelocity":I
    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    .line 4742
    .local v1, "childCount":I
    if-lez v1, :cond_e

    .line 4743
    invoke-virtual {v0, v7}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v8

    .line 4744
    .local v8, "firstChildTop":I
    add-int/lit8 v9, v1, -0x1

    invoke-virtual {v0, v9}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v9

    .line 4745
    .local v9, "lastChildBottom":I
    iget-object v10, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    .line 4746
    .local v10, "contentTop":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v11

    iget-object v12, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v11, v12

    .line 4747
    .local v11, "contentBottom":I
    iget v12, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    if-nez v12, :cond_2

    if-lt v8, v10, :cond_2

    iget v12, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    add-int/2addr v12, v1

    iget v13, v0, Landroid/widget/AbsListView;->mItemCount:I

    if-ge v12, v13, :cond_2

    .line 4749
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v12

    sub-int/2addr v12, v11

    if-gt v9, v12, :cond_2

    .line 4750
    iput v5, v0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4751
    invoke-virtual {v0, v7}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    goto/16 :goto_1

    .line 4753
    :cond_2
    iget-object v12, v0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 4754
    .local v12, "velocityTracker":Landroid/view/VelocityTracker;
    iget v13, v0, Landroid/widget/AbsListView;->mMaximumVelocity:I

    int-to-float v13, v13

    invoke-virtual {v12, v4, v13}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 4756
    iget v4, v0, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 4757
    invoke-virtual {v12, v4}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v4

    iget v13, v0, Landroid/widget/AbsListView;->mVelocityScale:F

    mul-float/2addr v4, v13

    float-to-int v4, v4

    .line 4762
    .restart local v4    # "initialVelocity":I
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v13

    iget v14, v0, Landroid/widget/AbsListView;->mMinimumVelocity:I

    if-le v13, v14, :cond_3

    move v13, v6

    goto :goto_0

    :cond_3
    move v13, v7

    .line 4763
    .local v13, "flingVelocity":Z
    :goto_0
    if-eqz v13, :cond_4

    iget-object v14, v0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v14}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v14

    if-nez v14, :cond_4

    .line 4764
    iget-object v3, v0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v3, v4}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    goto/16 :goto_1

    .line 4765
    :cond_4
    if-eqz v13, :cond_5

    iget-object v14, v0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v14}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v14

    if-nez v14, :cond_5

    .line 4766
    iget-object v3, v0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    neg-int v6, v4

    invoke-virtual {v3, v6}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    .line 4767
    invoke-virtual {v0, v7}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    goto :goto_1

    .line 4768
    :cond_5
    const/4 v14, 0x0

    if-eqz v13, :cond_a

    iget v15, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    if-nez v15, :cond_6

    iget v15, v0, Landroid/widget/AbsListView;->mOverscrollDistance:I

    sub-int v15, v10, v15

    if-eq v8, v15, :cond_a

    :cond_6
    iget v15, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    add-int/2addr v15, v1

    iget v2, v0, Landroid/widget/AbsListView;->mItemCount:I

    if-ne v15, v2, :cond_7

    iget v2, v0, Landroid/widget/AbsListView;->mOverscrollDistance:I

    add-int/2addr v2, v11

    if-eq v9, v2, :cond_a

    .line 4774
    :cond_7
    neg-int v2, v4

    int-to-float v2, v2

    invoke-virtual {v0, v14, v2}, Landroid/widget/AbsListView;->dispatchNestedPreFling(FF)Z

    move-result v2

    if-nez v2, :cond_9

    .line 4775
    iget-object v2, v0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-nez v2, :cond_8

    .line 4776
    new-instance v2, Landroid/widget/AbsListView$FlingRunnable;

    invoke-direct {v2, v0}, Landroid/widget/AbsListView$FlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    iput-object v2, v0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    .line 4778
    :cond_8
    invoke-virtual {v0, v3}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 4779
    iget-object v2, v0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    neg-int v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/AbsListView$FlingRunnable;->start(I)V

    .line 4780
    neg-int v2, v4

    int-to-float v2, v2

    invoke-virtual {v0, v14, v2, v6}, Landroid/widget/AbsListView;->dispatchNestedFling(FFZ)Z

    goto :goto_1

    .line 4782
    :cond_9
    iput v5, v0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4783
    invoke-virtual {v0, v7}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    goto :goto_1

    .line 4786
    :cond_a
    iput v5, v0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4787
    invoke-virtual {v0, v7}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 4788
    iget-object v2, v0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-eqz v2, :cond_b

    .line 4789
    invoke-virtual {v2}, Landroid/widget/AbsListView$FlingRunnable;->endFling()V

    .line 4791
    :cond_b
    iget-object v2, v0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-eqz v2, :cond_c

    .line 4792
    invoke-virtual {v2}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    .line 4794
    :cond_c
    if-eqz v13, :cond_d

    neg-int v2, v4

    int-to-float v2, v2

    invoke-virtual {v0, v14, v2}, Landroid/widget/AbsListView;->dispatchNestedPreFling(FF)Z

    move-result v2

    if-nez v2, :cond_d

    .line 4795
    neg-int v2, v4

    int-to-float v2, v2

    invoke-virtual {v0, v14, v2, v7}, Landroid/widget/AbsListView;->dispatchNestedFling(FFZ)Z

    .line 4799
    .end local v4    # "initialVelocity":I
    .end local v8    # "firstChildTop":I
    .end local v9    # "lastChildBottom":I
    .end local v10    # "contentTop":I
    .end local v11    # "contentBottom":I
    .end local v12    # "velocityTracker":Landroid/view/VelocityTracker;
    .end local v13    # "flingVelocity":Z
    :cond_d
    :goto_1
    goto/16 :goto_7

    .line 4800
    :cond_e
    iput v5, v0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4801
    invoke-virtual {v0, v7}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 4803
    goto/16 :goto_7

    .line 4665
    .end local v1    # "childCount":I
    :pswitch_3
    iget v1, v0, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 4666
    .local v1, "motionPosition":I
    iget v2, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int v2, v1, v2

    invoke-virtual {v0, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 4667
    .local v2, "child":Landroid/view/View;
    if-eqz v2, :cond_1b

    .line 4668
    iget v3, v0, Landroid/widget/AbsListView;->mTouchMode:I

    if-eqz v3, :cond_f

    .line 4669
    invoke-virtual {v2, v7}, Landroid/view/View;->setPressed(Z)V

    .line 4672
    :cond_f
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 4673
    .local v3, "x":F
    iget-object v4, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    cmpl-float v4, v3, v4

    if-lez v4, :cond_10

    .line 4674
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v4

    iget-object v8, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v8

    int-to-float v4, v4

    cmpg-float v4, v3, v4

    if-gez v4, :cond_10

    move v4, v6

    goto :goto_2

    :cond_10
    move v4, v7

    .line 4675
    .local v4, "inList":Z
    :goto_2
    if-eqz v4, :cond_1b

    invoke-virtual {v2}, Landroid/view/View;->hasExplicitFocusable()Z

    move-result v8

    if-nez v8, :cond_1b

    .line 4676
    iget-object v8, v0, Landroid/widget/AbsListView;->mPerformClick:Landroid/widget/AbsListView$PerformClick;

    if-nez v8, :cond_11

    .line 4677
    new-instance v8, Landroid/widget/AbsListView$PerformClick;

    const/4 v9, 0x0

    invoke-direct {v8, v0, v9}, Landroid/widget/AbsListView$PerformClick;-><init>(Landroid/widget/AbsListView;Landroid/widget/AbsListView$PerformClick-IA;)V

    iput-object v8, v0, Landroid/widget/AbsListView;->mPerformClick:Landroid/widget/AbsListView$PerformClick;

    .line 4680
    :cond_11
    iget-object v8, v0, Landroid/widget/AbsListView;->mPerformClick:Landroid/widget/AbsListView$PerformClick;

    .line 4681
    .local v8, "performClick":Landroid/widget/AbsListView$PerformClick;
    iput v1, v8, Landroid/widget/AbsListView$PerformClick;->mClickMotionPosition:I

    .line 4682
    invoke-virtual {v8}, Landroid/widget/AbsListView$PerformClick;->rememberWindowAttachCount()V

    .line 4684
    iput v1, v0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 4686
    iget v9, v0, Landroid/widget/AbsListView;->mTouchMode:I

    if-eqz v9, :cond_14

    if-ne v9, v6, :cond_12

    goto :goto_3

    .line 4732
    :cond_12
    iget-boolean v6, v0, Landroid/widget/AbsListView;->mDataChanged:Z

    if-eqz v6, :cond_13

    iget-boolean v6, v0, Landroid/widget/AbsListView;->mForcedClick:Z

    if-eqz v6, :cond_1b

    :cond_13
    iget-object v6, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v6, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v6

    if-eqz v6, :cond_1b

    .line 4733
    invoke-virtual {v8}, Landroid/widget/AbsListView$PerformClick;->run()V

    goto/16 :goto_6

    .line 4687
    :cond_14
    :goto_3
    if-nez v9, :cond_15

    .line 4688
    iget-object v9, v0, Landroid/widget/AbsListView;->mPendingCheckForTap:Landroid/widget/AbsListView$CheckForTap;

    goto :goto_4

    :cond_15
    iget-object v9, v0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    .line 4687
    :goto_4
    invoke-virtual {v0, v9}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4689
    iput v7, v0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 4690
    iget-boolean v7, v0, Landroid/widget/AbsListView;->mDataChanged:Z

    if-nez v7, :cond_19

    iget-object v7, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v7, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v7

    if-eqz v7, :cond_19

    .line 4691
    iput v6, v0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4692
    iget v5, v0, Landroid/widget/AbsListView;->mMotionPosition:I

    invoke-virtual {v0, v5}, Landroid/widget/AbsListView;->setSelectedPositionInt(I)V

    .line 4693
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->layoutChildren()V

    .line 4694
    invoke-virtual {v2, v6}, Landroid/view/View;->setPressed(Z)V

    .line 4695
    iget v5, v0, Landroid/widget/AbsListView;->mMotionPosition:I

    invoke-virtual {v0, v5, v2}, Landroid/widget/AbsListView;->positionSelector(ILandroid/view/View;)V

    .line 4696
    invoke-virtual {v0, v6}, Landroid/widget/AbsListView;->setPressed(Z)V

    .line 4697
    iget-object v5, v0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_17

    .line 4698
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 4699
    .local v5, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v5, :cond_16

    instance-of v6, v5, Landroid/graphics/drawable/TransitionDrawable;

    if-eqz v6, :cond_16

    .line 4700
    move-object v6, v5

    check-cast v6, Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    .line 4702
    :cond_16
    iget-object v6, v0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    invoke-virtual {v6, v3, v7}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 4704
    .end local v5    # "d":Landroid/graphics/drawable/Drawable;
    :cond_17
    iget-object v5, v0, Landroid/widget/AbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    if-eqz v5, :cond_18

    .line 4705
    invoke-virtual {v0, v5}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4707
    :cond_18
    new-instance v5, Landroid/widget/AbsListView$3;

    invoke-direct {v5, v0, v2, v8}, Landroid/widget/AbsListView$3;-><init>(Landroid/widget/AbsListView;Landroid/view/View;Landroid/widget/AbsListView$PerformClick;)V

    iput-object v5, v0, Landroid/widget/AbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    .line 4720
    nop

    .line 4721
    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v6

    int-to-long v6, v6

    .line 4720
    invoke-virtual {v0, v5, v6, v7}, Landroid/widget/AbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_5

    .line 4723
    :cond_19
    iput v5, v0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4724
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->updateSelectorState()V

    .line 4726
    iget-boolean v5, v0, Landroid/widget/AbsListView;->mForcedClick:Z

    if-eqz v5, :cond_1a

    iget-object v5, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v5, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_1a

    .line 4727
    invoke-virtual {v8}, Landroid/widget/AbsListView$PerformClick;->run()V

    .line 4731
    :cond_1a
    :goto_5
    return-void

    .line 4737
    .end local v3    # "x":F
    .end local v4    # "inList":Z
    .end local v8    # "performClick":Landroid/widget/AbsListView$PerformClick;
    :cond_1b
    :goto_6
    iput v5, v0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4738
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->updateSelectorState()V

    .line 4739
    nop

    .line 4823
    .end local v1    # "motionPosition":I
    .end local v2    # "child":Landroid/view/View;
    :goto_7
    invoke-virtual {v0, v7}, Landroid/widget/AbsListView;->setPressed(Z)V

    .line 4825
    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->shouldDisplayEdgeEffects()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 4826
    iget-object v1, v0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 4827
    iget-object v1, v0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 4831
    :cond_1c
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->invalidate()V

    .line 4832
    iget-object v1, v0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4833
    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->recycleVelocityTracker()V

    .line 4835
    iput v5, v0, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 4837
    iput v7, v0, Landroid/widget/AbsListView;->mPointerCount:I

    .line 4847
    iget-object v1, v0, Landroid/widget/AbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v1, :cond_1d

    .line 4848
    invoke-virtual {v1}, Landroid/os/StrictMode$Span;->finish()V

    .line 4849
    const/4 v1, 0x0

    iput-object v1, v0, Landroid/widget/AbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 4851
    :cond_1d
    return-void

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
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 3662
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-nez v0, :cond_0

    .line 3663
    iget v0, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    iget v2, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int/2addr v0, v2

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3664
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 3665
    iget v2, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 3666
    .local v2, "longPressPosition":I
    iget-object v3, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    iget v4, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    invoke-interface {v3, v4}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v3

    .line 3667
    .local v3, "longPressId":J
    invoke-virtual {p0, v0, v2, v3, v4}, Landroid/widget/AbsListView;->performLongPress(Landroid/view/View;IJ)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 3668
    const/4 v5, -0x1

    iput v5, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 3669
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->setPressed(Z)V

    .line 3670
    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 3671
    const/4 v1, 0x1

    return v1

    .line 3675
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "longPressPosition":I
    .end local v3    # "longPressId":J
    :cond_0
    return v1
.end method

.method private greylist-max-o positionPopup()V
    .locals 6

    .line 6614
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 6615
    .local v0, "screenHeight":I
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 6616
    .local v1, "xy":[I
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->getLocationOnScreen([I)V

    .line 6619
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

    .line 6620
    .local v2, "bottomGap":I
    iget-object v3, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    .line 6621
    iget-object v3, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    const/16 v5, 0x51

    aget v4, v1, v4

    invoke-virtual {v3, p0, v5, v4, v2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_0

    .line 6624
    :cond_0
    iget-object v3, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    aget v4, v1, v4

    const/4 v5, -0x1

    invoke-virtual {v3, v4, v2, v5, v5}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 6626
    :goto_0
    return-void
.end method

.method private greylist positionSelector(ILandroid/view/View;ZFF)V
    .locals 8
    .param p1, "position"    # I
    .param p2, "sel"    # Landroid/view/View;
    .param p3, "manageHotspot"    # Z
    .param p4, "x"    # F
    .param p5, "y"    # F

    .line 2868
    iget v0, p0, Landroid/widget/AbsListView;->mSelectorPosition:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 2869
    .local v0, "positionChanged":Z
    :goto_0
    const/4 v3, -0x1

    if-eq p1, v3, :cond_1

    .line 2870
    iput p1, p0, Landroid/widget/AbsListView;->mSelectorPosition:I

    .line 2873
    :cond_1
    iget-object v3, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 2874
    .local v3, "selectorRect":Landroid/graphics/Rect;
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v6

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v7

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 2875
    instance-of v4, p2, Landroid/widget/AbsListView$SelectionBoundsAdjuster;

    if-eqz v4, :cond_2

    .line 2876
    move-object v4, p2

    check-cast v4, Landroid/widget/AbsListView$SelectionBoundsAdjuster;

    invoke-interface {v4, v3}, Landroid/widget/AbsListView$SelectionBoundsAdjuster;->adjustListItemSelectionBounds(Landroid/graphics/Rect;)V

    .line 2883
    :cond_2
    instance-of v4, p0, Landroid/widget/SemExpandableListView;

    if-eqz v4, :cond_3

    instance-of v4, p2, Landroid/widget/FrameLayout;

    if-eqz v4, :cond_3

    .line 2884
    move-object v4, p2

    check-cast v4, Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v4

    if-lez v4, :cond_3

    .line 2885
    move-object v4, p2

    check-cast v4, Landroid/widget/FrameLayout;

    invoke-virtual {v4, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 2886
    .local v4, "child":Landroid/view/View;
    instance-of v5, v4, Landroid/widget/AbsListView$SelectionBoundsAdjuster;

    if-eqz v5, :cond_3

    .line 2887
    move-object v5, v4

    check-cast v5, Landroid/widget/AbsListView$SelectionBoundsAdjuster;

    invoke-interface {v5, v3}, Landroid/widget/AbsListView$SelectionBoundsAdjuster;->adjustListItemSelectionBounds(Landroid/graphics/Rect;)V

    .line 2895
    .end local v4    # "child":Landroid/view/View;
    :cond_3
    iget v4, v3, Landroid/graphics/Rect;->left:I

    iget v5, p0, Landroid/widget/AbsListView;->mSelectionLeftPadding:I

    sub-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->left:I

    .line 2896
    iget v4, v3, Landroid/graphics/Rect;->top:I

    iget v5, p0, Landroid/widget/AbsListView;->mSelectionTopPadding:I

    sub-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->top:I

    .line 2897
    iget v4, v3, Landroid/graphics/Rect;->right:I

    iget v5, p0, Landroid/widget/AbsListView;->mSelectionRightPadding:I

    add-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->right:I

    .line 2898
    iget v4, v3, Landroid/graphics/Rect;->bottom:I

    iget v5, p0, Landroid/widget/AbsListView;->mSelectionBottomPadding:I

    iget v6, p2, Landroid/view/View;->mExtraPaddingBottomForPreference:I

    sub-int/2addr v5, v6

    add-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    .line 2901
    invoke-virtual {p2}, Landroid/view/View;->isEnabled()Z

    move-result v4

    .line 2902
    .local v4, "isChildViewEnabled":Z
    iget-boolean v5, p0, Landroid/widget/AbsListView;->mIsChildViewEnabled:Z

    if-eq v5, v4, :cond_4

    .line 2903
    iput-boolean v4, p0, Landroid/widget/AbsListView;->mIsChildViewEnabled:Z

    .line 2907
    :cond_4
    iget-object v5, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 2908
    .local v5, "selector":Landroid/graphics/drawable/Drawable;
    if-eqz v5, :cond_8

    .line 2909
    if-eqz v0, :cond_5

    invoke-virtual {p0}, Landroid/widget/AbsListView;->shouldShowSelector()Z

    move-result v6

    if-nez v6, :cond_5

    .line 2912
    invoke-virtual {v5, v2, v2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 2913
    sget-object v6, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 2915
    :cond_5
    invoke-virtual {v5, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 2916
    if-eqz v0, :cond_7

    .line 2917
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getVisibility()I

    move-result v6

    if-nez v6, :cond_6

    .line 2918
    invoke-virtual {v5, v1, v2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 2920
    :cond_6
    invoke-virtual {p0}, Landroid/widget/AbsListView;->updateSelectorState()V

    .line 2922
    :cond_7
    if-eqz p3, :cond_8

    .line 2923
    invoke-virtual {v5, p4, p5}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 2926
    :cond_8
    return-void
.end method

.method private blacklist postOnJumpScrollToFinished()V
    .locals 1

    .line 11371
    new-instance v0, Landroid/widget/AbsListView$13;

    invoke-direct {v0, p0}, Landroid/widget/AbsListView$13;-><init>(Landroid/widget/AbsListView;)V

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 11376
    return-void
.end method

.method private greylist-max-o recycleVelocityTracker()V
    .locals 1

    .line 5128
    iget-object v0, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 5129
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 5130
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 5132
    :cond_0
    return-void
.end method

.method private blacklist releaseAllBoosters()V
    .locals 1

    .line 11452
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mDVFSLockAcquired:Z

    if-eqz v0, :cond_0

    .line 11453
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/samsung/android/os/SemPerfManager;->onScrollEvent(Z)V

    .line 11454
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mDVFSLockAcquired:Z

    .line 11456
    :cond_0
    return-void
.end method

.method private blacklist releaseGlow(II)I
    .locals 6
    .param p1, "deltaY"    # I
    .param p2, "x"    # I

    .line 4302
    const/4 v0, 0x0

    .line 4303
    .local v0, "consumed":F
    iget-object v1, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->getDistance()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_1

    .line 4304
    invoke-direct {p0}, Landroid/widget/AbsListView;->canScrollUp()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4305
    iget-object v1, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    goto :goto_0

    .line 4307
    :cond_0
    iget-object v1, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    int-to-float v2, p1

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    int-to-float v3, p2

    .line 4308
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    .line 4307
    invoke-virtual {v1, v2, v3}, Landroid/widget/EdgeEffect;->onPullDistance(FF)F

    move-result v0

    .line 4310
    :goto_0
    invoke-direct {p0}, Landroid/widget/AbsListView;->invalidateEdgeEffects()V

    goto :goto_2

    .line 4311
    :cond_1
    iget-object v1, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->getDistance()F

    move-result v1

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_3

    .line 4312
    invoke-direct {p0}, Landroid/widget/AbsListView;->canScrollDown()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4313
    iget-object v1, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    goto :goto_1

    .line 4315
    :cond_2
    iget-object v1, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    neg-int v2, p1

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    const/high16 v3, 0x3f800000    # 1.0f

    int-to-float v4, p2

    .line 4316
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    .line 4315
    invoke-virtual {v1, v2, v3}, Landroid/widget/EdgeEffect;->onPullDistance(FF)F

    move-result v1

    neg-float v0, v1

    .line 4318
    :goto_1
    invoke-direct {p0}, Landroid/widget/AbsListView;->invalidateEdgeEffects()V

    .line 4320
    :cond_3
    :goto_2
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 4321
    .local v1, "pixelsConsumed":I
    sub-int v2, p1, v1

    return v2
.end method

.method private greylist-max-o scrollIfNeeded(IILandroid/view/MotionEvent;)V
    .locals 32
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "vtev"    # Landroid/view/MotionEvent;

    .line 4092
    move-object/from16 v10, p0

    move/from16 v11, p1

    move/from16 v12, p2

    move-object/from16 v13, p3

    iget v0, v10, Landroid/widget/AbsListView;->mMotionY:I

    sub-int v0, v12, v0

    .line 4093
    .local v0, "rawDeltaY":I
    const/4 v1, 0x0

    .line 4094
    .local v1, "scrollOffsetCorrection":I
    iget v2, v10, Landroid/widget/AbsListView;->mLastY:I

    const/high16 v3, -0x80000000

    if-ne v2, v3, :cond_0

    .line 4095
    iget v4, v10, Landroid/widget/AbsListView;->mMotionCorrection:I

    sub-int/2addr v0, v4

    .line 4098
    :cond_0
    if-eq v2, v3, :cond_1

    sub-int v2, v12, v2

    goto :goto_0

    :cond_1
    move v2, v0

    .line 4101
    .local v2, "incrementalDeltaY":I
    :goto_0
    invoke-direct {v10, v2, v11}, Landroid/widget/AbsListView;->releaseGlow(II)I

    move-result v2

    .line 4103
    neg-int v3, v2

    iget-object v4, v10, Landroid/widget/AbsListView;->mScrollConsumed:[I

    iget-object v5, v10, Landroid/widget/AbsListView;->mScrollOffset:[I

    const/4 v14, 0x0

    invoke-virtual {v10, v14, v3, v4, v5}, Landroid/widget/AbsListView;->dispatchNestedPreScroll(II[I[I)Z

    move-result v3

    const/4 v6, 0x0

    const/4 v15, 0x1

    if-eqz v3, :cond_3

    .line 4104
    iget-object v3, v10, Landroid/widget/AbsListView;->mScrollConsumed:[I

    aget v3, v3, v15

    add-int/2addr v0, v3

    .line 4105
    iget-object v4, v10, Landroid/widget/AbsListView;->mScrollOffset:[I

    aget v4, v4, v15

    neg-int v1, v4

    .line 4106
    add-int/2addr v2, v3

    .line 4107
    if-eqz v13, :cond_2

    .line 4108
    int-to-float v3, v4

    invoke-virtual {v13, v6, v3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 4109
    iget v3, v10, Landroid/widget/AbsListView;->mNestedYOffset:I

    iget-object v4, v10, Landroid/widget/AbsListView;->mScrollOffset:[I

    aget v4, v4, v15

    add-int/2addr v3, v4

    iput v3, v10, Landroid/widget/AbsListView;->mNestedYOffset:I

    .line 4112
    :cond_2
    move/from16 v16, v0

    move/from16 v17, v1

    move v9, v2

    goto :goto_1

    .line 4103
    :cond_3
    move/from16 v16, v0

    move/from16 v17, v1

    move v9, v2

    .line 4112
    .end local v0    # "rawDeltaY":I
    .end local v1    # "scrollOffsetCorrection":I
    .end local v2    # "incrementalDeltaY":I
    .local v9, "incrementalDeltaY":I
    .local v16, "rawDeltaY":I
    .local v17, "scrollOffsetCorrection":I
    :goto_1
    move/from16 v8, v16

    .line 4113
    .local v8, "deltaY":I
    const/16 v18, 0x0

    .line 4115
    .local v18, "lastYCorrection":I
    iget v0, v10, Landroid/widget/AbsListView;->mTouchMode:I

    const/high16 v19, 0x3f800000    # 1.0f

    const/4 v7, 0x5

    const/4 v5, 0x3

    if-ne v0, v5, :cond_16

    .line 4123
    iget-object v0, v10, Landroid/widget/AbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    if-nez v0, :cond_4

    .line 4125
    const-string v0, "AbsListView-scroll"

    invoke-static {v0}, Landroid/os/StrictMode;->enterCriticalSpan(Ljava/lang/String;)Landroid/os/StrictMode$Span;

    move-result-object v0

    iput-object v0, v10, Landroid/widget/AbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 4128
    :cond_4
    iget v0, v10, Landroid/widget/AbsListView;->mLastY:I

    if-eq v12, v0, :cond_15

    .line 4132
    iget v0, v10, Landroid/widget/AbsListView;->mGroupFlags:I

    const/high16 v1, 0x80000

    and-int/2addr v0, v1

    if-nez v0, :cond_5

    .line 4133
    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, v10, Landroid/widget/AbsListView;->mTouchSlop:I

    if-le v0, v1, :cond_5

    .line 4134
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 4135
    .local v0, "parent":Landroid/view/ViewParent;
    if-eqz v0, :cond_5

    .line 4136
    invoke-interface {v0, v15}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 4141
    .end local v0    # "parent":Landroid/view/ViewParent;
    :cond_5
    iget v0, v10, Landroid/widget/AbsListView;->mMotionPosition:I

    if-ltz v0, :cond_6

    .line 4142
    iget v1, v10, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int/2addr v0, v1

    move v5, v0

    .local v0, "motionIndex":I
    goto :goto_2

    .line 4146
    .end local v0    # "motionIndex":I
    :cond_6
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    move v5, v0

    .line 4149
    .local v5, "motionIndex":I
    :goto_2
    const/4 v0, 0x0

    .line 4150
    .local v0, "motionViewPrevTop":I
    invoke-virtual {v10, v5}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 4151
    .local v1, "motionView":Landroid/view/View;
    if-eqz v1, :cond_7

    .line 4152
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v0

    move/from16 v20, v0

    goto :goto_3

    .line 4151
    :cond_7
    move/from16 v20, v0

    .line 4156
    .end local v0    # "motionViewPrevTop":I
    .local v20, "motionViewPrevTop":I
    :goto_3
    const/4 v0, 0x0

    .line 4157
    .local v0, "atEdge":Z
    if-eqz v9, :cond_8

    .line 4158
    invoke-virtual {v10, v8, v9}, Landroid/widget/AbsListView;->trackMotionScroll(II)Z

    move-result v0

    move/from16 v21, v0

    goto :goto_4

    .line 4157
    :cond_8
    move/from16 v21, v0

    .line 4162
    .end local v0    # "atEdge":Z
    .local v21, "atEdge":Z
    :goto_4
    invoke-virtual {v10, v5}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v22

    .line 4163
    .end local v1    # "motionView":Landroid/view/View;
    .local v22, "motionView":Landroid/view/View;
    if-eqz v22, :cond_14

    .line 4166
    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getTop()I

    move-result v23

    .line 4167
    .local v23, "motionViewRealTop":I
    if-eqz v21, :cond_12

    .line 4170
    neg-int v0, v9

    sub-int v1, v23, v20

    sub-int v4, v0, v1

    .line 4172
    .local v4, "overscroll":I
    const/4 v1, 0x0

    sub-int v2, v4, v9

    const/4 v3, 0x0

    iget-object v0, v10, Landroid/widget/AbsListView;->mScrollOffset:[I

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move/from16 v25, v4

    .end local v4    # "overscroll":I
    .local v25, "overscroll":I
    move/from16 v26, v5

    .end local v5    # "motionIndex":I
    .local v26, "motionIndex":I
    move-object/from16 v5, v24

    invoke-virtual/range {v0 .. v5}, Landroid/widget/AbsListView;->dispatchNestedScroll(IIII[I)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-boolean v0, v10, Landroid/widget/AbsListView;->mSemForcedDrawEdgeEffect:Z

    if-nez v0, :cond_a

    .line 4174
    iget-object v0, v10, Landroid/widget/AbsListView;->mScrollOffset:[I

    aget v0, v0, v15

    sub-int v18, v18, v0

    .line 4175
    if-eqz v13, :cond_9

    .line 4176
    int-to-float v0, v0

    invoke-virtual {v13, v6, v0}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 4177
    iget v0, v10, Landroid/widget/AbsListView;->mNestedYOffset:I

    iget-object v1, v10, Landroid/widget/AbsListView;->mScrollOffset:[I

    aget v1, v1, v15

    add-int/2addr v0, v1

    iput v0, v10, Landroid/widget/AbsListView;->mNestedYOffset:I

    .line 4215
    .end local v25    # "overscroll":I
    :cond_9
    move/from16 v24, v8

    move v3, v9

    goto/16 :goto_6

    .line 4180
    .restart local v25    # "overscroll":I
    :cond_a
    const/4 v1, 0x0

    const/4 v3, 0x0

    iget v4, v10, Landroid/widget/AbsListView;->mScrollY:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v24, 0x0

    iget v2, v10, Landroid/widget/AbsListView;->mOverscrollDistance:I

    const/16 v27, 0x1

    move-object/from16 v0, p0

    move/from16 v28, v2

    move/from16 v2, v25

    move/from16 v7, v24

    move/from16 v24, v8

    .end local v8    # "deltaY":I
    .local v24, "deltaY":I
    move/from16 v8, v28

    move/from16 v29, v9

    .end local v9    # "incrementalDeltaY":I
    .local v29, "incrementalDeltaY":I
    move/from16 v9, v27

    invoke-virtual/range {v0 .. v9}, Landroid/widget/AbsListView;->overScrollBy(IIIIIIIIZ)Z

    move-result v0

    .line 4189
    .local v0, "atOverscrollEdge":Z
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getOverScrollMode()I

    move-result v1

    .line 4190
    .local v1, "overscrollMode":I
    if-eqz v1, :cond_d

    if-ne v1, v15, :cond_c

    .line 4192
    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->contentFits()Z

    move-result v2

    if-nez v2, :cond_b

    goto :goto_5

    :cond_b
    move/from16 v3, v29

    goto :goto_6

    .line 4190
    :cond_c
    move/from16 v3, v29

    goto :goto_6

    .line 4193
    :cond_d
    :goto_5
    if-nez v0, :cond_e

    .line 4194
    iput v14, v10, Landroid/widget/AbsListView;->mDirection:I

    .line 4195
    const/4 v2, 0x5

    iput v2, v10, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4197
    :cond_e
    move/from16 v3, v29

    .end local v29    # "incrementalDeltaY":I
    .local v3, "incrementalDeltaY":I
    if-lez v3, :cond_10

    .line 4198
    iget-object v2, v10, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    move/from16 v4, v25

    .end local v25    # "overscroll":I
    .restart local v4    # "overscroll":I
    neg-int v5, v4

    int-to-float v5, v5

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    int-to-float v6, v11

    .line 4199
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    .line 4198
    invoke-virtual {v2, v5, v6}, Landroid/widget/EdgeEffect;->onPullDistance(FF)F

    .line 4200
    iget-object v2, v10, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v2

    if-nez v2, :cond_f

    .line 4201
    iget-object v2, v10, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 4203
    :cond_f
    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->invalidateEdgeEffects()V

    goto :goto_6

    .line 4204
    .end local v4    # "overscroll":I
    .restart local v25    # "overscroll":I
    :cond_10
    move/from16 v4, v25

    .end local v25    # "overscroll":I
    .restart local v4    # "overscroll":I
    if-gez v3, :cond_13

    .line 4205
    iget-object v2, v10, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    int-to-float v5, v4

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    int-to-float v6, v11

    .line 4206
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    sub-float v6, v19, v6

    .line 4205
    invoke-virtual {v2, v5, v6}, Landroid/widget/EdgeEffect;->onPullDistance(FF)F

    .line 4207
    iget-object v2, v10, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v2

    if-nez v2, :cond_11

    .line 4208
    iget-object v2, v10, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 4210
    :cond_11
    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->invalidateEdgeEffects()V

    goto :goto_6

    .line 4167
    .end local v0    # "atOverscrollEdge":Z
    .end local v1    # "overscrollMode":I
    .end local v3    # "incrementalDeltaY":I
    .end local v4    # "overscroll":I
    .end local v24    # "deltaY":I
    .end local v26    # "motionIndex":I
    .restart local v5    # "motionIndex":I
    .restart local v8    # "deltaY":I
    .restart local v9    # "incrementalDeltaY":I
    :cond_12
    move/from16 v26, v5

    move/from16 v24, v8

    move v3, v9

    .line 4215
    .end local v5    # "motionIndex":I
    .end local v8    # "deltaY":I
    .end local v9    # "incrementalDeltaY":I
    .restart local v3    # "incrementalDeltaY":I
    .restart local v24    # "deltaY":I
    .restart local v26    # "motionIndex":I
    :cond_13
    :goto_6
    add-int v0, v12, v18

    add-int v0, v0, v17

    iput v0, v10, Landroid/widget/AbsListView;->mMotionY:I

    goto :goto_7

    .line 4163
    .end local v3    # "incrementalDeltaY":I
    .end local v23    # "motionViewRealTop":I
    .end local v24    # "deltaY":I
    .end local v26    # "motionIndex":I
    .restart local v5    # "motionIndex":I
    .restart local v8    # "deltaY":I
    .restart local v9    # "incrementalDeltaY":I
    :cond_14
    move/from16 v26, v5

    move/from16 v24, v8

    move v3, v9

    .line 4217
    .end local v5    # "motionIndex":I
    .end local v8    # "deltaY":I
    .end local v9    # "incrementalDeltaY":I
    .restart local v3    # "incrementalDeltaY":I
    .restart local v24    # "deltaY":I
    .restart local v26    # "motionIndex":I
    :goto_7
    add-int v0, v12, v18

    add-int v0, v0, v17

    iput v0, v10, Landroid/widget/AbsListView;->mLastY:I

    .line 4218
    .end local v20    # "motionViewPrevTop":I
    .end local v21    # "atEdge":Z
    .end local v22    # "motionView":Landroid/view/View;
    .end local v26    # "motionIndex":I
    move v9, v3

    goto/16 :goto_d

    .line 4128
    .end local v3    # "incrementalDeltaY":I
    .end local v24    # "deltaY":I
    .restart local v8    # "deltaY":I
    .restart local v9    # "incrementalDeltaY":I
    :cond_15
    move/from16 v24, v8

    move v3, v9

    .end local v8    # "deltaY":I
    .end local v9    # "incrementalDeltaY":I
    .restart local v3    # "incrementalDeltaY":I
    .restart local v24    # "deltaY":I
    goto/16 :goto_c

    .line 4219
    .end local v3    # "incrementalDeltaY":I
    .end local v24    # "deltaY":I
    .restart local v8    # "deltaY":I
    .restart local v9    # "incrementalDeltaY":I
    :cond_16
    move v2, v7

    move/from16 v24, v8

    move v3, v9

    .end local v8    # "deltaY":I
    .end local v9    # "incrementalDeltaY":I
    .restart local v3    # "incrementalDeltaY":I
    .restart local v24    # "deltaY":I
    if-ne v0, v2, :cond_27

    .line 4220
    iget v0, v10, Landroid/widget/AbsListView;->mLastY:I

    if-eq v12, v0, :cond_27

    .line 4221
    iget v9, v10, Landroid/widget/AbsListView;->mScrollY:I

    .line 4222
    .local v9, "oldScroll":I
    sub-int v20, v9, v3

    .line 4223
    .local v20, "newScroll":I
    iget v0, v10, Landroid/widget/AbsListView;->mLastY:I

    if-le v12, v0, :cond_17

    move v0, v15

    goto :goto_8

    :cond_17
    const/4 v0, -0x1

    :goto_8
    move v8, v0

    .line 4225
    .local v8, "newDirection":I
    iget v0, v10, Landroid/widget/AbsListView;->mDirection:I

    if-nez v0, :cond_18

    .line 4226
    iput v8, v10, Landroid/widget/AbsListView;->mDirection:I

    .line 4229
    :cond_18
    neg-int v0, v3

    .line 4230
    .local v0, "overScrollDistance":I
    if-gez v20, :cond_19

    if-gez v9, :cond_1a

    :cond_19
    if-lez v20, :cond_1b

    if-gtz v9, :cond_1b

    .line 4231
    :cond_1a
    neg-int v0, v9

    .line 4232
    add-int v1, v3, v0

    move v7, v0

    move v6, v1

    .end local v3    # "incrementalDeltaY":I
    .local v1, "incrementalDeltaY":I
    goto :goto_9

    .line 4234
    .end local v1    # "incrementalDeltaY":I
    .restart local v3    # "incrementalDeltaY":I
    :cond_1b
    const/4 v1, 0x0

    move v7, v0

    move v6, v1

    .line 4237
    .end local v0    # "overScrollDistance":I
    .end local v3    # "incrementalDeltaY":I
    .local v6, "incrementalDeltaY":I
    .local v7, "overScrollDistance":I
    :goto_9
    if-eqz v7, :cond_22

    .line 4238
    const/4 v1, 0x0

    const/4 v3, 0x0

    iget v4, v10, Landroid/widget/AbsListView;->mScrollY:I

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    iget v2, v10, Landroid/widget/AbsListView;->mOverscrollDistance:I

    const/16 v25, 0x1

    move-object/from16 v0, p0

    move/from16 v26, v2

    move v2, v7

    move/from16 v5, v21

    move v14, v6

    .end local v6    # "incrementalDeltaY":I
    .local v14, "incrementalDeltaY":I
    move/from16 v6, v22

    move/from16 v30, v7

    .end local v7    # "overScrollDistance":I
    .local v30, "overScrollDistance":I
    move/from16 v7, v23

    move/from16 v31, v8

    .end local v8    # "newDirection":I
    .local v31, "newDirection":I
    move/from16 v8, v26

    move/from16 v22, v9

    .end local v9    # "oldScroll":I
    .local v22, "oldScroll":I
    move/from16 v9, v25

    invoke-virtual/range {v0 .. v9}, Landroid/widget/AbsListView;->overScrollBy(IIIIIIIIZ)Z

    .line 4240
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getOverScrollMode()I

    move-result v0

    .line 4241
    .local v0, "overscrollMode":I
    if-eqz v0, :cond_1e

    if-ne v0, v15, :cond_1d

    .line 4243
    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->contentFits()Z

    move-result v1

    if-nez v1, :cond_1c

    goto :goto_a

    :cond_1c
    move/from16 v2, v30

    goto :goto_b

    .line 4241
    :cond_1d
    move/from16 v2, v30

    goto :goto_b

    .line 4244
    :cond_1e
    :goto_a
    if-lez v16, :cond_20

    .line 4245
    iget-object v1, v10, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    move/from16 v2, v30

    .end local v30    # "overScrollDistance":I
    .local v2, "overScrollDistance":I
    int-to-float v3, v2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    int-to-float v4, v11

    .line 4246
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    .line 4245
    invoke-virtual {v1, v3, v4}, Landroid/widget/EdgeEffect;->onPullDistance(FF)F

    .line 4247
    iget-object v1, v10, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    if-nez v1, :cond_1f

    .line 4248
    iget-object v1, v10, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 4250
    :cond_1f
    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->invalidateEdgeEffects()V

    goto :goto_b

    .line 4251
    .end local v2    # "overScrollDistance":I
    .restart local v30    # "overScrollDistance":I
    :cond_20
    move/from16 v2, v30

    .end local v30    # "overScrollDistance":I
    .restart local v2    # "overScrollDistance":I
    if-gez v16, :cond_23

    .line 4252
    iget-object v1, v10, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    neg-int v3, v2

    int-to-float v3, v3

    .line 4253
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    int-to-float v4, v11

    .line 4254
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    sub-float v4, v19, v4

    .line 4252
    invoke-virtual {v1, v3, v4}, Landroid/widget/EdgeEffect;->onPullDistance(FF)F

    .line 4255
    iget-object v1, v10, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    if-nez v1, :cond_21

    .line 4256
    iget-object v1, v10, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 4258
    :cond_21
    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->invalidateEdgeEffects()V

    goto :goto_b

    .line 4237
    .end local v0    # "overscrollMode":I
    .end local v2    # "overScrollDistance":I
    .end local v14    # "incrementalDeltaY":I
    .end local v22    # "oldScroll":I
    .end local v31    # "newDirection":I
    .restart local v6    # "incrementalDeltaY":I
    .restart local v7    # "overScrollDistance":I
    .restart local v8    # "newDirection":I
    .restart local v9    # "oldScroll":I
    :cond_22
    move v14, v6

    move v2, v7

    move/from16 v31, v8

    move/from16 v22, v9

    .line 4263
    .end local v6    # "incrementalDeltaY":I
    .end local v7    # "overScrollDistance":I
    .end local v8    # "newDirection":I
    .end local v9    # "oldScroll":I
    .restart local v2    # "overScrollDistance":I
    .restart local v14    # "incrementalDeltaY":I
    .restart local v22    # "oldScroll":I
    .restart local v31    # "newDirection":I
    :cond_23
    :goto_b
    if-eqz v14, :cond_26

    .line 4265
    iget v0, v10, Landroid/widget/AbsListView;->mScrollY:I

    if-eqz v0, :cond_24

    .line 4266
    const/4 v0, 0x0

    iput v0, v10, Landroid/widget/AbsListView;->mScrollY:I

    .line 4267
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->invalidateParentIfNeeded()V

    .line 4270
    :cond_24
    invoke-virtual {v10, v14, v14}, Landroid/widget/AbsListView;->trackMotionScroll(II)Z

    .line 4272
    const/4 v0, 0x3

    iput v0, v10, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4276
    invoke-virtual {v10, v12}, Landroid/widget/AbsListView;->findClosestMotionRow(I)I

    move-result v0

    .line 4278
    .local v0, "motionPosition":I
    const/4 v1, 0x0

    iput v1, v10, Landroid/widget/AbsListView;->mMotionCorrection:I

    .line 4279
    iget v3, v10, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int v3, v0, v3

    invoke-virtual {v10, v3}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 4280
    .local v3, "motionView":Landroid/view/View;
    if-eqz v3, :cond_25

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v1

    :cond_25
    iput v1, v10, Landroid/widget/AbsListView;->mMotionViewOriginalTop:I

    .line 4281
    add-int v1, v12, v17

    iput v1, v10, Landroid/widget/AbsListView;->mMotionY:I

    .line 4282
    iput v0, v10, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 4284
    .end local v0    # "motionPosition":I
    .end local v3    # "motionView":Landroid/view/View;
    :cond_26
    add-int v0, v12, v18

    add-int v0, v0, v17

    iput v0, v10, Landroid/widget/AbsListView;->mLastY:I

    .line 4285
    move/from16 v0, v31

    .end local v31    # "newDirection":I
    .local v0, "newDirection":I
    iput v0, v10, Landroid/widget/AbsListView;->mDirection:I

    move v9, v14

    goto :goto_d

    .line 4288
    .end local v0    # "newDirection":I
    .end local v2    # "overScrollDistance":I
    .end local v14    # "incrementalDeltaY":I
    .end local v20    # "newScroll":I
    .end local v22    # "oldScroll":I
    .local v3, "incrementalDeltaY":I
    :cond_27
    :goto_c
    move v9, v3

    .end local v3    # "incrementalDeltaY":I
    .local v9, "incrementalDeltaY":I
    :goto_d
    return-void
.end method

.method private blacklist semGetEnableVibrationAtLongPress()Z
    .locals 1

    .line 11429
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mEnableVibrationAtLongPress:Z

    return v0
.end method

.method private blacklist semIsSupportGotoTop()Z
    .locals 1

    .line 9725
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

    .line 11189
    const/4 v0, 0x0

    .line 11190
    .local v0, "isRunning":Z
    iget-object v1, p0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    .line 11191
    .local v1, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 11192
    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityManager;->semIsAccessibilityServiceEnabled(I)Z

    move-result v2

    if-nez v2, :cond_1

    const/16 v2, 0x10

    .line 11193
    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityManager;->semIsAccessibilityServiceEnabled(I)Z

    move-result v2

    if-nez v2, :cond_1

    const/16 v2, 0x40

    .line 11194
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

    .line 11197
    :cond_2
    return v0
.end method

.method private blacklist semMultiSelection(IIIIZ)V
    .locals 18
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "contentTop"    # I
    .param p4, "contentBottom"    # I
    .param p5, "needToScroll"    # Z

    .line 9980
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p4

    iget v4, v0, Landroid/widget/AbsListView;->mTouchdownX:I

    sub-int v4, v1, v4

    .line 9981
    .local v4, "deltaMoveX":I
    iget v5, v0, Landroid/widget/AbsListView;->mTouchdownY:I

    sub-int v5, v2, v5

    .line 9983
    .local v5, "deltaMoveY":I
    mul-int v6, v4, v4

    mul-int v7, v5, v5

    add-int/2addr v6, v7

    iget v7, v0, Landroid/widget/AbsListView;->mTouchSlop:I

    mul-int/2addr v7, v7

    const/4 v8, 0x1

    if-le v6, v7, :cond_0

    .line 9984
    iput-boolean v8, v0, Landroid/widget/AbsListView;->mIsMovedbeforeUP:Z

    .line 9986
    :cond_0
    iget-boolean v6, v0, Landroid/widget/AbsListView;->mIsNeedPenSelection:Z

    const/4 v7, 0x0

    if-eqz v6, :cond_1a

    .line 9987
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v6

    .line 9989
    .local v6, "count":I
    iget-boolean v9, v0, Landroid/widget/AbsListView;->mIsfirstMoveEvent:Z

    const/4 v10, -0x1

    if-eqz v9, :cond_5

    .line 9990
    iput v1, v0, Landroid/widget/AbsListView;->mSemDragStartX:I

    .line 9991
    iput v2, v0, Landroid/widget/AbsListView;->mSemDragStartY:I

    .line 9992
    invoke-super/range {p0 .. p2}, Landroid/widget/AdapterView;->semNotifyMultiSelectedStart(II)V

    .line 9993
    iput-boolean v8, v0, Landroid/widget/AbsListView;->mIsPenPressed:Z

    .line 9995
    invoke-virtual/range {p0 .. p2}, Landroid/widget/AbsListView;->pointToPosition(II)I

    move-result v9

    iput v9, v0, Landroid/widget/AbsListView;->mSemTrackedChildPosition:I

    .line 9997
    if-ne v9, v10, :cond_2

    .line 9998
    invoke-virtual/range {p0 .. p2}, Landroid/widget/AbsListView;->semPointToNearPosition(II)I

    move-result v9

    iput v9, v0, Landroid/widget/AbsListView;->mSemTrackedChildPosition:I

    .line 9999
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v11

    sub-int/2addr v9, v11

    invoke-virtual {v0, v9}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    iput-object v9, v0, Landroid/widget/AbsListView;->mSemTrackedChild:Landroid/view/View;

    .line 10000
    if-nez v9, :cond_3

    .line 10001
    iget v9, v0, Landroid/widget/AbsListView;->mSemCloseChildPositionByTop:I

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v11

    sub-int/2addr v9, v11

    invoke-virtual {v0, v9}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    iput-object v9, v0, Landroid/widget/AbsListView;->mSemCloseChildByTop:Landroid/view/View;

    .line 10002
    if-eqz v9, :cond_1

    .line 10003
    iget v11, v0, Landroid/widget/AbsListView;->mSemDragStartY:I

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v9

    sub-int/2addr v11, v9

    iput v11, v0, Landroid/widget/AbsListView;->mSemDistanceFromCloseChildTop:I

    .line 10006
    :cond_1
    iget v9, v0, Landroid/widget/AbsListView;->mSemCloseChildPositionByBottom:I

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v11

    sub-int/2addr v9, v11

    invoke-virtual {v0, v9}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    iput-object v9, v0, Landroid/widget/AbsListView;->mSemCloseChildByBottom:Landroid/view/View;

    .line 10007
    if-eqz v9, :cond_3

    .line 10008
    iget v11, v0, Landroid/widget/AbsListView;->mSemDragStartY:I

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v9

    sub-int/2addr v11, v9

    iput v11, v0, Landroid/widget/AbsListView;->mSemDistanceFromCloseChildBottom:I

    goto :goto_0

    .line 10012
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v11

    sub-int/2addr v9, v11

    invoke-virtual {v0, v9}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    iput-object v9, v0, Landroid/widget/AbsListView;->mSemTrackedChild:Landroid/view/View;

    .line 10015
    :cond_3
    :goto_0
    iget-object v9, v0, Landroid/widget/AbsListView;->mSemTrackedChild:Landroid/view/View;

    if-eqz v9, :cond_4

    .line 10016
    iget v11, v0, Landroid/widget/AbsListView;->mSemDragStartY:I

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v9

    sub-int/2addr v11, v9

    iput v11, v0, Landroid/widget/AbsListView;->mSemDistanceFromTrackedChildTop:I

    .line 10018
    :cond_4
    iput-boolean v7, v0, Landroid/widget/AbsListView;->mIsfirstMoveEvent:Z

    .line 10021
    :cond_5
    iget v9, v0, Landroid/widget/AbsListView;->mSemDragStartX:I

    if-nez v9, :cond_6

    iget v9, v0, Landroid/widget/AbsListView;->mSemDragStartY:I

    if-nez v9, :cond_6

    .line 10022
    iput v1, v0, Landroid/widget/AbsListView;->mSemDragStartX:I

    .line 10023
    iput v2, v0, Landroid/widget/AbsListView;->mSemDragStartY:I

    .line 10024
    invoke-super/range {p0 .. p2}, Landroid/widget/AdapterView;->semNotifyMultiSelectedStart(II)V

    .line 10025
    iput-boolean v8, v0, Landroid/widget/AbsListView;->mIsPenPressed:Z

    .line 10028
    :cond_6
    iput v1, v0, Landroid/widget/AbsListView;->mSemDragEndX:I

    .line 10029
    iput v2, v0, Landroid/widget/AbsListView;->mSemDragEndY:I

    .line 10031
    if-gez v2, :cond_7

    .line 10032
    iput v7, v0, Landroid/widget/AbsListView;->mSemDragEndY:I

    goto :goto_1

    .line 10033
    :cond_7
    if-le v2, v3, :cond_8

    .line 10034
    iput v3, v0, Landroid/widget/AbsListView;->mSemDragEndY:I

    .line 10037
    :cond_8
    :goto_1
    invoke-virtual/range {p0 .. p2}, Landroid/widget/AbsListView;->pointToPosition(II)I

    move-result v9

    iput v9, v0, Landroid/widget/AbsListView;->mSemDragSelectedViewPosition:I

    .line 10039
    iget v9, v0, Landroid/widget/AbsListView;->mSemDragStartX:I

    iget v11, v0, Landroid/widget/AbsListView;->mSemDragEndX:I

    invoke-static {v9, v11}, Ljava/lang/Math;->min(II)I

    move-result v9

    iput v9, v0, Landroid/widget/AbsListView;->mSemDragBlockLeft:I

    .line 10040
    iget v9, v0, Landroid/widget/AbsListView;->mSemDragStartY:I

    iget v11, v0, Landroid/widget/AbsListView;->mSemDragEndY:I

    invoke-static {v9, v11}, Ljava/lang/Math;->min(II)I

    move-result v9

    iput v9, v0, Landroid/widget/AbsListView;->mSemDragBlockTop:I

    .line 10041
    iget v9, v0, Landroid/widget/AbsListView;->mSemDragEndX:I

    iget v11, v0, Landroid/widget/AbsListView;->mSemDragStartX:I

    invoke-static {v9, v11}, Ljava/lang/Math;->max(II)I

    move-result v9

    iput v9, v0, Landroid/widget/AbsListView;->mSemDragBlockRight:I

    .line 10042
    iget v9, v0, Landroid/widget/AbsListView;->mSemDragEndY:I

    iget v11, v0, Landroid/widget/AbsListView;->mSemDragStartY:I

    invoke-static {v9, v11}, Ljava/lang/Math;->max(II)I

    move-result v9

    iput v9, v0, Landroid/widget/AbsListView;->mSemDragBlockBottom:I

    .line 10044
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_2
    if-ge v9, v6, :cond_19

    .line 10045
    invoke-virtual {v0, v9}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 10046
    .local v11, "child":Landroid/view/View;
    if-eqz v11, :cond_18

    .line 10047
    invoke-virtual {v11}, Landroid/view/View;->getLeft()I

    move-result v12

    .line 10048
    .local v12, "childLeft":I
    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v13

    .line 10049
    .local v13, "childTop":I
    invoke-virtual {v11}, Landroid/view/View;->getRight()I

    move-result v14

    .line 10050
    .local v14, "childRight":I
    invoke-virtual {v11}, Landroid/view/View;->getBottom()I

    move-result v15

    .line 10052
    .local v15, "childBottom":I
    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v16

    if-nez v16, :cond_17

    .line 10053
    iget v7, v0, Landroid/widget/AbsListView;->mSemDragBlockLeft:I

    if-le v7, v12, :cond_9

    iget v8, v0, Landroid/widget/AbsListView;->mSemDragBlockTop:I

    if-le v8, v13, :cond_9

    iget v8, v0, Landroid/widget/AbsListView;->mSemDragBlockRight:I

    if-ge v8, v14, :cond_9

    iget v8, v0, Landroid/widget/AbsListView;->mSemDragBlockBottom:I

    if-lt v8, v15, :cond_f

    :cond_9
    if-le v7, v12, :cond_a

    iget v8, v0, Landroid/widget/AbsListView;->mSemDragBlockRight:I

    if-lt v8, v14, :cond_c

    :cond_a
    if-ge v7, v12, :cond_b

    iget v8, v0, Landroid/widget/AbsListView;->mSemDragBlockRight:I

    if-gt v8, v12, :cond_c

    :cond_b
    if-ge v7, v14, :cond_13

    iget v7, v0, Landroid/widget/AbsListView;->mSemDragBlockRight:I

    if-le v7, v14, :cond_13

    :cond_c
    iget v7, v0, Landroid/widget/AbsListView;->mSemDragBlockTop:I

    if-lt v7, v13, :cond_d

    iget v8, v0, Landroid/widget/AbsListView;->mSemDragBlockBottom:I

    if-le v8, v15, :cond_f

    :cond_d
    if-gt v7, v13, :cond_e

    iget v8, v0, Landroid/widget/AbsListView;->mSemDragBlockBottom:I

    if-gt v8, v13, :cond_f

    :cond_e
    if-ge v7, v15, :cond_13

    iget v7, v0, Landroid/widget/AbsListView;->mSemDragBlockBottom:I

    if-lt v7, v15, :cond_13

    .line 10056
    :cond_f
    add-int/lit8 v7, v12, 0x1

    add-int/lit8 v8, v13, 0x1

    invoke-virtual {v0, v7, v8}, Landroid/widget/AbsListView;->pointToPosition(II)I

    move-result v7

    iput v7, v0, Landroid/widget/AbsListView;->mSemDragSelectedViewPosition:I

    .line 10057
    if-eq v7, v10, :cond_12

    iget-object v8, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v8, v7}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v7

    if-eqz v7, :cond_12

    iget-object v7, v0, Landroid/widget/AbsListView;->mSemDragSelectedItemArray:Ljava/util/ArrayList;

    iget v8, v0, Landroid/widget/AbsListView;->mSemDragSelectedViewPosition:I

    .line 10058
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_11

    .line 10059
    iget-object v7, v0, Landroid/widget/AbsListView;->mSemDragSelectedItemArray:Ljava/util/ArrayList;

    iget v8, v0, Landroid/widget/AbsListView;->mSemDragSelectedViewPosition:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10060
    iget-object v7, v0, Landroid/widget/AbsListView;->mSemMultiSelectionListener:Landroid/widget/AdapterView$SemMultiSelectionListener;

    if-nez v7, :cond_10

    .line 10061
    iget v7, v0, Landroid/widget/AbsListView;->mSemDragSelectedViewPosition:I

    invoke-direct {v0, v7, v10}, Landroid/widget/AbsListView;->addToPressItemListArray(II)V

    .line 10062
    iget v7, v0, Landroid/widget/AbsListView;->mSemDragSelectedViewPosition:I

    move v8, v4

    move/from16 v17, v5

    .end local v4    # "deltaMoveX":I
    .end local v5    # "deltaMoveY":I
    .local v8, "deltaMoveX":I
    .local v17, "deltaMoveY":I
    invoke-virtual {v0, v7}, Landroid/widget/AbsListView;->getItemIdAtPosition(I)J

    move-result-wide v4

    invoke-direct {v0, v11, v7, v4, v5}, Landroid/widget/AbsListView;->semToNotifyMultiSelectionState(Landroid/view/View;IJ)Z

    move v7, v6

    goto/16 :goto_3

    .line 10060
    .end local v8    # "deltaMoveX":I
    .end local v17    # "deltaMoveY":I
    .restart local v4    # "deltaMoveX":I
    .restart local v5    # "deltaMoveY":I
    :cond_10
    move v8, v4

    move/from16 v17, v5

    .end local v4    # "deltaMoveX":I
    .end local v5    # "deltaMoveY":I
    .restart local v8    # "deltaMoveX":I
    .restart local v17    # "deltaMoveY":I
    move v7, v6

    goto/16 :goto_3

    .line 10058
    .end local v8    # "deltaMoveX":I
    .end local v17    # "deltaMoveY":I
    .restart local v4    # "deltaMoveX":I
    .restart local v5    # "deltaMoveY":I
    :cond_11
    move v8, v4

    move/from16 v17, v5

    .end local v4    # "deltaMoveX":I
    .end local v5    # "deltaMoveY":I
    .restart local v8    # "deltaMoveX":I
    .restart local v17    # "deltaMoveY":I
    move v7, v6

    goto/16 :goto_3

    .line 10057
    .end local v8    # "deltaMoveX":I
    .end local v17    # "deltaMoveY":I
    .restart local v4    # "deltaMoveX":I
    .restart local v5    # "deltaMoveY":I
    :cond_12
    move v8, v4

    move/from16 v17, v5

    .end local v4    # "deltaMoveX":I
    .end local v5    # "deltaMoveY":I
    .restart local v8    # "deltaMoveX":I
    .restart local v17    # "deltaMoveY":I
    move v7, v6

    goto :goto_3

    .line 10053
    .end local v8    # "deltaMoveX":I
    .end local v17    # "deltaMoveY":I
    .restart local v4    # "deltaMoveX":I
    .restart local v5    # "deltaMoveY":I
    :cond_13
    move v8, v4

    move/from16 v17, v5

    .line 10066
    .end local v4    # "deltaMoveX":I
    .end local v5    # "deltaMoveY":I
    .restart local v8    # "deltaMoveX":I
    .restart local v17    # "deltaMoveY":I
    add-int/lit8 v4, v12, 0x1

    add-int/lit8 v5, v13, 0x1

    invoke-virtual {v0, v4, v5}, Landroid/widget/AbsListView;->pointToPosition(II)I

    move-result v4

    iput v4, v0, Landroid/widget/AbsListView;->mSemDragSelectedViewPosition:I

    .line 10067
    if-eq v4, v10, :cond_16

    iget-object v5, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v5, v4}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_16

    iget-object v4, v0, Landroid/widget/AbsListView;->mSemDragSelectedItemArray:Ljava/util/ArrayList;

    iget v5, v0, Landroid/widget/AbsListView;->mSemDragSelectedViewPosition:I

    .line 10068
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 10069
    iget-object v4, v0, Landroid/widget/AbsListView;->mSemDragSelectedItemArray:Ljava/util/ArrayList;

    iget v5, v0, Landroid/widget/AbsListView;->mSemDragSelectedViewPosition:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 10070
    iget-object v4, v0, Landroid/widget/AbsListView;->mSemMultiSelectionListener:Landroid/widget/AdapterView$SemMultiSelectionListener;

    if-nez v4, :cond_14

    .line 10071
    iget v4, v0, Landroid/widget/AbsListView;->mSemDragSelectedViewPosition:I

    invoke-direct {v0, v4, v10}, Landroid/widget/AbsListView;->addToPressItemListArray(II)V

    .line 10072
    iget v4, v0, Landroid/widget/AbsListView;->mSemDragSelectedViewPosition:I

    move v7, v6

    .end local v6    # "count":I
    .local v7, "count":I
    invoke-virtual {v0, v4}, Landroid/widget/AbsListView;->getItemIdAtPosition(I)J

    move-result-wide v5

    invoke-direct {v0, v11, v4, v5, v6}, Landroid/widget/AbsListView;->semToNotifyMultiSelectionState(Landroid/view/View;IJ)Z

    goto :goto_3

    .line 10070
    .end local v7    # "count":I
    .restart local v6    # "count":I
    :cond_14
    move v7, v6

    .end local v6    # "count":I
    .restart local v7    # "count":I
    goto :goto_3

    .line 10068
    .end local v7    # "count":I
    .restart local v6    # "count":I
    :cond_15
    move v7, v6

    .end local v6    # "count":I
    .restart local v7    # "count":I
    goto :goto_3

    .line 10067
    .end local v7    # "count":I
    .restart local v6    # "count":I
    :cond_16
    move v7, v6

    .end local v6    # "count":I
    .restart local v7    # "count":I
    goto :goto_3

    .line 10052
    .end local v7    # "count":I
    .end local v8    # "deltaMoveX":I
    .end local v17    # "deltaMoveY":I
    .restart local v4    # "deltaMoveX":I
    .restart local v5    # "deltaMoveY":I
    .restart local v6    # "count":I
    :cond_17
    move v8, v4

    move/from16 v17, v5

    move v7, v6

    .end local v4    # "deltaMoveX":I
    .end local v5    # "deltaMoveY":I
    .end local v6    # "count":I
    .restart local v7    # "count":I
    .restart local v8    # "deltaMoveX":I
    .restart local v17    # "deltaMoveY":I
    goto :goto_3

    .line 10046
    .end local v7    # "count":I
    .end local v8    # "deltaMoveX":I
    .end local v12    # "childLeft":I
    .end local v13    # "childTop":I
    .end local v14    # "childRight":I
    .end local v15    # "childBottom":I
    .end local v17    # "deltaMoveY":I
    .restart local v4    # "deltaMoveX":I
    .restart local v5    # "deltaMoveY":I
    .restart local v6    # "count":I
    :cond_18
    move v8, v4

    move/from16 v17, v5

    move v7, v6

    .line 10044
    .end local v4    # "deltaMoveX":I
    .end local v5    # "deltaMoveY":I
    .end local v6    # "count":I
    .end local v11    # "child":Landroid/view/View;
    .restart local v7    # "count":I
    .restart local v8    # "deltaMoveX":I
    .restart local v17    # "deltaMoveY":I
    :goto_3
    add-int/lit8 v9, v9, 0x1

    move v6, v7

    move v4, v8

    move/from16 v5, v17

    const/4 v7, 0x0

    const/4 v8, 0x1

    goto/16 :goto_2

    .end local v7    # "count":I
    .end local v8    # "deltaMoveX":I
    .end local v17    # "deltaMoveY":I
    .restart local v4    # "deltaMoveX":I
    .restart local v5    # "deltaMoveY":I
    .restart local v6    # "count":I
    :cond_19
    move v8, v4

    move/from16 v17, v5

    move v7, v6

    .line 10079
    .end local v4    # "deltaMoveX":I
    .end local v5    # "deltaMoveY":I
    .end local v6    # "count":I
    .end local v9    # "i":I
    .restart local v7    # "count":I
    .restart local v8    # "deltaMoveX":I
    .restart local v17    # "deltaMoveY":I
    const/4 v4, 0x1

    .end local p5    # "needToScroll":Z
    .local v4, "needToScroll":Z
    goto :goto_4

    .line 9986
    .end local v7    # "count":I
    .end local v8    # "deltaMoveX":I
    .end local v17    # "deltaMoveY":I
    .local v4, "deltaMoveX":I
    .restart local v5    # "deltaMoveY":I
    .restart local p5    # "needToScroll":Z
    :cond_1a
    move v8, v4

    move/from16 v17, v5

    .end local v4    # "deltaMoveX":I
    .end local v5    # "deltaMoveY":I
    .restart local v8    # "deltaMoveX":I
    .restart local v17    # "deltaMoveY":I
    move/from16 v4, p5

    .line 10082
    .end local p5    # "needToScroll":Z
    .local v4, "needToScroll":Z
    :goto_4
    if-eqz v4, :cond_24

    .line 10083
    iget v5, v0, Landroid/widget/AbsListView;->mHoverTopAreaHeight:I

    add-int v5, p3, v5

    if-gt v2, v5, :cond_1d

    .line 10084
    iget-boolean v5, v0, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    if-nez v5, :cond_1b

    .line 10085
    const/4 v5, 0x1

    iput-boolean v5, v0, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    .line 10086
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v0, Landroid/widget/AbsListView;->mHoverScrollStartTime:J

    .line 10087
    iget-object v6, v0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v6, :cond_1c

    .line 10088
    invoke-interface {v6, v0, v5}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    goto :goto_5

    .line 10084
    :cond_1b
    const/4 v5, 0x1

    .line 10092
    :cond_1c
    :goto_5
    iget-object v6, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    invoke-virtual {v6, v5}, Landroid/widget/AbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v6

    if-nez v6, :cond_23

    .line 10093
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v0, Landroid/widget/AbsListView;->mHoverRecognitionStartTime:J

    .line 10094
    const/4 v6, 0x2

    iput v6, v0, Landroid/widget/AbsListView;->mHoverScrollDirection:I

    .line 10095
    iget-object v6, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    invoke-virtual {v6, v5}, Landroid/widget/AbsListView$HoverScrollHandler;->sendEmptyMessage(I)Z

    goto :goto_7

    .line 10097
    :cond_1d
    iget v5, v0, Landroid/widget/AbsListView;->mHoverBottomAreaHeight:I

    sub-int v5, v3, v5

    if-lt v2, v5, :cond_20

    .line 10098
    iget-boolean v5, v0, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    if-nez v5, :cond_1e

    .line 10099
    const/4 v5, 0x1

    iput-boolean v5, v0, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    .line 10100
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v0, Landroid/widget/AbsListView;->mHoverScrollStartTime:J

    .line 10101
    iget-object v6, v0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v6, :cond_1f

    .line 10102
    invoke-interface {v6, v0, v5}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    goto :goto_6

    .line 10098
    :cond_1e
    const/4 v5, 0x1

    .line 10106
    :cond_1f
    :goto_6
    iget-object v6, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    invoke-virtual {v6, v5}, Landroid/widget/AbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v6

    if-nez v6, :cond_23

    .line 10107
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v0, Landroid/widget/AbsListView;->mHoverRecognitionStartTime:J

    .line 10108
    iput v5, v0, Landroid/widget/AbsListView;->mHoverScrollDirection:I

    .line 10109
    iget-object v6, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    invoke-virtual {v6, v5}, Landroid/widget/AbsListView$HoverScrollHandler;->sendEmptyMessage(I)Z

    goto :goto_7

    .line 10112
    :cond_20
    iget-boolean v5, v0, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    if-eqz v5, :cond_21

    iget-object v5, v0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v5, :cond_21

    .line 10113
    const/4 v6, 0x0

    invoke-interface {v5, v0, v6}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 10115
    :cond_21
    const-wide/16 v5, 0x0

    iput-wide v5, v0, Landroid/widget/AbsListView;->mHoverScrollStartTime:J

    .line 10116
    iput-wide v5, v0, Landroid/widget/AbsListView;->mHoverRecognitionStartTime:J

    .line 10117
    const/4 v5, 0x0

    iput-boolean v5, v0, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    .line 10119
    iget-object v5, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/AbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v5

    if-eqz v5, :cond_22

    .line 10120
    iget-object v5, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    invoke-virtual {v5, v6}, Landroid/widget/AbsListView$HoverScrollHandler;->removeMessages(I)V

    .line 10122
    :cond_22
    const/4 v5, 0x0

    iput-boolean v5, v0, Landroid/widget/AbsListView;->mIsHoverOverscrolled:Z

    .line 10124
    :cond_23
    :goto_7
    iget-boolean v5, v0, Landroid/widget/AbsListView;->mIsDragBlockEnabled:Z

    if-eqz v5, :cond_25

    .line 10125
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->invalidate()V

    goto :goto_8

    .line 10127
    :cond_24
    iget-boolean v5, v0, Landroid/widget/AbsListView;->mPreviousTextViewScroll:Z

    if-eqz v5, :cond_25

    .line 10129
    iget-object v5, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/AbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v5

    if-eqz v5, :cond_25

    .line 10130
    iget-object v5, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    invoke-virtual {v5, v6}, Landroid/widget/AbsListView$HoverScrollHandler;->removeMessages(I)V

    .line 10133
    :cond_25
    :goto_8
    iput-boolean v4, v0, Landroid/widget/AbsListView;->mPreviousTextViewScroll:Z

    .line 10134
    return-void
.end method

.method private blacklist semMultiSelectionEnd(III)V
    .locals 6
    .param p1, "action"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I

    .line 10137
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mIsTextSelectionStarted:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_5

    .line 10138
    const/16 v0, 0xd4

    if-ne p1, v0, :cond_0

    .line 10139
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mIsFirstPenClick:Z

    xor-int/2addr v0, v2

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mIsFirstPenClick:Z

    .line 10141
    :cond_0
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_1

    .line 10142
    invoke-interface {v0, p0, v3}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 10145
    :cond_1
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Landroid/widget/AbsListView;->mHoverRecognitionStartTime:J

    .line 10146
    iput-wide v4, p0, Landroid/widget/AbsListView;->mHoverScrollStartTime:J

    .line 10147
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    .line 10149
    iget-object v0, p0, Landroid/widget/AbsListView;->mSemDragSelectedItemArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Landroid/widget/AbsListView;->mSemDragSelectedItemSize:I

    .line 10151
    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForDoublePenClick:Landroid/widget/AbsListView$CheckForDoublePenClick;

    if-nez v0, :cond_2

    .line 10152
    new-instance v0, Landroid/widget/AbsListView$CheckForDoublePenClick;

    invoke-direct {v0, p0, v1}, Landroid/widget/AbsListView$CheckForDoublePenClick;-><init>(Landroid/widget/AbsListView;Landroid/widget/AbsListView$CheckForDoublePenClick-IA;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForDoublePenClick:Landroid/widget/AbsListView$CheckForDoublePenClick;

    .line 10155
    :cond_2
    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForDoublePenClick:Landroid/widget/AbsListView$CheckForDoublePenClick;

    iput p2, v0, Landroid/widget/AbsListView$CheckForDoublePenClick;->x:I

    .line 10156
    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForDoublePenClick:Landroid/widget/AbsListView$CheckForDoublePenClick;

    iput p3, v0, Landroid/widget/AbsListView$CheckForDoublePenClick;->y:I

    .line 10158
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mIsFirstPenClick:Z

    if-eqz v0, :cond_4

    .line 10159
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mIsMovedbeforeUP:Z

    if-eqz v0, :cond_3

    .line 10160
    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForDoublePenClick:Landroid/widget/AbsListView$CheckForDoublePenClick;

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 10162
    :cond_3
    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForDoublePenClick:Landroid/widget/AbsListView$CheckForDoublePenClick;

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {p0, v0, v4, v5}, Landroid/widget/AbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 10165
    :cond_4
    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForDoublePenClick:Landroid/widget/AbsListView$CheckForDoublePenClick;

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 10166
    iget-object v0, p0, Landroid/widget/AbsListView;->mSemDragSelectedItemArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 10167
    iput v3, p0, Landroid/widget/AbsListView;->mSemDragSelectedItemSize:I

    .line 10171
    :cond_5
    :goto_0
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mIsPenPressed:Z

    .line 10172
    iput-boolean v2, p0, Landroid/widget/AbsListView;->mIsfirstMoveEvent:Z

    .line 10173
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/AbsListView;->mSemDragSelectedViewPosition:I

    .line 10175
    iput v3, p0, Landroid/widget/AbsListView;->mSemDragStartX:I

    .line 10176
    iput v3, p0, Landroid/widget/AbsListView;->mSemDragStartY:I

    .line 10177
    iput v3, p0, Landroid/widget/AbsListView;->mSemDragEndX:I

    .line 10178
    iput v3, p0, Landroid/widget/AbsListView;->mSemDragEndY:I

    .line 10180
    iput v3, p0, Landroid/widget/AbsListView;->mSemDragBlockLeft:I

    .line 10181
    iput v3, p0, Landroid/widget/AbsListView;->mSemDragBlockTop:I

    .line 10182
    iput v3, p0, Landroid/widget/AbsListView;->mSemDragBlockRight:I

    .line 10183
    iput v3, p0, Landroid/widget/AbsListView;->mSemDragBlockBottom:I

    .line 10185
    iput-object v1, p0, Landroid/widget/AbsListView;->mSemTrackedChild:Landroid/view/View;

    .line 10186
    iput v3, p0, Landroid/widget/AbsListView;->mSemDistanceFromTrackedChildTop:I

    .line 10188
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mIsCloseChildSetted:Z

    .line 10189
    iput v0, p0, Landroid/widget/AbsListView;->mOldHoverScrollDirection:I

    .line 10190
    iput-object v1, p0, Landroid/widget/AbsListView;->mSemCloseChildByTop:Landroid/view/View;

    .line 10191
    iput v0, p0, Landroid/widget/AbsListView;->mSemCloseChildPositionByTop:I

    .line 10192
    iput v3, p0, Landroid/widget/AbsListView;->mSemDistanceFromCloseChildTop:I

    .line 10193
    iput-object v1, p0, Landroid/widget/AbsListView;->mSemCloseChildByBottom:Landroid/view/View;

    .line 10194
    iput v0, p0, Landroid/widget/AbsListView;->mSemCloseChildPositionByBottom:I

    .line 10195
    iput v3, p0, Landroid/widget/AbsListView;->mSemDistanceFromCloseChildBottom:I

    .line 10197
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mIsDragBlockEnabled:Z

    if-eqz v0, :cond_6

    .line 10198
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidate()V

    .line 10202
    :cond_6
    iget-object v0, p0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    invoke-virtual {v0, v2}, Landroid/widget/AbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 10203
    iget-object v0, p0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    invoke-virtual {v0, v2}, Landroid/widget/AbsListView$HoverScrollHandler;->removeMessages(I)V

    .line 10205
    :cond_7
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mIsMovedbeforeUP:Z

    .line 10206
    return-void
.end method

.method private blacklist semPerformItemCheck(Landroid/view/View;IJ)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .line 10384
    const/4 v0, 0x0

    .line 10385
    .local v0, "checkedStateChanged":Z
    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v1, :cond_5

    iget v2, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    const/4 v3, 0x3

    if-ne v2, v3, :cond_5

    iget-object v2, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v2, :cond_5

    .line 10387
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v1, p2, v2}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 10388
    .local v1, "checked":Z
    iget-object v2, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p2, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 10389
    iget-object v2, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 10390
    if-eqz v1, :cond_1

    .line 10391
    iget-object v2, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v3, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_0

    .line 10393
    :cond_1
    iget-object v2, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v3, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroid/util/LongSparseArray;->delete(J)V

    .line 10396
    :cond_2
    :goto_0
    if-eqz v1, :cond_3

    .line 10397
    iget v2, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    goto :goto_1

    .line 10399
    :cond_3
    iget v2, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    .line 10401
    :goto_1
    iget-object v3, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v3, :cond_4

    iget-object v2, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    if-eqz v2, :cond_4

    .line 10402
    move v4, p2

    move-wide v5, p3

    move v7, v1

    invoke-virtual/range {v2 .. v7}, Landroid/widget/AbsListView$MultiChoiceModeWrapper;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    .line 10405
    :cond_4
    const/4 v0, 0x1

    .line 10407
    .end local v1    # "checked":Z
    :cond_5
    if-eqz v0, :cond_6

    .line 10408
    invoke-direct {p0}, Landroid/widget/AbsListView;->updateOnScreenCheckedViews()V

    .line 10410
    :cond_6
    return-void
.end method

.method private blacklist semPlayGotoToFadeIn()V
    .locals 4

    .line 9713
    iget-object v0, p0, Landroid/widget/AbsListView;->mSemGoToTopFadeInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9714
    return-void

    .line 9716
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mSemGoToTopFadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9717
    iget-object v0, p0, Landroid/widget/AbsListView;->mSemGoToTopFadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 9720
    :cond_1
    iget-object v0, p0, Landroid/widget/AbsListView;->mSemGoToTopFadeInAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/widget/AbsListView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v3

    aput v3, v1, v2

    const/4 v2, 0x1

    const/16 v3, 0xff

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 9721
    iget-object v0, p0, Landroid/widget/AbsListView;->mSemGoToTopFadeInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 9722
    return-void
.end method

.method private blacklist semPlayGotoToFadeOut()V
    .locals 4

    .line 9701
    iget-object v0, p0, Landroid/widget/AbsListView;->mSemGoToTopFadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9702
    return-void

    .line 9704
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mSemGoToTopFadeInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9705
    iget-object v0, p0, Landroid/widget/AbsListView;->mSemGoToTopFadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 9708
    :cond_1
    iget-object v0, p0, Landroid/widget/AbsListView;->mSemGoToTopFadeOutAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [I

    iget-object v2, p0, Landroid/widget/AbsListView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v2

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 9709
    iget-object v0, p0, Landroid/widget/AbsListView;->mSemGoToTopFadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 9710
    return-void
.end method

.method private blacklist semSetFastScrollEnabledUiThread(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .line 9830
    iget-object v0, p0, Landroid/widget/AbsListView;->mSemFastScroll:Landroid/widget/SemFastScroller;

    if-eqz v0, :cond_0

    .line 9831
    invoke-virtual {v0, p1}, Landroid/widget/SemFastScroller;->setEnabled(Z)V

    goto :goto_0

    .line 9832
    :cond_0
    if-eqz p1, :cond_1

    .line 9833
    new-instance v0, Landroid/widget/SemFastScroller;

    iget v1, p0, Landroid/widget/AbsListView;->mFastScrollStyle:I

    invoke-direct {v0, p0, v1}, Landroid/widget/SemFastScroller;-><init>(Landroid/widget/AbsListView;I)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mSemFastScroll:Landroid/widget/SemFastScroller;

    .line 9834
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/SemFastScroller;->setEnabled(Z)V

    .line 9835
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    .line 9838
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resolvePadding()V

    .line 9839
    iget-object v0, p0, Landroid/widget/AbsListView;->mSemFastScroll:Landroid/widget/SemFastScroller;

    if-eqz v0, :cond_2

    .line 9840
    invoke-virtual {v0}, Landroid/widget/SemFastScroller;->updateLayout()V

    .line 9842
    :cond_2
    return-void
.end method

.method private blacklist semToNotifyMultiSelectionEnded(II)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 10209
    invoke-super {p0, p1, p2}, Landroid/widget/AdapterView;->semNotifyMultiSelectedStop(II)V

    .line 10210
    return-void
.end method

.method private blacklist semToNotifyMultiSelectionState(Landroid/view/View;IJ)Z
    .locals 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .line 11535
    const/4 v0, 0x0

    .line 11536
    .local v0, "handledNotifyMultiSelect":Z
    iget-boolean v6, p0, Landroid/widget/AbsListView;->mIsShiftkeyPressed:Z

    iget-boolean v7, p0, Landroid/widget/AbsListView;->mIsCtrlkeyPressed:Z

    iget-boolean v8, p0, Landroid/widget/AbsListView;->mIsPenPressed:Z

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-super/range {v1 .. v8}, Landroid/widget/AdapterView;->semNotifyMultiSelectedState(Landroid/view/View;IJZZZ)Z

    move-result v0

    .line 11538
    return v0
.end method

.method private greylist-max-o setFastScrollerAlwaysVisibleUiThread(Z)V
    .locals 1
    .param p1, "alwaysShow"    # Z

    .line 1507
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    if-eqz v0, :cond_0

    .line 1508
    invoke-virtual {v0, p1}, Landroid/widget/FastScroller;->setAlwaysShow(Z)V

    .line 1510
    :cond_0
    return-void
.end method

.method private greylist-max-o setFastScrollerEnabledUiThread(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .line 1439
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    if-eqz v0, :cond_0

    .line 1440
    invoke-virtual {v0, p1}, Landroid/widget/FastScroller;->setEnabled(Z)V

    goto :goto_0

    .line 1441
    :cond_0
    if-eqz p1, :cond_1

    .line 1442
    new-instance v0, Landroid/widget/FastScroller;

    iget v1, p0, Landroid/widget/AbsListView;->mFastScrollStyle:I

    invoke-direct {v0, p0, v1}, Landroid/widget/FastScroller;-><init>(Landroid/widget/AbsListView;I)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    .line 1443
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/FastScroller;->setEnabled(Z)V

    .line 1446
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/AbsListView;->mSemFastScroll:Landroid/widget/SemFastScroller;

    .line 1450
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resolvePadding()V

    .line 1452
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    if-eqz v0, :cond_2

    .line 1453
    invoke-virtual {v0}, Landroid/widget/FastScroller;->updateLayout()V

    .line 1455
    :cond_2
    return-void
.end method

.method private greylist-max-o setItemViewLayoutParams(Landroid/view/View;I)V
    .locals 4
    .param p1, "child"    # Landroid/view/View;
    .param p2, "position"    # I

    .line 2689
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 2691
    .local v0, "vlp":Landroid/view/ViewGroup$LayoutParams;
    if-nez v0, :cond_0

    .line 2692
    invoke-virtual {p0}, Landroid/widget/AbsListView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/AbsListView$LayoutParams;

    .local v1, "lp":Landroid/widget/AbsListView$LayoutParams;
    goto :goto_0

    .line 2693
    .end local v1    # "lp":Landroid/widget/AbsListView$LayoutParams;
    :cond_0
    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2694
    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/AbsListView$LayoutParams;

    .restart local v1    # "lp":Landroid/widget/AbsListView$LayoutParams;
    goto :goto_0

    .line 2696
    .end local v1    # "lp":Landroid/widget/AbsListView$LayoutParams;
    :cond_1
    move-object v1, v0

    check-cast v1, Landroid/widget/AbsListView$LayoutParams;

    .line 2699
    .restart local v1    # "lp":Landroid/widget/AbsListView$LayoutParams;
    :goto_0
    iget-boolean v2, p0, Landroid/widget/AbsListView;->mAdapterHasStableIds:Z

    if-eqz v2, :cond_2

    .line 2700
    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    iput-wide v2, v1, Landroid/widget/AbsListView$LayoutParams;->itemId:J

    .line 2702
    :cond_2
    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p2}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v2

    iput v2, v1, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    .line 2703
    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p2}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v2

    iput-boolean v2, v1, Landroid/widget/AbsListView$LayoutParams;->isEnabled:Z

    .line 2704
    if-eq v1, v0, :cond_3

    .line 2705
    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2707
    :cond_3
    return-void
.end method

.method private blacklist shouldDisplayEdgeEffects()Z
    .locals 2

    .line 4854
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

.method private greylist-max-o showContextMenuForChildInternal(Landroid/view/View;FFZ)Z
    .locals 10
    .param p1, "originalView"    # Landroid/view/View;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "useOffsets"    # Z

    .line 3781
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->getPositionForView(Landroid/view/View;)I

    move-result v6

    .line 3782
    .local v6, "longPressPosition":I
    if-gez v6, :cond_0

    .line 3783
    const/4 v0, 0x0

    return v0

    .line 3786
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, v6}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v7

    .line 3787
    .local v7, "longPressId":J
    const/4 v9, 0x0

    .line 3789
    .local v9, "handled":Z
    iget-object v0, p0, Landroid/widget/AbsListView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    if-eqz v0, :cond_1

    .line 3790
    iget-object v0, p0, Landroid/widget/AbsListView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    move-object v1, p0

    move-object v2, p1

    move v3, v6

    move-wide v4, v7

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemLongClickListener;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result v9

    .line 3794
    :cond_1
    if-nez v9, :cond_3

    .line 3795
    iget v0, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int v0, v6, v0

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3796
    .local v0, "child":Landroid/view/View;
    invoke-virtual {p0, v0, v6, v7, v8}, Landroid/widget/AbsListView;->createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/AbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 3798
    if-eqz p4, :cond_2

    .line 3799
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AdapterView;->showContextMenuForChild(Landroid/view/View;FF)Z

    move-result v9

    goto :goto_0

    .line 3801
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v9

    .line 3805
    .end local v0    # "child":Landroid/view/View;
    :cond_3
    :goto_0
    return v9
.end method

.method private greylist-max-o showContextMenuInternal(FFZ)Z
    .locals 5
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "useOffsets"    # Z

    .line 3742
    float-to-int v0, p1

    float-to-int v1, p2

    invoke-virtual {p0, v0, v1}, Landroid/widget/AbsListView;->pointToPosition(II)I

    move-result v0

    .line 3743
    .local v0, "position":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 3744
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, v0}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v1

    .line 3745
    .local v1, "id":J
    iget v3, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int v3, v0, v3

    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 3746
    .local v3, "child":Landroid/view/View;
    if-eqz v3, :cond_1

    .line 3747
    invoke-virtual {p0, v3, v0, v1, v2}, Landroid/widget/AbsListView;->createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v4

    iput-object v4, p0, Landroid/widget/AbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 3748
    if-eqz p3, :cond_0

    .line 3749
    invoke-super {p0, p0, p1, p2}, Landroid/widget/AdapterView;->showContextMenuForChild(Landroid/view/View;FF)Z

    move-result v4

    return v4

    .line 3751
    :cond_0
    invoke-super {p0, p0}, Landroid/widget/AdapterView;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v4

    return v4

    .line 3754
    .end local v1    # "id":J
    .end local v3    # "child":Landroid/view/View;
    :cond_1
    goto :goto_0

    .line 3756
    :cond_2
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/widget/AbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 3759
    :goto_0
    if-eqz p3, :cond_3

    .line 3760
    invoke-super {p0, p1, p2}, Landroid/widget/AdapterView;->showContextMenu(FF)Z

    move-result v1

    return v1

    .line 3762
    :cond_3
    invoke-super {p0}, Landroid/widget/AdapterView;->showContextMenu()Z

    move-result v1

    return v1
.end method

.method private blacklist showPointerIcon(Landroid/view/MotionEvent;I)V
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .param p2, "iconId"    # I

    .line 9291
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v0

    .line 9292
    .local v0, "inputDevice":Landroid/view/InputDevice;
    if-eqz v0, :cond_0

    .line 9293
    invoke-virtual {v0, p2}, Landroid/view/InputDevice;->setPointerType(I)V

    goto :goto_0

    .line 9295
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to change PointerIcon to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AbsListView"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9297
    :goto_0
    return-void
.end method

.method private greylist-max-o showPopup()V
    .locals 1

    .line 6605
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWindowVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 6606
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/widget/AbsListView;->createTextFilter(Z)V

    .line 6607
    invoke-direct {p0}, Landroid/widget/AbsListView;->positionPopup()V

    .line 6609
    invoke-virtual {p0}, Landroid/widget/AbsListView;->checkFocus()V

    .line 6611
    :cond_0
    return-void
.end method

.method private greylist-max-o startScrollIfNeeded(IILandroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "vtev"    # Landroid/view/MotionEvent;

    .line 4044
    iget v0, p0, Landroid/widget/AbsListView;->mMotionY:I

    sub-int v0, p2, v0

    .line 4045
    .local v0, "deltaY":I
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 4046
    .local v1, "distance":I
    iget v2, p0, Landroid/widget/AbsListView;->mScrollY:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    .line 4047
    .local v2, "overscroll":Z
    :goto_0
    if-nez v2, :cond_1

    iget v5, p0, Landroid/widget/AbsListView;->mTouchSlop:I

    if-le v1, v5, :cond_7

    .line 4048
    :cond_1
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getNestedScrollAxes()I

    move-result v5

    and-int/lit8 v5, v5, 0x2

    if-nez v5, :cond_7

    .line 4049
    invoke-direct {p0}, Landroid/widget/AbsListView;->createScrollingCache()V

    .line 4050
    if-eqz v2, :cond_2

    .line 4051
    const/4 v5, 0x5

    iput v5, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4052
    iput v4, p0, Landroid/widget/AbsListView;->mMotionCorrection:I

    goto :goto_2

    .line 4054
    :cond_2
    const/4 v5, 0x3

    iput v5, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4055
    iget v5, p0, Landroid/widget/AbsListView;->mTouchSlop:I

    if-lez v0, :cond_3

    goto :goto_1

    :cond_3
    neg-int v5, v5

    :goto_1
    iput v5, p0, Landroid/widget/AbsListView;->mMotionCorrection:I

    .line 4057
    :goto_2
    iget-object v5, p0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    invoke-virtual {p0, v5}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4058
    invoke-virtual {p0, v4}, Landroid/widget/AbsListView;->setPressed(Z)V

    .line 4059
    iget v5, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    iget v6, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int/2addr v5, v6

    invoke-virtual {p0, v5}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 4060
    .local v5, "motionView":Landroid/view/View;
    if-eqz v5, :cond_4

    .line 4061
    invoke-virtual {v5, v4}, Landroid/view/View;->setPressed(Z)V

    .line 4065
    :cond_4
    iget v6, p0, Landroid/widget/AbsListView;->mPointerCount:I

    if-le v6, v3, :cond_5

    .line 4071
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v6

    .line 4072
    .local v6, "childCount":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_3
    if-ge v7, v6, :cond_5

    .line 4073
    invoke-virtual {p0, v7}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8, v4}, Landroid/view/View;->setPressed(Z)V

    .line 4072
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 4077
    .end local v6    # "childCount":I
    .end local v7    # "i":I
    :cond_5
    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 4080
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    .line 4081
    .local v4, "parent":Landroid/view/ViewParent;
    if-eqz v4, :cond_6

    .line 4082
    invoke-interface {v4, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 4084
    :cond_6
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/AbsListView;->scrollIfNeeded(IILandroid/view/MotionEvent;)V

    .line 4085
    return v3

    .line 4088
    .end local v4    # "parent":Landroid/view/ViewParent;
    .end local v5    # "motionView":Landroid/view/View;
    :cond_7
    return v4
.end method

.method private blacklist stopEdgeGlowRecede(F)V
    .locals 3
    .param p1, "x"    # F

    .line 4591
    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->getDistance()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 4592
    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v2, p1, v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->onPullDistance(FF)F

    .line 4594
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->getDistance()F

    move-result v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    .line 4595
    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v2, p1, v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->onPullDistance(FF)F

    .line 4597
    :cond_1
    return-void
.end method

.method private blacklist updateLongPressMultiSelection(IIZ)V
    .locals 19
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "fromUserTouch"    # Z

    .line 10213
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v3

    .line 10215
    .local v3, "count":I
    iget-boolean v4, v0, Landroid/widget/AbsListView;->mIsFirstMultiSelectionMove:Z

    const/4 v5, 0x0

    const/4 v6, -0x1

    if-eqz v4, :cond_4

    .line 10216
    iput v1, v0, Landroid/widget/AbsListView;->mSemDragStartX:I

    .line 10217
    iput v2, v0, Landroid/widget/AbsListView;->mSemDragStartY:I

    .line 10218
    invoke-super/range {p0 .. p2}, Landroid/widget/AdapterView;->semNotifyLongPressMultiSelectionStarted(II)V

    .line 10220
    invoke-virtual/range {p0 .. p2}, Landroid/widget/AbsListView;->pointToPosition(II)I

    move-result v4

    iput v4, v0, Landroid/widget/AbsListView;->mSemTrackedChildPosition:I

    iput v4, v0, Landroid/widget/AbsListView;->mSemDragSelectedViewPosition:I

    .line 10221
    if-ne v4, v6, :cond_1

    .line 10222
    invoke-virtual/range {p0 .. p2}, Landroid/widget/AbsListView;->semPointToNearPosition(II)I

    move-result v4

    iput v4, v0, Landroid/widget/AbsListView;->mSemTrackedChildPosition:I

    .line 10223
    iget-object v4, v0, Landroid/widget/AbsListView;->mSemTrackedChild:Landroid/view/View;

    if-nez v4, :cond_2

    .line 10224
    iget v4, v0, Landroid/widget/AbsListView;->mSemCloseChildPositionByTop:I

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v7

    sub-int/2addr v4, v7

    invoke-virtual {v0, v4}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, v0, Landroid/widget/AbsListView;->mSemCloseChildByTop:Landroid/view/View;

    .line 10225
    if-eqz v4, :cond_0

    .line 10226
    iget v7, v0, Landroid/widget/AbsListView;->mSemDragStartY:I

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    sub-int/2addr v7, v4

    iput v7, v0, Landroid/widget/AbsListView;->mSemDistanceFromCloseChildTop:I

    .line 10229
    :cond_0
    iget v4, v0, Landroid/widget/AbsListView;->mSemCloseChildPositionByBottom:I

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v7

    sub-int/2addr v4, v7

    invoke-virtual {v0, v4}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, v0, Landroid/widget/AbsListView;->mSemCloseChildByBottom:Landroid/view/View;

    .line 10230
    if-eqz v4, :cond_2

    .line 10231
    iget v7, v0, Landroid/widget/AbsListView;->mSemDragStartY:I

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    sub-int/2addr v7, v4

    iput v7, v0, Landroid/widget/AbsListView;->mSemDistanceFromCloseChildBottom:I

    goto :goto_0

    .line 10235
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v7

    sub-int/2addr v4, v7

    invoke-virtual {v0, v4}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, v0, Landroid/widget/AbsListView;->mSemTrackedChild:Landroid/view/View;

    .line 10238
    :cond_2
    :goto_0
    iget-object v4, v0, Landroid/widget/AbsListView;->mSemTrackedChild:Landroid/view/View;

    if-eqz v4, :cond_3

    .line 10239
    iget v7, v0, Landroid/widget/AbsListView;->mSemDragStartY:I

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    sub-int/2addr v7, v4

    iput v7, v0, Landroid/widget/AbsListView;->mSemDistanceFromTrackedChildTop:I

    .line 10241
    :cond_3
    iput-boolean v5, v0, Landroid/widget/AbsListView;->mIsFirstMultiSelectionMove:Z

    .line 10244
    :cond_4
    const/4 v4, 0x0

    .line 10245
    .local v4, "contentTop":I
    const/4 v7, 0x0

    .line 10247
    .local v7, "contentBottom":I
    iget-boolean v8, v0, Landroid/widget/AbsListView;->mIsEnabledPaddingInHoverScroll:Z

    if-eqz v8, :cond_5

    .line 10248
    iget-object v8, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v8, Landroid/graphics/Rect;->top:I

    .line 10249
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v8

    iget-object v9, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v8, v9

    .end local v7    # "contentBottom":I
    .local v8, "contentBottom":I
    goto :goto_1

    .line 10251
    .end local v8    # "contentBottom":I
    .restart local v7    # "contentBottom":I
    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v8

    .line 10254
    .end local v7    # "contentBottom":I
    .restart local v8    # "contentBottom":I
    :goto_1
    iput v1, v0, Landroid/widget/AbsListView;->mSemDragEndX:I

    .line 10255
    iput v2, v0, Landroid/widget/AbsListView;->mSemDragEndY:I

    .line 10257
    if-gez v2, :cond_6

    .line 10258
    iput v5, v0, Landroid/widget/AbsListView;->mSemDragEndY:I

    goto :goto_2

    .line 10259
    :cond_6
    if-le v2, v8, :cond_7

    .line 10260
    iput v8, v0, Landroid/widget/AbsListView;->mSemDragEndY:I

    .line 10263
    :cond_7
    :goto_2
    iget v7, v0, Landroid/widget/AbsListView;->mSemDragEndY:I

    invoke-virtual {v0, v1, v7}, Landroid/widget/AbsListView;->pointToPosition(II)I

    move-result v7

    .line 10265
    .local v7, "touchedPosition":I
    if-eq v7, v6, :cond_8

    .line 10266
    iput v7, v0, Landroid/widget/AbsListView;->mSemDragSelectedViewPosition:I

    goto :goto_3

    .line 10268
    :cond_8
    iget v9, v0, Landroid/widget/AbsListView;->mSemDragEndX:I

    iget v10, v0, Landroid/widget/AbsListView;->mSemDragEndY:I

    invoke-virtual {v0, v9, v10}, Landroid/widget/AbsListView;->semPointToNearPosition(II)I

    move-result v9

    iput v9, v0, Landroid/widget/AbsListView;->mSemDragSelectedViewPosition:I

    .line 10274
    :goto_3
    iget v9, v0, Landroid/widget/AbsListView;->mSemTrackedChildPosition:I

    iget v10, v0, Landroid/widget/AbsListView;->mSemDragSelectedViewPosition:I

    if-ge v9, v10, :cond_9

    .line 10275
    iget v9, v0, Landroid/widget/AbsListView;->mSemTrackedChildPosition:I

    .line 10276
    .local v9, "startPosition":I
    iget v10, v0, Landroid/widget/AbsListView;->mSemDragSelectedViewPosition:I

    .local v10, "endPosition":I
    goto :goto_4

    .line 10278
    .end local v9    # "startPosition":I
    .end local v10    # "endPosition":I
    :cond_9
    iget v9, v0, Landroid/widget/AbsListView;->mSemDragSelectedViewPosition:I

    .line 10279
    .restart local v9    # "startPosition":I
    iget v10, v0, Landroid/widget/AbsListView;->mSemTrackedChildPosition:I

    .line 10282
    .restart local v10    # "endPosition":I
    :goto_4
    iget v11, v0, Landroid/widget/AbsListView;->mSemDragStartX:I

    iget v12, v0, Landroid/widget/AbsListView;->mSemDragEndX:I

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v11

    iput v11, v0, Landroid/widget/AbsListView;->mSemDragBlockLeft:I

    .line 10283
    iget v11, v0, Landroid/widget/AbsListView;->mSemDragStartY:I

    iget v12, v0, Landroid/widget/AbsListView;->mSemDragEndY:I

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v11

    iput v11, v0, Landroid/widget/AbsListView;->mSemDragBlockTop:I

    .line 10284
    iget v11, v0, Landroid/widget/AbsListView;->mSemDragEndX:I

    iget v12, v0, Landroid/widget/AbsListView;->mSemDragStartX:I

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v11

    iput v11, v0, Landroid/widget/AbsListView;->mSemDragBlockRight:I

    .line 10285
    iget v11, v0, Landroid/widget/AbsListView;->mSemDragEndY:I

    iget v12, v0, Landroid/widget/AbsListView;->mSemDragStartY:I

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v11

    iput v11, v0, Landroid/widget/AbsListView;->mSemDragBlockBottom:I

    .line 10287
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_5
    if-ge v11, v3, :cond_15

    .line 10288
    invoke-virtual {v0, v11}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 10289
    .local v12, "child":Landroid/view/View;
    if-eqz v12, :cond_13

    .line 10290
    invoke-virtual {v12}, Landroid/view/View;->getLeft()I

    move-result v13

    .line 10291
    .local v13, "childLeft":I
    invoke-virtual {v12}, Landroid/view/View;->getTop()I

    move-result v14

    .line 10292
    .local v14, "childTop":I
    invoke-virtual {v0, v12}, Landroid/widget/AbsListView;->getPositionForView(Landroid/view/View;)I

    move-result v15

    .line 10294
    .local v15, "childPosition":I
    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v16

    if-nez v16, :cond_12

    .line 10295
    const/16 v16, 0x0

    .line 10296
    .local v16, "needSelected":Z
    const/16 v17, 0x0

    .line 10297
    .local v17, "notNeedToCheck":Z
    if-gt v9, v15, :cond_b

    if-gt v15, v10, :cond_b

    .line 10298
    iget-object v6, v0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v6, :cond_a

    invoke-virtual {v6, v15, v5}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 10299
    const/4 v6, 0x1

    move/from16 v17, v6

    .end local v17    # "notNeedToCheck":Z
    .local v6, "notNeedToCheck":Z
    goto :goto_6

    .line 10301
    .end local v6    # "notNeedToCheck":Z
    .restart local v17    # "notNeedToCheck":Z
    :cond_a
    const/4 v6, 0x0

    move/from16 v17, v6

    .line 10303
    :goto_6
    const/16 v16, 0x1

    .line 10306
    :cond_b
    if-eqz v16, :cond_f

    .line 10307
    add-int/lit8 v5, v13, 0x1

    add-int/lit8 v6, v14, 0x1

    invoke-virtual {v0, v5, v6}, Landroid/widget/AbsListView;->pointToPosition(II)I

    move-result v5

    iput v5, v0, Landroid/widget/AbsListView;->mSemDragSelectedViewPosition:I

    .line 10308
    const/4 v6, -0x1

    if-eq v5, v6, :cond_e

    iget-object v6, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v6, v5}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_e

    iget-object v5, v0, Landroid/widget/AbsListView;->mSemDragSelectedItemArray:Ljava/util/ArrayList;

    iget v6, v0, Landroid/widget/AbsListView;->mSemDragSelectedViewPosition:I

    .line 10309
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_d

    .line 10310
    if-eqz v17, :cond_c

    iget v5, v0, Landroid/widget/AbsListView;->mSemDragSelectedViewPosition:I

    if-gt v9, v5, :cond_c

    if-gt v5, v10, :cond_c

    .line 10311
    const/16 v17, 0x0

    move/from16 v18, v7

    goto :goto_7

    .line 10313
    :cond_c
    iget v5, v0, Landroid/widget/AbsListView;->mSemDragSelectedViewPosition:I

    move/from16 v18, v7

    .end local v7    # "touchedPosition":I
    .local v18, "touchedPosition":I
    invoke-virtual {v0, v5}, Landroid/widget/AbsListView;->getItemIdAtPosition(I)J

    move-result-wide v6

    const/4 v1, 0x0

    invoke-direct {v0, v1, v5, v6, v7}, Landroid/widget/AbsListView;->semPerformItemCheck(Landroid/view/View;IJ)V

    .line 10315
    :goto_7
    iget-object v1, v0, Landroid/widget/AbsListView;->mSemDragSelectedItemArray:Ljava/util/ArrayList;

    iget v5, v0, Landroid/widget/AbsListView;->mSemDragSelectedViewPosition:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10316
    iget v1, v0, Landroid/widget/AbsListView;->mSemDragSelectedViewPosition:I

    const/4 v5, -0x1

    invoke-direct {v0, v1, v5}, Landroid/widget/AbsListView;->addToPressItemListArray(II)V

    .line 10317
    iget v1, v0, Landroid/widget/AbsListView;->mSemDragSelectedViewPosition:I

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getItemIdAtPosition(I)J

    move-result-wide v5

    invoke-super {v0, v12, v1, v5, v6}, Landroid/widget/AdapterView;->semNotifyLongPressMultiSelectionState(Landroid/view/View;IJ)Z

    const/4 v5, -0x1

    goto :goto_8

    .line 10309
    .end local v18    # "touchedPosition":I
    .restart local v7    # "touchedPosition":I
    :cond_d
    move/from16 v18, v7

    .end local v7    # "touchedPosition":I
    .restart local v18    # "touchedPosition":I
    const/4 v5, -0x1

    goto :goto_8

    .line 10308
    .end local v18    # "touchedPosition":I
    .restart local v7    # "touchedPosition":I
    :cond_e
    move/from16 v18, v7

    .end local v7    # "touchedPosition":I
    .restart local v18    # "touchedPosition":I
    const/4 v5, -0x1

    goto :goto_8

    .line 10320
    .end local v18    # "touchedPosition":I
    .restart local v7    # "touchedPosition":I
    :cond_f
    move/from16 v18, v7

    .end local v7    # "touchedPosition":I
    .restart local v18    # "touchedPosition":I
    add-int/lit8 v1, v13, 0x1

    add-int/lit8 v5, v14, 0x1

    invoke-virtual {v0, v1, v5}, Landroid/widget/AbsListView;->pointToPosition(II)I

    move-result v1

    iput v1, v0, Landroid/widget/AbsListView;->mSemDragSelectedViewPosition:I

    .line 10321
    const/4 v5, -0x1

    if-eq v1, v5, :cond_14

    iget-object v5, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v5, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_11

    iget-object v1, v0, Landroid/widget/AbsListView;->mSemDragSelectedItemArray:Ljava/util/ArrayList;

    iget v5, v0, Landroid/widget/AbsListView;->mSemDragSelectedViewPosition:I

    .line 10322
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 10323
    iget v1, v0, Landroid/widget/AbsListView;->mSemDragSelectedViewPosition:I

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getItemIdAtPosition(I)J

    move-result-wide v5

    const/4 v7, 0x0

    invoke-direct {v0, v7, v1, v5, v6}, Landroid/widget/AbsListView;->semPerformItemCheck(Landroid/view/View;IJ)V

    .line 10324
    iget-object v1, v0, Landroid/widget/AbsListView;->mSemDragSelectedItemArray:Ljava/util/ArrayList;

    iget v5, v0, Landroid/widget/AbsListView;->mSemDragSelectedViewPosition:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 10325
    iget v1, v0, Landroid/widget/AbsListView;->mSemDragSelectedViewPosition:I

    const/4 v5, -0x1

    invoke-direct {v0, v1, v5}, Landroid/widget/AbsListView;->addToPressItemListArray(II)V

    .line 10326
    iget v1, v0, Landroid/widget/AbsListView;->mSemDragSelectedViewPosition:I

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getItemIdAtPosition(I)J

    move-result-wide v6

    invoke-super {v0, v12, v1, v6, v7}, Landroid/widget/AdapterView;->semNotifyLongPressMultiSelectionState(Landroid/view/View;IJ)Z

    goto :goto_8

    .line 10322
    :cond_10
    const/4 v5, -0x1

    goto :goto_8

    .line 10321
    :cond_11
    const/4 v5, -0x1

    goto :goto_8

    .line 10294
    .end local v16    # "needSelected":Z
    .end local v17    # "notNeedToCheck":Z
    .end local v18    # "touchedPosition":I
    .restart local v7    # "touchedPosition":I
    :cond_12
    move v5, v6

    move/from16 v18, v7

    .end local v7    # "touchedPosition":I
    .restart local v18    # "touchedPosition":I
    goto :goto_8

    .line 10289
    .end local v13    # "childLeft":I
    .end local v14    # "childTop":I
    .end local v15    # "childPosition":I
    .end local v18    # "touchedPosition":I
    .restart local v7    # "touchedPosition":I
    :cond_13
    move v5, v6

    move/from16 v18, v7

    .line 10287
    .end local v7    # "touchedPosition":I
    .end local v12    # "child":Landroid/view/View;
    .restart local v18    # "touchedPosition":I
    :cond_14
    :goto_8
    add-int/lit8 v11, v11, 0x1

    move/from16 v1, p1

    move v6, v5

    move/from16 v7, v18

    const/4 v5, 0x0

    goto/16 :goto_5

    .end local v18    # "touchedPosition":I
    .restart local v7    # "touchedPosition":I
    :cond_15
    move/from16 v18, v7

    .line 10332
    .end local v7    # "touchedPosition":I
    .end local v11    # "i":I
    .restart local v18    # "touchedPosition":I
    if-eqz p3, :cond_1c

    .line 10333
    iget v1, v0, Landroid/widget/AbsListView;->mHoverTopAreaHeight:I

    add-int/2addr v1, v4

    const/4 v5, 0x1

    if-gt v2, v1, :cond_17

    .line 10334
    iget-boolean v1, v0, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    if-nez v1, :cond_16

    .line 10335
    iput-boolean v5, v0, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    .line 10336
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v0, Landroid/widget/AbsListView;->mHoverScrollStartTime:J

    .line 10338
    iget-object v1, v0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v1, :cond_16

    .line 10339
    invoke-interface {v1, v0, v5}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 10344
    :cond_16
    iget-object v1, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    invoke-virtual {v1, v5}, Landroid/widget/AbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_1c

    .line 10345
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v0, Landroid/widget/AbsListView;->mHoverRecognitionStartTime:J

    .line 10346
    const/4 v1, 0x2

    iput v1, v0, Landroid/widget/AbsListView;->mHoverScrollDirection:I

    .line 10347
    iget-object v1, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    invoke-virtual {v1, v5}, Landroid/widget/AbsListView$HoverScrollHandler;->sendEmptyMessage(I)Z

    goto :goto_9

    .line 10349
    :cond_17
    iget v1, v0, Landroid/widget/AbsListView;->mHoverBottomAreaHeight:I

    sub-int v1, v8, v1

    if-lt v2, v1, :cond_19

    .line 10350
    iget-boolean v1, v0, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    if-nez v1, :cond_18

    .line 10351
    iput-boolean v5, v0, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    .line 10352
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v0, Landroid/widget/AbsListView;->mHoverScrollStartTime:J

    .line 10354
    iget-object v1, v0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v1, :cond_18

    .line 10355
    invoke-interface {v1, v0, v5}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 10359
    :cond_18
    iget-object v1, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    invoke-virtual {v1, v5}, Landroid/widget/AbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_1c

    .line 10360
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v0, Landroid/widget/AbsListView;->mHoverRecognitionStartTime:J

    .line 10361
    iput v5, v0, Landroid/widget/AbsListView;->mHoverScrollDirection:I

    .line 10362
    iget-object v1, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    invoke-virtual {v1, v5}, Landroid/widget/AbsListView$HoverScrollHandler;->sendEmptyMessage(I)Z

    goto :goto_9

    .line 10365
    :cond_19
    iget-boolean v1, v0, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    if-eqz v1, :cond_1a

    iget-object v1, v0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v1, :cond_1a

    .line 10366
    const/4 v6, 0x0

    invoke-interface {v1, v0, v6}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 10369
    :cond_1a
    const-wide/16 v6, 0x0

    iput-wide v6, v0, Landroid/widget/AbsListView;->mHoverScrollStartTime:J

    .line 10370
    iput-wide v6, v0, Landroid/widget/AbsListView;->mHoverRecognitionStartTime:J

    .line 10371
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    .line 10374
    iget-object v1, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    invoke-virtual {v1, v5}, Landroid/widget/AbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 10375
    iget-object v1, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    invoke-virtual {v1, v5}, Landroid/widget/AbsListView$HoverScrollHandler;->removeMessages(I)V

    .line 10377
    :cond_1b
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/widget/AbsListView;->mIsHoverOverscrolled:Z

    .line 10380
    :cond_1c
    :goto_9
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->invalidate()V

    .line 10381
    return-void
.end method

.method private greylist-max-o updateOnScreenCheckedViews()V
    .locals 8

    .line 1299
    iget v0, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    .line 1300
    .local v0, "firstPos":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    .line 1301
    .local v1, "count":I
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

    .line 1303
    .local v2, "useActivated":Z
    :goto_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v1, :cond_3

    .line 1304
    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1305
    .local v4, "child":Landroid/view/View;
    add-int v5, v0, v3

    .line 1307
    .local v5, "position":I
    instance-of v6, v4, Landroid/widget/Checkable;

    if-eqz v6, :cond_1

    .line 1308
    move-object v6, v4

    check-cast v6, Landroid/widget/Checkable;

    iget-object v7, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v7, v5}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v7

    invoke-interface {v6, v7}, Landroid/widget/Checkable;->setChecked(Z)V

    goto :goto_2

    .line 1309
    :cond_1
    if-eqz v2, :cond_2

    .line 1310
    iget-object v6, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v6

    invoke-virtual {v4, v6}, Landroid/view/View;->setActivated(Z)V

    .line 1303
    .end local v4    # "child":Landroid/view/View;
    .end local v5    # "position":I
    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1313
    .end local v3    # "i":I
    :cond_3
    return-void
.end method

.method private greylist-max-o useDefaultSelector()V
    .locals 2

    .line 1885
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x1080062

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 1887
    return-void
.end method


# virtual methods
.method public blacklist addExtraPaddingInBottomHoverArea(I)V
    .locals 3
    .param p1, "extraSpace"    # I

    .line 9332
    int-to-float v0, p1

    iget-object v1, p0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    .line 9334
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 9332
    const/4 v2, 0x1

    invoke-static {v2, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/widget/AbsListView;->mExtraPaddingInBottomHoverArea:I

    .line 9335
    return-void
.end method

.method public blacklist addExtraPaddingInTopHoverArea(I)V
    .locals 3
    .param p1, "extraSpace"    # I

    .line 9323
    int-to-float v0, p1

    iget-object v1, p0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    .line 9325
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 9323
    const/4 v2, 0x1

    invoke-static {v2, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/widget/AbsListView;->mExtraPaddingInTopHoverArea:I

    .line 9326
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

    .line 5291
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 5292
    .local v0, "count":I
    iget v1, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    .line 5293
    .local v1, "firstPosition":I
    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 5295
    .local v2, "adapter":Landroid/widget/ListAdapter;
    if-nez v2, :cond_0

    .line 5296
    return-void

    .line 5299
    :cond_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_2

    .line 5300
    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 5301
    .local v4, "child":Landroid/view/View;
    add-int v5, v1, v3

    invoke-interface {v2, v5}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 5302
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5304
    :cond_1
    invoke-virtual {v4, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    .line 5299
    .end local v4    # "child":Landroid/view/View;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 5306
    .end local v3    # "i":I
    :cond_2
    return-void
.end method

.method public whitelist afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .line 7106
    return-void
.end method

.method public whitelist beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .line 7065
    return-void
.end method

.method public whitelist canScrollList(I)Z
    .locals 9
    .param p1, "direction"    # I

    .line 5937
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 5938
    .local v0, "childCount":I
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 5939
    return v1

    .line 5942
    :cond_0
    iget v2, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    .line 5943
    .local v2, "firstPosition":I
    iget-object v3, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 5944
    .local v3, "listPadding":Landroid/graphics/Rect;
    const/4 v4, 0x1

    if-lez p1, :cond_3

    .line 5945
    add-int/lit8 v5, v0, -0x1

    invoke-virtual {p0, v5}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v5

    .line 5946
    .local v5, "lastBottom":I
    add-int v6, v2, v0

    .line 5947
    .local v6, "lastPosition":I
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

    .line 5949
    .end local v5    # "lastBottom":I
    .end local v6    # "lastPosition":I
    :cond_3
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    .line 5950
    .local v5, "firstTop":I
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
    .param p1, "view"    # Landroid/view/View;

    .line 6978
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
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 7134
    instance-of v0, p1, Landroid/widget/AbsListView$LayoutParams;

    return v0
.end method

.method public whitelist clearChoices()V
    .locals 1

    .line 1143
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_0

    .line 1144
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 1146
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_1

    .line 1147
    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    .line 1149
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    .line 1150
    return-void
.end method

.method public whitelist clearTextFilter()V
    .locals 2

    .line 7027
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFiltered:Z

    if-eqz v0, :cond_0

    .line 7028
    invoke-direct {p0}, Landroid/widget/AbsListView;->getTextFilterInput()Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 7029
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mFiltered:Z

    .line 7030
    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7031
    invoke-direct {p0}, Landroid/widget/AbsListView;->dismissPopup()V

    .line 7034
    :cond_0
    return-void
.end method

.method protected whitelist computeVerticalScrollExtent()I
    .locals 7

    .line 2251
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 2252
    .local v0, "count":I
    const/4 v1, 0x0

    if-lez v0, :cond_3

    .line 2253
    iget-boolean v2, p0, Landroid/widget/AbsListView;->mSmoothScrollbarEnabled:Z

    if-eqz v2, :cond_2

    .line 2254
    mul-int/lit8 v2, v0, 0x64

    .line 2256
    .local v2, "extent":I
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2257
    .local v1, "view":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    .line 2258
    .local v3, "top":I
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v4

    .line 2259
    .local v4, "height":I
    if-lez v4, :cond_0

    .line 2260
    mul-int/lit8 v5, v3, 0x64

    div-int/2addr v5, v4

    add-int/2addr v2, v5

    .line 2263
    :cond_0
    add-int/lit8 v5, v0, -0x1

    invoke-virtual {p0, v5}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2264
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v5

    .line 2265
    .local v5, "bottom":I
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v4

    .line 2266
    if-lez v4, :cond_1

    .line 2267
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v6

    sub-int v6, v5, v6

    mul-int/lit8 v6, v6, 0x64

    div-int/2addr v6, v4

    sub-int/2addr v2, v6

    .line 2270
    :cond_1
    return v2

    .line 2272
    .end local v1    # "view":Landroid/view/View;
    .end local v2    # "extent":I
    .end local v3    # "top":I
    .end local v4    # "height":I
    .end local v5    # "bottom":I
    :cond_2
    const/4 v1, 0x1

    return v1

    .line 2275
    :cond_3
    return v1
.end method

.method protected whitelist computeVerticalScrollOffset()I
    .locals 9

    .line 2280
    iget v0, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    .line 2281
    .local v0, "firstPosition":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    .line 2282
    .local v1, "childCount":I
    const/4 v2, 0x0

    if-ltz v0, :cond_4

    if-lez v1, :cond_4

    .line 2283
    iget-boolean v3, p0, Landroid/widget/AbsListView;->mSmoothScrollbarEnabled:Z

    if-eqz v3, :cond_1

    .line 2284
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 2285
    .local v3, "view":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v4

    .line 2286
    .local v4, "top":I
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v5

    .line 2287
    .local v5, "height":I
    if-lez v5, :cond_0

    .line 2288
    mul-int/lit8 v6, v0, 0x64

    mul-int/lit8 v7, v4, 0x64

    div-int/2addr v7, v5

    sub-int/2addr v6, v7

    iget v7, p0, Landroid/widget/AbsListView;->mScrollY:I

    int-to-float v7, v7

    .line 2289
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

    .line 2288
    invoke-static {v6, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    return v2

    .line 2291
    .end local v3    # "view":Landroid/view/View;
    .end local v4    # "top":I
    .end local v5    # "height":I
    :cond_0
    goto :goto_1

    .line 2293
    :cond_1
    iget v2, p0, Landroid/widget/AbsListView;->mItemCount:I

    .line 2294
    .local v2, "count":I
    if-nez v0, :cond_2

    .line 2295
    const/4 v3, 0x0

    .local v3, "index":I
    goto :goto_0

    .line 2296
    .end local v3    # "index":I
    :cond_2
    add-int v3, v0, v1

    if-ne v3, v2, :cond_3

    .line 2297
    move v3, v2

    .restart local v3    # "index":I
    goto :goto_0

    .line 2299
    .end local v3    # "index":I
    :cond_3
    div-int/lit8 v3, v1, 0x2

    add-int/2addr v3, v0

    .line 2301
    .restart local v3    # "index":I
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

    .line 2304
    .end local v2    # "count":I
    .end local v3    # "index":I
    :cond_4
    :goto_1
    return v2
.end method

.method protected whitelist computeVerticalScrollRange()I
    .locals 3

    .line 2310
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mSmoothScrollbarEnabled:Z

    if-eqz v0, :cond_0

    .line 2311
    iget v0, p0, Landroid/widget/AbsListView;->mItemCount:I

    mul-int/lit8 v0, v0, 0x64

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2312
    .local v0, "result":I
    iget v1, p0, Landroid/widget/AbsListView;->mScrollY:I

    if-eqz v1, :cond_1

    .line 2314
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

    .line 2317
    .end local v0    # "result":I
    :cond_0
    iget v0, p0, Landroid/widget/AbsListView;->mItemCount:I

    .line 2319
    .restart local v0    # "result":I
    :cond_1
    :goto_0
    return v0
.end method

.method greylist-max-o confirmCheckedPositionsById()V
    .locals 18

    .line 6381
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->clear()V

    .line 6383
    const/4 v1, 0x0

    .line 6384
    .local v1, "checkedCountChanged":Z
    const/4 v2, 0x0

    .local v2, "checkedIndex":I
    :goto_0
    iget-object v3, v0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v3}, Landroid/util/LongSparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_5

    .line 6385
    iget-object v3, v0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v2}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v10

    .line 6386
    .local v10, "id":J
    iget-object v3, v0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v2}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 6388
    .local v3, "lastPos":I
    iget-object v4, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v4, v3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v12

    .line 6389
    .local v12, "lastPosId":J
    cmp-long v4, v10, v12

    const/4 v14, 0x1

    if-eqz v4, :cond_4

    .line 6391
    const/4 v4, 0x0

    add-int/lit8 v5, v3, -0x14

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 6392
    .local v15, "start":I
    add-int/lit8 v4, v3, 0x14

    iget v5, v0, Landroid/widget/AbsListView;->mItemCount:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 6393
    .local v9, "end":I
    const/4 v4, 0x0

    .line 6394
    .local v4, "found":Z
    move v5, v15

    .local v5, "searchPos":I
    :goto_1
    if-ge v5, v9, :cond_1

    .line 6395
    iget-object v6, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v6, v5}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v6

    .line 6396
    .local v6, "searchId":J
    cmp-long v8, v10, v6

    if-nez v8, :cond_0

    .line 6397
    const/4 v4, 0x1

    .line 6398
    iget-object v8, v0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v8, v5, v14}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 6399
    iget-object v8, v0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v8, v2, v14}, Landroid/util/LongSparseArray;->setValueAt(ILjava/lang/Object;)V

    .line 6400
    move v14, v4

    goto :goto_2

    .line 6394
    .end local v6    # "searchId":J
    :cond_0
    add-int/lit8 v5, v5, 0x1

    const/4 v14, 0x1

    goto :goto_1

    :cond_1
    move v14, v4

    .line 6404
    .end local v4    # "found":Z
    .end local v5    # "searchPos":I
    .local v14, "found":Z
    :goto_2
    if-nez v14, :cond_3

    .line 6405
    iget-object v4, v0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v4, v10, v11}, Landroid/util/LongSparseArray;->delete(J)V

    .line 6406
    add-int/lit8 v2, v2, -0x1

    .line 6407
    iget v4, v0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    iput v4, v0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    .line 6408
    const/4 v1, 0x1

    .line 6409
    iget-object v5, v0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v5, :cond_2

    iget-object v4, v0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    if-eqz v4, :cond_2

    .line 6410
    const/16 v16, 0x0

    move v6, v3

    move-wide v7, v10

    move/from16 v17, v9

    .end local v9    # "end":I
    .local v17, "end":I
    move/from16 v9, v16

    invoke-virtual/range {v4 .. v9}, Landroid/widget/AbsListView$MultiChoiceModeWrapper;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    goto :goto_3

    .line 6409
    .end local v17    # "end":I
    .restart local v9    # "end":I
    :cond_2
    move/from16 v17, v9

    .end local v9    # "end":I
    .restart local v17    # "end":I
    goto :goto_3

    .line 6404
    .end local v17    # "end":I
    .restart local v9    # "end":I
    :cond_3
    move/from16 v17, v9

    .line 6414
    .end local v9    # "end":I
    .end local v14    # "found":Z
    .end local v15    # "start":I
    :goto_3
    const/4 v5, 0x1

    goto :goto_4

    .line 6415
    :cond_4
    iget-object v4, v0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    const/4 v5, 0x1

    invoke-virtual {v4, v3, v5}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 6384
    .end local v3    # "lastPos":I
    .end local v10    # "id":J
    .end local v12    # "lastPosId":J
    :goto_4
    add-int/2addr v2, v5

    goto/16 :goto_0

    .line 6419
    .end local v2    # "checkedIndex":I
    :cond_5
    if-eqz v1, :cond_6

    iget-object v2, v0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v2, :cond_6

    .line 6420
    invoke-virtual {v2}, Landroid/view/ActionMode;->invalidate()V

    .line 6422
    :cond_6
    return-void
.end method

.method greylist-max-o createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .line 3504
    new-instance v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/widget/AdapterView$AdapterContextMenuInfo;-><init>(Landroid/view/View;IJ)V

    return-object v0
.end method

.method greylist-max-o createPositionScroller()Landroid/widget/AbsListView$AbsPositionScroller;
    .locals 1

    .line 5725
    new-instance v0, Landroid/widget/AbsListView$PositionScroller;

    invoke-direct {v0, p0}, Landroid/widget/AbsListView$PositionScroller;-><init>(Landroid/widget/AbsListView;)V

    return-object v0
.end method

.method public whitelist deferNotifyDataSetChanged()V
    .locals 1

    .line 7298
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mDeferNotifyDataSetChanged:Z

    .line 7299
    return-void
.end method

.method public whitelist dispatchDragEvent(Landroid/view/DragEvent;)Z
    .locals 17
    .param p1, "ev"    # Landroid/view/DragEvent;

    .line 11018
    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getAction()I

    move-result v1

    .line 11020
    .local v1, "action":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getClipDescription()Landroid/content/ClipDescription;

    move-result-object v2

    .line 11021
    .local v2, "cd":Landroid/content/ClipDescription;
    if-eqz v2, :cond_19

    invoke-virtual {v2}, Landroid/content/ClipDescription;->getLabel()Ljava/lang/CharSequence;

    move-result-object v3

    const-string v4, "cropUri"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_7

    .line 11026
    :cond_0
    const/4 v3, 0x1

    if-ne v1, v3, :cond_2

    .line 11027
    iget v4, v0, Landroid/widget/AbsListView;->mDragScrollWorkingZonePx:I

    if-gtz v4, :cond_1

    .line 11028
    const/high16 v4, 0x41c80000    # 25.0f

    iget-object v5, v0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    .line 11030
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    .line 11028
    invoke-static {v3, v4, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v0, Landroid/widget/AbsListView;->mDragScrollWorkingZonePx:I

    .line 11032
    :cond_1
    invoke-super/range {p0 .. p1}, Landroid/widget/AdapterView;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    .line 11033
    return v3

    .line 11036
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    .line 11037
    .local v4, "x":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    .line 11038
    .local v5, "y":I
    const/4 v6, 0x0

    .line 11039
    .local v6, "contentBottom":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v7

    .line 11043
    .local v7, "count":I
    if-eqz v7, :cond_3

    .line 11044
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v6

    .line 11048
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

    .line 11050
    .local v8, "canScrollDown":Z
    :goto_0
    if-nez v8, :cond_7

    if-lez v7, :cond_7

    .line 11051
    add-int/lit8 v9, v7, -0x1

    invoke-virtual {v0, v9}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 11052
    .local v9, "child":Landroid/view/View;
    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v11

    iget v12, v0, Landroid/widget/AbsListView;->mBottom:I

    iget-object v13, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v12, v13

    if-gt v11, v12, :cond_6

    .line 11053
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

    .line 11057
    .end local v9    # "child":Landroid/view/View;
    :cond_7
    iget v9, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    if-lez v9, :cond_8

    move v9, v3

    goto :goto_3

    :cond_8
    move v9, v10

    .line 11059
    .local v9, "canScrollUp":Z
    :goto_3
    if-nez v9, :cond_a

    .line 11060
    if-lez v7, :cond_a

    .line 11061
    invoke-virtual {v0, v10}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 11062
    .local v11, "child":Landroid/view/View;
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

    .line 11067
    .end local v11    # "child":Landroid/view/View;
    :cond_a
    iget v11, v0, Landroid/widget/AbsListView;->mDragScrollWorkingZonePx:I

    const/4 v12, 0x2

    if-le v5, v11, :cond_b

    sub-int v11, v6, v11

    if-lt v5, v11, :cond_14

    :cond_b
    if-lez v4, :cond_14

    .line 11068
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getRight()I

    move-result v11

    if-gt v4, v11, :cond_14

    if-nez v9, :cond_c

    if-nez v8, :cond_c

    goto/16 :goto_6

    .line 11091
    :cond_c
    iget-object v11, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    if-nez v11, :cond_d

    .line 11092
    new-instance v11, Landroid/widget/AbsListView$HoverScrollHandler;

    invoke-direct {v11, v0}, Landroid/widget/AbsListView$HoverScrollHandler;-><init>(Landroid/widget/AbsListView;)V

    iput-object v11, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    .line 11095
    :cond_d
    iget-boolean v11, v0, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    if-nez v11, :cond_e

    .line 11096
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    iput-wide v13, v0, Landroid/widget/AbsListView;->mHoverScrollStartTime:J

    .line 11099
    :cond_e
    packed-switch v1, :pswitch_data_0

    goto/16 :goto_5

    .line 11101
    :pswitch_0
    iput-boolean v3, v0, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    .line 11102
    if-ltz v5, :cond_f

    iget v10, v0, Landroid/widget/AbsListView;->mDragScrollWorkingZonePx:I

    if-gt v5, v10, :cond_f

    .line 11104
    iget-object v10, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    invoke-virtual {v10, v3}, Landroid/widget/AbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v10

    if-nez v10, :cond_13

    .line 11105
    iput-boolean v3, v0, Landroid/widget/AbsListView;->mIsDragScrolled:Z

    .line 11106
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iput-wide v10, v0, Landroid/widget/AbsListView;->mHoverRecognitionStartTime:J

    .line 11107
    iput v12, v0, Landroid/widget/AbsListView;->mHoverScrollDirection:I

    .line 11108
    iget-object v10, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    invoke-virtual {v10, v3}, Landroid/widget/AbsListView$HoverScrollHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_5

    .line 11110
    :cond_f
    iget v10, v0, Landroid/widget/AbsListView;->mDragScrollWorkingZonePx:I

    sub-int v10, v6, v10

    if-lt v5, v10, :cond_13

    if-gt v5, v6, :cond_13

    .line 11112
    iget-object v10, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    invoke-virtual {v10, v3}, Landroid/widget/AbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v10

    if-nez v10, :cond_13

    .line 11113
    iput-boolean v3, v0, Landroid/widget/AbsListView;->mIsDragScrolled:Z

    .line 11114
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iput-wide v10, v0, Landroid/widget/AbsListView;->mHoverRecognitionStartTime:J

    .line 11115
    iput v3, v0, Landroid/widget/AbsListView;->mHoverScrollDirection:I

    .line 11116
    iget-object v10, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    invoke-virtual {v10, v3}, Landroid/widget/AbsListView$HoverScrollHandler;->sendEmptyMessage(I)Z

    goto :goto_5

    .line 11144
    :pswitch_1
    iget-boolean v11, v0, Landroid/widget/AbsListView;->mIsDragScrolled:Z

    if-eqz v11, :cond_10

    .line 11145
    iput-boolean v10, v0, Landroid/widget/AbsListView;->mIsDragScrolled:Z

    .line 11151
    :cond_10
    :pswitch_2
    iget-object v11, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    invoke-virtual {v11, v3}, Landroid/widget/AbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v11

    if-eqz v11, :cond_11

    .line 11152
    iget-object v11, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    invoke-virtual {v11, v3}, Landroid/widget/AbsListView$HoverScrollHandler;->removeMessages(I)V

    .line 11154
    :cond_11
    iput-boolean v10, v0, Landroid/widget/AbsListView;->mIsDragScrolled:Z

    .line 11156
    const-wide/16 v11, 0x0

    iput-wide v11, v0, Landroid/widget/AbsListView;->mHoverRecognitionStartTime:J

    .line 11157
    iput-wide v11, v0, Landroid/widget/AbsListView;->mHoverScrollStartTime:J

    .line 11158
    iput-boolean v10, v0, Landroid/widget/AbsListView;->mIsHoverOverscrolled:Z

    .line 11159
    iput-boolean v10, v0, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    .line 11160
    goto :goto_5

    .line 11121
    :pswitch_3
    iput-boolean v3, v0, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    .line 11123
    if-ltz v5, :cond_12

    iget v10, v0, Landroid/widget/AbsListView;->mDragScrollWorkingZonePx:I

    if-gt v5, v10, :cond_12

    .line 11125
    iget-object v10, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    invoke-virtual {v10, v3}, Landroid/widget/AbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v10

    if-nez v10, :cond_13

    .line 11126
    iput-boolean v3, v0, Landroid/widget/AbsListView;->mIsDragScrolled:Z

    .line 11127
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iput-wide v10, v0, Landroid/widget/AbsListView;->mHoverRecognitionStartTime:J

    .line 11128
    iput v12, v0, Landroid/widget/AbsListView;->mHoverScrollDirection:I

    .line 11129
    iget-object v10, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    invoke-virtual {v10, v3}, Landroid/widget/AbsListView$HoverScrollHandler;->sendEmptyMessage(I)Z

    goto :goto_5

    .line 11131
    :cond_12
    iget v10, v0, Landroid/widget/AbsListView;->mDragScrollWorkingZonePx:I

    sub-int v10, v6, v10

    if-lt v5, v10, :cond_13

    if-gt v5, v6, :cond_13

    .line 11133
    iget-object v10, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    invoke-virtual {v10, v3}, Landroid/widget/AbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v10

    if-nez v10, :cond_13

    .line 11134
    iput-boolean v3, v0, Landroid/widget/AbsListView;->mIsDragScrolled:Z

    .line 11135
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iput-wide v10, v0, Landroid/widget/AbsListView;->mHoverRecognitionStartTime:J

    .line 11136
    iput v3, v0, Landroid/widget/AbsListView;->mHoverScrollDirection:I

    .line 11137
    iget-object v10, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    invoke-virtual {v10, v3}, Landroid/widget/AbsListView$HoverScrollHandler;->sendEmptyMessage(I)Z

    .line 11166
    :cond_13
    :goto_5
    invoke-super/range {p0 .. p1}, Landroid/widget/AdapterView;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v3

    return v3

    .line 11070
    :cond_14
    :goto_6
    iget-object v11, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    if-eqz v11, :cond_15

    invoke-virtual {v11, v3}, Landroid/widget/AbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v11

    if-eqz v11, :cond_15

    .line 11071
    iget-object v11, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    invoke-virtual {v11, v3}, Landroid/widget/AbsListView$HoverScrollHandler;->removeMessages(I)V

    .line 11074
    :cond_15
    iget-boolean v3, v0, Landroid/widget/AbsListView;->mIsHoverOverscrolled:Z

    if-nez v3, :cond_16

    iget-wide v13, v0, Landroid/widget/AbsListView;->mHoverScrollStartTime:J

    const-wide/16 v15, 0x0

    cmp-long v3, v13, v15

    if-eqz v3, :cond_17

    .line 11075
    :cond_16
    iput-boolean v10, v0, Landroid/widget/AbsListView;->mIsHoverOverscrolled:Z

    .line 11078
    :cond_17
    const-wide/16 v13, 0x0

    iput-wide v13, v0, Landroid/widget/AbsListView;->mHoverRecognitionStartTime:J

    .line 11079
    iput-wide v13, v0, Landroid/widget/AbsListView;->mHoverScrollStartTime:J

    .line 11080
    iput-boolean v10, v0, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    .line 11083
    if-ne v1, v12, :cond_18

    iget-boolean v3, v0, Landroid/widget/AbsListView;->mIsDragScrolled:Z

    if-eqz v3, :cond_18

    .line 11084
    iput-boolean v10, v0, Landroid/widget/AbsListView;->mIsDragScrolled:Z

    .line 11087
    :cond_18
    invoke-super/range {p0 .. p1}, Landroid/widget/AdapterView;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v3

    return v3

    .line 11022
    .end local v4    # "x":I
    .end local v5    # "y":I
    .end local v6    # "contentBottom":I
    .end local v7    # "count":I
    .end local v8    # "canScrollDown":Z
    .end local v9    # "canScrollUp":Z
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
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 2951
    const/4 v0, 0x0

    .line 2952
    .local v0, "saveCount":I
    iget v1, p0, Landroid/widget/AbsListView;->mGroupFlags:I

    const/16 v2, 0x22

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 2953
    .local v1, "clipToPadding":Z
    :goto_0
    if-eqz v1, :cond_1

    .line 2954
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 2955
    iget v3, p0, Landroid/widget/AbsListView;->mScrollX:I

    .line 2956
    .local v3, "scrollX":I
    iget v4, p0, Landroid/widget/AbsListView;->mScrollY:I

    .line 2957
    .local v4, "scrollY":I
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

    .line 2960
    iget v5, p0, Landroid/widget/AbsListView;->mGroupFlags:I

    and-int/lit8 v5, v5, -0x23

    iput v5, p0, Landroid/widget/AbsListView;->mGroupFlags:I

    .line 2963
    .end local v3    # "scrollX":I
    .end local v4    # "scrollY":I
    :cond_1
    iget-boolean v3, p0, Landroid/widget/AbsListView;->mDrawSelectorOnTop:Z

    .line 2964
    .local v3, "drawSelectorOnTop":Z
    if-nez v3, :cond_2

    .line 2965
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->drawSelector(Landroid/graphics/Canvas;)V

    .line 2968
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 2970
    if-eqz v3, :cond_3

    .line 2971
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->drawSelector(Landroid/graphics/Canvas;)V

    .line 2974
    :cond_3
    if-eqz v1, :cond_4

    .line 2975
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 2976
    iget v4, p0, Landroid/widget/AbsListView;->mGroupFlags:I

    or-int/2addr v2, v4

    iput v2, p0, Landroid/widget/AbsListView;->mGroupFlags:I

    .line 2979
    :cond_4
    iget-boolean v2, p0, Landroid/widget/AbsListView;->mIsDragBlockEnabled:Z

    if-eqz v2, :cond_8

    iget-boolean v2, p0, Landroid/widget/AbsListView;->mIsLongPressMultiSelection:Z

    if-nez v2, :cond_8

    .line 2980
    iget v2, p0, Landroid/widget/AbsListView;->mSemDragBlockLeft:I

    if-nez v2, :cond_5

    iget v2, p0, Landroid/widget/AbsListView;->mSemDragBlockTop:I

    if-nez v2, :cond_5

    .line 2981
    return-void

    .line 2984
    :cond_5
    const/4 v2, 0x0

    .line 2985
    .local v2, "trackChildTop":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v4

    .line 2986
    .local v4, "firstChildPosition":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v5

    .line 2987
    .local v5, "lastChildPosition":I
    iget v6, p0, Landroid/widget/AbsListView;->mSemTrackedChildPosition:I

    if-lt v6, v4, :cond_7

    if-gt v6, v5, :cond_7

    .line 2988
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {p0, v6}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Landroid/widget/AbsListView;->mSemTrackedChild:Landroid/view/View;

    .line 2989
    if-eqz v6, :cond_6

    .line 2990
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v2

    .line 2992
    :cond_6
    iget v6, p0, Landroid/widget/AbsListView;->mSemDistanceFromTrackedChildTop:I

    add-int/2addr v6, v2

    iput v6, p0, Landroid/widget/AbsListView;->mSemDragStartY:I

    .line 2994
    :cond_7
    iget v6, p0, Landroid/widget/AbsListView;->mSemDragStartY:I

    iget v7, p0, Landroid/widget/AbsListView;->mSemDragEndY:I

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    iput v6, p0, Landroid/widget/AbsListView;->mSemDragBlockTop:I

    .line 2995
    iget v6, p0, Landroid/widget/AbsListView;->mSemDragEndY:I

    iget v7, p0, Landroid/widget/AbsListView;->mSemDragStartY:I

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, p0, Landroid/widget/AbsListView;->mSemDragBlockBottom:I

    .line 2997
    iget-object v7, p0, Landroid/widget/AbsListView;->mSemDragBlockRect:Landroid/graphics/Rect;

    iget v8, p0, Landroid/widget/AbsListView;->mSemDragBlockLeft:I

    iget v9, p0, Landroid/widget/AbsListView;->mSemDragBlockTop:I

    iget v10, p0, Landroid/widget/AbsListView;->mSemDragBlockRight:I

    invoke-virtual {v7, v8, v9, v10, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 2998
    iget-object v6, p0, Landroid/widget/AbsListView;->mSemDragBlockImage:Landroid/graphics/drawable/Drawable;

    iget-object v7, p0, Landroid/widget/AbsListView;->mSemDragBlockRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 2999
    iget-object v6, p0, Landroid/widget/AbsListView;->mSemDragBlockImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3001
    .end local v2    # "trackChildTop":I
    .end local v4    # "firstChildPosition":I
    .end local v5    # "lastChildPosition":I
    :cond_8
    return-void
.end method

.method public whitelist dispatchDrawableHotspotChanged(FF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 3922
    return-void
.end method

.method protected whitelist dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 17
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 10747
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->isHoveringUIEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 10748
    invoke-super/range {p0 .. p1}, Landroid/widget/AdapterView;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    return v2

    .line 10750
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    .line 10753
    .local v2, "action":I
    iget-boolean v3, v0, Landroid/widget/AbsListView;->mHoveringEnabled:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    iget v3, v0, Landroid/widget/AbsListView;->mTouchMode:I

    if-ne v3, v4, :cond_1

    iget-boolean v3, v0, Landroid/widget/AbsListView;->mIsPenPressed:Z

    if-eq v3, v4, :cond_2

    .line 10754
    :cond_1
    invoke-direct/range {p0 .. p1}, Landroid/widget/AbsListView;->onHoverDrawableState(Landroid/view/MotionEvent;)V

    .line 10756
    :cond_2
    invoke-static {}, Landroid/widget/TextView;->semIsTextViewHovered()Z

    move-result v3

    iput-boolean v3, v0, Landroid/widget/AbsListView;->mNewTextViewHoverState:Z

    .line 10758
    const/16 v5, 0x20

    const/4 v6, 0x2

    const/4 v7, 0x0

    if-nez v3, :cond_4

    iget-boolean v3, v0, Landroid/widget/AbsListView;->mOldTextViewHoverState:Z

    if-eqz v3, :cond_4

    iget-boolean v3, v0, Landroid/widget/AbsListView;->mIsDragBlockEnabled:Z

    if-eqz v3, :cond_4

    .line 10759
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v3

    if-eq v3, v5, :cond_3

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v3

    if-ne v3, v6, :cond_4

    .line 10760
    :cond_3
    iput-boolean v4, v0, Landroid/widget/AbsListView;->mIsNeedPenSelectIconSet:Z

    goto :goto_0

    .line 10762
    :cond_4
    iput-boolean v7, v0, Landroid/widget/AbsListView;->mIsNeedPenSelectIconSet:Z

    .line 10765
    :goto_0
    iget-boolean v3, v0, Landroid/widget/AbsListView;->mNewTextViewHoverState:Z

    iput-boolean v3, v0, Landroid/widget/AbsListView;->mOldTextViewHoverState:Z

    .line 10768
    const/16 v3, 0x9

    const/16 v8, 0x4e35

    const/16 v9, 0xa

    const/16 v10, 0x4e21

    if-eq v2, v3, :cond_a

    iget-boolean v3, v0, Landroid/widget/AbsListView;->mHoverScrollStateChanged:Z

    if-eqz v3, :cond_5

    goto :goto_1

    .line 10802
    :cond_5
    const/4 v3, 0x7

    if-ne v2, v3, :cond_9

    .line 10803
    iget-boolean v3, v0, Landroid/widget/AbsListView;->mIsDragBlockEnabled:Z

    if-eqz v3, :cond_6

    iget-boolean v3, v0, Landroid/widget/AbsListView;->mIsPenSelectPointerSetted:Z

    if-nez v3, :cond_6

    .line 10804
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

    .line 10805
    :cond_7
    invoke-direct {v0, v1, v8}, Landroid/widget/AbsListView;->showPointerIcon(Landroid/view/MotionEvent;I)V

    .line 10806
    iput-boolean v4, v0, Landroid/widget/AbsListView;->mIsPenSelectPointerSetted:Z

    goto/16 :goto_4

    .line 10807
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

    .line 10808
    invoke-direct {v0, v1, v10}, Landroid/widget/AbsListView;->showPointerIcon(Landroid/view/MotionEvent;I)V

    .line 10809
    iput-boolean v7, v0, Landroid/widget/AbsListView;->mIsPenSelectPointerSetted:Z

    goto/16 :goto_4

    .line 10812
    :cond_9
    if-ne v2, v9, :cond_13

    .line 10813
    iget-boolean v3, v0, Landroid/widget/AbsListView;->mIsPenSelectPointerSetted:Z

    if-eqz v3, :cond_13

    .line 10814
    invoke-direct {v0, v1, v10}, Landroid/widget/AbsListView;->showPointerIcon(Landroid/view/MotionEvent;I)V

    .line 10815
    iput-boolean v7, v0, Landroid/widget/AbsListView;->mIsPenSelectPointerSetted:Z

    goto/16 :goto_4

    .line 10769
    :cond_a
    :goto_1
    invoke-virtual {v1, v7}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v3

    .line 10771
    .local v3, "toolType":I
    iput-boolean v4, v0, Landroid/widget/AbsListView;->mNeedsHoverScroll:Z

    .line 10772
    iput-boolean v7, v0, Landroid/widget/AbsListView;->mHoverScrollStateChanged:Z

    .line 10775
    iget-boolean v11, v0, Landroid/widget/AbsListView;->mHoverScrollEnable:Z

    if-nez v11, :cond_b

    .line 10776
    iput-boolean v7, v0, Landroid/widget/AbsListView;->mNeedsHoverScroll:Z

    .line 10780
    :cond_b
    iget-boolean v11, v0, Landroid/widget/AbsListView;->mNeedsHoverScroll:Z

    if-eqz v11, :cond_11

    if-ne v3, v6, :cond_11

    .line 10782
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

    .line 10784
    .local v11, "isHoveringOn":Z
    :goto_2
    iget-object v12, v0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const/4 v13, -0x3

    const-string v14, "car_mode_on"

    invoke-static {v12, v14, v7, v13}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v12

    if-ne v12, v4, :cond_d

    move v12, v4

    goto :goto_3

    :cond_d
    move v12, v7

    .line 10787
    .local v12, "isCarModeOn":Z
    :goto_3
    if-eqz v11, :cond_e

    if-eqz v12, :cond_f

    .line 10788
    :cond_e
    iput-boolean v7, v0, Landroid/widget/AbsListView;->mNeedsHoverScroll:Z

    .line 10791
    :cond_f
    if-eqz v11, :cond_11

    iget-boolean v13, v0, Landroid/widget/AbsListView;->mIsDragBlockEnabled:Z

    if-eqz v13, :cond_11

    iget-boolean v13, v0, Landroid/widget/AbsListView;->mIsPenSelectPointerSetted:Z

    if-nez v13, :cond_11

    if-ne v3, v6, :cond_11

    .line 10792
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v13

    if-eq v13, v5, :cond_10

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v13

    if-ne v13, v6, :cond_11

    .line 10793
    :cond_10
    invoke-direct {v0, v1, v8}, Landroid/widget/AbsListView;->showPointerIcon(Landroid/view/MotionEvent;I)V

    .line 10794
    iput-boolean v4, v0, Landroid/widget/AbsListView;->mIsPenSelectPointerSetted:Z

    .line 10799
    .end local v11    # "isHoveringOn":Z
    .end local v12    # "isCarModeOn":Z
    :cond_11
    iget-boolean v8, v0, Landroid/widget/AbsListView;->mNeedsHoverScroll:Z

    if-eqz v8, :cond_12

    const/4 v8, 0x3

    if-ne v3, v8, :cond_12

    .line 10800
    iput-boolean v7, v0, Landroid/widget/AbsListView;->mNeedsHoverScroll:Z

    .line 10802
    .end local v3    # "toolType":I
    :cond_12
    nop

    .line 10820
    :cond_13
    :goto_4
    iget-boolean v3, v0, Landroid/widget/AbsListView;->mNeedsHoverScroll:Z

    if-nez v3, :cond_14

    .line 10821
    invoke-super/range {p0 .. p1}, Landroid/widget/AdapterView;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    return v3

    .line 10825
    :cond_14
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    .line 10826
    .local v3, "x":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    float-to-int v8, v8

    .line 10827
    .local v8, "y":I
    const/4 v11, 0x0

    .line 10828
    .local v11, "contentTop":I
    const/4 v12, 0x0

    .line 10829
    .local v12, "contentBottom":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v13

    .line 10834
    .local v13, "count":I
    iget-object v14, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    if-nez v14, :cond_15

    .line 10835
    new-instance v14, Landroid/widget/AbsListView$HoverScrollHandler;

    invoke-direct {v14, v0}, Landroid/widget/AbsListView$HoverScrollHandler;-><init>(Landroid/widget/AbsListView;)V

    iput-object v14, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    .line 10838
    :cond_15
    iget v14, v0, Landroid/widget/AbsListView;->mHoverTopAreaHeight:I

    if-lez v14, :cond_16

    iget v14, v0, Landroid/widget/AbsListView;->mHoverBottomAreaHeight:I

    if-gtz v14, :cond_17

    .line 10839
    :cond_16
    iget-object v14, v0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    .line 10841
    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v14

    .line 10839
    const/high16 v15, 0x41c80000    # 25.0f

    invoke-static {v4, v15, v14}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v14

    const/high16 v16, 0x3f000000    # 0.5f

    add-float v14, v14, v16

    float-to-int v14, v14

    iput v14, v0, Landroid/widget/AbsListView;->mHoverTopAreaHeight:I

    .line 10843
    iget-object v14, v0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    .line 10845
    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v14

    .line 10843
    invoke-static {v4, v15, v14}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v14

    add-float v14, v14, v16

    float-to-int v14, v14

    iput v14, v0, Landroid/widget/AbsListView;->mHoverBottomAreaHeight:I

    .line 10849
    :cond_17
    iget-boolean v14, v0, Landroid/widget/AbsListView;->mIsEnabledPaddingInHoverScroll:Z

    if-eqz v14, :cond_18

    .line 10850
    iget-object v14, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v11, v14, Landroid/graphics/Rect;->top:I

    .line 10851
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v14

    iget-object v15, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v14, v15

    .end local v12    # "contentBottom":I
    .local v14, "contentBottom":I
    goto :goto_5

    .line 10853
    .end local v14    # "contentBottom":I
    .restart local v12    # "contentBottom":I
    :cond_18
    iget v11, v0, Landroid/widget/AbsListView;->mExtraPaddingInTopHoverArea:I

    .line 10854
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v14

    iget v15, v0, Landroid/widget/AbsListView;->mExtraPaddingInBottomHoverArea:I

    sub-int/2addr v14, v15

    .line 10858
    .end local v12    # "contentBottom":I
    .restart local v14    # "contentBottom":I
    :goto_5
    iget v12, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    add-int/2addr v12, v13

    iget v15, v0, Landroid/widget/AbsListView;->mItemCount:I

    if-ge v12, v15, :cond_19

    move v12, v4

    goto :goto_6

    :cond_19
    move v12, v7

    .line 10860
    .local v12, "canScrollDown":Z
    :goto_6
    if-nez v12, :cond_1c

    if-lez v13, :cond_1c

    .line 10861
    add-int/lit8 v15, v13, -0x1

    invoke-virtual {v0, v15}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    .line 10862
    .local v15, "child":Landroid/view/View;
    invoke-virtual {v15}, Landroid/view/View;->getBottom()I

    move-result v9

    iget v10, v0, Landroid/widget/AbsListView;->mBottom:I

    iget-object v4, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v10, v4

    if-gt v9, v10, :cond_1b

    .line 10863
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

    .line 10867
    .end local v15    # "child":Landroid/view/View;
    :cond_1c
    iget v4, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    if-lez v4, :cond_1d

    const/4 v4, 0x1

    goto :goto_9

    :cond_1d
    move v4, v7

    .line 10869
    .local v4, "canScrollUp":Z
    :goto_9
    if-nez v4, :cond_1f

    .line 10870
    if-lez v13, :cond_1f

    .line 10871
    invoke-virtual {v0, v7}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 10872
    .local v9, "child":Landroid/view/View;
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

    .line 10876
    .end local v9    # "child":Landroid/view/View;
    :cond_1f
    invoke-virtual {v1, v7}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v9

    if-ne v9, v6, :cond_20

    const/4 v9, 0x1

    goto :goto_b

    :cond_20
    move v9, v7

    .line 10878
    .local v9, "isPossibleToolType":Z
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

    .line 10882
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

    .line 10883
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

    .line 10912
    :cond_28
    iget-boolean v5, v0, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    if-nez v5, :cond_29

    .line 10913
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v0, Landroid/widget/AbsListView;->mHoverScrollStartTime:J

    .line 10916
    :cond_29
    const/16 v5, 0x4e2f

    const/16 v6, 0x4e2b

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    move v10, v8

    .end local v8    # "y":I
    .local v10, "y":I
    goto/16 :goto_e

    .line 10988
    .end local v10    # "y":I
    .restart local v8    # "y":I
    :pswitch_1
    iget-object v5, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/AbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v5

    if-eqz v5, :cond_2a

    .line 10989
    iget-object v5, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    invoke-virtual {v5, v6}, Landroid/widget/AbsListView$HoverScrollHandler;->removeMessages(I)V

    .line 10992
    :cond_2a
    const/16 v5, 0x4e21

    invoke-direct {v0, v1, v5}, Landroid/widget/AbsListView;->showPointerIcon(Landroid/view/MotionEvent;I)V

    .line 10994
    const-wide/16 v5, 0x0

    iput-wide v5, v0, Landroid/widget/AbsListView;->mHoverRecognitionStartTime:J

    .line 10995
    iput-wide v5, v0, Landroid/widget/AbsListView;->mHoverScrollStartTime:J

    .line 10996
    const/4 v5, 0x0

    iput-boolean v5, v0, Landroid/widget/AbsListView;->mIsHoverOverscrolled:Z

    .line 10997
    iput-boolean v5, v0, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    .line 10998
    iput-boolean v5, v0, Landroid/widget/AbsListView;->mIsSendHoverScrollState:Z

    .line 11000
    iget v6, v0, Landroid/widget/AbsListView;->mHoverScrollStateForListener:I

    if-eqz v6, :cond_2b

    .line 11001
    iput v5, v0, Landroid/widget/AbsListView;->mHoverScrollStateForListener:I

    .line 11002
    iget-object v6, v0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v6, :cond_2b

    iget v7, v0, Landroid/widget/AbsListView;->mTouchMode:I

    if-eq v7, v15, :cond_2b

    .line 11003
    invoke-interface {v6, v0, v5}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 11006
    :cond_2b
    invoke-super/range {p0 .. p1}, Landroid/widget/AdapterView;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    return v5

    .line 10918
    :pswitch_2
    const/4 v7, 0x1

    iput-boolean v7, v0, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    .line 10920
    if-lt v8, v11, :cond_2d

    iget v10, v0, Landroid/widget/AbsListView;->mHoverTopAreaHeight:I

    add-int/2addr v10, v11

    if-gt v8, v10, :cond_2d

    .line 10922
    iget-object v5, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    invoke-virtual {v5, v7}, Landroid/widget/AbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v5

    if-nez v5, :cond_2c

    .line 10923
    move v10, v8

    .end local v8    # "y":I
    .restart local v10    # "y":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iput-wide v7, v0, Landroid/widget/AbsListView;->mHoverRecognitionStartTime:J

    .line 10924
    invoke-direct {v0, v1, v6}, Landroid/widget/AbsListView;->showPointerIcon(Landroid/view/MotionEvent;I)V

    .line 10925
    const/4 v5, 0x2

    iput v5, v0, Landroid/widget/AbsListView;->mHoverScrollDirection:I

    .line 10926
    iget-object v5, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/AbsListView$HoverScrollHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_e

    .line 10922
    .end local v10    # "y":I
    .restart local v8    # "y":I
    :cond_2c
    move v10, v8

    .end local v8    # "y":I
    .restart local v10    # "y":I
    goto/16 :goto_e

    .line 10920
    .end local v10    # "y":I
    .restart local v8    # "y":I
    :cond_2d
    move v10, v8

    .line 10928
    .end local v8    # "y":I
    .restart local v10    # "y":I
    iget v6, v0, Landroid/widget/AbsListView;->mHoverBottomAreaHeight:I

    sub-int v6, v14, v6

    if-lt v10, v6, :cond_37

    if-gt v10, v14, :cond_37

    .line 10930
    iget-object v6, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/AbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v6

    if-nez v6, :cond_37

    .line 10931
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iput-wide v7, v0, Landroid/widget/AbsListView;->mHoverRecognitionStartTime:J

    .line 10932
    invoke-direct {v0, v1, v5}, Landroid/widget/AbsListView;->showPointerIcon(Landroid/view/MotionEvent;I)V

    .line 10933
    const/4 v5, 0x1

    iput v5, v0, Landroid/widget/AbsListView;->mHoverScrollDirection:I

    .line 10934
    iget-object v6, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    invoke-virtual {v6, v5}, Landroid/widget/AbsListView$HoverScrollHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_e

    .line 10940
    .end local v10    # "y":I
    .restart local v8    # "y":I
    :pswitch_3
    move v10, v8

    .end local v8    # "y":I
    .restart local v10    # "y":I
    iget-boolean v7, v0, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    if-nez v7, :cond_2e

    .line 10941
    const/4 v5, 0x1

    iput-boolean v5, v0, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    .line 10942
    const/16 v5, 0xa

    invoke-virtual {v1, v5}, Landroid/view/MotionEvent;->setAction(I)V

    .line 10943
    invoke-super/range {p0 .. p1}, Landroid/widget/AdapterView;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    return v5

    .line 10946
    :cond_2e
    if-lt v10, v11, :cond_31

    iget v7, v0, Landroid/widget/AbsListView;->mHoverTopAreaHeight:I

    add-int/2addr v7, v11

    if-gt v10, v7, :cond_31

    .line 10948
    iget-object v5, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Landroid/widget/AbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v5

    if-nez v5, :cond_37

    .line 10949
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v0, Landroid/widget/AbsListView;->mHoverRecognitionStartTime:J

    .line 10952
    iget-boolean v5, v0, Landroid/widget/AbsListView;->mIsHoverOverscrolled:Z

    if-eqz v5, :cond_2f

    iget v5, v0, Landroid/widget/AbsListView;->mHoverScrollDirection:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_30

    .line 10953
    :cond_2f
    const/16 v5, 0x4e2b

    invoke-direct {v0, v1, v5}, Landroid/widget/AbsListView;->showPointerIcon(Landroid/view/MotionEvent;I)V

    .line 10956
    :cond_30
    const/4 v5, 0x2

    iput v5, v0, Landroid/widget/AbsListView;->mHoverScrollDirection:I

    .line 10957
    iget-object v5, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/AbsListView$HoverScrollHandler;->sendEmptyMessage(I)Z

    goto :goto_e

    .line 10959
    :cond_31
    iget v6, v0, Landroid/widget/AbsListView;->mHoverBottomAreaHeight:I

    sub-int v6, v14, v6

    if-lt v10, v6, :cond_35

    if-gt v10, v14, :cond_35

    .line 10961
    iget-object v6, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/AbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v6

    if-nez v6, :cond_34

    .line 10962
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v0, Landroid/widget/AbsListView;->mHoverRecognitionStartTime:J

    .line 10965
    iget-boolean v6, v0, Landroid/widget/AbsListView;->mIsHoverOverscrolled:Z

    if-eqz v6, :cond_32

    iget v6, v0, Landroid/widget/AbsListView;->mHoverScrollDirection:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_33

    .line 10966
    :cond_32
    invoke-direct {v0, v1, v5}, Landroid/widget/AbsListView;->showPointerIcon(Landroid/view/MotionEvent;I)V

    .line 10968
    :cond_33
    const/4 v5, 0x1

    iput v5, v0, Landroid/widget/AbsListView;->mHoverScrollDirection:I

    .line 10969
    iget-object v6, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    invoke-virtual {v6, v5}, Landroid/widget/AbsListView$HoverScrollHandler;->sendEmptyMessage(I)Z

    goto :goto_e

    .line 10961
    :cond_34
    const/4 v5, 0x1

    goto :goto_e

    .line 10959
    :cond_35
    const/4 v5, 0x1

    .line 10973
    iget-object v6, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    invoke-virtual {v6, v5}, Landroid/widget/AbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v6

    if-eqz v6, :cond_36

    .line 10974
    iget-object v6, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    invoke-virtual {v6, v5}, Landroid/widget/AbsListView$HoverScrollHandler;->removeMessages(I)V

    .line 10977
    :cond_36
    const/16 v5, 0x4e21

    invoke-direct {v0, v1, v5}, Landroid/widget/AbsListView;->showPointerIcon(Landroid/view/MotionEvent;I)V

    .line 10978
    const-wide/16 v5, 0x0

    iput-wide v5, v0, Landroid/widget/AbsListView;->mHoverRecognitionStartTime:J

    .line 10979
    iput-wide v5, v0, Landroid/widget/AbsListView;->mHoverScrollStartTime:J

    .line 10980
    const/4 v5, 0x0

    iput-boolean v5, v0, Landroid/widget/AbsListView;->mIsHoverOverscrolled:Z

    .line 10981
    iput-boolean v5, v0, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    .line 10982
    iput-boolean v5, v0, Landroid/widget/AbsListView;->mIsHoverScrolled:Z

    .line 10983
    iput-boolean v5, v0, Landroid/widget/AbsListView;->mIsSendHoverScrollState:Z

    .line 10985
    nop

    .line 11010
    :cond_37
    :goto_e
    const/4 v5, 0x1

    return v5

    .line 10883
    .end local v10    # "y":I
    .restart local v8    # "y":I
    :cond_38
    move v10, v8

    const/4 v5, 0x1

    .end local v8    # "y":I
    .restart local v10    # "y":I
    goto :goto_f

    .line 10882
    .end local v10    # "y":I
    .restart local v8    # "y":I
    :cond_39
    move v10, v8

    const/4 v5, 0x1

    .end local v8    # "y":I
    .restart local v10    # "y":I
    goto :goto_f

    .line 10878
    .end local v10    # "y":I
    .restart local v8    # "y":I
    :cond_3a
    move v10, v8

    const/4 v5, 0x1

    .line 10885
    .end local v8    # "y":I
    .restart local v10    # "y":I
    :goto_f
    iget-object v6, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    invoke-virtual {v6, v5}, Landroid/widget/AbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v6

    if-eqz v6, :cond_3b

    .line 10886
    iget-object v6, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    invoke-virtual {v6, v5}, Landroid/widget/AbsListView$HoverScrollHandler;->removeMessages(I)V

    .line 10887
    const/16 v5, 0x4e21

    invoke-direct {v0, v1, v5}, Landroid/widget/AbsListView;->showPointerIcon(Landroid/view/MotionEvent;I)V

    .line 10890
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

    .line 10891
    :cond_3d
    const/4 v5, 0x0

    iput-boolean v5, v0, Landroid/widget/AbsListView;->mIsHoverOverscrolled:Z

    .line 10894
    :cond_3e
    iget-boolean v5, v0, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    if-nez v5, :cond_3f

    iget-wide v5, v0, Landroid/widget/AbsListView;->mHoverScrollStartTime:J

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_40

    .line 10895
    :cond_3f
    const/16 v5, 0x4e21

    invoke-direct {v0, v1, v5}, Landroid/widget/AbsListView;->showPointerIcon(Landroid/view/MotionEvent;I)V

    .line 10897
    :cond_40
    const-wide/16 v5, 0x0

    iput-wide v5, v0, Landroid/widget/AbsListView;->mHoverRecognitionStartTime:J

    .line 10898
    iput-wide v5, v0, Landroid/widget/AbsListView;->mHoverScrollStartTime:J

    .line 10899
    const/4 v5, 0x0

    iput-boolean v5, v0, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    .line 10900
    iput-boolean v5, v0, Landroid/widget/AbsListView;->mIsSendHoverScrollState:Z

    .line 10902
    const/16 v6, 0xa

    if-ne v2, v6, :cond_41

    iget v6, v0, Landroid/widget/AbsListView;->mHoverScrollStateForListener:I

    if-eqz v6, :cond_41

    .line 10903
    iput v5, v0, Landroid/widget/AbsListView;->mHoverScrollStateForListener:I

    .line 10904
    iget-object v6, v0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v6, :cond_41

    iget v7, v0, Landroid/widget/AbsListView;->mTouchMode:I

    if-eq v7, v15, :cond_41

    .line 10905
    invoke-interface {v6, v0, v5}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 10909
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
    .param p1, "pressed"    # Z

    .line 3916
    return-void
.end method

.method public whitelist dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 10572
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 10573
    .local v0, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v7, v1

    .line 10574
    .local v7, "y":I
    const/4 v1, 0x0

    .line 10575
    .local v1, "contentTop":I
    const/4 v2, 0x0

    .line 10576
    .local v2, "contentBottom":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    .line 10577
    .local v8, "action":I
    invoke-static {}, Landroid/text/MultiSelection;->isNeedToScroll()Z

    move-result v9

    .line 10579
    .local v9, "needToScroll":Z
    iget-object v3, p0, Landroid/widget/AbsListView;->mSemDragSelectedItemArray:Ljava/util/ArrayList;

    if-nez v3, :cond_0

    .line 10580
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Landroid/widget/AbsListView;->mSemDragSelectedItemArray:Ljava/util/ArrayList;

    .line 10583
    :cond_0
    iget-object v3, p0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    if-nez v3, :cond_1

    .line 10584
    new-instance v3, Landroid/widget/AbsListView$HoverScrollHandler;

    invoke-direct {v3, p0}, Landroid/widget/AbsListView$HoverScrollHandler;-><init>(Landroid/widget/AbsListView;)V

    iput-object v3, p0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    .line 10587
    :cond_1
    invoke-static {}, Landroid/widget/TextView;->semIsTextSelectionProgressing()Z

    move-result v3

    iput-boolean v3, p0, Landroid/widget/AbsListView;->mIsTextSelectionStarted:Z

    .line 10589
    const/16 v3, 0xd3

    const/4 v4, -0x3

    const-string v5, "car_mode_on"

    const/4 v6, 0x0

    const/4 v10, 0x1

    if-ne v8, v3, :cond_3

    .line 10590
    iput-boolean v10, p0, Landroid/widget/AbsListView;->mIsNeedPenSelection:Z

    .line 10591
    iput v0, p0, Landroid/widget/AbsListView;->mTouchdownX:I

    .line 10592
    iput v7, p0, Landroid/widget/AbsListView;->mTouchdownY:I

    .line 10593
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

    .line 10596
    .local v3, "isCarModeOn":Z
    :goto_0
    if-eqz v3, :cond_3

    .line 10597
    iput-boolean v6, p0, Landroid/widget/AbsListView;->mIsNeedPenSelection:Z

    .line 10601
    .end local v3    # "isCarModeOn":Z
    :cond_3
    iget-boolean v3, p0, Landroid/widget/AbsListView;->mIsTextSelectionStarted:Z

    if-eqz v3, :cond_4

    .line 10602
    iput-boolean v6, p0, Landroid/widget/AbsListView;->mIsNeedPenSelection:Z

    .line 10605
    :cond_4
    iget v3, p0, Landroid/widget/AbsListView;->mHoverTopAreaHeight:I

    if-lez v3, :cond_5

    iget v3, p0, Landroid/widget/AbsListView;->mHoverBottomAreaHeight:I

    if-gtz v3, :cond_6

    .line 10606
    :cond_5
    iget-object v3, p0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    .line 10608
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 10606
    const/high16 v11, 0x41c80000    # 25.0f

    invoke-static {v10, v11, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    const/high16 v12, 0x3f000000    # 0.5f

    add-float/2addr v3, v12

    float-to-int v3, v3

    iput v3, p0, Landroid/widget/AbsListView;->mHoverTopAreaHeight:I

    .line 10610
    iget-object v3, p0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    .line 10612
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 10610
    invoke-static {v10, v11, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    add-float/2addr v3, v12

    float-to-int v3, v3

    iput v3, p0, Landroid/widget/AbsListView;->mHoverBottomAreaHeight:I

    .line 10615
    :cond_6
    iget-boolean v3, p0, Landroid/widget/AbsListView;->mIsEnabledPaddingInHoverScroll:Z

    if-eqz v3, :cond_7

    .line 10616
    iget-object v3, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v3, Landroid/graphics/Rect;->top:I

    .line 10617
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v3

    iget-object v11, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v11

    move v11, v1

    move v12, v3

    .end local v2    # "contentBottom":I
    .local v3, "contentBottom":I
    goto :goto_1

    .line 10619
    .end local v3    # "contentBottom":I
    .restart local v2    # "contentBottom":I
    :cond_7
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v3

    move v11, v1

    move v12, v3

    .line 10622
    .end local v1    # "contentTop":I
    .end local v2    # "contentBottom":I
    .local v11, "contentTop":I
    .local v12, "contentBottom":I
    :goto_1
    iget-boolean v1, p0, Landroid/widget/AbsListView;->mIsEnabledPaddingInHoverScroll:Z

    if-eqz v1, :cond_9

    if-lt v7, v11, :cond_8

    if-le v7, v12, :cond_9

    .line 10623
    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-eq v1, v10, :cond_9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/16 v2, 0xd4

    if-eq v1, v2, :cond_9

    .line 10624
    return v10

    .line 10627
    :cond_9
    const/4 v1, 0x2

    sparse-switch v8, :sswitch_data_0

    goto/16 :goto_4

    .line 10674
    :sswitch_0
    move-object v1, p0

    move v2, v0

    move v3, v7

    move v4, v11

    move v5, v12

    move v6, v9

    invoke-direct/range {v1 .. v6}, Landroid/widget/AbsListView;->semMultiSelection(IIIIZ)V

    .line 10675
    goto/16 :goto_4

    .line 10653
    :sswitch_1
    goto/16 :goto_4

    .line 10677
    :sswitch_2
    iget v2, p0, Landroid/widget/AbsListView;->mSemGoToTopState:I

    if-eqz v2, :cond_b

    invoke-direct {p0}, Landroid/widget/AbsListView;->semIsSupportGotoTop()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 10678
    iget v2, p0, Landroid/widget/AbsListView;->mSemGoToTopState:I

    if-ne v2, v1, :cond_a

    iput v10, p0, Landroid/widget/AbsListView;->mSemGoToTopState:I

    .line 10679
    :cond_a
    iget-object v2, p0, Landroid/widget/AbsListView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    sget-object v3, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 10681
    :cond_b
    iget-boolean v2, p0, Landroid/widget/AbsListView;->mIsLongPressMultiSelection:Z

    if-eqz v2, :cond_f

    .line 10682
    iget v2, p0, Landroid/widget/AbsListView;->mSemDragEndX:I

    iget v3, p0, Landroid/widget/AbsListView;->mSemDragEndY:I

    invoke-direct {p0, v2, v3}, Landroid/widget/AbsListView;->endLongPressMultiSelection(II)V

    goto :goto_2

    .line 10655
    :sswitch_3
    iget-boolean v2, p0, Landroid/widget/AbsListView;->mIsCtrlMultiSelection:Z

    if-eqz v2, :cond_c

    .line 10656
    move-object v1, p0

    move v2, v0

    move v3, v7

    move v4, v11

    move v5, v12

    move v6, v9

    invoke-direct/range {v1 .. v6}, Landroid/widget/AbsListView;->semMultiSelection(IIIIZ)V

    .line 10657
    return v10

    .line 10660
    :cond_c
    iget-boolean v2, p0, Landroid/widget/AbsListView;->mIsLongPressMultiSelection:Z

    if-eqz v2, :cond_d

    .line 10661
    invoke-direct {p0, v0, v7, v10}, Landroid/widget/AbsListView;->updateLongPressMultiSelection(IIZ)V

    .line 10664
    :cond_d
    iget v2, p0, Landroid/widget/AbsListView;->mSemGoToTopState:I

    if-ne v2, v1, :cond_19

    invoke-direct {p0}, Landroid/widget/AbsListView;->semIsSupportGotoTop()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 10665
    iget-object v1, p0, Landroid/widget/AbsListView;->mSemGoToTopRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v0, v7}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-nez v1, :cond_e

    .line 10666
    iput v10, p0, Landroid/widget/AbsListView;->mSemGoToTopState:I

    .line 10667
    invoke-virtual {p0, v10}, Landroid/widget/AbsListView;->semAutoHide(I)V

    .line 10668
    iget-object v1, p0, Landroid/widget/AbsListView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    sget-object v2, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 10670
    :cond_e
    return v10

    .line 10685
    :cond_f
    :goto_2
    :sswitch_4
    iget-boolean v2, p0, Landroid/widget/AbsListView;->mIsCtrlMultiSelection:Z

    if-eqz v2, :cond_11

    .line 10686
    iget-boolean v1, p0, Landroid/widget/AbsListView;->mIsTextSelectionStarted:Z

    if-nez v1, :cond_10

    .line 10687
    iget-boolean v1, p0, Landroid/widget/AbsListView;->mIsFirstPenClick:Z

    xor-int/2addr v1, v10

    iput-boolean v1, p0, Landroid/widget/AbsListView;->mIsFirstPenClick:Z

    .line 10689
    :cond_10
    invoke-direct {p0, v8, v0, v7}, Landroid/widget/AbsListView;->semMultiSelectionEnd(III)V

    .line 10690
    iput-boolean v6, p0, Landroid/widget/AbsListView;->mIsCtrlMultiSelection:Z

    .line 10691
    return v10

    .line 10694
    :cond_11
    iget-boolean v2, p0, Landroid/widget/AbsListView;->mIsLongPressMultiSelection:Z

    if-eqz v2, :cond_12

    .line 10695
    invoke-direct {p0, v0, v7}, Landroid/widget/AbsListView;->endLongPressMultiSelection(II)V

    .line 10700
    :cond_12
    :sswitch_5
    iget v2, p0, Landroid/widget/AbsListView;->mSemGoToTopState:I

    if-ne v2, v1, :cond_15

    invoke-direct {p0}, Landroid/widget/AbsListView;->semIsSupportGotoTop()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 10701
    invoke-direct {p0}, Landroid/widget/AbsListView;->canScrollUp()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 10702
    iput-boolean v10, p0, Landroid/widget/AbsListView;->mGoToToping:Z

    .line 10703
    const-string v1, "AbsListView"

    const-string v2, " can scroll top "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10704
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    .line 10706
    .local v1, "childCount":I
    if-lez v1, :cond_13

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v2

    if-ge v1, v2, :cond_13

    .line 10707
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->setSelection(I)V

    .line 10710
    :cond_13
    iput-boolean v10, p0, Landroid/widget/AbsListView;->mSemCanGoFuther:Z

    .line 10711
    new-instance v2, Landroid/widget/AbsListView$12;

    invoke-direct {v2, p0}, Landroid/widget/AbsListView$12;-><init>(Landroid/widget/AbsListView;)V

    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    .line 10719
    .end local v1    # "childCount":I
    :cond_14
    invoke-virtual {p0, v6}, Landroid/widget/AbsListView;->semAutoHide(I)V

    .line 10720
    iget-object v1, p0, Landroid/widget/AbsListView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    sget-object v2, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 10721
    invoke-virtual {p0, v6}, Landroid/widget/AbsListView;->playSoundEffect(I)V

    .line 10723
    return v10

    .line 10726
    :cond_15
    invoke-direct {p0, v8, v0, v7}, Landroid/widget/AbsListView;->semMultiSelectionEnd(III)V

    .line 10728
    goto :goto_4

    .line 10629
    :sswitch_6
    iput-boolean v6, p0, Landroid/widget/AbsListView;->mGoToToping:Z

    .line 10630
    iget v2, p0, Landroid/widget/AbsListView;->mSemGoToTopState:I

    const/4 v3, 0x3

    if-eq v2, v1, :cond_16

    invoke-direct {p0}, Landroid/widget/AbsListView;->semIsSupportGotoTop()Z

    move-result v2

    if-eqz v2, :cond_16

    iget-object v2, p0, Landroid/widget/AbsListView;->mSemGoToTopRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v0, v7}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 10631
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->semSetupGoToTop(I)V

    .line 10632
    iget-object v1, p0, Landroid/widget/AbsListView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    int-to-float v2, v0

    int-to-float v4, v7

    invoke-virtual {v1, v2, v4}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 10633
    iget-object v1, p0, Landroid/widget/AbsListView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    new-array v2, v3, [I

    fill-array-data v2, :array_0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 10634
    return v10

    .line 10636
    :cond_16
    iget-boolean v1, p0, Landroid/widget/AbsListView;->mIsCtrlkeyPressed:Z

    if-eqz v1, :cond_19

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v1

    if-ne v1, v3, :cond_19

    .line 10637
    iput-boolean v10, p0, Landroid/widget/AbsListView;->mIsCtrlMultiSelection:Z

    .line 10638
    iput-boolean v10, p0, Landroid/widget/AbsListView;->mIsNeedPenSelection:Z

    .line 10639
    iput v0, p0, Landroid/widget/AbsListView;->mTouchdownX:I

    .line 10640
    iput v7, p0, Landroid/widget/AbsListView;->mTouchdownY:I

    .line 10641
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

    .line 10644
    .local v13, "isCarModeOn":Z
    if-eqz v13, :cond_18

    .line 10645
    iput-boolean v6, p0, Landroid/widget/AbsListView;->mIsNeedPenSelection:Z

    .line 10647
    :cond_18
    move-object v1, p0

    move v2, v0

    move v3, v7

    move v4, v11

    move v5, v12

    move v6, v9

    invoke-direct/range {v1 .. v6}, Landroid/widget/AbsListView;->semMultiSelection(IIIIZ)V

    .line 10648
    return v10

    .line 10733
    .end local v13    # "isCarModeOn":Z
    :cond_19
    :goto_4
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

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

    :array_0
    .array-data 4
        0x10100a7
        0x101009e
        0x10100a1
    .end array-data
.end method

.method public whitelist draw(Landroid/graphics/Canvas;)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 5060
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->draw(Landroid/graphics/Canvas;)V

    .line 5061
    invoke-direct {p0}, Landroid/widget/AbsListView;->shouldDisplayEdgeEffects()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 5062
    iget v0, p0, Landroid/widget/AbsListView;->mScrollY:I

    .line 5063
    .local v0, "scrollY":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getClipToPadding()Z

    move-result v1

    .line 5069
    .local v1, "clipToPadding":Z
    if-eqz v1, :cond_0

    .line 5070
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v2

    iget v3, p0, Landroid/widget/AbsListView;->mPaddingLeft:I

    sub-int/2addr v2, v3

    iget v3, p0, Landroid/widget/AbsListView;->mPaddingRight:I

    sub-int/2addr v2, v3

    .line 5071
    .local v2, "width":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v3

    iget v4, p0, Landroid/widget/AbsListView;->mPaddingTop:I

    sub-int/2addr v3, v4

    iget v4, p0, Landroid/widget/AbsListView;->mPaddingBottom:I

    sub-int/2addr v3, v4

    .line 5072
    .local v3, "height":I
    iget v4, p0, Landroid/widget/AbsListView;->mPaddingLeft:I

    .line 5073
    .local v4, "translateX":I
    iget v5, p0, Landroid/widget/AbsListView;->mPaddingTop:I

    .local v5, "translateY":I
    goto :goto_0

    .line 5075
    .end local v2    # "width":I
    .end local v3    # "height":I
    .end local v4    # "translateX":I
    .end local v5    # "translateY":I
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v2

    .line 5076
    .restart local v2    # "width":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v3

    .line 5077
    .restart local v3    # "height":I
    const/4 v4, 0x0

    .line 5078
    .restart local v4    # "translateX":I
    const/4 v5, 0x0

    .line 5080
    .restart local v5    # "translateY":I
    :goto_0
    iget-object v6, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v6, v2, v3}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 5081
    iget-object v6, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v6, v2, v3}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 5082
    iget-object v6, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v6}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v6

    const/4 v7, 0x0

    if-nez v6, :cond_2

    .line 5083
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v6

    .line 5084
    .local v6, "restoreCount":I
    add-int v8, v4, v2

    iget-object v9, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    .line 5085
    invoke-virtual {v9}, Landroid/widget/EdgeEffect;->getMaxHeight()I

    move-result v9

    add-int/2addr v9, v5

    .line 5084
    invoke-virtual {p1, v4, v5, v8, v9}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 5086
    iget v8, p0, Landroid/widget/AbsListView;->mFirstPositionDistanceGuess:I

    add-int/2addr v8, v0

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    add-int/2addr v8, v5

    .line 5087
    .local v8, "edgeY":I
    int-to-float v9, v4

    int-to-float v10, v8

    invoke-virtual {p1, v9, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 5088
    iget-object v9, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v9, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 5089
    invoke-direct {p0}, Landroid/widget/AbsListView;->invalidateEdgeEffects()V

    .line 5091
    :cond_1
    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 5093
    .end local v6    # "restoreCount":I
    .end local v8    # "edgeY":I
    :cond_2
    iget-object v6, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v6}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v6

    if-nez v6, :cond_5

    .line 5094
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v6

    .line 5095
    .restart local v6    # "restoreCount":I
    add-int v8, v5, v3

    iget-object v9, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v9}, Landroid/widget/EdgeEffect;->getMaxHeight()I

    move-result v9

    sub-int/2addr v8, v9

    add-int v9, v4, v2

    add-int v10, v5, v3

    invoke-virtual {p1, v4, v8, v9, v10}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 5097
    neg-int v8, v2

    add-int/2addr v8, v4

    .line 5098
    .local v8, "edgeX":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v9

    iget v10, p0, Landroid/widget/AbsListView;->mLastPositionDistanceGuess:I

    add-int/2addr v10, v0

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 5099
    if-eqz v1, :cond_3

    iget v7, p0, Landroid/widget/AbsListView;->mPaddingBottom:I

    :cond_3
    sub-int/2addr v9, v7

    .line 5100
    .local v9, "edgeY":I
    int-to-float v7, v8

    int-to-float v10, v9

    invoke-virtual {p1, v7, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 5101
    const/high16 v7, 0x43340000    # 180.0f

    int-to-float v10, v2

    const/4 v11, 0x0

    invoke-virtual {p1, v7, v10, v11}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 5102
    iget-object v7, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v7, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 5103
    invoke-direct {p0}, Landroid/widget/AbsListView;->invalidateEdgeEffects()V

    .line 5105
    :cond_4
    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 5108
    .end local v0    # "scrollY":I
    .end local v1    # "clipToPadding":Z
    .end local v2    # "width":I
    .end local v3    # "height":I
    .end local v4    # "translateX":I
    .end local v5    # "translateY":I
    .end local v6    # "restoreCount":I
    .end local v8    # "edgeX":I
    .end local v9    # "edgeY":I
    :cond_5
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mSemEnableGoToTop:Z

    if-eqz v0, :cond_6

    .line 5109
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->drawGoToTop(Landroid/graphics/Canvas;)V

    .line 5111
    :cond_6
    return-void
.end method

.method protected whitelist drawableStateChanged()V
    .locals 0

    .line 3271
    invoke-super {p0}, Landroid/widget/AdapterView;->drawableStateChanged()V

    .line 3272
    invoke-virtual {p0}, Landroid/widget/AbsListView;->updateSelectorState()V

    .line 3273
    return-void
.end method

.method protected greylist-max-o encodeProperties(Landroid/view/ViewHierarchyEncoder;)V
    .locals 2
    .param p1, "encoder"    # Landroid/view/ViewHierarchyEncoder;

    .line 8247
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->encodeProperties(Landroid/view/ViewHierarchyEncoder;)V

    .line 8249
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getCacheColorHint()I

    move-result v0

    const-string v1, "drawing:cacheColorHint"

    invoke-virtual {p1, v1, v0}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 8250
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isFastScrollEnabled()Z

    move-result v0

    const-string/jumbo v1, "list:fastScrollEnabled"

    invoke-virtual {p1, v1, v0}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    .line 8251
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isScrollingCacheEnabled()Z

    move-result v0

    const-string/jumbo v1, "list:scrollingCacheEnabled"

    invoke-virtual {p1, v1, v0}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    .line 8252
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isSmoothScrollbarEnabled()Z

    move-result v0

    const-string/jumbo v1, "list:smoothScrollbarEnabled"

    invoke-virtual {p1, v1, v0}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    .line 8253
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isStackFromBottom()Z

    move-result v0

    const-string/jumbo v1, "list:stackFromBottom"

    invoke-virtual {p1, v1, v0}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    .line 8254
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isTextFilterEnabled()Z

    move-result v0

    const-string/jumbo v1, "list:textFilterEnabled"

    invoke-virtual {p1, v1, v0}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    .line 8256
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    .line 8257
    .local v0, "selectedView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 8258
    const-string/jumbo v1, "selectedView"

    invoke-virtual {p1, v1}, Landroid/view/ViewHierarchyEncoder;->addPropertyKey(Ljava/lang/String;)V

    .line 8259
    invoke-virtual {v0, p1}, Landroid/view/View;->encode(Landroid/view/ViewHierarchyEncoder;)V

    .line 8261
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

    .line 11340
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 11342
    return-void
.end method

.method greylist-max-o findClosestMotionRow(I)I
    .locals 3
    .param p1, "y"    # I

    .line 6232
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 6233
    .local v0, "childCount":I
    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 6234
    return v1

    .line 6237
    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->findMotionRow(I)I

    move-result v2

    .line 6238
    .local v2, "motionRow":I
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
    .param p1, "velocityY"    # I

    .line 5006
    iget-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-nez v0, :cond_0

    .line 5007
    new-instance v0, Landroid/widget/AbsListView$FlingRunnable;

    invoke-direct {v0, p0}, Landroid/widget/AbsListView$FlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    .line 5009
    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 5010
    iget-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {v0, p1}, Landroid/widget/AbsListView$FlingRunnable;->start(I)V

    .line 5011
    return-void
.end method

.method protected whitelist generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 4

    .line 7118
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/AbsListView$LayoutParams;-><init>(III)V

    return-object v0
.end method

.method public bridge synthetic whitelist generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 149
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/AbsListView$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method protected whitelist generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 7124
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {v0, p1}, Landroid/widget/AbsListView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public whitelist generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/AbsListView$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .line 7129
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/AbsListView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public whitelist getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    .line 1656
    const-class v0, Landroid/widget/AbsListView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method greylist-max-o getAccessibilityFocusedChild(Landroid/view/View;)Landroid/view/View;
    .locals 2
    .param p1, "focusedView"    # Landroid/view/View;

    .line 2457
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 2458
    .local v0, "viewParent":Landroid/view/ViewParent;
    :goto_0
    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_0

    if-eq v0, p0, :cond_0

    .line 2459
    move-object p1, v0

    check-cast p1, Landroid/view/View;

    .line 2460
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    .line 2463
    :cond_0
    instance-of v1, v0, Landroid/view/View;

    if-nez v1, :cond_1

    .line 2464
    const/4 v1, 0x0

    return-object v1

    .line 2467
    :cond_1
    return-object p1
.end method

.method public whitelist getBottomEdgeEffectColor()I
    .locals 1

    .line 7409
    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->getColor()I

    move-result v0

    return v0
.end method

.method protected whitelist getBottomFadingEdgeStrength()F
    .locals 7

    .line 2341
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 2342
    .local v0, "count":I
    invoke-super {p0}, Landroid/widget/AdapterView;->getBottomFadingEdgeStrength()F

    move-result v1

    .line 2343
    .local v1, "fadeEdge":F
    if-nez v0, :cond_0

    .line 2344
    return v1

    .line 2346
    :cond_0
    iget v2, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    add-int/2addr v2, v0

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Landroid/widget/AbsListView;->mItemCount:I

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_1

    .line 2347
    const/high16 v2, 0x3f800000    # 1.0f

    return v2

    .line 2350
    :cond_1
    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    .line 2351
    .local v2, "bottom":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v3

    .line 2352
    .local v3, "height":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getVerticalFadingEdgeLength()I

    move-result v4

    int-to-float v4, v4

    .line 2353
    .local v4, "fadeLength":F
    iget v5, p0, Landroid/widget/AbsListView;->mPaddingBottom:I

    sub-int v5, v3, v5

    if-le v2, v5, :cond_2

    .line 2354
    sub-int v5, v2, v3

    iget v6, p0, Landroid/widget/AbsListView;->mPaddingBottom:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    div-float/2addr v5, v4

    goto :goto_0

    :cond_2
    move v5, v1

    .line 2353
    :goto_0
    return v5
.end method

.method protected whitelist getBottomPaddingOffset()I
    .locals 2

    .line 3025
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

    .line 7202
    iget v0, p0, Landroid/widget/AbsListView;->mCacheColorHint:I

    return v0
.end method

.method public whitelist getCheckedItemCount()I
    .locals 1

    .line 1060
    iget v0, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    return v0
.end method

.method public whitelist getCheckedItemIds()[J
    .locals 6

    .line 1124
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_0

    goto :goto_1

    .line 1128
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    .line 1129
    .local v0, "idStates":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Integer;>;"
    invoke-virtual {v0}, Landroid/util/LongSparseArray;->size()I

    move-result v1

    .line 1130
    .local v1, "count":I
    new-array v2, v1, [J

    .line 1132
    .local v2, "ids":[J
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 1133
    invoke-virtual {v0, v3}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v4

    aput-wide v4, v2, v3

    .line 1132
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1136
    .end local v3    # "i":I
    :cond_1
    return-object v2

    .line 1125
    .end local v0    # "idStates":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Integer;>;"
    .end local v1    # "count":I
    .end local v2    # "ids":[J
    :cond_2
    :goto_1
    const/4 v0, 0x0

    new-array v0, v0, [J

    return-object v0
.end method

.method public whitelist getCheckedItemPosition()I
    .locals 2

    .line 1092
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 1093
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v0

    return v0

    .line 1096
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public whitelist getCheckedItemPositions()Landroid/util/SparseBooleanArray;
    .locals 1

    .line 1109
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-eqz v0, :cond_0

    .line 1110
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    return-object v0

    .line 1112
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getChoiceMode()I
    .locals 1

    .line 1327
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    return v0
.end method

.method protected whitelist getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    .line 3728
    iget-object v0, p0, Landroid/widget/AbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    return-object v0
.end method

.method public whitelist getFocusedRect(Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "r"    # Landroid/graphics/Rect;

    .line 1872
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    .line 1873
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-ne v1, p0, :cond_0

    .line 1876
    invoke-virtual {v0, p1}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 1877
    invoke-virtual {p0, v0, p1}, Landroid/widget/AbsListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    goto :goto_0

    .line 1880
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 1882
    :goto_0
    return-void
.end method

.method greylist-max-o getFooterViewsCount()I
    .locals 1

    .line 6169
    const/4 v0, 0x0

    return v0
.end method

.method greylist-max-o getHeaderViewsCount()I
    .locals 1

    .line 6159
    const/4 v0, 0x0

    return v0
.end method

.method greylist-max-o getHeightForPosition(I)I
    .locals 6
    .param p1, "position"    # I

    .line 8181
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v0

    .line 8182
    .local v0, "firstVisiblePosition":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    .line 8183
    .local v1, "childCount":I
    sub-int v2, p1, v0

    .line 8184
    .local v2, "index":I
    if-ltz v2, :cond_0

    if-ge v2, v1, :cond_0

    .line 8186
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 8187
    .local v3, "view":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v4

    return v4

    .line 8190
    .end local v3    # "view":Landroid/view/View;
    :cond_0
    iget-object v3, p0, Landroid/widget/AbsListView;->mIsScrap:[Z

    invoke-virtual {p0, p1, v3}, Landroid/widget/AbsListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v3

    .line 8191
    .restart local v3    # "view":Landroid/view/View;
    iget v4, p0, Landroid/widget/AbsListView;->mWidthMeasureSpec:I

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/View;->measure(II)V

    .line 8192
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    .line 8193
    .local v4, "height":I
    iget-object v5, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v5, v3, p1}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 8194
    return v4
.end method

.method protected whitelist getLeftPaddingOffset()I
    .locals 2

    .line 3010
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

    .line 2545
    iget-object v0, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    return v0
.end method

.method public whitelist getListPaddingLeft()I
    .locals 1

    .line 2557
    iget-object v0, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    return v0
.end method

.method public whitelist getListPaddingRight()I
    .locals 1

    .line 2569
    iget-object v0, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    return v0
.end method

.method public whitelist getListPaddingTop()I
    .locals 1

    .line 2533
    iget-object v0, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method protected whitelist getRightPaddingOffset()I
    .locals 2

    .line 3020
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

    .line 2517
    iget v0, p0, Landroid/widget/AbsListView;->mItemCount:I

    if-lez v0, :cond_0

    iget v0, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    if-ltz v0, :cond_0

    .line 2518
    iget v0, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    iget v1, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 2520
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method greylist-max-o getSelectionModeForAccessibility()I
    .locals 2

    .line 1686
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChoiceMode()I

    move-result v0

    .line 1687
    .local v0, "choiceMode":I
    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 1696
    return v1

    .line 1694
    :pswitch_0
    const/4 v1, 0x2

    return v1

    .line 1691
    :pswitch_1
    const/4 v1, 0x1

    return v1

    .line 1689
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

    .line 3196
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public whitelist getSolidColor()I
    .locals 1

    .line 7168
    iget v0, p0, Landroid/widget/AbsListView;->mCacheColorHint:I

    return v0
.end method

.method public whitelist getTextFilter()Ljava/lang/CharSequence;
    .locals 1

    .line 2201
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mTextFilterEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 2202
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    return-object v0

    .line 2204
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getTopEdgeEffectColor()I
    .locals 1

    .line 7395
    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->getColor()I

    move-result v0

    return v0
.end method

.method protected whitelist getTopFadingEdgeStrength()F
    .locals 5

    .line 2324
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 2325
    .local v0, "count":I
    invoke-super {p0}, Landroid/widget/AdapterView;->getTopFadingEdgeStrength()F

    move-result v1

    .line 2326
    .local v1, "fadeEdge":F
    if-nez v0, :cond_0

    .line 2327
    return v1

    .line 2329
    :cond_0
    iget v2, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    if-lez v2, :cond_1

    .line 2330
    const/high16 v2, 0x3f800000    # 1.0f

    return v2

    .line 2333
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    .line 2334
    .local v2, "top":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getVerticalFadingEdgeLength()I

    move-result v3

    int-to-float v3, v3

    .line 2335
    .local v3, "fadeLength":F
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

    .line 3015
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

    .line 10556
    iget v0, p0, Landroid/widget/AbsListView;->mTouchSlop:I

    return v0
.end method

.method public whitelist getTranscriptMode()I
    .locals 1

    .line 7163
    iget v0, p0, Landroid/widget/AbsListView;->mTranscriptMode:I

    return v0
.end method

.method public whitelist getVerticalScrollbarWidth()I
    .locals 2

    .line 1535
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/FastScroller;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1536
    invoke-super {p0}, Landroid/widget/AdapterView;->getVerticalScrollbarWidth()I

    move-result v0

    iget-object v1, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {v1}, Landroid/widget/FastScroller;->getWidth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0

    .line 1537
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mSemFastScroll:Landroid/widget/SemFastScroller;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/SemFastScroller;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1538
    invoke-super {p0}, Landroid/widget/AdapterView;->getVerticalScrollbarWidth()I

    move-result v0

    iget-object v1, p0, Landroid/widget/AbsListView;->mSemFastScroll:Landroid/widget/SemFastScroller;

    invoke-virtual {v1}, Landroid/widget/SemFastScroller;->getWidth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0

    .line 1540
    :cond_1
    invoke-super {p0}, Landroid/widget/AdapterView;->getVerticalScrollbarWidth()I

    move-result v0

    return v0
.end method

.method greylist-max-o handleBoundsChange()V
    .locals 6

    .line 3057
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mInLayout:Z

    if-eqz v0, :cond_0

    .line 3058
    return-void

    .line 3060
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 3061
    .local v0, "childCount":I
    if-lez v0, :cond_3

    .line 3062
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/AbsListView;->mDataChanged:Z

    .line 3063
    invoke-virtual {p0}, Landroid/widget/AbsListView;->rememberSyncState()V

    .line 3064
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_3

    .line 3065
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 3066
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 3068
    .local v4, "lp":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v4, :cond_1

    iget v5, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-lt v5, v1, :cond_1

    iget v5, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ge v5, v1, :cond_2

    .line 3069
    :cond_1
    invoke-virtual {v3}, Landroid/view/View;->forceLayout()V

    .line 3064
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3073
    .end local v2    # "i":I
    :cond_3
    return-void
.end method

.method protected whitelist handleDataChanged()V
    .locals 12

    .line 6426
    iget v0, p0, Landroid/widget/AbsListView;->mItemCount:I

    .line 6427
    .local v0, "count":I
    iget v1, p0, Landroid/widget/AbsListView;->mLastHandledItemCount:I

    .line 6428
    .local v1, "lastHandledItemCount":I
    iget v2, p0, Landroid/widget/AbsListView;->mItemCount:I

    iput v2, p0, Landroid/widget/AbsListView;->mLastHandledItemCount:I

    .line 6430
    iget-boolean v2, p0, Landroid/widget/AbsListView;->mIsMultiFocusEnabled:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v2, :cond_0

    iget v2, p0, Landroid/widget/AbsListView;->mItemCount:I

    iget v3, p0, Landroid/widget/AbsListView;->mOldAdapterItemCount:I

    if-eq v2, v3, :cond_0

    .line 6432
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/widget/AbsListView;->mSemPressItemListArray:Ljava/util/ArrayList;

    .line 6433
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resetPressItemListArray()V

    .line 6434
    iget v2, p0, Landroid/widget/AbsListView;->mItemCount:I

    iput v2, p0, Landroid/widget/AbsListView;->mOldAdapterItemCount:I

    .line 6437
    :cond_0
    iget v2, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v2, :cond_1

    invoke-interface {v2}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6438
    invoke-virtual {p0}, Landroid/widget/AbsListView;->confirmCheckedPositionsById()V

    .line 6442
    :cond_1
    iget-object v2, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v2}, Landroid/widget/AbsListView$RecycleBin;->clearTransientStateViews()V

    .line 6444
    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-lez v0, :cond_e

    .line 6449
    iget-boolean v6, p0, Landroid/widget/AbsListView;->mNeedSync:Z

    if-eqz v6, :cond_9

    .line 6451
    iput-boolean v4, p0, Landroid/widget/AbsListView;->mNeedSync:Z

    .line 6452
    iput-object v2, p0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    .line 6454
    iget v6, p0, Landroid/widget/AbsListView;->mTranscriptMode:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_2

    .line 6455
    iput v3, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 6456
    return-void

    .line 6457
    :cond_2
    if-ne v6, v5, :cond_6

    .line 6458
    iget-boolean v6, p0, Landroid/widget/AbsListView;->mForceTranscriptScroll:Z

    if-eqz v6, :cond_3

    .line 6459
    iput-boolean v4, p0, Landroid/widget/AbsListView;->mForceTranscriptScroll:Z

    .line 6460
    iput v3, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 6461
    return-void

    .line 6463
    :cond_3
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v6

    .line 6464
    .local v6, "childCount":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v8

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getPaddingBottom()I

    move-result v9

    sub-int/2addr v8, v9

    .line 6465
    .local v8, "listBottom":I
    add-int/lit8 v9, v6, -0x1

    invoke-virtual {p0, v9}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 6466
    .local v9, "lastChild":Landroid/view/View;
    if-eqz v9, :cond_4

    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v10

    goto :goto_0

    :cond_4
    move v10, v8

    .line 6467
    .local v10, "lastBottom":I
    :goto_0
    iget v11, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    add-int/2addr v11, v6

    if-lt v11, v1, :cond_5

    if-gt v10, v8, :cond_5

    .line 6469
    iput v3, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 6470
    return-void

    .line 6474
    :cond_5
    invoke-virtual {p0}, Landroid/widget/AbsListView;->awakenScrollBars()Z

    .line 6477
    .end local v6    # "childCount":I
    .end local v8    # "listBottom":I
    .end local v9    # "lastChild":Landroid/view/View;
    .end local v10    # "lastBottom":I
    :cond_6
    iget v6, p0, Landroid/widget/AbsListView;->mSyncMode:I

    const/4 v8, 0x5

    packed-switch v6, :pswitch_data_0

    goto :goto_2

    .line 6518
    :pswitch_0
    iput v8, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 6519
    iget v2, p0, Landroid/widget/AbsListView;->mSyncPosition:I

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/lit8 v3, v0, -0x1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p0, Landroid/widget/AbsListView;->mSyncPosition:I

    .line 6521
    return-void

    .line 6479
    :pswitch_1
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isInTouchMode()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 6484
    iput v8, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 6485
    iget v2, p0, Landroid/widget/AbsListView;->mSyncPosition:I

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/lit8 v3, v0, -0x1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p0, Landroid/widget/AbsListView;->mSyncPosition:I

    .line 6487
    return-void

    .line 6491
    :cond_7
    invoke-virtual {p0}, Landroid/widget/AbsListView;->findSyncPosition()I

    move-result v6

    .line 6492
    .local v6, "newPos":I
    if-ltz v6, :cond_9

    .line 6494
    invoke-virtual {p0, v6, v5}, Landroid/widget/AbsListView;->lookForSelectablePosition(IZ)I

    move-result v9

    .line 6495
    .local v9, "selectablePos":I
    if-ne v9, v6, :cond_9

    .line 6497
    iput v6, p0, Landroid/widget/AbsListView;->mSyncPosition:I

    .line 6499
    iget-wide v2, p0, Landroid/widget/AbsListView;->mSyncHeight:J

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v4

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_8

    .line 6502
    iput v8, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    goto :goto_1

    .line 6506
    :cond_8
    iput v7, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 6510
    :goto_1
    invoke-virtual {p0, v6}, Landroid/widget/AbsListView;->setNextSelectedPositionInt(I)V

    .line 6511
    return-void

    .line 6525
    .end local v6    # "newPos":I
    .end local v9    # "selectablePos":I
    :cond_9
    :goto_2
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isInTouchMode()Z

    move-result v6

    if-nez v6, :cond_d

    .line 6527
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getSelectedItemPosition()I

    move-result v6

    .line 6530
    .restart local v6    # "newPos":I
    if-lt v6, v0, :cond_a

    .line 6531
    add-int/lit8 v6, v0, -0x1

    .line 6533
    :cond_a
    if-gez v6, :cond_b

    .line 6534
    const/4 v6, 0x0

    .line 6538
    :cond_b
    invoke-virtual {p0, v6, v5}, Landroid/widget/AbsListView;->lookForSelectablePosition(IZ)I

    move-result v7

    .line 6540
    .local v7, "selectablePos":I
    if-ltz v7, :cond_c

    .line 6541
    invoke-virtual {p0, v7}, Landroid/widget/AbsListView;->setNextSelectedPositionInt(I)V

    .line 6542
    return-void

    .line 6545
    :cond_c
    invoke-virtual {p0, v6, v4}, Landroid/widget/AbsListView;->lookForSelectablePosition(IZ)I

    move-result v7

    .line 6546
    if-ltz v7, :cond_e

    .line 6547
    invoke-virtual {p0, v7}, Landroid/widget/AbsListView;->setNextSelectedPositionInt(I)V

    .line 6548
    return-void

    .line 6554
    .end local v6    # "newPos":I
    .end local v7    # "selectablePos":I
    :cond_d
    iget v6, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    if-ltz v6, :cond_e

    .line 6555
    return-void

    .line 6562
    :cond_e
    iget-boolean v6, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    if-eqz v6, :cond_f

    goto :goto_3

    :cond_f
    move v3, v5

    :goto_3
    iput v3, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 6563
    const/4 v3, -0x1

    iput v3, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    .line 6564
    const-wide/high16 v5, -0x8000000000000000L

    iput-wide v5, p0, Landroid/widget/AbsListView;->mSelectedRowId:J

    .line 6565
    iput v3, p0, Landroid/widget/AbsListView;->mNextSelectedPosition:I

    .line 6566
    iput-wide v5, p0, Landroid/widget/AbsListView;->mNextSelectedRowId:J

    .line 6567
    iput-boolean v4, p0, Landroid/widget/AbsListView;->mNeedSync:Z

    .line 6568
    iput-object v2, p0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    .line 6569
    iput v3, p0, Landroid/widget/AbsListView;->mSelectorPosition:I

    .line 6570
    invoke-virtual {p0}, Landroid/widget/AbsListView;->checkSelectionChanged()V

    .line 6571
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected greylist-max-o handleScrollBarDragging(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 4378
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist hasTextFilter()Z
    .locals 1

    .line 7040
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFiltered:Z

    return v0
.end method

.method greylist-max-o hideSelector()V
    .locals 3

    .line 6184
    iget v0, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 6185
    iget v0, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    .line 6186
    iget v0, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    iput v0, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 6188
    :cond_0
    iget v0, p0, Landroid/widget/AbsListView;->mNextSelectedPosition:I

    if-ltz v0, :cond_1

    iget v0, p0, Landroid/widget/AbsListView;->mNextSelectedPosition:I

    iget v2, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    if-eq v0, v2, :cond_1

    .line 6189
    iget v0, p0, Landroid/widget/AbsListView;->mNextSelectedPosition:I

    iput v0, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 6191
    :cond_1
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->setSelectedPositionInt(I)V

    .line 6192
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->setNextSelectedPositionInt(I)V

    .line 6193
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/AbsListView;->mSelectedTop:I

    .line 6195
    iput v1, p0, Landroid/widget/AbsListView;->mSelectorPosition:I

    .line 6198
    :cond_2
    return-void
.end method

.method protected greylist-max-o internalSetPadding(IIII)V
    .locals 1
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 3033
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AdapterView;->internalSetPadding(IIII)V

    .line 3034
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isLayoutRequested()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3035
    invoke-virtual {p0}, Landroid/widget/AbsListView;->handleBoundsChange()V

    .line 3037
    :cond_0
    return-void
.end method

.method public whitelist invalidateViews()V
    .locals 1

    .line 6245
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mDataChanged:Z

    .line 6246
    invoke-virtual {p0}, Landroid/widget/AbsListView;->rememberSyncState()V

    .line 6247
    invoke-virtual {p0}, Landroid/widget/AbsListView;->requestLayout()V

    .line 6248
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidate()V

    .line 6249
    return-void
.end method

.method greylist invokeOnItemScrollListener()V
    .locals 4

    .line 1637
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    if-eqz v0, :cond_0

    .line 1638
    iget v1, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v2

    iget v3, p0, Landroid/widget/AbsListView;->mItemCount:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/FastScroller;->onScroll(III)V

    goto :goto_0

    .line 1639
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mSemFastScroll:Landroid/widget/SemFastScroller;

    if-eqz v0, :cond_1

    .line 1640
    iget v1, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v2

    iget v3, p0, Landroid/widget/AbsListView;->mItemCount:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/SemFastScroller;->onScroll(III)V

    .line 1642
    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_2

    .line 1643
    iget v1, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v2

    iget v3, p0, Landroid/widget/AbsListView;->mItemCount:I

    invoke-interface {v0, p0, v1, v2, v3}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    .line 1646
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0, v0}, Landroid/widget/AbsListView;->onScrollChanged(IIII)V

    .line 1647
    return-void
.end method

.method public whitelist isDrawSelectorOnTop()Z
    .locals 1

    .line 3158
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mDrawSelectorOnTop:Z

    return v0
.end method

.method public whitelist isFastScrollAlwaysVisible()Z
    .locals 3

    .line 1526
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 1527
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFastScrollEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFastScrollAlwaysVisible:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    .line 1529
    :cond_1
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

    .line 1552
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    if-nez v0, :cond_0

    .line 1553
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFastScrollEnabled:Z

    return v0

    .line 1555
    :cond_0
    invoke-virtual {v0}, Landroid/widget/FastScroller;->isEnabled()Z

    move-result v0

    return v0
.end method

.method protected whitelist isInFilterMode()Z
    .locals 1

    .line 6685
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFiltered:Z

    return v0
.end method

.method public whitelist isItemChecked(I)Z
    .locals 1
    .param p1, "position"    # I

    .line 1075
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_0

    .line 1076
    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    return v0

    .line 1079
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isLockScreenMode()Z
    .locals 2

    .line 11184
    iget-object v0, p0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 11185
    .local v0, "keyguardManager":Landroid/app/KeyguardManager;
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v1

    return v1
.end method

.method public blacklist isMultiFocusEnabled()Z
    .locals 1

    .line 9420
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mIsMultiFocusEnabled:Z

    return v0
.end method

.method protected whitelist isPaddingOffsetRequired()Z
    .locals 2

    .line 3005
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

    .line 1819
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mScrollingCacheEnabled:Z

    return v0
.end method

.method public whitelist isSelectedChildViewEnabled()Z
    .locals 1

    .line 2934
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mIsChildViewEnabled:Z

    return v0
.end method

.method protected blacklist isSemUsingAdapterView()Z
    .locals 1

    .line 11247
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist isSmoothScrollbarEnabled()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .line 1619
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mSmoothScrollbarEnabled:Z

    return v0
.end method

.method public whitelist isStackFromBottom()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .line 1898
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    return v0
.end method

.method public whitelist isTextFilterEnabled()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .line 1867
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mTextFilterEnabled:Z

    return v0
.end method

.method protected greylist-max-r isVerticalScrollBarHidden()Z
    .locals 1

    .line 1584
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

    .line 3317
    invoke-super {p0}, Landroid/widget/AdapterView;->jumpDrawablesToCurrentState()V

    .line 3318
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 3319
    :cond_0
    return-void
.end method

.method greylist-max-o keyPressed()V
    .locals 9

    .line 3204
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isClickable()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 3208
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 3209
    .local v0, "selector":Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 3210
    .local v1, "selectorRect":Landroid/graphics/Rect;
    if-eqz v0, :cond_7

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isFocused()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Landroid/widget/AbsListView;->touchModeDrawsInPressedState()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 3211
    :cond_1
    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    .line 3213
    iget v2, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    iget v3, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 3215
    .local v2, "v":Landroid/view/View;
    const/4 v3, 0x1

    if-eqz v2, :cond_3

    .line 3216
    invoke-virtual {v2}, Landroid/view/View;->hasExplicitFocusable()Z

    move-result v4

    if-eqz v4, :cond_2

    return-void

    .line 3217
    :cond_2
    invoke-virtual {v2, v3}, Landroid/view/View;->setPressed(Z)V

    .line 3219
    :cond_3
    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->setPressed(Z)V

    .line 3221
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isLongClickable()Z

    move-result v3

    .line 3222
    .local v3, "longClickable":Z
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 3223
    .local v4, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v4, :cond_5

    instance-of v5, v4, Landroid/graphics/drawable/TransitionDrawable;

    if-eqz v5, :cond_5

    .line 3224
    if-eqz v3, :cond_4

    .line 3225
    move-object v5, v4

    check-cast v5, Landroid/graphics/drawable/TransitionDrawable;

    .line 3226
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v6

    .line 3225
    invoke-virtual {v5, v6}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    goto :goto_0

    .line 3228
    :cond_4
    move-object v5, v4

    check-cast v5, Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    .line 3233
    :cond_5
    :goto_0
    iget-object v5, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 3234
    .local v5, "bounds":Landroid/graphics/Rect;
    iget-object v6, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v7

    invoke-virtual {v5}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v8

    invoke-virtual {v6, v7, v8}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 3236
    if-eqz v3, :cond_7

    iget-boolean v6, p0, Landroid/widget/AbsListView;->mDataChanged:Z

    if-nez v6, :cond_7

    .line 3237
    iget-object v6, p0, Landroid/widget/AbsListView;->mPendingCheckForKeyLongPress:Landroid/widget/AbsListView$CheckForKeyLongPress;

    if-nez v6, :cond_6

    .line 3238
    new-instance v6, Landroid/widget/AbsListView$CheckForKeyLongPress;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7}, Landroid/widget/AbsListView$CheckForKeyLongPress;-><init>(Landroid/widget/AbsListView;Landroid/widget/AbsListView$CheckForKeyLongPress-IA;)V

    iput-object v6, p0, Landroid/widget/AbsListView;->mPendingCheckForKeyLongPress:Landroid/widget/AbsListView$CheckForKeyLongPress;

    goto :goto_1

    .line 3241
    :cond_6
    invoke-virtual {p0, v6}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3244
    :goto_1
    iget-object v6, p0, Landroid/widget/AbsListView;->mPendingCheckForKeyLongPress:Landroid/widget/AbsListView$CheckForKeyLongPress;

    invoke-virtual {v6}, Landroid/widget/AbsListView$CheckForKeyLongPress;->rememberWindowAttachCount()V

    .line 3245
    iget-object v6, p0, Landroid/widget/AbsListView;->mPendingCheckForKeyLongPress:Landroid/widget/AbsListView$CheckForKeyLongPress;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v7

    int-to-long v7, v7

    invoke-virtual {p0, v6, v7, v8}, Landroid/widget/AbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3248
    .end local v2    # "v":Landroid/view/View;
    .end local v3    # "longClickable":Z
    .end local v4    # "d":Landroid/graphics/drawable/Drawable;
    .end local v5    # "bounds":Landroid/graphics/Rect;
    :cond_7
    return-void

    .line 3205
    .end local v0    # "selector":Landroid/graphics/drawable/Drawable;
    .end local v1    # "selectorRect":Landroid/graphics/Rect;
    :cond_8
    :goto_2
    return-void
.end method

.method protected whitelist layoutChildren()V
    .locals 0

    .line 2449
    return-void
.end method

.method greylist-max-o obtainView(I[Z)Landroid/view/View;
    .locals 9
    .param p1, "position"    # I
    .param p2, "outMetadata"    # [Z

    .line 2588
    const-wide/16 v0, 0x8

    const-string/jumbo v2, "obtainView"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2590
    const/4 v2, 0x0

    aput-boolean v2, p2, v2

    .line 2594
    iget-object v3, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v3, p1}, Landroid/widget/AbsListView$RecycleBin;->getTransientStateView(I)Landroid/view/View;

    move-result-object v3

    .line 2595
    .local v3, "transientView":Landroid/view/View;
    const/4 v4, 0x1

    if-eqz v3, :cond_1

    .line 2596
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsListView$LayoutParams;

    .line 2599
    .local v0, "params":Landroid/widget/AbsListView$LayoutParams;
    iget v1, v0, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    iget-object v5, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v5, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v5

    if-ne v1, v5, :cond_0

    .line 2600
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, p1, v3, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 2603
    .local v1, "updatedView":Landroid/view/View;
    if-eq v1, v3, :cond_0

    .line 2604
    invoke-direct {p0, v1, p1}, Landroid/widget/AbsListView;->setItemViewLayoutParams(Landroid/view/View;I)V

    .line 2605
    iget-object v5, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v5, v1, p1}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 2609
    .end local v1    # "updatedView":Landroid/view/View;
    :cond_0
    aput-boolean v4, p2, v2

    .line 2612
    invoke-virtual {v3}, Landroid/view/View;->dispatchFinishTemporaryDetach()V

    .line 2613
    return-object v3

    .line 2617
    .end local v0    # "params":Landroid/widget/AbsListView$LayoutParams;
    :cond_1
    const/4 v5, 0x0

    .line 2619
    .local v5, "scrapView":Landroid/view/View;
    iget-object v6, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v6, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v6

    const/4 v7, -0x2

    if-eq v6, v7, :cond_2

    .line 2620
    iget-object v6, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v6, p1}, Landroid/widget/AbsListView$RecycleBin;->getScrapView(I)Landroid/view/View;

    move-result-object v5

    .line 2622
    :cond_2
    iget-object v6, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v6, p1, v5, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 2625
    .local v6, "child":Landroid/view/View;
    if-eqz v5, :cond_4

    .line 2626
    if-eq v6, v5, :cond_3

    .line 2628
    iget-object v2, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v2, v5, p1}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    goto :goto_0

    .line 2629
    :cond_3
    invoke-virtual {v6}, Landroid/view/View;->isTemporarilyDetached()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 2630
    aput-boolean v4, p2, v2

    .line 2633
    invoke-virtual {v6}, Landroid/view/View;->dispatchFinishTemporaryDetach()V

    .line 2638
    :cond_4
    :goto_0
    if-nez v6, :cond_6

    .line 2639
    const-string v2, "AbsListView"

    const-string v7, " try again to check child on obtainview"

    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2640
    iget-object v7, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v8, 0x0

    invoke-interface {v7, p1, v8, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 2641
    if-nez v6, :cond_6

    .line 2642
    const-string v0, " child is null again"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2643
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " position = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2644
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

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2645
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

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2646
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

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2647
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

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2648
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

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2650
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v0, v0, Landroid/widget/HeaderViewListAdapter;

    if-eqz v0, :cond_5

    .line 2651
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

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2652
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

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2655
    :cond_5
    return-object v8

    .line 2660
    :cond_6
    iget v2, p0, Landroid/widget/AbsListView;->mCacheColorHint:I

    if-eqz v2, :cond_7

    .line 2661
    invoke-virtual {v6, v2}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 2664
    :cond_7
    invoke-virtual {v6}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v2

    if-nez v2, :cond_8

    .line 2665
    invoke-virtual {v6, v4}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 2668
    :cond_8
    invoke-direct {p0, v6, p1}, Landroid/widget/AbsListView;->setItemViewLayoutParams(Landroid/view/View;I)V

    .line 2674
    iget-object v2, p0, Landroid/widget/AbsListView;->mAccessibilityDelegate:Landroid/widget/AbsListView$ListItemAccessibilityDelegate;

    if-nez v2, :cond_9

    .line 2675
    new-instance v2, Landroid/widget/AbsListView$ListItemAccessibilityDelegate;

    invoke-direct {v2, p0}, Landroid/widget/AbsListView$ListItemAccessibilityDelegate;-><init>(Landroid/widget/AbsListView;)V

    iput-object v2, p0, Landroid/widget/AbsListView;->mAccessibilityDelegate:Landroid/widget/AbsListView$ListItemAccessibilityDelegate;

    .line 2677
    :cond_9
    invoke-virtual {v6}, Landroid/view/View;->getAccessibilityDelegate()Landroid/view/View$AccessibilityDelegate;

    move-result-object v2

    if-nez v2, :cond_a

    .line 2678
    iget-object v2, p0, Landroid/widget/AbsListView;->mAccessibilityDelegate:Landroid/widget/AbsListView$ListItemAccessibilityDelegate;

    invoke-virtual {v6, v2}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 2683
    :cond_a
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 2685
    return-object v6
.end method

.method protected whitelist onAttachedToWindow()V
    .locals 3

    .line 3323
    invoke-super {p0}, Landroid/widget/AdapterView;->onAttachedToWindow()V

    .line 3325
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 3326
    .local v0, "treeObserver":Landroid/view/ViewTreeObserver;
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 3327
    iget-boolean v1, p0, Landroid/widget/AbsListView;->mTextFilterEnabled:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroid/widget/AbsListView;->mGlobalLayoutListenerAddedFilter:Z

    if-nez v1, :cond_0

    .line 3328
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 3331
    :cond_0
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/AbsListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    if-nez v1, :cond_1

    .line 3332
    new-instance v1, Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-direct {v1, p0}, Landroid/widget/AbsListView$AdapterDataSetObserver;-><init>(Landroid/widget/AbsListView;)V

    iput-object v1, p0, Landroid/widget/AbsListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    .line 3333
    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, v1}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 3336
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/AbsListView;->mDataChanged:Z

    .line 3337
    iget v1, p0, Landroid/widget/AbsListView;->mItemCount:I

    iput v1, p0, Landroid/widget/AbsListView;->mOldItemCount:I

    .line 3338
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    iput v1, p0, Landroid/widget/AbsListView;->mItemCount:I

    .line 3343
    :cond_1
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    if-eqz v1, :cond_2

    .line 3344
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getVerticalScrollbarPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/FastScroller;->setScrollbarPosition(I)V

    goto :goto_0

    .line 3345
    :cond_2
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/widget/AbsListView;->mSemFastScroll:Landroid/widget/SemFastScroller;

    if-eqz v1, :cond_3

    .line 3346
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getVerticalScrollbarPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/SemFastScroller;->setScrollbarPosition(I)V

    .line 3349
    :cond_3
    :goto_0
    return-void
.end method

.method public whitelist onCancelPendingInputEvents()V
    .locals 1

    .line 3509
    invoke-super {p0}, Landroid/widget/AdapterView;->onCancelPendingInputEvents()V

    .line 3510
    iget-object v0, p0, Landroid/widget/AbsListView;->mPerformClick:Landroid/widget/AbsListView$PerformClick;

    if-eqz v0, :cond_0

    .line 3511
    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3513
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForTap:Landroid/widget/AbsListView$CheckForTap;

    if-eqz v0, :cond_1

    .line 3514
    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3516
    :cond_1
    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    if-eqz v0, :cond_2

    .line 3517
    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3519
    :cond_2
    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForKeyLongPress:Landroid/widget/AbsListView$CheckForKeyLongPress;

    if-eqz v0, :cond_3

    .line 3520
    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3522
    :cond_3
    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForDoublePenClick:Landroid/widget/AbsListView$CheckForDoublePenClick;

    if-eqz v0, :cond_4

    .line 3523
    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3525
    :cond_4
    return-void
.end method

.method public whitelist onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 2
    .param p1, "outAttrs"    # Landroid/view/inputmethod/EditorInfo;

    .line 6784
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isTextFilterEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6785
    iget-object v0, p0, Landroid/widget/AbsListView;->mPublicInputConnection:Landroid/widget/AbsListView$InputConnectionWrapper;

    if-nez v0, :cond_0

    .line 6786
    new-instance v0, Landroid/view/inputmethod/BaseInputConnection;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/view/inputmethod/BaseInputConnection;-><init>(Landroid/view/View;Z)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mDefInputConnection:Landroid/view/inputmethod/InputConnection;

    .line 6787
    new-instance v0, Landroid/widget/AbsListView$InputConnectionWrapper;

    invoke-direct {v0, p0, p1}, Landroid/widget/AbsListView$InputConnectionWrapper;-><init>(Landroid/widget/AbsListView;Landroid/view/inputmethod/EditorInfo;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mPublicInputConnection:Landroid/widget/AbsListView$InputConnectionWrapper;

    .line 6789
    :cond_0
    const/16 v0, 0xb1

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 6790
    const/4 v0, 0x6

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 6791
    iget-object v0, p0, Landroid/widget/AbsListView;->mPublicInputConnection:Landroid/widget/AbsListView$InputConnectionWrapper;

    return-object v0

    .line 6793
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method protected whitelist onDetachedFromWindow()V
    .locals 5

    .line 3353
    invoke-super {p0}, Landroid/widget/AdapterView;->onDetachedFromWindow()V

    .line 3355
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mIsDetaching:Z

    .line 3358
    invoke-direct {p0}, Landroid/widget/AbsListView;->dismissPopup()V

    .line 3361
    iget-object v0, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v0}, Landroid/widget/AbsListView$RecycleBin;->clear()V

    .line 3363
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 3364
    .local v0, "treeObserver":Landroid/view/ViewTreeObserver;
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 3365
    iget-boolean v1, p0, Landroid/widget/AbsListView;->mTextFilterEnabled:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_0

    .line 3366
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 3367
    iput-boolean v2, p0, Landroid/widget/AbsListView;->mGlobalLayoutListenerAddedFilter:Z

    .line 3370
    :cond_0
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    iget-object v4, p0, Landroid/widget/AbsListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    if-eqz v4, :cond_1

    .line 3371
    invoke-interface {v1, v4}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 3372
    iput-object v3, p0, Landroid/widget/AbsListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    .line 3375
    :cond_1
    iget-object v1, p0, Landroid/widget/AbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v1, :cond_2

    .line 3376
    invoke-virtual {v1}, Landroid/os/StrictMode$Span;->finish()V

    .line 3377
    iput-object v3, p0, Landroid/widget/AbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 3380
    :cond_2
    iget-object v1, p0, Landroid/widget/AbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v1, :cond_3

    .line 3381
    invoke-virtual {v1}, Landroid/os/StrictMode$Span;->finish()V

    .line 3382
    iput-object v3, p0, Landroid/widget/AbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 3385
    :cond_3
    iget-object v1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-eqz v1, :cond_4

    .line 3386
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3389
    :cond_4
    iget-object v1, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-eqz v1, :cond_5

    .line 3390
    invoke-virtual {v1}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    .line 3393
    :cond_5
    iget-object v1, p0, Landroid/widget/AbsListView;->mClearScrollingCache:Ljava/lang/Runnable;

    if-eqz v1, :cond_6

    .line 3394
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3397
    :cond_6
    iget-object v1, p0, Landroid/widget/AbsListView;->mPerformClick:Landroid/widget/AbsListView$PerformClick;

    if-eqz v1, :cond_7

    .line 3398
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3401
    :cond_7
    iget-object v1, p0, Landroid/widget/AbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    if-eqz v1, :cond_8

    .line 3402
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3403
    iget-object v1, p0, Landroid/widget/AbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 3407
    :cond_8
    iget v1, p0, Landroid/widget/AbsListView;->mTouchMode:I

    const/4 v3, -0x1

    if-eq v1, v3, :cond_9

    .line 3408
    iput v3, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 3411
    :cond_9
    invoke-direct {p0}, Landroid/widget/AbsListView;->releaseAllBoosters()V

    .line 3413
    iput-boolean v2, p0, Landroid/widget/AbsListView;->mIsDetaching:Z

    .line 3414
    return-void
.end method

.method protected whitelist onDisplayHint(I)V
    .locals 1
    .param p1, "hint"    # I

    .line 6575
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onDisplayHint(I)V

    .line 6576
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 6578
    :sswitch_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6579
    invoke-direct {p0}, Landroid/widget/AbsListView;->dismissPopup()V

    goto :goto_0

    .line 6583
    :sswitch_1
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFiltered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6584
    invoke-direct {p0}, Landroid/widget/AbsListView;->showPopup()V

    .line 6588
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

    .line 6589
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x4 -> :sswitch_0
    .end sparse-switch
.end method

.method public whitelist onFilterComplete(I)V
    .locals 1
    .param p1, "count"    # I

    .line 7110
    iget v0, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    if-gez v0, :cond_0

    if-lez p1, :cond_0

    .line 7111
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 7112
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resurrectSelection()Z

    .line 7114
    :cond_0
    return-void
.end method

.method protected whitelist onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1
    .param p1, "gainFocus"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .line 2209
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AdapterView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 2210
    if-eqz p1, :cond_1

    iget v0, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    if-gez v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2211
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 2214
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mDataChanged:Z

    .line 2215
    iget v0, p0, Landroid/widget/AbsListView;->mItemCount:I

    iput v0, p0, Landroid/widget/AbsListView;->mOldItemCount:I

    .line 2216
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    iput v0, p0, Landroid/widget/AbsListView;->mItemCount:I

    .line 2218
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resurrectSelection()Z

    .line 2220
    :cond_1
    return-void
.end method

.method public whitelist onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 4915
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_3

    .line 4972
    :sswitch_0
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 4973
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionButton()I

    move-result v0

    .line 4974
    .local v0, "actionButton":I
    const/16 v3, 0x20

    if-eq v0, v3, :cond_0

    if-ne v0, v1, :cond_e

    :cond_0
    iget v1, p0, Landroid/widget/AbsListView;->mTouchMode:I

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_e

    .line 4978
    :cond_1
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    .line 4979
    .local v1, "viewRootImpl":Landroid/view/ViewRootImpl;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->isDesktopMode()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4981
    goto/16 :goto_3

    .line 4984
    :cond_2
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->performStylusButtonPressAction(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 4985
    iget-object v2, p0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4986
    iget-object v2, p0, Landroid/widget/AbsListView;->mPendingCheckForTap:Landroid/widget/AbsListView$CheckForTap;

    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto/16 :goto_3

    .line 4918
    .end local v0    # "actionButton":I
    .end local v1    # "viewRootImpl":Landroid/view/ViewRootImpl;
    :sswitch_1
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4919
    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    .local v0, "axisValue":F
    goto :goto_0

    .line 4920
    .end local v0    # "axisValue":F
    :cond_3
    const/high16 v0, 0x400000

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4921
    const/16 v0, 0x1a

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    .restart local v0    # "axisValue":F
    goto :goto_0

    .line 4923
    .end local v0    # "axisValue":F
    :cond_4
    const/4 v0, 0x0

    .line 4926
    .restart local v0    # "axisValue":F
    :goto_0
    iget-boolean v3, p0, Landroid/widget/AbsListView;->mIsHoveredByMouse:Z

    if-eqz v3, :cond_5

    .line 4927
    iput-boolean v2, p0, Landroid/widget/AbsListView;->mIsMouseHoverScroll:Z

    .line 4928
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Landroid/widget/AbsListView;->mIsMouseHoverScrollX:I

    .line 4929
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Landroid/widget/AbsListView;->mIsMouseHoverScrollY:I

    .line 4933
    :cond_5
    iget v3, p0, Landroid/widget/AbsListView;->mVerticalScrollFactor:F

    mul-float/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 4934
    .local v3, "delta":I
    const/4 v4, 0x0

    if-eqz v3, :cond_d

    .line 4936
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->startNestedScroll(I)Z

    .line 4937
    neg-int v1, v3

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v1, v5, v5}, Landroid/widget/AbsListView;->dispatchNestedPreScroll(II[I[I)Z

    move-result v1

    if-nez v1, :cond_d

    .line 4938
    invoke-virtual {p0, v3, v3}, Landroid/widget/AbsListView;->trackMotionScroll(II)Z

    move-result v1

    if-nez v1, :cond_6

    .line 4939
    iput-boolean v4, p0, Landroid/widget/AbsListView;->mIsMouseHoverScroll:Z

    .line 4940
    return v2

    .line 4942
    :cond_6
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getOverScrollMode()I

    move-result v1

    .line 4943
    .local v1, "overScrollMode":I
    if-eqz v1, :cond_8

    if-ne v1, v2, :cond_7

    invoke-direct {p0}, Landroid/widget/AbsListView;->contentFits()Z

    move-result v5

    if-nez v5, :cond_7

    goto :goto_1

    :cond_7
    move v2, v4

    .line 4945
    .local v2, "canOverScroll":Z
    :cond_8
    :goto_1
    if-eqz v2, :cond_d

    .line 4946
    const/4 v5, 0x0

    cmpl-float v6, v0, v5

    const/16 v7, 0x2710

    if-lez v6, :cond_9

    invoke-direct {p0}, Landroid/widget/AbsListView;->canScrollUp()Z

    move-result v6

    if-nez v6, :cond_9

    .line 4947
    iget-object v5, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v8

    invoke-virtual {v5, v6, v8}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 4948
    iget-object v5, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v5, v7}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    .line 4949
    iget-object v5, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v5}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v5

    if-nez v5, :cond_b

    .line 4950
    iget-object v5, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v5}, Landroid/widget/EdgeEffect;->onRelease()V

    goto :goto_2

    .line 4952
    :cond_9
    cmpg-float v5, v0, v5

    if-gez v5, :cond_b

    invoke-direct {p0}, Landroid/widget/AbsListView;->canScrollDown()Z

    move-result v5

    if-nez v5, :cond_b

    .line 4953
    iget-object v5, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v8

    invoke-virtual {v5, v6, v8}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 4954
    iget-object v5, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v5, v7}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    .line 4955
    iget-object v5, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v5}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v5

    if-nez v5, :cond_a

    .line 4956
    iget-object v5, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v5}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 4958
    :cond_a
    invoke-virtual {p0}, Landroid/widget/AbsListView;->semShowGoToTOP()V

    .line 4961
    :cond_b
    :goto_2
    iget-object v5, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v5}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v5

    if-eqz v5, :cond_c

    iget-object v5, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v5}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v5

    if-nez v5, :cond_d

    .line 4962
    :cond_c
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidate()V

    .line 4968
    .end local v1    # "overScrollMode":I
    .end local v2    # "canOverScroll":Z
    :cond_d
    iput-boolean v4, p0, Landroid/widget/AbsListView;->mIsMouseHoverScroll:Z

    .line 4970
    nop

    .line 4993
    .end local v0    # "axisValue":F
    .end local v3    # "delta":I
    :cond_e
    :goto_3
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_1
        0xb -> :sswitch_0
    .end sparse-switch
.end method

.method public whitelist onGlobalLayout()V
    .locals 1

    .line 7045
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7047
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFiltered:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mPopupHidden:Z

    if-nez v0, :cond_1

    .line 7048
    invoke-direct {p0}, Landroid/widget/AbsListView;->showPopup()V

    goto :goto_0

    .line 7052
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7053
    invoke-direct {p0}, Landroid/widget/AbsListView;->dismissPopup()V

    .line 7057
    :cond_1
    :goto_0
    return-void
.end method

.method public whitelist onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;ILandroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 2794
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 2796
    return-void

    .line 2799
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 2800
    .local v0, "isItemEnabled":Z
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 2801
    .local v2, "lp":Landroid/view/ViewGroup$LayoutParams;
    instance-of v3, v2, Landroid/widget/AbsListView$LayoutParams;

    if-eqz v3, :cond_2

    .line 2802
    move-object v3, v2

    check-cast v3, Landroid/widget/AbsListView$LayoutParams;

    iget-boolean v3, v3, Landroid/widget/AbsListView$LayoutParams;->isEnabled:Z

    and-int/2addr v0, v3

    .line 2805
    :cond_2
    invoke-virtual {p3, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    .line 2807
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getSelectedItemPosition()I

    move-result v3

    if-ne p2, v3, :cond_3

    .line 2808
    invoke-virtual {p3, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSelected(Z)V

    .line 2809
    sget-object v3, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_CLEAR_SELECTION:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-direct {p0, p3, v0, v3}, Landroid/widget/AbsListView;->addAccessibilityActionIfEnabled(Landroid/view/accessibility/AccessibilityNodeInfo;ZLandroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    goto :goto_1

    .line 2812
    :cond_3
    sget-object v3, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SELECT:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-direct {p0, p3, v0, v3}, Landroid/widget/AbsListView;->addAccessibilityActionIfEnabled(Landroid/view/accessibility/AccessibilityNodeInfo;ZLandroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 2816
    :goto_1
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->isItemClickable(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2817
    sget-object v3, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_CLICK:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-direct {p0, p3, v0, v3}, Landroid/widget/AbsListView;->addAccessibilityActionIfEnabled(Landroid/view/accessibility/AccessibilityNodeInfo;ZLandroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 2819
    invoke-virtual {p3, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    .line 2822
    :cond_4
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isLongClickable()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2823
    sget-object v3, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_LONG_CLICK:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-direct {p0, p3, v0, v3}, Landroid/widget/AbsListView;->addAccessibilityActionIfEnabled(Landroid/view/accessibility/AccessibilityNodeInfo;ZLandroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 2825
    invoke-virtual {p3, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLongClickable(Z)V

    .line 2827
    :cond_5
    return-void
.end method

.method public greylist-max-o onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 1662
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1663
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1664
    invoke-direct {p0}, Landroid/widget/AbsListView;->canScrollUp()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1665
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_BACKWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 1666
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_UP:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 1667
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 1669
    :cond_0
    invoke-direct {p0}, Landroid/widget/AbsListView;->canScrollDown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1670
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_FORWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 1671
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_DOWN:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 1672
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 1676
    :cond_1
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_CLICK:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->removeAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)Z

    .line 1677
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    .line 1680
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->SEM_ACTION_AUTOSCROLL_ON:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 1681
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->SEM_ACTION_AUTOSCROLL_OFF:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 1683
    return-void
.end method

.method public whitelist onInterceptHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 5144
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/FastScroller;->onInterceptHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5145
    return v1

    .line 5146
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mSemFastScroll:Landroid/widget/SemFastScroller;

    if-eqz v0, :cond_1

    .line 5147
    invoke-virtual {v0, p1}, Landroid/widget/SemFastScroller;->onInterceptHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5148
    return v1

    .line 5151
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onInterceptHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public whitelist onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 5167
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 5170
    .local v0, "actionMasked":I
    iget-object v1, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-eqz v1, :cond_0

    .line 5171
    invoke-virtual {v1}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    .line 5174
    :cond_0
    iget-boolean v1, p0, Landroid/widget/AbsListView;->mIsDetaching:Z

    const/4 v2, 0x0

    if-nez v1, :cond_b

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isAttachedToWindow()Z

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_4

    .line 5182
    :cond_1
    iget-object v1, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    invoke-virtual {v1, p1}, Landroid/widget/FastScroller;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5183
    return v3

    .line 5184
    :cond_2
    iget-object v1, p0, Landroid/widget/AbsListView;->mSemFastScroll:Landroid/widget/SemFastScroller;

    if-eqz v1, :cond_3

    .line 5185
    invoke-virtual {v1, p1}, Landroid/widget/SemFastScroller;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 5186
    return v3

    .line 5189
    :cond_3
    const/4 v1, -0x1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_3

    .line 5257
    :pswitch_1
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_3

    .line 5228
    :pswitch_2
    iget v4, p0, Landroid/widget/AbsListView;->mTouchMode:I

    packed-switch v4, :pswitch_data_1

    goto :goto_0

    .line 5230
    :pswitch_3
    iget v4, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v4

    .line 5231
    .local v4, "pointerIndex":I
    if-ne v4, v1, :cond_4

    .line 5232
    const/4 v4, 0x0

    .line 5233
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 5235
    :cond_4
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    float-to-int v1, v1

    .line 5236
    .local v1, "y":I
    invoke-direct {p0}, Landroid/widget/AbsListView;->initVelocityTrackerIfNotExists()V

    .line 5237
    iget-object v5, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 5238
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    float-to-int v5, v5

    const/4 v6, 0x0

    invoke-direct {p0, v5, v1, v6}, Landroid/widget/AbsListView;->startScrollIfNeeded(IILandroid/view/MotionEvent;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 5239
    return v3

    .line 5243
    .end local v1    # "y":I
    .end local v4    # "pointerIndex":I
    :cond_5
    :goto_0
    goto :goto_3

    .line 5248
    :pswitch_4
    iput v1, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 5249
    iput v1, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 5250
    invoke-direct {p0}, Landroid/widget/AbsListView;->recycleVelocityTracker()V

    .line 5251
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 5252
    invoke-virtual {p0}, Landroid/widget/AbsListView;->stopNestedScroll()V

    .line 5253
    goto :goto_3

    .line 5191
    :pswitch_5
    iget v1, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 5192
    .local v1, "touchMode":I
    const/4 v4, 0x6

    if-eq v1, v4, :cond_9

    const/4 v4, 0x5

    if-ne v1, v4, :cond_6

    goto :goto_2

    .line 5197
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    .line 5198
    .local v4, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    .line 5199
    .local v5, "y":I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    iput v6, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 5201
    invoke-virtual {p0, v5}, Landroid/widget/AbsListView;->findMotionRow(I)I

    move-result v6

    .line 5202
    .local v6, "motionPosition":I
    invoke-direct {p0}, Landroid/widget/AbsListView;->doesTouchStopStretch()Z

    move-result v7

    const/4 v8, 0x4

    if-eqz v7, :cond_7

    .line 5204
    iput v8, p0, Landroid/widget/AbsListView;->mTouchMode:I

    move v1, v8

    goto :goto_1

    .line 5205
    :cond_7
    if-eq v1, v8, :cond_8

    if-ltz v6, :cond_8

    .line 5208
    iget v7, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int v7, v6, v7

    invoke-virtual {p0, v7}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 5209
    .local v7, "v":Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v9

    iput v9, p0, Landroid/widget/AbsListView;->mMotionViewOriginalTop:I

    .line 5210
    iput v4, p0, Landroid/widget/AbsListView;->mMotionX:I

    .line 5211
    iput v5, p0, Landroid/widget/AbsListView;->mMotionY:I

    .line 5212
    iput v6, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 5213
    iput v2, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 5214
    invoke-direct {p0}, Landroid/widget/AbsListView;->clearScrollingCache()V

    .line 5216
    .end local v7    # "v":Landroid/view/View;
    :cond_8
    :goto_1
    const/high16 v7, -0x80000000

    iput v7, p0, Landroid/widget/AbsListView;->mLastY:I

    .line 5217
    invoke-direct {p0}, Landroid/widget/AbsListView;->initOrResetVelocityTracker()V

    .line 5218
    iget-object v7, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v7, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 5219
    iput v2, p0, Landroid/widget/AbsListView;->mNestedYOffset:I

    .line 5220
    const/4 v7, 0x2

    invoke-virtual {p0, v7}, Landroid/widget/AbsListView;->startNestedScroll(I)Z

    .line 5221
    if-ne v1, v8, :cond_a

    .line 5222
    return v3

    .line 5193
    .end local v4    # "x":I
    .end local v5    # "y":I
    .end local v6    # "motionPosition":I
    :cond_9
    :goto_2
    iput v2, p0, Landroid/widget/AbsListView;->mMotionCorrection:I

    .line 5194
    return v3

    .line 5262
    .end local v1    # "touchMode":I
    :cond_a
    :goto_3
    return v2

    .line 5179
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

    .line 11379
    const-string v0, "AbsListView"

    const-string/jumbo v1, "onJumpScrollToTopFinished()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11380
    return-void
.end method

.method public whitelist onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 3811
    const/4 v0, 0x1

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 3814
    :sswitch_0
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mIsCtrlkeyPressed:Z

    .line 3815
    goto :goto_0

    .line 3818
    :sswitch_1
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mIsShiftkeyPressed:Z

    .line 3819
    goto :goto_0

    .line 3821
    :sswitch_2
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mIsCtrlkeyPressed:Z

    if-eqz v0, :cond_0

    .line 3822
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resetPressItemListArray()V

    .line 3826
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
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 3831
    invoke-static {p1}, Landroid/view/KeyEvent;->isConfirmKey(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 3832
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isEnabled()Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 3833
    return v2

    .line 3835
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    if-ltz v0, :cond_2

    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_2

    iget v0, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    iget-object v3, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 3837
    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v3

    if-ge v0, v3, :cond_2

    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    iget v3, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    invoke-interface {v0, v3}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3839
    iget v0, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    iget v3, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int/2addr v0, v3

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3840
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 3841
    iget v3, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    iget-wide v4, p0, Landroid/widget/AbsListView;->mSelectedRowId:J

    invoke-virtual {p0, v0, v3, v4, v5}, Landroid/widget/AbsListView;->performItemClick(Landroid/view/View;IJ)Z

    .line 3842
    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 3844
    :cond_1
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->setPressed(Z)V

    .line 3845
    return v2

    .line 3850
    .end local v0    # "view":Landroid/view/View;
    :cond_2
    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_2

    .line 3894
    :sswitch_0
    iput-boolean v1, p0, Landroid/widget/AbsListView;->mIsCtrlkeyPressed:Z

    .line 3895
    goto/16 :goto_2

    .line 3898
    :sswitch_1
    iput-boolean v1, p0, Landroid/widget/AbsListView;->mIsShiftkeyPressed:Z

    .line 3899
    iput v1, p0, Landroid/widget/AbsListView;->mOldKeyCode:I

    .line 3900
    iput v1, p0, Landroid/widget/AbsListView;->mCurrentKeyCode:I

    .line 3901
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/AbsListView;->mFirstPressedPoint:I

    .line 3902
    goto/16 :goto_2

    .line 3904
    :sswitch_2
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mIsCtrlkeyPressed:Z

    if-eqz v0, :cond_7

    .line 3905
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resetPressItemListArray()V

    goto/16 :goto_2

    .line 3855
    :sswitch_3
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mIsShiftkeyPressed:Z

    if-eqz v0, :cond_4

    .line 3856
    iget v0, p0, Landroid/widget/AbsListView;->mOldKeyCode:I

    if-nez v0, :cond_3

    .line 3857
    iput p1, p0, Landroid/widget/AbsListView;->mOldKeyCode:I

    goto :goto_0

    .line 3859
    :cond_3
    iput p1, p0, Landroid/widget/AbsListView;->mCurrentKeyCode:I

    .line 3863
    :cond_4
    :goto_0
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_7

    iget v0, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    if-ltz v0, :cond_7

    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_7

    iget v0, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 3864
    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_7

    .line 3866
    iget v0, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    iget v1, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3867
    .local v0, "selectedView":Landroid/view/View;
    iget v1, p0, Landroid/widget/AbsListView;->mSemCurrentFocusPosition:I

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3869
    .local v1, "currentView":Landroid/view/View;
    iget-boolean v2, p0, Landroid/widget/AbsListView;->mIsShiftkeyPressed:Z

    if-eqz v2, :cond_6

    if-eqz v0, :cond_6

    .line 3870
    iget v2, p0, Landroid/widget/AbsListView;->mCurrentKeyCode:I

    if-nez v2, :cond_5

    .line 3871
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resetPressItemListArray()V

    .line 3872
    iget v2, p0, Landroid/widget/AbsListView;->mSemCurrentFocusPosition:I

    iget-wide v3, p0, Landroid/widget/AbsListView;->mSelectedRowId:J

    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/widget/AbsListView;->semNotifyKeyPressState(Landroid/view/View;IJ)Z

    .line 3873
    iget v2, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    iget-wide v3, p0, Landroid/widget/AbsListView;->mSelectedRowId:J

    invoke-virtual {p0, v0, v2, v3, v4}, Landroid/widget/AbsListView;->semNotifyKeyPressState(Landroid/view/View;IJ)Z

    .line 3876
    iget v2, p0, Landroid/widget/AbsListView;->mSemCurrentFocusPosition:I

    iget v3, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    invoke-direct {p0, v2, v3}, Landroid/widget/AbsListView;->addToPressItemListArray(II)V

    .line 3877
    iget v2, p0, Landroid/widget/AbsListView;->mSemCurrentFocusPosition:I

    iput v2, p0, Landroid/widget/AbsListView;->mFirstPressedPoint:I

    goto :goto_1

    .line 3879
    :cond_5
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resetPressItemListArray()V

    .line 3880
    iget v2, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    iget-wide v3, p0, Landroid/widget/AbsListView;->mSelectedRowId:J

    invoke-virtual {p0, v0, v2, v3, v4}, Landroid/widget/AbsListView;->semNotifyKeyPressState(Landroid/view/View;IJ)Z

    .line 3882
    iget v2, p0, Landroid/widget/AbsListView;->mFirstPressedPoint:I

    iget v3, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    invoke-direct {p0, v2, v3}, Landroid/widget/AbsListView;->addToPressItemListArray(II)V

    .line 3886
    :cond_6
    :goto_1
    iget v2, p0, Landroid/widget/AbsListView;->mCurrentKeyCode:I

    if-eqz v2, :cond_7

    .line 3887
    iput v2, p0, Landroid/widget/AbsListView;->mOldKeyCode:I

    .line 3909
    .end local v0    # "selectedView":Landroid/view/View;
    .end local v1    # "currentView":Landroid/view/View;
    :cond_7
    :goto_2
    invoke-super {p0, p1, p2}, Landroid/widget/AdapterView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

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
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 2386
    invoke-super/range {p0 .. p5}, Landroid/widget/AdapterView;->onLayout(ZIIII)V

    .line 2388
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mInLayout:Z

    .line 2390
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    .line 2391
    .local v1, "childCount":I
    if-eqz p1, :cond_1

    .line 2392
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 2393
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->forceLayout()V

    .line 2392
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2395
    .end local v2    # "i":I
    :cond_0
    iget-object v2, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v2}, Landroid/widget/AbsListView$RecycleBin;->markChildrenDirty()V

    .line 2398
    :cond_1
    invoke-virtual {p0}, Landroid/widget/AbsListView;->layoutChildren()V

    .line 2400
    if-eqz p1, :cond_2

    .line 2401
    const-string v2, "AbsListView"

    const-string v3, " in onLayout changed "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2402
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mSemSizeChnage:Z

    .line 2403
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->semSetupGoToTop(I)V

    .line 2404
    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->semAutoHide(I)V

    .line 2407
    :cond_2
    sub-int v2, p5, p3

    div-int/lit8 v2, v2, 0x3

    iput v2, p0, Landroid/widget/AbsListView;->mOverscrollMax:I

    .line 2410
    iget-object v2, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    .line 2411
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    iget v4, p0, Landroid/widget/AbsListView;->mItemCount:I

    invoke-virtual {v2, v0, v4}, Landroid/widget/FastScroller;->onItemCountChanged(II)V

    goto :goto_1

    .line 2412
    :cond_3
    iget-object v2, p0, Landroid/widget/AbsListView;->mSemFastScroll:Landroid/widget/SemFastScroller;

    if-eqz v2, :cond_4

    .line 2413
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v4

    iget v5, p0, Landroid/widget/AbsListView;->mItemCount:I

    invoke-virtual {v2, v4, v5}, Landroid/widget/SemFastScroller;->onItemCountChanged(II)V

    .line 2416
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isLayoutRequested()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2417
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mInLayout:Z

    .line 2418
    invoke-virtual {p0}, Landroid/widget/AbsListView;->layoutChildren()V

    .line 2419
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mInLayout:Z

    .line 2422
    :cond_4
    :goto_1
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mInLayout:Z

    .line 2423
    return-void
.end method

.method protected whitelist onMeasure(II)V
    .locals 8
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 2360
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 2361
    invoke-direct {p0}, Landroid/widget/AbsListView;->useDefaultSelector()V

    .line 2363
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 2364
    .local v0, "listPadding":Landroid/graphics/Rect;
    iget v1, p0, Landroid/widget/AbsListView;->mSelectionLeftPadding:I

    iget v2, p0, Landroid/widget/AbsListView;->mPaddingLeft:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 2365
    iget v1, p0, Landroid/widget/AbsListView;->mSelectionTopPadding:I

    iget v2, p0, Landroid/widget/AbsListView;->mPaddingTop:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 2366
    iget v1, p0, Landroid/widget/AbsListView;->mSelectionRightPadding:I

    iget v2, p0, Landroid/widget/AbsListView;->mPaddingRight:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 2367
    iget v1, p0, Landroid/widget/AbsListView;->mSelectionBottomPadding:I

    iget v2, p0, Landroid/widget/AbsListView;->mPaddingBottom:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 2370
    iget v1, p0, Landroid/widget/AbsListView;->mTranscriptMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 2371
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    .line 2372
    .local v1, "childCount":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    .line 2373
    .local v3, "listBottom":I
    add-int/lit8 v4, v1, -0x1

    invoke-virtual {p0, v4}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 2374
    .local v4, "lastChild":Landroid/view/View;
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v5

    goto :goto_0

    :cond_1
    move v5, v3

    .line 2375
    .local v5, "lastBottom":I
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

    .line 2378
    .end local v1    # "childCount":I
    .end local v3    # "listBottom":I
    .end local v4    # "lastChild":Landroid/view/View;
    .end local v5    # "lastBottom":I
    :cond_3
    return-void
.end method

.method public whitelist onNestedFling(Landroid/view/View;FFZ)Z
    .locals 3
    .param p1, "target"    # Landroid/view/View;
    .param p2, "velocityX"    # F
    .param p3, "velocityY"    # F
    .param p4, "consumed"    # Z

    .line 5043
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 5044
    .local v0, "childCount":I
    if-nez p4, :cond_2

    if-lez v0, :cond_2

    float-to-int v1, p3

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->canScrollList(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5045
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Landroid/widget/AbsListView;->mMinimumVelocity:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    .line 5046
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 5047
    iget-object v1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-nez v1, :cond_0

    .line 5048
    new-instance v1, Landroid/widget/AbsListView$FlingRunnable;

    invoke-direct {v1, p0}, Landroid/widget/AbsListView$FlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    iput-object v1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    .line 5050
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1, p3}, Landroid/widget/AbsListView;->dispatchNestedPreFling(FF)Z

    move-result v1

    if-nez v1, :cond_1

    .line 5051
    iget-object v1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    float-to-int v2, p3

    invoke-virtual {v1, v2}, Landroid/widget/AbsListView$FlingRunnable;->start(I)V

    .line 5053
    :cond_1
    const/4 v1, 0x1

    return v1

    .line 5055
    :cond_2
    invoke-virtual {p0, p2, p3, p4}, Landroid/widget/AbsListView;->dispatchNestedFling(FFZ)Z

    move-result v1

    return v1
.end method

.method public whitelist onNestedScroll(Landroid/view/View;IIII)V
    .locals 13
    .param p1, "target"    # Landroid/view/View;
    .param p2, "dxConsumed"    # I
    .param p3, "dyConsumed"    # I
    .param p4, "dxUnconsumed"    # I
    .param p5, "dyUnconsumed"    # I

    .line 5027
    move-object v6, p0

    move/from16 v7, p5

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    div-int/lit8 v8, v0, 0x2

    .line 5028
    .local v8, "motionIndex":I
    invoke-virtual {p0, v8}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 5029
    .local v9, "motionView":Landroid/view/View;
    if-eqz v9, :cond_0

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v10, v0

    .line 5030
    .local v10, "oldTop":I
    if-eqz v9, :cond_1

    neg-int v0, v7

    neg-int v1, v7

    invoke-virtual {p0, v0, v1}, Landroid/widget/AbsListView;->trackMotionScroll(II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5031
    :cond_1
    move/from16 v0, p5

    .line 5032
    .local v0, "myUnconsumed":I
    const/4 v1, 0x0

    .line 5033
    .local v1, "myConsumed":I
    if-eqz v9, :cond_2

    .line 5034
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int v1, v2, v10

    .line 5035
    sub-int/2addr v0, v1

    move v11, v0

    move v12, v1

    goto :goto_1

    .line 5033
    :cond_2
    move v11, v0

    move v12, v1

    .line 5037
    .end local v0    # "myUnconsumed":I
    .end local v1    # "myConsumed":I
    .local v11, "myUnconsumed":I
    .local v12, "myConsumed":I
    :goto_1
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v2, v12

    move v4, v11

    invoke-virtual/range {v0 .. v5}, Landroid/widget/AbsListView;->dispatchNestedScroll(IIII[I)Z

    .line 5039
    .end local v11    # "myUnconsumed":I
    .end local v12    # "myConsumed":I
    :cond_3
    return-void
.end method

.method public whitelist onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "axes"    # I

    .line 5020
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AdapterView;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V

    .line 5021
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->startNestedScroll(I)Z

    .line 5022
    return-void
.end method

.method protected whitelist onOverScrolled(IIZZ)V
    .locals 3
    .param p1, "scrollX"    # I
    .param p2, "scrollY"    # I
    .param p3, "clampedX"    # Z
    .param p4, "clampedY"    # Z

    .line 4899
    iget v0, p0, Landroid/widget/AbsListView;->mScrollY:I

    if-eq v0, p2, :cond_1

    .line 4900
    iget v0, p0, Landroid/widget/AbsListView;->mScrollX:I

    iget v1, p0, Landroid/widget/AbsListView;->mScrollX:I

    iget v2, p0, Landroid/widget/AbsListView;->mScrollY:I

    invoke-virtual {p0, v0, p2, v1, v2}, Landroid/widget/AbsListView;->onScrollChanged(IIII)V

    .line 4903
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mSemEnableFillOut:Z

    if-nez v0, :cond_0

    .line 4904
    iput p2, p0, Landroid/widget/AbsListView;->mScrollY:I

    .line 4907
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidateParentIfNeeded()V

    .line 4909
    invoke-virtual {p0}, Landroid/widget/AbsListView;->awakenScrollBars()Z

    .line 4911
    :cond_1
    return-void
.end method

.method public whitelist onRemoteAdapterConnected()Z
    .locals 3

    .line 7306
    iget-object v0, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    .line 7307
    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 7308
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mDeferNotifyDataSetChanged:Z

    if-eqz v0, :cond_0

    .line 7309
    iget-object v0, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v0}, Landroid/widget/RemoteViewsAdapter;->notifyDataSetChanged()V

    .line 7310
    iput-boolean v2, p0, Landroid/widget/AbsListView;->mDeferNotifyDataSetChanged:Z

    .line 7312
    :cond_0
    return v2

    .line 7313
    :cond_1
    if-eqz v0, :cond_2

    .line 7314
    invoke-virtual {v0}, Landroid/widget/RemoteViewsAdapter;->superNotifyDataSetChanged()V

    .line 7315
    const/4 v0, 0x1

    return v0

    .line 7317
    :cond_2
    return v2
.end method

.method public whitelist onRemoteAdapterDisconnected()V
    .locals 0

    .line 7330
    return-void
.end method

.method public whitelist onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "pointerIndex"    # I

    .line 5156
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    if-eqz v0, :cond_0

    .line 5157
    invoke-virtual {v0, p1, p2}, Landroid/widget/FastScroller;->onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;

    move-result-object v0

    .line 5158
    .local v0, "pointerIcon":Landroid/view/PointerIcon;
    if-eqz v0, :cond_0

    .line 5159
    return-object v0

    .line 5162
    .end local v0    # "pointerIcon":Landroid/view/PointerIcon;
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/AdapterView;->onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 6
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 2116
    move-object v0, p1

    check-cast v0, Landroid/widget/AbsListView$SavedState;

    .line 2118
    .local v0, "ss":Landroid/widget/AbsListView$SavedState;
    invoke-virtual {v0}, Landroid/widget/AbsListView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/AdapterView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 2119
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/AbsListView;->mDataChanged:Z

    .line 2121
    iget v2, v0, Landroid/widget/AbsListView$SavedState;->height:I

    int-to-long v2, v2

    iput-wide v2, p0, Landroid/widget/AbsListView;->mSyncHeight:J

    .line 2123
    iget-wide v2, v0, Landroid/widget/AbsListView$SavedState;->selectedId:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    .line 2124
    iput-boolean v1, p0, Landroid/widget/AbsListView;->mNeedSync:Z

    .line 2125
    iput-object v0, p0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    .line 2126
    iget-wide v1, v0, Landroid/widget/AbsListView$SavedState;->selectedId:J

    iput-wide v1, p0, Landroid/widget/AbsListView;->mSyncRowId:J

    .line 2127
    iget v1, v0, Landroid/widget/AbsListView$SavedState;->position:I

    iput v1, p0, Landroid/widget/AbsListView;->mSyncPosition:I

    .line 2128
    iget v1, v0, Landroid/widget/AbsListView$SavedState;->viewTop:I

    iput v1, p0, Landroid/widget/AbsListView;->mSpecificTop:I

    .line 2129
    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/AbsListView;->mSyncMode:I

    goto :goto_0

    .line 2130
    :cond_0
    iget-wide v2, v0, Landroid/widget/AbsListView$SavedState;->firstId:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1

    .line 2131
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->setSelectedPositionInt(I)V

    .line 2133
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->setNextSelectedPositionInt(I)V

    .line 2134
    iput v2, p0, Landroid/widget/AbsListView;->mSelectorPosition:I

    .line 2135
    iput-boolean v1, p0, Landroid/widget/AbsListView;->mNeedSync:Z

    .line 2136
    iput-object v0, p0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    .line 2137
    iget-wide v2, v0, Landroid/widget/AbsListView$SavedState;->firstId:J

    iput-wide v2, p0, Landroid/widget/AbsListView;->mSyncRowId:J

    .line 2138
    iget v2, v0, Landroid/widget/AbsListView$SavedState;->position:I

    iput v2, p0, Landroid/widget/AbsListView;->mSyncPosition:I

    .line 2139
    iget v2, v0, Landroid/widget/AbsListView$SavedState;->viewTop:I

    iput v2, p0, Landroid/widget/AbsListView;->mSpecificTop:I

    .line 2140
    iput v1, p0, Landroid/widget/AbsListView;->mSyncMode:I

    .line 2143
    :cond_1
    :goto_0
    iget-object v1, v0, Landroid/widget/AbsListView$SavedState;->filter:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->setFilterText(Ljava/lang/String;)V

    .line 2145
    iget-object v1, v0, Landroid/widget/AbsListView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    if-eqz v1, :cond_2

    .line 2146
    iget-object v1, v0, Landroid/widget/AbsListView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    iput-object v1, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 2149
    :cond_2
    iget-object v1, v0, Landroid/widget/AbsListView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    if-eqz v1, :cond_3

    .line 2150
    iget-object v1, v0, Landroid/widget/AbsListView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    iput-object v1, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    .line 2153
    :cond_3
    iget v1, v0, Landroid/widget/AbsListView$SavedState;->checkedItemCount:I

    iput v1, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    .line 2155
    iget-boolean v1, v0, Landroid/widget/AbsListView$SavedState;->inActionMode:Z

    if-eqz v1, :cond_4

    iget v1, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    if-eqz v1, :cond_4

    .line 2157
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    .line 2160
    :cond_4
    invoke-virtual {p0}, Landroid/widget/AbsListView;->requestLayout()V

    .line 2161
    return-void
.end method

.method public whitelist onRtlPropertiesChanged(I)V
    .locals 2
    .param p1, "layoutDirection"    # I

    .line 3484
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onRtlPropertiesChanged(I)V

    .line 3485
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    if-eqz v0, :cond_0

    .line 3486
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getVerticalScrollbarPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FastScroller;->setScrollbarPosition(I)V

    goto :goto_0

    .line 3487
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mSemFastScroll:Landroid/widget/SemFastScroller;

    if-eqz v0, :cond_1

    .line 3488
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getVerticalScrollbarPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SemFastScroller;->setScrollbarPosition(I)V

    .line 3490
    :cond_1
    :goto_0
    return-void
.end method

.method public whitelist onSaveInstanceState()Landroid/os/Parcelable;
    .locals 11

    .line 2024
    invoke-direct {p0}, Landroid/widget/AbsListView;->dismissPopup()V

    .line 2026
    invoke-super {p0}, Landroid/widget/AdapterView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 2028
    .local v0, "superState":Landroid/os/Parcelable;
    new-instance v1, Landroid/widget/AbsListView$SavedState;

    invoke-direct {v1, v0}, Landroid/widget/AbsListView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 2030
    .local v1, "ss":Landroid/widget/AbsListView$SavedState;
    iget-object v2, p0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    if-eqz v2, :cond_0

    .line 2032
    iget-wide v2, v2, Landroid/widget/AbsListView$SavedState;->selectedId:J

    iput-wide v2, v1, Landroid/widget/AbsListView$SavedState;->selectedId:J

    .line 2033
    iget-object v2, p0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    iget-wide v2, v2, Landroid/widget/AbsListView$SavedState;->firstId:J

    iput-wide v2, v1, Landroid/widget/AbsListView$SavedState;->firstId:J

    .line 2034
    iget-object v2, p0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    iget v2, v2, Landroid/widget/AbsListView$SavedState;->viewTop:I

    iput v2, v1, Landroid/widget/AbsListView$SavedState;->viewTop:I

    .line 2035
    iget-object v2, p0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    iget v2, v2, Landroid/widget/AbsListView$SavedState;->position:I

    iput v2, v1, Landroid/widget/AbsListView$SavedState;->position:I

    .line 2036
    iget-object v2, p0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    iget v2, v2, Landroid/widget/AbsListView$SavedState;->height:I

    iput v2, v1, Landroid/widget/AbsListView$SavedState;->height:I

    .line 2037
    iget-object v2, p0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    iget-object v2, v2, Landroid/widget/AbsListView$SavedState;->filter:Ljava/lang/String;

    iput-object v2, v1, Landroid/widget/AbsListView$SavedState;->filter:Ljava/lang/String;

    .line 2038
    iget-object v2, p0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    iget-boolean v2, v2, Landroid/widget/AbsListView$SavedState;->inActionMode:Z

    iput-boolean v2, v1, Landroid/widget/AbsListView$SavedState;->inActionMode:Z

    .line 2039
    iget-object v2, p0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    iget v2, v2, Landroid/widget/AbsListView$SavedState;->checkedItemCount:I

    iput v2, v1, Landroid/widget/AbsListView$SavedState;->checkedItemCount:I

    .line 2040
    iget-object v2, p0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    iget-object v2, v2, Landroid/widget/AbsListView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    iput-object v2, v1, Landroid/widget/AbsListView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    .line 2041
    iget-object v2, p0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    iget-object v2, v2, Landroid/widget/AbsListView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    iput-object v2, v1, Landroid/widget/AbsListView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    .line 2042
    return-object v1

    .line 2045
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

    .line 2046
    .local v2, "haveChildren":Z
    :goto_0
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getSelectedItemId()J

    move-result-wide v5

    .line 2047
    .local v5, "selectedId":J
    iput-wide v5, v1, Landroid/widget/AbsListView$SavedState;->selectedId:J

    .line 2048
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v7

    iput v7, v1, Landroid/widget/AbsListView$SavedState;->height:I

    .line 2050
    const-wide/16 v7, 0x0

    cmp-long v7, v5, v7

    const-wide/16 v8, -0x1

    if-ltz v7, :cond_2

    .line 2052
    iget v7, p0, Landroid/widget/AbsListView;->mSelectedTop:I

    iput v7, v1, Landroid/widget/AbsListView$SavedState;->viewTop:I

    .line 2053
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getSelectedItemPosition()I

    move-result v7

    iput v7, v1, Landroid/widget/AbsListView$SavedState;->position:I

    .line 2054
    iput-wide v8, v1, Landroid/widget/AbsListView$SavedState;->firstId:J

    goto :goto_1

    .line 2056
    :cond_2
    if-eqz v2, :cond_4

    iget v7, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    if-lez v7, :cond_4

    .line 2066
    invoke-virtual {p0, v4}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 2067
    .local v7, "v":Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v8

    iput v8, v1, Landroid/widget/AbsListView$SavedState;->viewTop:I

    .line 2068
    iget v8, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    .line 2069
    .local v8, "firstPos":I
    iget v9, p0, Landroid/widget/AbsListView;->mItemCount:I

    if-lt v8, v9, :cond_3

    .line 2070
    iget v9, p0, Landroid/widget/AbsListView;->mItemCount:I

    add-int/lit8 v8, v9, -0x1

    .line 2072
    :cond_3
    iput v8, v1, Landroid/widget/AbsListView$SavedState;->position:I

    .line 2073
    iget-object v9, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v9, v8}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v9

    iput-wide v9, v1, Landroid/widget/AbsListView$SavedState;->firstId:J

    .line 2074
    .end local v7    # "v":Landroid/view/View;
    .end local v8    # "firstPos":I
    goto :goto_1

    .line 2075
    :cond_4
    iput v4, v1, Landroid/widget/AbsListView$SavedState;->viewTop:I

    .line 2076
    iput-wide v8, v1, Landroid/widget/AbsListView$SavedState;->firstId:J

    .line 2077
    iput v4, v1, Landroid/widget/AbsListView$SavedState;->position:I

    .line 2081
    :goto_1
    const/4 v7, 0x0

    iput-object v7, v1, Landroid/widget/AbsListView$SavedState;->filter:Ljava/lang/String;

    .line 2082
    iget-boolean v7, p0, Landroid/widget/AbsListView;->mFiltered:Z

    if-eqz v7, :cond_5

    .line 2083
    iget-object v7, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    .line 2084
    .local v7, "textFilter":Landroid/widget/EditText;
    if-eqz v7, :cond_5

    .line 2085
    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    .line 2086
    .local v8, "filterText":Landroid/text/Editable;
    if-eqz v8, :cond_5

    .line 2087
    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v1, Landroid/widget/AbsListView$SavedState;->filter:Ljava/lang/String;

    .line 2092
    .end local v7    # "textFilter":Landroid/widget/EditText;
    .end local v8    # "filterText":Landroid/text/Editable;
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

    .line 2094
    iget-object v3, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v3, :cond_7

    .line 2095
    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->clone()Landroid/util/SparseBooleanArray;

    move-result-object v3

    iput-object v3, v1, Landroid/widget/AbsListView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    .line 2097
    :cond_7
    iget-object v3, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v3, :cond_9

    .line 2098
    new-instance v3, Landroid/util/LongSparseArray;

    invoke-direct {v3}, Landroid/util/LongSparseArray;-><init>()V

    .line 2099
    .local v3, "idState":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Integer;>;"
    iget-object v4, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v4}, Landroid/util/LongSparseArray;->size()I

    move-result v4

    .line 2100
    .local v4, "count":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_3
    if-ge v7, v4, :cond_8

    .line 2101
    iget-object v8, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v8, v7}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v8

    iget-object v10, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v10, v7}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v3, v8, v9, v10}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 2100
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 2103
    .end local v7    # "i":I
    :cond_8
    iput-object v3, v1, Landroid/widget/AbsListView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    .line 2105
    .end local v3    # "idState":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Integer;>;"
    .end local v4    # "count":I
    :cond_9
    iget v3, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    iput v3, v1, Landroid/widget/AbsListView$SavedState;->checkedItemCount:I

    .line 2107
    iget-object v3, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    if-eqz v3, :cond_a

    .line 2108
    invoke-virtual {v3}, Landroid/widget/RemoteViewsAdapter;->saveRemoteViewsCache()V

    .line 2111
    :cond_a
    return-object v1
.end method

.method protected whitelist onSizeChanged(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .line 3041
    invoke-virtual {p0}, Landroid/widget/AbsListView;->handleBoundsChange()V

    .line 3042
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    if-eqz v0, :cond_0

    .line 3043
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/widget/FastScroller;->onSizeChanged(IIII)V

    goto :goto_0

    .line 3044
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mSemFastScroll:Landroid/widget/SemFastScroller;

    if-eqz v0, :cond_1

    .line 3045
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/widget/SemFastScroller;->onSizeChanged(IIII)V

    .line 3047
    :cond_1
    :goto_0
    return-void
.end method

.method public whitelist onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "nestedScrollAxes"    # I

    .line 5015
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
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .line 7074
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isTextFilterEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7075
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/widget/AbsListView;->createTextFilter(Z)V

    .line 7076
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 7077
    .local v1, "length":I
    iget-object v2, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    .line 7078
    .local v2, "showing":Z
    if-nez v2, :cond_0

    if-lez v1, :cond_0

    .line 7080
    invoke-direct {p0}, Landroid/widget/AbsListView;->showPopup()V

    .line 7081
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mFiltered:Z

    goto :goto_0

    .line 7082
    :cond_0
    if-eqz v2, :cond_1

    if-nez v1, :cond_1

    .line 7084
    invoke-direct {p0}, Landroid/widget/AbsListView;->dismissPopup()V

    .line 7085
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mFiltered:Z

    .line 7087
    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v3, v0, Landroid/widget/Filterable;

    if-eqz v3, :cond_3

    .line 7088
    check-cast v0, Landroid/widget/Filterable;

    invoke-interface {v0}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    .line 7090
    .local v0, "f":Landroid/widget/Filter;
    if-eqz v0, :cond_2

    .line 7091
    invoke-virtual {v0, p1, p0}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterListener;)V

    goto :goto_1

    .line 7093
    :cond_2
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "You cannot call onTextChanged with a non filterable adapter"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 7098
    .end local v0    # "f":Landroid/widget/Filter;
    .end local v1    # "length":I
    .end local v2    # "showing":Z
    :cond_3
    :goto_1
    return-void
.end method

.method public whitelist onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 4383
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isEnabled()Z

    move-result v0

    const-string v1, "AbsListView"

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_2

    .line 4387
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

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4389
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isClickable()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isLongClickable()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v2, v3

    :cond_1
    return v2

    .line 4392
    :cond_2
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-eqz v0, :cond_3

    .line 4393
    invoke-virtual {v0}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    .line 4396
    :cond_3
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mIsDetaching:Z

    if-nez v0, :cond_10

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_4

    goto/16 :goto_4

    .line 4407
    :cond_4
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->startNestedScroll(I)Z

    .line 4409
    iget-object v1, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    if-eqz v1, :cond_5

    invoke-virtual {v1, p1}, Landroid/widget/FastScroller;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 4410
    return v3

    .line 4411
    :cond_5
    iget-object v1, p0, Landroid/widget/AbsListView;->mSemFastScroll:Landroid/widget/SemFastScroller;

    if-eqz v1, :cond_a

    .line 4412
    invoke-virtual {v1, p1}, Landroid/widget/SemFastScroller;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 4413
    .local v1, "intercepted":Z
    iget-object v4, p0, Landroid/widget/AbsListView;->mSemFastScrollEventListener:Landroid/widget/AbsListView$SemFastScrollEventListener;

    if-eqz v4, :cond_8

    .line 4414
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    if-ne v4, v0, :cond_7

    :cond_6
    iget-object v0, p0, Landroid/widget/AbsListView;->mSemFastScroll:Landroid/widget/SemFastScroller;

    .line 4415
    invoke-virtual {v0}, Landroid/widget/SemFastScroller;->getEffectState()I

    move-result v0

    if-ne v0, v3, :cond_7

    .line 4416
    iget-object v0, p0, Landroid/widget/AbsListView;->mSemFastScrollEventListener:Landroid/widget/AbsListView$SemFastScrollEventListener;

    iget-object v4, p0, Landroid/widget/AbsListView;->mSemFastScroll:Landroid/widget/SemFastScroller;

    invoke-virtual {v4}, Landroid/widget/SemFastScroller;->getScrollY()F

    move-result v4

    invoke-interface {v0, v4}, Landroid/widget/AbsListView$SemFastScrollEventListener;->onPressed(F)V

    goto :goto_0

    .line 4418
    :cond_7
    iget-object v0, p0, Landroid/widget/AbsListView;->mSemFastScrollEventListener:Landroid/widget/AbsListView$SemFastScrollEventListener;

    iget-object v4, p0, Landroid/widget/AbsListView;->mSemFastScroll:Landroid/widget/SemFastScroller;

    invoke-virtual {v4}, Landroid/widget/SemFastScroller;->getScrollY()F

    move-result v4

    invoke-interface {v0, v4}, Landroid/widget/AbsListView$SemFastScrollEventListener;->onReleased(F)V

    .line 4421
    :cond_8
    :goto_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mSemFastScroll:Landroid/widget/SemFastScroller;

    invoke-virtual {v0}, Landroid/widget/SemFastScroller;->getEffectState()I

    move-result v0

    if-ne v0, v3, :cond_9

    move v0, v3

    goto :goto_1

    :cond_9
    move v0, v2

    :goto_1
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mSemFastScrollEffectState:Z

    .line 4423
    if-eqz v1, :cond_a

    .line 4424
    return v3

    .line 4428
    .end local v1    # "intercepted":Z
    :cond_a
    invoke-direct {p0}, Landroid/widget/AbsListView;->initVelocityTrackerIfNotExists()V

    .line 4429
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 4431
    .local v0, "vtev":Landroid/view/MotionEvent;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    .line 4432
    .local v1, "actionMasked":I
    if-nez v1, :cond_b

    .line 4433
    iput v2, p0, Landroid/widget/AbsListView;->mNestedYOffset:I

    .line 4435
    :cond_b
    const/4 v4, 0x0

    iget v5, p0, Landroid/widget/AbsListView;->mNestedYOffset:I

    int-to-float v5, v5

    invoke-virtual {v0, v4, v5}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 4436
    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_3

    .line 4458
    :pswitch_1
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 4459
    iget v2, p0, Landroid/widget/AbsListView;->mMotionX:I

    .line 4460
    .local v2, "x":I
    iget v4, p0, Landroid/widget/AbsListView;->mMotionY:I

    .line 4461
    .local v4, "y":I
    invoke-virtual {p0, v2, v4}, Landroid/widget/AbsListView;->pointToPosition(II)I

    move-result v5

    .line 4462
    .local v5, "motionPosition":I
    if-ltz v5, :cond_d

    .line 4464
    iget v6, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int v6, v5, v6

    invoke-virtual {p0, v6}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 4465
    .local v6, "child":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v7

    iput v7, p0, Landroid/widget/AbsListView;->mMotionViewOriginalTop:I

    .line 4466
    iput v5, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 4468
    iget-object v7, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v7, :cond_c

    invoke-interface {v7, v5}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v7

    if-eqz v7, :cond_c

    invoke-virtual {v6}, Landroid/view/View;->hasFocusable()Z

    move-result v7

    if-nez v7, :cond_c

    .line 4469
    invoke-virtual {p0}, Landroid/widget/AbsListView;->layoutChildren()V

    .line 4472
    .end local v6    # "child":Landroid/view/View;
    :cond_c
    goto :goto_2

    .line 4474
    :cond_d
    invoke-virtual {p0}, Landroid/widget/AbsListView;->layoutChildren()V

    .line 4477
    :goto_2
    iput v4, p0, Landroid/widget/AbsListView;->mLastY:I

    .line 4479
    iget v6, p0, Landroid/widget/AbsListView;->mPointerCount:I

    sub-int/2addr v6, v3

    iput v6, p0, Landroid/widget/AbsListView;->mPointerCount:I

    .line 4481
    goto :goto_3

    .line 4486
    .end local v2    # "x":I
    .end local v4    # "y":I
    .end local v5    # "motionPosition":I
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v4

    .line 4487
    .local v4, "index":I
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    .line 4488
    .local v5, "id":I
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    float-to-int v6, v6

    .line 4489
    .local v6, "x":I
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    float-to-int v7, v7

    .line 4490
    .local v7, "y":I
    iput v2, p0, Landroid/widget/AbsListView;->mMotionCorrection:I

    .line 4491
    iput v5, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 4492
    iput v6, p0, Landroid/widget/AbsListView;->mMotionX:I

    .line 4493
    iput v7, p0, Landroid/widget/AbsListView;->mMotionY:I

    .line 4494
    invoke-virtual {p0, v6, v7}, Landroid/widget/AbsListView;->pointToPosition(II)I

    move-result v2

    .line 4495
    .local v2, "motionPosition":I
    if-ltz v2, :cond_e

    .line 4497
    iget v8, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int v8, v2, v8

    invoke-virtual {p0, v8}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 4498
    .local v8, "child":Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v9

    iput v9, p0, Landroid/widget/AbsListView;->mMotionViewOriginalTop:I

    .line 4499
    iput v2, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 4501
    .end local v8    # "child":Landroid/view/View;
    :cond_e
    iput v7, p0, Landroid/widget/AbsListView;->mLastY:I

    .line 4503
    iget v8, p0, Landroid/widget/AbsListView;->mPointerCount:I

    add-int/2addr v8, v3

    iput v8, p0, Landroid/widget/AbsListView;->mPointerCount:I

    .line 4505
    goto :goto_3

    .line 4453
    .end local v2    # "motionPosition":I
    .end local v4    # "index":I
    .end local v5    # "id":I
    .end local v6    # "x":I
    .end local v7    # "y":I
    :pswitch_3
    invoke-direct {p0}, Landroid/widget/AbsListView;->onTouchCancel()V

    .line 4454
    goto :goto_3

    .line 4443
    :pswitch_4
    invoke-direct {p0, p1, v0}, Landroid/widget/AbsListView;->onTouchMove(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)V

    .line 4444
    goto :goto_3

    .line 4448
    :pswitch_5
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->onTouchUp(Landroid/view/MotionEvent;)V

    .line 4449
    goto :goto_3

    .line 4438
    :pswitch_6
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->onTouchDown(Landroid/view/MotionEvent;)V

    .line 4439
    nop

    .line 4509
    :goto_3
    iget-object v2, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v2, :cond_f

    .line 4510
    invoke-virtual {v2, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 4512
    :cond_f
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 4513
    return v3

    .line 4402
    .end local v0    # "vtev":Landroid/view/MotionEvent;
    .end local v1    # "actionMasked":I
    :cond_10
    :goto_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onTouchEvent() mIsDetaching : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v3, p0, Landroid/widget/AbsListView;->mIsDetaching:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", isAttachedToWindow() : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isAttachedToWindow()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4404
    return v2

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
    .param p1, "isInTouchMode"    # Z

    .line 4342
    if-eqz p1, :cond_1

    .line 4344
    invoke-virtual {p0}, Landroid/widget/AbsListView;->hideSelector()V

    .line 4348
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 4351
    invoke-virtual {p0}, Landroid/widget/AbsListView;->layoutChildren()V

    .line 4353
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsListView;->updateSelectorState()V

    goto :goto_0

    .line 4355
    :cond_1
    iget v0, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4356
    .local v0, "touchMode":I
    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    const/4 v1, 0x6

    if-ne v0, v1, :cond_5

    .line 4357
    :cond_2
    iget-object v1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-eqz v1, :cond_3

    .line 4358
    invoke-virtual {v1}, Landroid/widget/AbsListView$FlingRunnable;->endFling()V

    .line 4360
    :cond_3
    iget-object v1, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-eqz v1, :cond_4

    .line 4361
    invoke-virtual {v1}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    .line 4364
    :cond_4
    iget v1, p0, Landroid/widget/AbsListView;->mScrollY:I

    if-eqz v1, :cond_5

    .line 4365
    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/AbsListView;->mScrollY:I

    .line 4366
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidateParentCaches()V

    .line 4367
    invoke-direct {p0}, Landroid/widget/AbsListView;->finishGlows()V

    .line 4368
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidate()V

    .line 4372
    .end local v0    # "touchMode":I
    :cond_5
    :goto_0
    return-void
.end method

.method protected whitelist onVisibilityChanged(Landroid/view/View;I)V
    .locals 1
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .line 11324
    invoke-super {p0, p1, p2}, Landroid/widget/AdapterView;->onVisibilityChanged(Landroid/view/View;I)V

    .line 11325
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/AbsListView;->mHoverPosition:I

    .line 11327
    if-nez p2, :cond_0

    goto :goto_0

    .line 11329
    :cond_0
    invoke-direct {p0}, Landroid/widget/AbsListView;->releaseAllBoosters()V

    .line 11331
    :goto_0
    return-void
.end method

.method public whitelist onWindowFocusChanged(Z)V
    .locals 5
    .param p1, "hasWindowFocus"    # Z

    .line 3418
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onWindowFocusChanged(Z)V

    .line 3420
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isInTouchMode()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 3422
    .local v0, "touchMode":I
    const/4 v2, 0x0

    if-nez p1, :cond_2

    .line 3423
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->setChildrenDrawingCacheEnabled(Z)V

    .line 3424
    iget-object v3, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-eqz v3, :cond_1

    .line 3425
    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3428
    iget-object v3, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-static {v3, v2}, Landroid/widget/AbsListView$FlingRunnable;->-$$Nest$fputmSuppressIdleStateChangeCall(Landroid/widget/AbsListView$FlingRunnable;Z)V

    .line 3429
    iget-object v3, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {v3}, Landroid/widget/AbsListView$FlingRunnable;->endFling()V

    .line 3430
    iget-object v3, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-eqz v3, :cond_0

    .line 3431
    invoke-virtual {v3}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    .line 3433
    :cond_0
    iget v3, p0, Landroid/widget/AbsListView;->mScrollY:I

    if-eqz v3, :cond_1

    .line 3434
    iput v2, p0, Landroid/widget/AbsListView;->mScrollY:I

    .line 3435
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidateParentCaches()V

    .line 3436
    invoke-direct {p0}, Landroid/widget/AbsListView;->finishGlows()V

    .line 3437
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidate()V

    .line 3441
    :cond_1
    invoke-direct {p0}, Landroid/widget/AbsListView;->dismissPopup()V

    .line 3443
    if-ne v0, v1, :cond_5

    .line 3445
    iget v2, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    iput v2, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    goto :goto_0

    .line 3448
    :cond_2
    iget-boolean v3, p0, Landroid/widget/AbsListView;->mFiltered:Z

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Landroid/widget/AbsListView;->mPopupHidden:Z

    if-nez v3, :cond_3

    .line 3450
    invoke-direct {p0}, Landroid/widget/AbsListView;->showPopup()V

    .line 3454
    :cond_3
    iget v3, p0, Landroid/widget/AbsListView;->mLastTouchMode:I

    if-eq v0, v3, :cond_5

    const/4 v4, -0x1

    if-eq v3, v4, :cond_5

    .line 3456
    if-ne v0, v1, :cond_4

    .line 3458
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resurrectSelection()Z

    goto :goto_0

    .line 3462
    :cond_4
    invoke-virtual {p0}, Landroid/widget/AbsListView;->hideSelector()V

    .line 3463
    iput v2, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 3464
    invoke-virtual {p0}, Landroid/widget/AbsListView;->layoutChildren()V

    .line 3469
    :cond_5
    :goto_0
    iput v0, p0, Landroid/widget/AbsListView;->mLastTouchMode:I

    .line 3472
    if-nez p1, :cond_6

    .line 3473
    invoke-direct {p0}, Landroid/widget/AbsListView;->releaseAllBoosters()V

    .line 3478
    :cond_6
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->semAutoHide(I)V

    .line 3480
    return-void
.end method

.method public greylist-max-o performAccessibilityActionInternal(ILandroid/os/Bundle;)Z
    .locals 7
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;

    .line 1703
    invoke-super {p0, p1, p2}, Landroid/widget/AdapterView;->performAccessibilityActionInternal(ILandroid/os/Bundle;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1704
    return v1

    .line 1708
    :cond_0
    const/4 v0, 0x7

    .line 1709
    .local v0, "autoScrollSpeedLevel":I
    if-eqz p2, :cond_1

    .line 1710
    const/16 v2, 0xf

    const-string v3, "auto_scroll_speed_level_count"

    invoke-virtual {p2, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 1711
    .local v2, "autoScrollSpeedLevelCount":I
    const/16 v3, 0x78c

    add-int/lit8 v4, v2, -0x1

    div-int/2addr v3, v4

    iput v3, p0, Landroid/widget/AbsListView;->mAutoscrollDurationGap:I

    .line 1713
    const/16 v3, 0x8

    const-string v4, "auto_scroll_speed_level"

    invoke-virtual {p2, v4, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .line 1716
    .end local v2    # "autoScrollSpeedLevelCount":I
    :cond_1
    const/16 v2, 0xc8

    const/16 v3, 0x7f0

    const-string v4, "AbsListView"

    const/4 v5, 0x0

    sparse-switch p1, :sswitch_data_0

    .line 1782
    return v5

    .line 1754
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

    .line 1755
    invoke-direct {p0}, Landroid/widget/AbsListView;->canScrollDown()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1756
    iget v2, p0, Landroid/widget/AbsListView;->mAutoscrollDuration:I

    if-ge v2, v3, :cond_2

    .line 1757
    iget v3, p0, Landroid/widget/AbsListView;->mAutoscrollDurationGap:I

    add-int/2addr v2, v3

    iput v2, p0, Landroid/widget/AbsListView;->mAutoscrollDuration:I

    .line 1759
    :cond_2
    iget v2, p0, Landroid/widget/AbsListView;->mAutoscrollDuration:I

    invoke-direct {p0, v2}, Landroid/widget/AbsListView;->autoScrollWithDuration(I)V

    .line 1760
    return v1

    .line 1763
    :cond_3
    return v5

    .line 1744
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

    .line 1745
    invoke-direct {p0}, Landroid/widget/AbsListView;->canScrollDown()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1746
    iget v2, p0, Landroid/widget/AbsListView;->mAutoscrollDuration:I

    const/16 v3, 0x64

    if-le v2, v3, :cond_4

    .line 1747
    iget v3, p0, Landroid/widget/AbsListView;->mAutoscrollDurationGap:I

    sub-int/2addr v2, v3

    iput v2, p0, Landroid/widget/AbsListView;->mAutoscrollDuration:I

    .line 1748
    :cond_4
    iget v2, p0, Landroid/widget/AbsListView;->mAutoscrollDuration:I

    invoke-direct {p0, v2}, Landroid/widget/AbsListView;->autoScrollWithDuration(I)V

    .line 1749
    return v1

    .line 1752
    :cond_5
    return v5

    .line 1765
    :sswitch_2
    const-string v2, "SEM_ACTION_AUTOSCROLL_TOP"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1766
    invoke-direct {p0}, Landroid/widget/AbsListView;->canScrollUp()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1767
    invoke-virtual {p0, v5, v5, v5}, Landroid/widget/AbsListView;->smoothScrollToPositionFromTop(III)V

    .line 1768
    return v1

    .line 1771
    :cond_6
    return v5

    .line 1773
    :sswitch_3
    const-string v2, "SEM_ACTION_AUTOSCROLL_OFF"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1774
    invoke-virtual {p0, v5, v5}, Landroid/widget/AbsListView;->smoothScrollBy(II)V

    .line 1775
    iget-object v2, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-eqz v2, :cond_7

    .line 1776
    invoke-virtual {v2}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    .line 1778
    :cond_7
    return v1

    .line 1735
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

    .line 1736
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-direct {p0}, Landroid/widget/AbsListView;->canScrollDown()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1737
    iget v2, p0, Landroid/widget/AbsListView;->mAutoscrollDurationGap:I

    mul-int/2addr v2, v0

    sub-int/2addr v3, v2

    iput v3, p0, Landroid/widget/AbsListView;->mAutoscrollDuration:I

    .line 1738
    invoke-direct {p0, v3}, Landroid/widget/AbsListView;->autoScrollWithDuration(I)V

    .line 1739
    return v1

    .line 1742
    :cond_8
    return v5

    .line 1727
    :sswitch_5
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-direct {p0}, Landroid/widget/AbsListView;->canScrollUp()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1728
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v3

    iget-object v4, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    .line 1729
    .local v3, "viewportHeight":I
    neg-int v4, v3

    invoke-virtual {p0, v4, v2}, Landroid/widget/AbsListView;->smoothScrollBy(II)V

    .line 1730
    return v1

    .line 1732
    .end local v3    # "viewportHeight":I
    :cond_9
    return v5

    .line 1719
    :sswitch_6
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-direct {p0}, Landroid/widget/AbsListView;->canScrollDown()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getCount()I

    move-result v4

    sub-int/2addr v4, v1

    if-eq v3, v4, :cond_b

    :cond_a
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getCount()I

    move-result v4

    sub-int/2addr v4, v1

    if-ge v3, v4, :cond_c

    .line 1720
    :cond_b
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v3

    iget-object v4, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    .line 1721
    .restart local v3    # "viewportHeight":I
    invoke-virtual {p0, v3, v2}, Landroid/widget/AbsListView;->smoothScrollBy(II)V

    .line 1722
    return v1

    .line 1724
    .end local v3    # "viewportHeight":I
    :cond_c
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
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .line 1236
    move-object v0, p0

    move v7, p2

    const/4 v1, 0x0

    .line 1237
    .local v1, "handled":Z
    const/4 v8, 0x1

    .line 1239
    .local v8, "dispatchItemClick":Z
    iget v2, v0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-eqz v2, :cond_c

    .line 1240
    const/4 v9, 0x1

    .line 1241
    .end local v1    # "handled":Z
    .local v9, "handled":Z
    const/4 v10, 0x0

    .line 1243
    .local v10, "checkedStateChanged":Z
    const/4 v1, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v2, v1, :cond_6

    const/4 v1, 0x3

    if-ne v2, v1, :cond_0

    iget-object v1, v0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_0

    goto :goto_2

    .line 1265
    :cond_0
    if-ne v2, v4, :cond_5

    .line 1266
    iget-object v1, v0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p2, v3}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v1

    xor-int/2addr v1, v4

    .line 1267
    .local v1, "checked":Z
    if-eqz v1, :cond_2

    .line 1268
    iget-object v2, v0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->clear()V

    .line 1269
    iget-object v2, v0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p2, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1270
    iget-object v2, v0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v2, :cond_1

    iget-object v2, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1271
    iget-object v2, v0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v2}, Landroid/util/LongSparseArray;->clear()V

    .line 1272
    iget-object v2, v0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v3, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v5, v6, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1274
    :cond_1
    iput v4, v0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    goto :goto_0

    .line 1275
    :cond_2
    iget-object v2, v0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, v0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v3}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1276
    :cond_3
    iput v3, v0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    .line 1278
    :cond_4
    :goto_0
    const/4 v10, 0x1

    goto :goto_5

    .line 1265
    .end local v1    # "checked":Z
    :cond_5
    :goto_1
    goto :goto_5

    .line 1245
    :cond_6
    :goto_2
    iget-object v1, v0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p2, v3}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v1

    xor-int/2addr v1, v4

    move v11, v1

    .line 1246
    .local v11, "checked":Z
    iget-object v1, v0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p2, v11}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1247
    iget-object v1, v0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v1, :cond_8

    iget-object v1, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1248
    if-eqz v11, :cond_7

    .line 1249
    iget-object v1, v0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v2, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_3

    .line 1251
    :cond_7
    iget-object v1, v0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v2, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/util/LongSparseArray;->delete(J)V

    .line 1254
    :cond_8
    :goto_3
    if-eqz v11, :cond_9

    .line 1255
    iget v1, v0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    add-int/2addr v1, v4

    iput v1, v0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    goto :goto_4

    .line 1257
    :cond_9
    iget v1, v0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    sub-int/2addr v1, v4

    iput v1, v0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    .line 1259
    :goto_4
    iget-object v2, v0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v2, :cond_a

    .line 1260
    iget-object v1, v0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    move v3, p2

    move-wide v4, p3

    move v6, v11

    invoke-virtual/range {v1 .. v6}, Landroid/widget/AbsListView$MultiChoiceModeWrapper;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    .line 1262
    const/4 v8, 0x0

    .line 1264
    :cond_a
    const/4 v10, 0x1

    .end local v11    # "checked":Z
    goto :goto_1

    .line 1281
    :goto_5
    if-eqz v10, :cond_b

    .line 1282
    invoke-direct {p0}, Landroid/widget/AbsListView;->updateOnScreenCheckedViews()V

    .line 1286
    .end local v10    # "checkedStateChanged":Z
    :cond_b
    move v1, v9

    .end local v9    # "handled":Z
    .local v1, "handled":Z
    :cond_c
    if-eqz v8, :cond_d

    .line 1287
    invoke-super/range {p0 .. p4}, Landroid/widget/AdapterView;->performItemClick(Landroid/view/View;IJ)Z

    move-result v2

    or-int/2addr v1, v2

    .line 1290
    :cond_d
    return v1
.end method

.method greylist performLongPress(Landroid/view/View;IJ)Z
    .locals 7
    .param p1, "child"    # Landroid/view/View;
    .param p2, "longPressPosition"    # I
    .param p3, "longPressId"    # J

    .line 3681
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
    .param p1, "child"    # Landroid/view/View;
    .param p2, "longPressPosition"    # I
    .param p3, "longPressId"    # J
    .param p5, "x"    # F
    .param p6, "y"    # F

    .line 3693
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-ne v0, v1, :cond_2

    .line 3694
    iget-object v0, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    .line 3695
    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_1

    .line 3696
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-ne v0, v1, :cond_0

    .line 3697
    iput-boolean v2, p0, Landroid/widget/AbsListView;->mIsDragBlockEnabled:Z

    .line 3699
    :cond_0
    invoke-virtual {p0, p2, v2}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    .line 3700
    invoke-static {v2}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->performHapticFeedback(I)Z

    .line 3702
    :cond_1
    return v2

    .line 3705
    :cond_2
    const/4 v0, 0x0

    .line 3706
    .local v0, "handled":Z
    iget-object v1, p0, Landroid/widget/AbsListView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    if-eqz v1, :cond_3

    .line 3707
    iget-object v3, p0, Landroid/widget/AbsListView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    move-object v4, p0

    move-object v5, p1

    move v6, p2

    move-wide v7, p3

    invoke-interface/range {v3 .. v8}, Landroid/widget/AdapterView$OnItemLongClickListener;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result v0

    .line 3710
    :cond_3
    if-nez v0, :cond_5

    .line 3711
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/AbsListView;->createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/AbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 3712
    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v3, p5, v1

    if-eqz v3, :cond_4

    cmpl-float v1, p6, v1

    if-eqz v1, :cond_4

    .line 3713
    invoke-super {p0, p0, p5, p6}, Landroid/widget/AdapterView;->showContextMenuForChild(Landroid/view/View;FF)Z

    move-result v0

    goto :goto_0

    .line 3715
    :cond_4
    invoke-super {p0, p0}, Landroid/widget/AdapterView;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v0

    .line 3718
    :cond_5
    :goto_0
    if-eqz v0, :cond_6

    .line 3719
    invoke-direct {p0}, Landroid/widget/AbsListView;->semGetEnableVibrationAtLongPress()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 3720
    invoke-static {v2}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->performHapticFeedback(I)Z

    .line 3723
    :cond_6
    return v0
.end method

.method public whitelist pointToPosition(II)I
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 3933
    iget-object v0, p0, Landroid/widget/AbsListView;->mTouchFrame:Landroid/graphics/Rect;

    .line 3934
    .local v0, "frame":Landroid/graphics/Rect;
    if-nez v0, :cond_0

    .line 3935
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/widget/AbsListView;->mTouchFrame:Landroid/graphics/Rect;

    .line 3936
    iget-object v0, p0, Landroid/widget/AbsListView;->mTouchFrame:Landroid/graphics/Rect;

    .line 3939
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

    .line 3940
    if-lez v1, :cond_2

    move-object v1, p0

    check-cast v1, Landroid/widget/ListView;

    iget-object v1, v1, Landroid/widget/ListView;->mDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    :cond_2
    iput-boolean v2, p0, Landroid/widget/AbsListView;->mHasDivier:Z

    .line 3943
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    .line 3944
    .local v1, "count":I
    add-int/lit8 v2, v1, -0x1

    .local v2, "i":I
    :goto_1
    if-ltz v2, :cond_5

    .line 3945
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 3946
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_4

    .line 3947
    invoke-virtual {v3, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 3948
    iget-boolean v4, p0, Landroid/widget/AbsListView;->mHasDivier:Z

    if-eqz v4, :cond_3

    .line 3949
    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    iget v5, p0, Landroid/widget/AbsListView;->mHasDividerHeight:I

    add-int/2addr v4, v5

    iput v4, v0, Landroid/graphics/Rect;->bottom:I

    .line 3952
    :cond_3
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 3953
    iget v4, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    add-int/2addr v4, v2

    return v4

    .line 3944
    .end local v3    # "child":Landroid/view/View;
    :cond_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 3957
    .end local v2    # "i":I
    :cond_5
    const/4 v2, -0x1

    return v2
.end method

.method public whitelist pointToRowId(II)J
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 3970
    invoke-virtual {p0, p1, p2}, Landroid/widget/AbsListView;->pointToPosition(II)I

    move-result v0

    .line 3971
    .local v0, "position":I
    if-ltz v0, :cond_0

    .line 3972
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, v0}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v1

    return-wide v1

    .line 3974
    :cond_0
    const-wide/high16 v1, -0x8000000000000000L

    return-wide v1
.end method

.method greylist-max-o positionSelector(ILandroid/view/View;)V
    .locals 6
    .param p1, "position"    # I
    .param p2, "sel"    # Landroid/view/View;

    .line 2863
    const/4 v3, 0x0

    const/high16 v4, -0x40800000    # -1.0f

    const/high16 v5, -0x40800000    # -1.0f

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/AbsListView;->positionSelector(ILandroid/view/View;ZFF)V

    .line 2864
    return-void
.end method

.method greylist-max-o positionSelectorLikeFocus(ILandroid/view/View;)V
    .locals 9
    .param p1, "position"    # I
    .param p2, "sel"    # Landroid/view/View;

    .line 2852
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/widget/AbsListView;->mSelectorPosition:I

    if-eq v0, p1, :cond_0

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 2853
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 2854
    .local v0, "bounds":Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v7

    .line 2855
    .local v7, "x":F
    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v8

    .line 2856
    .local v8, "y":F
    const/4 v4, 0x1

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v5, v7

    move v6, v8

    invoke-direct/range {v1 .. v6}, Landroid/widget/AbsListView;->positionSelector(ILandroid/view/View;ZFF)V

    .line 2857
    .end local v0    # "bounds":Landroid/graphics/Rect;
    .end local v7    # "x":F
    .end local v8    # "y":F
    goto :goto_0

    .line 2858
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/widget/AbsListView;->positionSelector(ILandroid/view/View;)V

    .line 2860
    :goto_0
    return-void
.end method

.method greylist-max-o positionSelectorLikeTouch(ILandroid/view/View;FF)V
    .locals 6
    .param p1, "position"    # I
    .param p2, "sel"    # Landroid/view/View;
    .param p3, "x"    # F
    .param p4, "y"    # F

    .line 2845
    const/4 v3, 0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/widget/AbsListView;->positionSelector(ILandroid/view/View;ZFF)V

    .line 2846
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

    .line 7213
    .local p1, "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 7214
    .local v0, "childCount":I
    iget-object v1, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-static {v1}, Landroid/widget/AbsListView$RecycleBin;->-$$Nest$fgetmRecyclerListener(Landroid/widget/AbsListView$RecycleBin;)Landroid/widget/AbsListView$RecyclerListener;

    move-result-object v1

    .line 7217
    .local v1, "listener":Landroid/widget/AbsListView$RecyclerListener;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 7218
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 7219
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/AbsListView$LayoutParams;

    .line 7221
    .local v4, "lp":Landroid/widget/AbsListView$LayoutParams;
    if-eqz v4, :cond_0

    iget-object v5, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    iget v6, v4, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    invoke-virtual {v5, v6}, Landroid/widget/AbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 7222
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7223
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 7224
    invoke-virtual {v3}, Landroid/view/View;->resetSubtreeAutofillIds()V

    .line 7225
    if-eqz v1, :cond_0

    .line 7227
    invoke-interface {v1, v3}, Landroid/widget/AbsListView$RecyclerListener;->onMovedToScrapHeap(Landroid/view/View;)V

    .line 7217
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "lp":Landroid/widget/AbsListView$LayoutParams;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7231
    .end local v2    # "i":I
    :cond_1
    iget-object v2, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v2, p1}, Landroid/widget/AbsListView$RecycleBin;->reclaimScrapViews(Ljava/util/List;)V

    .line 7232
    invoke-virtual {p0}, Landroid/widget/AbsListView;->removeAllViewsInLayout()V

    .line 7233
    return-void
.end method

.method greylist-max-o reconcileSelectedPosition()I
    .locals 2

    .line 6206
    iget v0, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    .line 6207
    .local v0, "position":I
    if-gez v0, :cond_0

    .line 6208
    iget v0, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 6210
    :cond_0
    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 6211
    iget v1, p0, Landroid/widget/AbsListView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 6212
    return v0
.end method

.method blacklist removePendingCallbacks()V
    .locals 2

    .line 11400
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 11401
    .local v0, "handler":Landroid/os/Handler;
    if-eqz v0, :cond_0

    .line 11402
    iget-object v1, p0, Landroid/widget/AbsListView;->mPendingCheckForTap:Landroid/widget/AbsListView$CheckForTap;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 11403
    iget-object v1, p0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 11405
    :cond_0
    const/4 v1, -0x1

    iput v1, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 11406
    return-void
.end method

.method greylist-max-p reportScrollStateChange(I)V
    .locals 4
    .param p1, "newState"    # I

    .line 5317
    iget v0, p0, Landroid/widget/AbsListView;->mLastScrollState:I

    const/4 v1, 0x1

    if-eq p1, v0, :cond_6

    .line 5324
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

    .line 5325
    if-eqz p1, :cond_1

    iget v0, p0, Landroid/widget/AbsListView;->mLastScrollState:I

    if-nez v0, :cond_1

    .line 5327
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mSemEnableGoToTop:Z

    if-eqz v0, :cond_0

    .line 5328
    iget-object v0, p0, Landroid/widget/AbsListView;->mSemAutoHide:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 5329
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->semSetupGoToTop(I)V

    .line 5332
    :cond_0
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    if-nez v0, :cond_1

    .line 5333
    invoke-static {v1}, Lcom/samsung/android/os/SemPerfManager;->onScrollEvent(Z)V

    .line 5334
    iput-boolean v1, p0, Landroid/widget/AbsListView;->mDVFSLockAcquired:Z

    .line 5337
    :cond_1
    if-nez p1, :cond_4

    iget v0, p0, Landroid/widget/AbsListView;->mLastScrollState:I

    if-eqz v0, :cond_4

    .line 5339
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mSemEnableGoToTop:Z

    if-eqz v0, :cond_3

    .line 5340
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mGoToToping:Z

    if-eqz v0, :cond_2

    .line 5341
    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 5342
    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    const/16 v2, 0x2710

    invoke-virtual {v0, v2}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    .line 5343
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidate()V

    .line 5345
    :cond_2
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->semAutoHide(I)V

    .line 5347
    :cond_3
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mDVFSLockAcquired:Z

    if-eqz v0, :cond_4

    .line 5348
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/samsung/android/os/SemPerfManager;->onScrollEvent(Z)V

    .line 5349
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mDVFSLockAcquired:Z

    .line 5352
    :cond_4
    if-eqz p1, :cond_5

    iget v0, p0, Landroid/widget/AbsListView;->mLastScrollState:I

    if-eqz v0, :cond_5

    .line 5353
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->semSetupGoToTop(I)V

    .line 5356
    :cond_5
    iput p1, p0, Landroid/widget/AbsListView;->mLastScrollState:I

    .line 5357
    iget-object v0, p0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_7

    .line 5358
    invoke-interface {v0, p0, p1}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    goto :goto_0

    .line 5361
    :cond_6
    if-eqz p1, :cond_7

    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    .line 5362
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_7

    .line 5363
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->semSetupGoToTop(I)V

    .line 5365
    :cond_7
    :goto_0
    return-void
.end method

.method public whitelist requestDisallowInterceptTouchEvent(Z)V
    .locals 0
    .param p1, "disallowIntercept"    # Z

    .line 5136
    if-eqz p1, :cond_0

    .line 5137
    invoke-direct {p0}, Landroid/widget/AbsListView;->recycleVelocityTracker()V

    .line 5139
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->requestDisallowInterceptTouchEvent(Z)V

    .line 5140
    return-void
.end method

.method public whitelist requestLayout()V
    .locals 1

    .line 2224
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mBlockLayoutRequests:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mInLayout:Z

    if-nez v0, :cond_0

    .line 2225
    invoke-super {p0}, Landroid/widget/AdapterView;->requestLayout()V

    .line 2227
    :cond_0
    return-void
.end method

.method greylist-max-o requestLayoutIfNecessary()V
    .locals 1

    .line 1916
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 1917
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resetList()V

    .line 1918
    invoke-virtual {p0}, Landroid/widget/AbsListView;->requestLayout()V

    .line 1919
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidate()V

    .line 1921
    :cond_0
    return-void
.end method

.method greylist-max-o resetList()V
    .locals 4

    .line 2233
    invoke-virtual {p0}, Landroid/widget/AbsListView;->removeAllViewsInLayout()V

    .line 2234
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    .line 2235
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mDataChanged:Z

    .line 2236
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/widget/AbsListView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    .line 2237
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mNeedSync:Z

    .line 2238
    iput-object v1, p0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    .line 2239
    const/4 v1, -0x1

    iput v1, p0, Landroid/widget/AbsListView;->mOldSelectedPosition:I

    .line 2240
    const-wide/high16 v2, -0x8000000000000000L

    iput-wide v2, p0, Landroid/widget/AbsListView;->mOldSelectedRowId:J

    .line 2241
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->setSelectedPositionInt(I)V

    .line 2242
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->setNextSelectedPositionInt(I)V

    .line 2243
    iput v0, p0, Landroid/widget/AbsListView;->mSelectedTop:I

    .line 2244
    iput v1, p0, Landroid/widget/AbsListView;->mSelectorPosition:I

    .line 2245
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 2246
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidate()V

    .line 2247
    return-void
.end method

.method public blacklist resetPressItemListArray()V
    .locals 1

    .line 9388
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/AbsListView;->mSemPressItemListArray:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    goto :goto_0

    .line 9392
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 9393
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidate()V

    .line 9394
    return-void

    .line 9389
    :cond_1
    :goto_0
    return-void
.end method

.method greylist-max-o resurrectSelection()Z
    .locals 16

    .line 6278
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    .line 6280
    .local v1, "childCount":I
    const/4 v2, 0x0

    if-gtz v1, :cond_0

    .line 6281
    return v2

    .line 6284
    :cond_0
    const/4 v3, 0x0

    .line 6286
    .local v3, "selectedTop":I
    iget-object v4, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    .line 6287
    .local v4, "childrenTop":I
    iget v5, v0, Landroid/widget/AbsListView;->mBottom:I

    iget v6, v0, Landroid/widget/AbsListView;->mTop:I

    sub-int/2addr v5, v6

    iget-object v6, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v6

    .line 6288
    .local v5, "childrenBottom":I
    iget v6, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    .line 6289
    .local v6, "firstPosition":I
    iget v7, v0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 6290
    .local v7, "toPosition":I
    const/4 v8, 0x1

    .line 6292
    .local v8, "down":Z
    const/4 v9, 0x1

    if-lt v7, v6, :cond_3

    add-int v10, v6, v1

    if-ge v7, v10, :cond_3

    .line 6293
    move v10, v7

    .line 6295
    .local v10, "selectedPos":I
    iget v11, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int v11, v10, v11

    invoke-virtual {v0, v11}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 6296
    .local v11, "selected":Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v3

    .line 6297
    invoke-virtual {v11}, Landroid/view/View;->getBottom()I

    move-result v12

    .line 6300
    .local v12, "selectedBottom":I
    if-ge v3, v4, :cond_1

    .line 6301
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getVerticalFadingEdgeLength()I

    move-result v13

    add-int v3, v4, v13

    goto :goto_0

    .line 6302
    :cond_1
    if-le v12, v5, :cond_2

    .line 6303
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    sub-int v13, v5, v13

    .line 6304
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getVerticalFadingEdgeLength()I

    move-result v14

    sub-int v3, v13, v14

    .line 6306
    .end local v11    # "selected":Landroid/view/View;
    .end local v12    # "selectedBottom":I
    :cond_2
    :goto_0
    goto :goto_4

    .line 6307
    .end local v10    # "selectedPos":I
    :cond_3
    if-ge v7, v6, :cond_8

    .line 6309
    move v10, v6

    .line 6310
    .restart local v10    # "selectedPos":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    if-ge v11, v1, :cond_7

    .line 6311
    invoke-virtual {v0, v11}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 6312
    .local v12, "v":Landroid/view/View;
    invoke-virtual {v12}, Landroid/view/View;->getTop()I

    move-result v13

    .line 6314
    .local v13, "top":I
    if-nez v11, :cond_5

    .line 6316
    move v3, v13

    .line 6318
    if-gtz v6, :cond_4

    if-ge v13, v4, :cond_5

    .line 6321
    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getVerticalFadingEdgeLength()I

    move-result v14

    add-int/2addr v4, v14

    .line 6324
    :cond_5
    if-lt v13, v4, :cond_6

    .line 6326
    add-int v10, v6, v11

    .line 6327
    move v3, v13

    .line 6328
    goto :goto_2

    .line 6310
    .end local v12    # "v":Landroid/view/View;
    .end local v13    # "top":I
    :cond_6
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .end local v11    # "i":I
    :cond_7
    :goto_2
    goto :goto_4

    .line 6332
    .end local v10    # "selectedPos":I
    :cond_8
    iget v10, v0, Landroid/widget/AbsListView;->mItemCount:I

    .line 6333
    .local v10, "itemCount":I
    const/4 v8, 0x0

    .line 6334
    add-int v11, v6, v1

    sub-int/2addr v11, v9

    .line 6336
    .local v11, "selectedPos":I
    add-int/lit8 v12, v1, -0x1

    .local v12, "i":I
    :goto_3
    if-ltz v12, :cond_c

    .line 6337
    invoke-virtual {v0, v12}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 6338
    .local v13, "v":Landroid/view/View;
    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v14

    .line 6339
    .local v14, "top":I
    invoke-virtual {v13}, Landroid/view/View;->getBottom()I

    move-result v15

    .line 6341
    .local v15, "bottom":I
    add-int/lit8 v9, v1, -0x1

    if-ne v12, v9, :cond_a

    .line 6342
    move v3, v14

    .line 6343
    add-int v9, v6, v1

    if-lt v9, v10, :cond_9

    if-le v15, v5, :cond_a

    .line 6344
    :cond_9
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getVerticalFadingEdgeLength()I

    move-result v9

    sub-int/2addr v5, v9

    .line 6348
    :cond_a
    if-gt v15, v5, :cond_b

    .line 6349
    add-int v9, v6, v12

    .line 6350
    .end local v11    # "selectedPos":I
    .local v9, "selectedPos":I
    move v3, v14

    .line 6351
    move v10, v9

    goto :goto_4

    .line 6336
    .end local v9    # "selectedPos":I
    .end local v13    # "v":Landroid/view/View;
    .end local v14    # "top":I
    .end local v15    # "bottom":I
    .restart local v11    # "selectedPos":I
    :cond_b
    add-int/lit8 v12, v12, -0x1

    const/4 v9, 0x1

    goto :goto_3

    :cond_c
    move v10, v11

    .line 6357
    .end local v11    # "selectedPos":I
    .end local v12    # "i":I
    .local v10, "selectedPos":I
    :goto_4
    const/4 v9, -0x1

    iput v9, v0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 6358
    iget-object v11, v0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {v0, v11}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 6359
    iget-object v11, v0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-eqz v11, :cond_d

    .line 6360
    invoke-virtual {v11}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    .line 6362
    :cond_d
    iput v9, v0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 6363
    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->clearScrollingCache()V

    .line 6364
    iput v3, v0, Landroid/widget/AbsListView;->mSpecificTop:I

    .line 6365
    invoke-virtual {v0, v10, v8}, Landroid/widget/AbsListView;->lookForSelectablePosition(IZ)I

    move-result v9

    .line 6366
    .end local v10    # "selectedPos":I
    .restart local v9    # "selectedPos":I
    if-lt v9, v6, :cond_e

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v10

    if-gt v9, v10, :cond_e

    .line 6367
    const/4 v10, 0x4

    iput v10, v0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 6368
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->updateSelectorState()V

    .line 6369
    invoke-virtual {v0, v9}, Landroid/widget/AbsListView;->setSelectionInt(I)V

    .line 6370
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->invokeOnItemScrollListener()V

    goto :goto_5

    .line 6372
    :cond_e
    const/4 v9, -0x1

    .line 6374
    :goto_5
    invoke-virtual {v0, v2}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 6376
    if-ltz v9, :cond_f

    const/4 v2, 0x1

    :cond_f
    return v2
.end method

.method greylist resurrectSelectionIfNeeded()Z
    .locals 1

    .line 6257
    iget v0, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    if-gez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->resurrectSelection()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6258
    invoke-virtual {p0}, Landroid/widget/AbsListView;->updateSelectorState()V

    .line 6259
    const/4 v0, 0x1

    return v0

    .line 6261
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist scrollListBy(I)V
    .locals 2
    .param p1, "y"    # I

    .line 5924
    neg-int v0, p1

    neg-int v1, p1

    invoke-virtual {p0, v0, v1}, Landroid/widget/AbsListView;->trackMotionScroll(II)Z

    .line 5925
    return-void
.end method

.method public blacklist semAutoHide(I)V
    .locals 3
    .param p1, "when"    # I

    .line 9678
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mSemEnableGoToTop:Z

    if-nez v0, :cond_0

    .line 9679
    return-void

    .line 9681
    :cond_0
    if-nez p1, :cond_1

    .line 9682
    invoke-virtual {p0}, Landroid/widget/AbsListView;->semIsFastScrollEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 9683
    iget-object v0, p0, Landroid/widget/AbsListView;->mSemAutoHide:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 9684
    iget-object v0, p0, Landroid/widget/AbsListView;->mSemAutoHide:Ljava/lang/Runnable;

    iget v1, p0, Landroid/widget/AbsListView;->GO_TO_TOP_HIDE:I

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/AbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 9687
    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 9688
    iget-object v0, p0, Landroid/widget/AbsListView;->mSemAutoHide:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 9689
    iget-object v0, p0, Landroid/widget/AbsListView;->mSemAutoHide:Ljava/lang/Runnable;

    iget v1, p0, Landroid/widget/AbsListView;->GO_TO_TOP_HIDE:I

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/AbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 9691
    :cond_2
    :goto_0
    return-void
.end method

.method public whitelist semFinishMultiChoiceMode()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 9035
    iget-object v0, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 9036
    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 9037
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    .line 9039
    :cond_0
    return-void
.end method

.method public whitelist semForceLongPressMultiSelectionForClickableItems()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 9919
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mLongPressMultiSelectionEnabled:Z

    if-eqz v0, :cond_0

    .line 9920
    const-string v0, "AbsListView"

    const-string/jumbo v1, "requested semForceLongPressMultiSelectionForClickableItems by app"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9921
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mHasPerformedLongPress:Z

    .line 9922
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mIsLongPressMultiSelection:Z

    .line 9923
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 9925
    :cond_0
    return-void
.end method

.method protected blacklist semGetItemCount()I
    .locals 2

    .line 11234
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 11235
    .local v0, "adapter":Landroid/widget/Adapter;
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

    .line 11420
    iget v0, p0, Landroid/widget/AbsListView;->mLastScrollState:I

    return v0
.end method

.method public whitelist semIsFastScrollCustomEffectEnabled()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 9880
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mSemFastScrollCustomEffectEnabled:Z

    return v0
.end method

.method public blacklist semIsFastScrollEnabled()Z
    .locals 1

    .line 9822
    iget-object v0, p0, Landroid/widget/AbsListView;->mSemFastScroll:Landroid/widget/SemFastScroller;

    if-nez v0, :cond_0

    .line 9823
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFastScrollEnabled:Z

    return v0

    .line 9825
    :cond_0
    invoke-virtual {v0}, Landroid/widget/SemFastScroller;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public blacklist semIsFluidScrollerEnabled()Z
    .locals 1

    .line 11519
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isFastScrollEnabled()Z

    move-result v0

    return v0
.end method

.method public blacklist semIsLongPressTriggeredByKey()Z
    .locals 1

    .line 11425
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mIsLongPressTriggeredByKey:Z

    return v0
.end method

.method protected blacklist semIsShowingScrollbar()Z
    .locals 1

    .line 11222
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
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .line 11526
    const/4 v0, 0x0

    .line 11528
    .local v0, "handledNotifyKeyPress":Z
    iget-boolean v6, p0, Landroid/widget/AbsListView;->mIsShiftkeyPressed:Z

    if-eqz v6, :cond_0

    .line 11529
    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-super/range {v1 .. v6}, Landroid/widget/AdapterView;->semNotifyKeyPress(Landroid/view/View;IJZ)Z

    move-result v0

    .line 11531
    :cond_0
    return v0
.end method

.method public whitelist semPointToNearPosition(II)I
    .locals 20
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 10464
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v3

    .line 10465
    .local v3, "count":I
    move/from16 v4, p2

    .line 10466
    .local v4, "adjustY":I
    const v5, 0x7fffffff

    .line 10468
    .local v5, "oldDistanceY":I
    const/4 v6, 0x0

    .line 10470
    .local v6, "previousChildCenter":I
    add-int/lit8 v7, v3, -0x1

    .local v7, "i":I
    :goto_0
    if-ltz v7, :cond_2

    .line 10471
    invoke-virtual {v0, v7}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 10472
    .local v8, "child":Landroid/view/View;
    if-eqz v8, :cond_1

    .line 10473
    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v9

    .line 10474
    .local v9, "childTop":I
    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v10

    .line 10475
    .local v10, "childBottom":I
    add-int v11, v9, v10

    div-int/lit8 v11, v11, 0x2

    .line 10476
    .local v11, "childCenter":I
    if-ne v6, v11, :cond_0

    .line 10477
    goto :goto_1

    .line 10479
    :cond_0
    move v6, v11

    .line 10480
    sub-int v12, v2, v11

    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v12

    .line 10481
    .local v12, "newDistanceY":I
    if-ge v12, v5, :cond_2

    .line 10482
    move v5, v12

    .line 10483
    move v4, v11

    .line 10470
    .end local v8    # "child":Landroid/view/View;
    .end local v9    # "childTop":I
    .end local v10    # "childBottom":I
    .end local v11    # "childCenter":I
    .end local v12    # "newDistanceY":I
    :cond_1
    :goto_1
    add-int/lit8 v7, v7, -0x1

    goto :goto_0

    .line 10490
    .end local v7    # "i":I
    :cond_2
    const/4 v7, 0x0

    .line 10491
    .local v7, "oldDistanceFromLeft":I
    const/4 v8, 0x0

    .line 10492
    .local v8, "oldDistanceFromRight":I
    const/4 v9, 0x0

    .line 10493
    .local v9, "newDistanceFromLeft":I
    const/4 v10, 0x0

    .line 10494
    .local v10, "newDistanceFromRight":I
    const/4 v11, 0x0

    .line 10495
    .local v11, "closeIndexByLeft":I
    const/4 v12, 0x0

    .line 10497
    .local v12, "closeIndexByRight":I
    add-int/lit8 v13, v3, -0x1

    .local v13, "i":I
    :goto_2
    if-ltz v13, :cond_a

    .line 10498
    invoke-virtual {v0, v13}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    .line 10499
    .local v14, "child":Landroid/view/View;
    if-eqz v14, :cond_8

    .line 10500
    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v15

    .line 10501
    .local v15, "childTop":I
    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 10502
    .local v0, "childBottom":I
    invoke-virtual {v14}, Landroid/view/View;->getLeft()I

    move-result v16

    .line 10503
    .local v16, "childLeft":I
    invoke-virtual {v14}, Landroid/view/View;->getRight()I

    move-result v17

    .line 10505
    .local v17, "childRight":I
    move/from16 v18, v5

    .end local v5    # "oldDistanceY":I
    .local v18, "oldDistanceY":I
    add-int/lit8 v5, v3, -0x1

    if-ne v13, v5, :cond_3

    .line 10506
    add-int/lit8 v5, v3, -0x1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v19

    add-int v11, v5, v19

    .line 10507
    add-int/lit8 v5, v3, -0x1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v19

    add-int v12, v5, v19

    .line 10508
    sub-int v5, v1, v16

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v7

    .line 10509
    sub-int v5, v1, v17

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v8

    .line 10513
    :cond_3
    if-lt v4, v15, :cond_5

    if-gt v4, v0, :cond_5

    .line 10514
    sub-int v5, v1, v16

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v9

    .line 10515
    sub-int v5, v1, v17

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v10

    .line 10517
    if-gt v9, v7, :cond_4

    .line 10518
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v5

    add-int v11, v13, v5

    .line 10519
    move v7, v9

    .line 10521
    :cond_4
    if-gt v10, v8, :cond_5

    .line 10522
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v5

    add-int v12, v13, v5

    .line 10523
    move v8, v10

    .line 10526
    :cond_5
    if-gt v4, v0, :cond_6

    if-nez v13, :cond_9

    .line 10527
    :cond_6
    if-ge v7, v8, :cond_7

    .line 10528
    return v11

    .line 10530
    :cond_7
    return v12

    .line 10499
    .end local v0    # "childBottom":I
    .end local v15    # "childTop":I
    .end local v16    # "childLeft":I
    .end local v17    # "childRight":I
    .end local v18    # "oldDistanceY":I
    .restart local v5    # "oldDistanceY":I
    :cond_8
    move/from16 v18, v5

    .line 10497
    .end local v5    # "oldDistanceY":I
    .end local v14    # "child":Landroid/view/View;
    .restart local v18    # "oldDistanceY":I
    :cond_9
    add-int/lit8 v13, v13, -0x1

    move-object/from16 v0, p0

    move/from16 v5, v18

    goto :goto_2

    .end local v18    # "oldDistanceY":I
    .restart local v5    # "oldDistanceY":I
    :cond_a
    move/from16 v18, v5

    .line 10535
    .end local v5    # "oldDistanceY":I
    .end local v13    # "i":I
    .restart local v18    # "oldDistanceY":I
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

    .line 10536
    const/4 v0, -0x1

    return v0
.end method

.method public whitelist semSetClickableInMultiSelectMode(Z)V
    .locals 0
    .param p1, "clickable"    # Z

    .line 10546
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mIsSemOnClickEnabled:Z

    .line 10547
    return-void
.end method

.method public whitelist semSetCtrlKeyPressed(Z)V
    .locals 0
    .param p1, "pressed"    # Z

    .line 9935
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mIsCtrlkeyPressed:Z

    .line 9936
    return-void
.end method

.method public blacklist semSetCustomMultiChoiceModeEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 9050
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mSemCustomMultiChoiceMode:Z

    .line 9051
    return-void
.end method

.method public whitelist semSetDragBlockEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 10450
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mIsDragBlockEnabled:Z

    .line 10451
    return-void
.end method

.method public blacklist semSetEnableVibrationAtLongPress(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .line 11439
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mEnableVibrationAtLongPress:Z

    .line 11440
    return-void
.end method

.method public whitelist semSetFastScrollCustomEffectEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 9866
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mSemFastScrollCustomEffectEnabled:Z

    .line 9867
    return-void
.end method

.method public blacklist semSetFastScrollEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 9798
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFastScrollEnabled:Z

    if-eq v0, p1, :cond_1

    .line 9799
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mFastScrollEnabled:Z

    .line 9801
    invoke-direct {p0}, Landroid/widget/AbsListView;->isOwnerThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9802
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->semSetFastScrollEnabledUiThread(Z)V

    goto :goto_0

    .line 9804
    :cond_0
    new-instance v0, Landroid/widget/AbsListView$11;

    invoke-direct {v0, p0, p1}, Landroid/widget/AbsListView$11;-><init>(Landroid/widget/AbsListView;Z)V

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    .line 9812
    :cond_1
    :goto_0
    return-void
.end method

.method public whitelist semSetFastScrollEventListener(Landroid/widget/AbsListView$SemFastScrollEventListener;)V
    .locals 0
    .param p1, "l"    # Landroid/widget/AbsListView$SemFastScrollEventListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 9778
    iput-object p1, p0, Landroid/widget/AbsListView;->mSemFastScrollEventListener:Landroid/widget/AbsListView$SemFastScrollEventListener;

    .line 9779
    return-void
.end method

.method public blacklist semSetFastScrollStyle(I)V
    .locals 1
    .param p1, "styleResId"    # I

    .line 9851
    iget-object v0, p0, Landroid/widget/AbsListView;->mSemFastScroll:Landroid/widget/SemFastScroller;

    if-nez v0, :cond_0

    .line 9852
    iput p1, p0, Landroid/widget/AbsListView;->mFastScrollStyle:I

    goto :goto_0

    .line 9854
    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/SemFastScroller;->setStyle(I)V

    .line 9856
    :goto_0
    return-void
.end method

.method public blacklist semSetFluidScrollerEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 11505
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->setFastScrollEnabled(Z)V

    .line 11506
    return-void
.end method

.method public blacklist semSetFluidScrollerEventListener(Landroid/widget/AbsListView$SemFluidScrollerEventListener;)V
    .locals 0
    .param p1, "l"    # Landroid/widget/AbsListView$SemFluidScrollerEventListener;

    .line 11499
    return-void
.end method

.method public blacklist semSetFluidScrollerStyle(I)V
    .locals 0
    .param p1, "styleResId"    # I

    .line 11513
    return-void
.end method

.method public whitelist semSetForcedEdgeEffectEnabled(Z)V
    .locals 0
    .param p1, "enable"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 11307
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mSemForcedDrawEdgeEffect:Z

    .line 11308
    return-void
.end method

.method public whitelist semSetGoToTopEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 9594
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/widget/AbsListView;->semSetGoToTopEnabled(ZI)V

    .line 9595
    return-void
.end method

.method public whitelist semSetGoToTopEnabled(ZI)V
    .locals 9
    .param p1, "enabled"    # Z
    .param p2, "buttonStyle"    # I

    .line 9609
    if-nez p2, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mSemGoToTopLightImage:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 9610
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080936

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Landroid/widget/AbsListView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    .line 9611
    if-eqz v0, :cond_3

    .line 9612
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mSemEnableGoToTop:Z

    .line 9613
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v0

    const/16 v1, 0xff

    if-eq v0, v1, :cond_1

    .line 9614
    iget-object v0, p0, Landroid/widget/AbsListView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 9616
    :cond_1
    iget-object v0, p0, Landroid/widget/AbsListView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Landroid/widget/AbsListView;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsListView;->mSemGoToTopBitmap:Landroid/graphics/Bitmap;

    .line 9617
    iget-object v0, p0, Landroid/widget/AbsListView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 9619
    if-eqz p1, :cond_2

    .line 9620
    iget-object v0, p0, Landroid/widget/AbsListView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    goto :goto_1

    .line 9622
    :cond_2
    iget-object v0, p0, Landroid/widget/AbsListView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 9624
    :goto_1
    const/4 v0, 0x2

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/AbsListView;->mSemGoToTopFadeInAnimator:Landroid/animation/ValueAnimator;

    .line 9625
    const-wide/16 v2, 0x14d

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 9626
    iget-object v1, p0, Landroid/widget/AbsListView;->mSemGoToTopFadeInAnimator:Landroid/animation/ValueAnimator;

    new-instance v4, Landroid/view/animation/PathInterpolator;

    const v5, 0x3ea8f5c3    # 0.33f

    const/4 v6, 0x0

    const v7, 0x3e99999a    # 0.3f

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 9627
    iget-object v1, p0, Landroid/widget/AbsListView;->mSemGoToTopFadeInAnimator:Landroid/animation/ValueAnimator;

    new-instance v4, Landroid/widget/AbsListView$8;

    invoke-direct {v4, p0}, Landroid/widget/AbsListView$8;-><init>(Landroid/widget/AbsListView;)V

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 9635
    new-array v0, v0, [I

    fill-array-data v0, :array_1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsListView;->mSemGoToTopFadeOutAnimator:Landroid/animation/ValueAnimator;

    .line 9636
    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 9637
    iget-object v0, p0, Landroid/widget/AbsListView;->mSemGoToTopFadeOutAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/PathInterpolator;

    invoke-direct {v1, v5, v6, v7, v8}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 9638
    iget-object v0, p0, Landroid/widget/AbsListView;->mSemGoToTopFadeOutAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/widget/AbsListView$9;

    invoke-direct {v1, p0}, Landroid/widget/AbsListView$9;-><init>(Landroid/widget/AbsListView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 9646
    iget-object v0, p0, Landroid/widget/AbsListView;->mSemGoToTopFadeOutAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/widget/AbsListView$10;

    invoke-direct {v1, p0}, Landroid/widget/AbsListView$10;-><init>(Landroid/widget/AbsListView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 9666
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10503e1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 9668
    .local v0, "elevation":I
    new-instance v1, Landroid/graphics/RenderNode;

    const-string v2, "goToTop"

    invoke-direct {v1, v2}, Landroid/graphics/RenderNode;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Landroid/widget/AbsListView;->mGoToTopRenderNode:Landroid/graphics/RenderNode;

    .line 9669
    int-to-float v2, v0

    invoke-virtual {v1, v2}, Landroid/graphics/RenderNode;->setElevation(F)Z

    .line 9671
    .end local v0    # "elevation":I
    :cond_3
    return-void

    :array_0
    .array-data 4
        0x0
        0xff
    .end array-data

    :array_1
    .array-data 4
        0xff
        0x0
    .end array-data
.end method

.method public whitelist semSetHoverScrollEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 9308
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mHoverScrollEnable:Z

    .line 9309
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mHoverScrollStateChanged:Z

    .line 9310
    return-void
.end method

.method public whitelist semSetLongPressMultiSelectionEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 9907
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mLongPressMultiSelectionEnabled:Z

    .line 9908
    return-void
.end method

.method public blacklist semSetMultiFocusEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 9413
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mIsMultiFocusEnabled:Z

    .line 9414
    return-void
.end method

.method public blacklist semSetSelection(I)V
    .locals 0
    .param p1, "position"    # I

    .line 11260
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->setSelection(I)V

    .line 11261
    return-void
.end method

.method public whitelist semSetSmoothScrollEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 9737
    iget-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-nez v0, :cond_0

    .line 9738
    new-instance v0, Landroid/widget/AbsListView$FlingRunnable;

    invoke-direct {v0, p0}, Landroid/widget/AbsListView$FlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    .line 9740
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-static {v0}, Landroid/widget/AbsListView$FlingRunnable;->-$$Nest$fgetmScroller(Landroid/widget/AbsListView$FlingRunnable;)Landroid/widget/OverScroller;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/OverScroller;->semSetSmoothScrollEnabled(Z)V

    .line 9741
    return-void
.end method

.method public blacklist semSetupGoToTop(I)V
    .locals 25
    .param p1, "where"    # I

    .line 9443
    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/widget/AbsListView;->mSemEnableGoToTop:Z

    if-nez v1, :cond_0

    return-void

    .line 9444
    :cond_0
    iget-object v1, v0, Landroid/widget/AbsListView;->mSemAutoHide:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 9446
    const/4 v1, 0x1

    move/from16 v2, p1

    if-ne v2, v1, :cond_1

    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->canScrollUp()Z

    move-result v3

    if-nez v3, :cond_1

    .line 9447
    const/4 v2, 0x0

    .line 9450
    .end local p1    # "where":I
    .local v2, "where":I
    :cond_1
    const/4 v3, -0x1

    if-ne v2, v3, :cond_3

    iget-boolean v4, v0, Landroid/widget/AbsListView;->mSemSizeChnage:Z

    if-eqz v4, :cond_3

    .line 9451
    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->canScrollUp()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->canScrollDown()Z

    move-result v3

    if-nez v3, :cond_2

    .line 9452
    const/4 v2, 0x0

    goto :goto_0

    .line 9454
    :cond_2
    iget v2, v0, Landroid/widget/AbsListView;->mSemGoToTopLastState:I

    goto :goto_0

    .line 9456
    :cond_3
    if-ne v2, v3, :cond_5

    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->canScrollUp()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->canScrollDown()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 9457
    :cond_4
    const/4 v2, 0x1

    .line 9460
    :cond_5
    :goto_0
    if-eqz v2, :cond_6

    .line 9461
    iget-object v3, v0, Landroid/widget/AbsListView;->mSemGoToToFadeOutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v3}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 9462
    :cond_6
    if-eq v2, v1, :cond_7

    .line 9463
    iget-object v3, v0, Landroid/widget/AbsListView;->mSemGoToToFadeInRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v3}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 9466
    :cond_7
    :goto_1
    iget v3, v0, Landroid/widget/AbsListView;->mShowFadeOutGTP:I

    if-nez v3, :cond_8

    if-nez v2, :cond_8

    iget v3, v0, Landroid/widget/AbsListView;->mSemGoToTopLastState:I

    if-eqz v3, :cond_8

    .line 9467
    iget-object v3, v0, Landroid/widget/AbsListView;->mSemGoToToFadeOutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v3}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    .line 9470
    :cond_8
    const/4 v3, 0x2

    if-eq v2, v3, :cond_9

    .line 9471
    iget-object v4, v0, Landroid/widget/AbsListView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    sget-object v5, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 9474
    :cond_9
    iput v2, v0, Landroid/widget/AbsListView;->mSemGoToTopState:I

    .line 9476
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v4

    .line 9477
    .local v4, "w":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v5

    .line 9478
    .local v5, "h":I
    iget v6, v0, Landroid/widget/AbsListView;->mPaddingLeft:I

    sub-int v6, v4, v6

    iget v7, v0, Landroid/widget/AbsListView;->mPaddingRight:I

    sub-int/2addr v6, v7

    .line 9479
    .local v6, "contentW":I
    iget v7, v0, Landroid/widget/AbsListView;->mPaddingLeft:I

    div-int/lit8 v8, v6, 0x2

    add-int/2addr v7, v8

    .line 9481
    .local v7, "centerX":I
    const/4 v8, 0x0

    .line 9483
    .local v8, "paddingBottom":I
    const/4 v9, 0x0

    .line 9484
    .local v9, "btnW":I
    const/4 v10, 0x0

    .line 9485
    .local v10, "btnH":I
    const/4 v11, 0x0

    .line 9487
    .local v11, "gapH":I
    new-array v12, v3, [I

    fill-array-data v12, :array_0

    .line 9488
    .local v12, "locOnScr":[I
    invoke-virtual {v0, v12}, Landroid/widget/AbsListView;->getLocationInWindow([I)V

    .line 9489
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v13

    .line 9490
    .local v13, "dm":Landroid/util/DisplayMetrics;
    iget-object v14, v0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    const-string/jumbo v15, "window"

    invoke-virtual {v14, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/WindowManager;

    invoke-interface {v14}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v14

    .line 9491
    .local v14, "display":Landroid/view/Display;
    invoke-virtual {v14}, Landroid/view/Display;->getRotation()I

    move-result v15

    .line 9492
    .local v15, "rotate":I
    if-eq v15, v1, :cond_b

    const/4 v1, 0x3

    if-ne v15, v1, :cond_a

    goto :goto_2

    :cond_a
    const/4 v1, 0x0

    goto :goto_3

    :cond_b
    :goto_2
    const/4 v1, 0x1

    .line 9493
    .local v1, "isLandScape":Z
    :goto_3
    new-instance v16, Landroid/graphics/Rect;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v17, v16

    .line 9494
    .local v17, "displayFrame":Landroid/graphics/Rect;
    move-object/from16 v3, v17

    .end local v17    # "displayFrame":Landroid/graphics/Rect;
    .local v3, "displayFrame":Landroid/graphics/Rect;
    invoke-virtual {v0, v3}, Landroid/widget/AbsListView;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 9496
    if-eqz v1, :cond_c

    move/from16 v17, v6

    .end local v6    # "contentW":I
    .local v17, "contentW":I
    iget v6, v3, Landroid/graphics/Rect;->left:I

    goto :goto_4

    .end local v17    # "contentW":I
    .restart local v6    # "contentW":I
    :cond_c
    move/from16 v17, v6

    .end local v6    # "contentW":I
    .restart local v17    # "contentW":I
    const/4 v6, 0x0

    .line 9497
    .local v6, "left":I
    :goto_4
    if-eqz v1, :cond_d

    move/from16 v18, v1

    .end local v1    # "isLandScape":Z
    .local v18, "isLandScape":Z
    iget v1, v3, Landroid/graphics/Rect;->right:I

    goto :goto_5

    .end local v18    # "isLandScape":Z
    .restart local v1    # "isLandScape":Z
    :cond_d
    move/from16 v18, v1

    .end local v1    # "isLandScape":Z
    .restart local v18    # "isLandScape":Z
    iget v1, v13, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 9499
    .local v1, "right":I
    :goto_5
    move-object/from16 v19, v3

    const/16 v16, 0x0

    .end local v3    # "displayFrame":Landroid/graphics/Rect;
    .local v19, "displayFrame":Landroid/graphics/Rect;
    aget v3, v12, v16

    if-ge v3, v6, :cond_e

    .line 9500
    aget v3, v12, v16

    neg-int v3, v3

    .line 9501
    .local v3, "overlappedW":I
    move/from16 v20, v6

    .end local v6    # "left":I
    .local v20, "left":I
    iget v6, v0, Landroid/widget/AbsListView;->mPaddingLeft:I

    if-le v3, v6, :cond_f

    .line 9502
    iget v6, v0, Landroid/widget/AbsListView;->mPaddingLeft:I

    sub-int v6, v3, v6

    const/16 v21, 0x2

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v7, v6

    goto :goto_6

    .line 9499
    .end local v3    # "overlappedW":I
    .end local v20    # "left":I
    .restart local v6    # "left":I
    :cond_e
    move/from16 v20, v6

    .line 9507
    .end local v6    # "left":I
    .restart local v20    # "left":I
    :cond_f
    :goto_6
    const/4 v3, 0x0

    aget v6, v12, v3

    add-int/2addr v6, v4

    if-le v6, v1, :cond_10

    .line 9508
    aget v6, v12, v3

    add-int/2addr v6, v4

    iget v3, v13, Landroid/util/DisplayMetrics;->widthPixels:I

    sub-int/2addr v6, v3

    .line 9509
    .local v6, "overlappedW":I
    iget v3, v0, Landroid/widget/AbsListView;->mPaddingRight:I

    if-le v6, v3, :cond_10

    .line 9510
    iget v3, v0, Landroid/widget/AbsListView;->mPaddingRight:I

    sub-int v3, v6, v3

    const/16 v21, 0x2

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v7, v3

    .line 9514
    .end local v6    # "overlappedW":I
    :cond_10
    packed-switch v2, :pswitch_data_0

    move/from16 v22, v1

    move/from16 v23, v4

    move/from16 v24, v5

    const/4 v3, 0x0

    .end local v1    # "right":I
    .end local v4    # "w":I
    .end local v5    # "h":I
    .local v22, "right":I
    .local v23, "w":I
    .local v24, "h":I
    goto :goto_7

    .line 9522
    .end local v22    # "right":I
    .end local v23    # "w":I
    .end local v24    # "h":I
    .restart local v1    # "right":I
    .restart local v4    # "w":I
    .restart local v5    # "h":I
    :pswitch_0
    iget-object v3, v0, Landroid/widget/AbsListView;->mSemGoToToFadeOutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v3}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 9523
    iget-object v3, v0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x10503e3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    .line 9524
    iget-object v3, v0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    .line 9525
    iget-object v3, v0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x10503e2

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    .line 9526
    iget-object v3, v0, Landroid/widget/AbsListView;->mSemGoToTopRect:Landroid/graphics/Rect;

    div-int/lit8 v6, v9, 0x2

    sub-int v6, v7, v6

    sub-int v21, v5, v10

    sub-int v21, v21, v8

    move/from16 v22, v1

    .end local v1    # "right":I
    .restart local v22    # "right":I
    sub-int v1, v21, v11

    div-int/lit8 v21, v9, 0x2

    move/from16 v23, v4

    .end local v4    # "w":I
    .restart local v23    # "w":I
    add-int v4, v7, v21

    sub-int v21, v5, v8

    move/from16 v24, v5

    .end local v5    # "h":I
    .restart local v24    # "h":I
    sub-int v5, v21, v11

    invoke-virtual {v3, v6, v1, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 9527
    const/4 v3, 0x0

    goto :goto_7

    .line 9516
    .end local v22    # "right":I
    .end local v23    # "w":I
    .end local v24    # "h":I
    .restart local v1    # "right":I
    .restart local v4    # "w":I
    .restart local v5    # "h":I
    :pswitch_1
    move/from16 v22, v1

    move/from16 v23, v4

    move/from16 v24, v5

    .end local v1    # "right":I
    .end local v4    # "w":I
    .end local v5    # "h":I
    .restart local v22    # "right":I
    .restart local v23    # "w":I
    .restart local v24    # "h":I
    iget v1, v0, Landroid/widget/AbsListView;->mShowFadeOutGTP:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_11

    .line 9517
    iget-object v1, v0, Landroid/widget/AbsListView;->mSemGoToTopRect:Landroid/graphics/Rect;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v3, v3, v3}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_7

    .line 9516
    :cond_11
    const/4 v3, 0x0

    .line 9532
    :goto_7
    iget v1, v0, Landroid/widget/AbsListView;->mShowFadeOutGTP:I

    const/4 v4, 0x2

    if-ne v1, v4, :cond_12

    .line 9533
    iput v3, v0, Landroid/widget/AbsListView;->mShowFadeOutGTP:I

    .line 9535
    :cond_12
    iget-object v1, v0, Landroid/widget/AbsListView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    iget-object v3, v0, Landroid/widget/AbsListView;->mSemGoToTopRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 9537
    const/4 v1, 0x1

    if-ne v2, v1, :cond_14

    iget v1, v0, Landroid/widget/AbsListView;->mSemGoToTopLastState:I

    if-eqz v1, :cond_13

    iget-object v1, v0, Landroid/widget/AbsListView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v1

    if-eqz v1, :cond_13

    iget-boolean v1, v0, Landroid/widget/AbsListView;->mSemSizeChnage:Z

    if-eqz v1, :cond_14

    .line 9538
    :cond_13
    iget-object v1, v0, Landroid/widget/AbsListView;->mSemGoToToFadeInRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    .line 9541
    :cond_14
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/widget/AbsListView;->mSemSizeChnage:Z

    .line 9542
    iget v3, v0, Landroid/widget/AbsListView;->mSemGoToTopState:I

    iput v3, v0, Landroid/widget/AbsListView;->mSemGoToTopLastState:I

    .line 9543
    iget-object v3, v0, Landroid/widget/AbsListView;->mOutline:Landroid/graphics/Outline;

    iget-object v4, v0, Landroid/widget/AbsListView;->mSemGoToTopRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    iget-object v5, v0, Landroid/widget/AbsListView;->mSemGoToTopRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-virtual {v3, v1, v1, v4, v5}, Landroid/graphics/Outline;->setOval(IIII)V

    .line 9544
    iget-object v3, v0, Landroid/widget/AbsListView;->mGoToTopRenderNode:Landroid/graphics/RenderNode;

    iget-object v4, v0, Landroid/widget/AbsListView;->mSemGoToTopRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/RenderNode;->setPosition(Landroid/graphics/Rect;)Z

    .line 9545
    iget-object v3, v0, Landroid/widget/AbsListView;->mGoToTopRenderNode:Landroid/graphics/RenderNode;

    invoke-virtual {v3, v1}, Landroid/graphics/RenderNode;->setClipToBounds(Z)Z

    .line 9546
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method blacklist semShowGoToTOP()V
    .locals 2

    .line 9694
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mSemEnableGoToTop:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/widget/AbsListView;->canScrollUp()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/widget/AbsListView;->mSemGoToTopState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 9695
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->semSetupGoToTop(I)V

    .line 9696
    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->semAutoHide(I)V

    .line 9698
    :cond_0
    return-void
.end method

.method public blacklist semSmoothScrollBy(I)V
    .locals 3
    .param p1, "distance"    # I

    .line 11272
    iget-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-nez v0, :cond_0

    .line 11273
    new-instance v0, Landroid/widget/AbsListView$FlingRunnable;

    invoke-direct {v0, p0}, Landroid/widget/AbsListView$FlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    .line 11276
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mSemScrollRemains:Ljava/util/LinkedList;

    if-nez v0, :cond_1

    .line 11277
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Landroid/widget/AbsListView;->mSemScrollRemains:Ljava/util/LinkedList;

    .line 11278
    new-instance v0, Landroid/widget/AbsListView$SemSmoothScrollByMove;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/widget/AbsListView$SemSmoothScrollByMove;-><init>(Landroid/widget/AbsListView;Landroid/widget/AbsListView$SemSmoothScrollByMove-IA;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mSemSmoothScrollByMove:Landroid/widget/AbsListView$SemSmoothScrollByMove;

    .line 11279
    const/high16 v0, 0x43160000    # 150.0f

    iget v1, p0, Landroid/widget/AbsListView;->mDensityScale:F

    mul-float/2addr v1, v0

    float-to-int v0, v1

    iput v0, p0, Landroid/widget/AbsListView;->mSemScrollAmount:I

    .line 11282
    :cond_1
    iget-object v0, p0, Landroid/widget/AbsListView;->mSemScrollRemains:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    .line 11283
    .local v0, "isEmpty":Z
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Landroid/widget/AbsListView;->mSemScrollAmount:I

    if-le v1, v2, :cond_3

    .line 11284
    if-lez p1, :cond_2

    .line 11285
    :goto_0
    iget v1, p0, Landroid/widget/AbsListView;->mSemScrollAmount:I

    if-le p1, v1, :cond_3

    .line 11286
    iget-object v2, p0, Landroid/widget/AbsListView;->mSemScrollRemains:Ljava/util/LinkedList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    .line 11285
    iget v1, p0, Landroid/widget/AbsListView;->mSemScrollAmount:I

    sub-int/2addr p1, v1

    goto :goto_0

    .line 11289
    :cond_2
    :goto_1
    iget v1, p0, Landroid/widget/AbsListView;->mSemScrollAmount:I

    neg-int v2, v1

    if-ge p1, v2, :cond_3

    .line 11290
    iget-object v2, p0, Landroid/widget/AbsListView;->mSemScrollRemains:Ljava/util/LinkedList;

    neg-int v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    .line 11289
    iget v1, p0, Landroid/widget/AbsListView;->mSemScrollAmount:I

    add-int/2addr p1, v1

    goto :goto_1

    .line 11294
    :cond_3
    iget-object v1, p0, Landroid/widget/AbsListView;->mSemScrollRemains:Ljava/util/LinkedList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    .line 11295
    if-eqz v0, :cond_4

    iget-object v1, p0, Landroid/widget/AbsListView;->mSemSmoothScrollByMove:Landroid/widget/AbsListView$SemSmoothScrollByMove;

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    .line 11296
    :cond_4
    return-void
.end method

.method public whitelist semStartMultiChoiceMode()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 9019
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    if-eqz v0, :cond_0

    .line 9020
    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    .line 9022
    :cond_0
    return-void
.end method

.method greylist-max-o sendToTextFilter(IILandroid/view/KeyEvent;)Z
    .locals 10
    .param p1, "keyCode"    # I
    .param p2, "count"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .line 6697
    invoke-direct {p0}, Landroid/widget/AbsListView;->acceptFilter()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 6698
    return v1

    .line 6701
    :cond_0
    const/4 v0, 0x0

    .line 6702
    .local v0, "handled":Z
    const/4 v2, 0x1

    .line 6703
    .local v2, "okToSend":Z
    const/4 v3, 0x1

    sparse-switch p1, :sswitch_data_0

    goto :goto_1

    .line 6732
    :sswitch_0
    iget-boolean v2, p0, Landroid/widget/AbsListView;->mFiltered:Z

    goto :goto_1

    .line 6711
    :sswitch_1
    const/4 v2, 0x0

    .line 6712
    goto :goto_1

    .line 6714
    :sswitch_2
    iget-boolean v4, p0, Landroid/widget/AbsListView;->mFiltered:Z

    if-eqz v4, :cond_4

    iget-object v4, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 6715
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_3

    .line 6716
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v4

    if-nez v4, :cond_3

    .line 6717
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v4

    .line 6718
    .local v4, "state":Landroid/view/KeyEvent$DispatcherState;
    if-eqz v4, :cond_1

    .line 6719
    invoke-virtual {v4, p3, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    .line 6721
    :cond_1
    const/4 v0, 0x1

    .line 6722
    .end local v4    # "state":Landroid/view/KeyEvent$DispatcherState;
    :cond_2
    goto :goto_0

    :cond_3
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-ne v4, v3, :cond_2

    .line 6723
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v4

    if-nez v4, :cond_4

    .line 6724
    const/4 v0, 0x1

    .line 6725
    iget-object v4, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 6728
    :cond_4
    :goto_0
    const/4 v2, 0x0

    .line 6729
    nop

    .line 6736
    :goto_1
    if-eqz v2, :cond_c

    .line 6737
    invoke-direct {p0, v3}, Landroid/widget/AbsListView;->createTextFilter(Z)V

    .line 6739
    move-object v4, p3

    .line 6740
    .local v4, "forwardEvent":Landroid/view/KeyEvent;
    invoke-virtual {v4}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v5

    if-lez v5, :cond_5

    .line 6741
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v5

    invoke-static {p3, v5, v6, v1}, Landroid/view/KeyEvent;->changeTimeRepeat(Landroid/view/KeyEvent;JI)Landroid/view/KeyEvent;

    move-result-object v4

    .line 6744
    :cond_5
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    .line 6745
    .local v5, "action":I
    const/16 v6, 0x72

    const/16 v7, 0x71

    const/16 v8, 0x3c

    const/16 v9, 0x3b

    packed-switch v5, :pswitch_data_0

    goto :goto_4

    .line 6772
    :pswitch_0
    iget-object v1, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v1, p1, p2, p3}, Landroid/widget/EditText;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_4

    .line 6758
    :pswitch_1
    iget-object v3, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v3, p1, v4}, Landroid/widget/EditText;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 6760
    if-eq p1, v9, :cond_8

    if-ne p1, v8, :cond_6

    goto :goto_2

    .line 6765
    :cond_6
    if-eq p1, v7, :cond_7

    if-ne p1, v6, :cond_c

    .line 6766
    :cond_7
    iput-boolean v1, p0, Landroid/widget/AbsListView;->mIsCtrlkeyPressed:Z

    goto :goto_4

    .line 6761
    :cond_8
    :goto_2
    iput-boolean v1, p0, Landroid/widget/AbsListView;->mIsShiftkeyPressed:Z

    .line 6762
    iput v1, p0, Landroid/widget/AbsListView;->mOldKeyCode:I

    .line 6763
    iput v1, p0, Landroid/widget/AbsListView;->mCurrentKeyCode:I

    .line 6764
    const/4 v1, -0x1

    iput v1, p0, Landroid/widget/AbsListView;->mFirstPressedPoint:I

    goto :goto_4

    .line 6747
    :pswitch_2
    iget-object v1, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v1, p1, v4}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 6749
    if-eq p1, v9, :cond_b

    if-ne p1, v8, :cond_9

    goto :goto_3

    .line 6751
    :cond_9
    if-eq p1, v7, :cond_a

    if-ne p1, v6, :cond_c

    .line 6752
    :cond_a
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mIsCtrlkeyPressed:Z

    goto :goto_4

    .line 6750
    :cond_b
    :goto_3
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mIsShiftkeyPressed:Z

    .line 6776
    .end local v4    # "forwardEvent":Landroid/view/KeyEvent;
    .end local v5    # "action":I
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

    .line 149
    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public whitelist setAdapter(Landroid/widget/ListAdapter;)V
    .locals 2
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .line 1023
    if-eqz p1, :cond_2

    .line 1024
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mAdapterHasStableIds:Z

    .line 1025
    iget v1, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-nez v0, :cond_0

    .line 1027
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    .line 1029
    :cond_0
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mSemEnableGoToTop:Z

    if-eqz v0, :cond_1

    .line 1030
    invoke-direct {p0}, Landroid/widget/AbsListView;->semPlayGotoToFadeOut()V

    .line 1031
    invoke-direct {p0}, Landroid/widget/AbsListView;->initGoToTOP()V

    .line 1034
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mSemAdapterChanged:Z

    .line 1037
    :cond_2
    invoke-virtual {p0}, Landroid/widget/AbsListView;->clearChoices()V

    .line 1039
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mIsMultiFocusEnabled:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_3

    .line 1040
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/AbsListView;->mSemPressItemListArray:Ljava/util/ArrayList;

    .line 1041
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resetPressItemListArray()V

    .line 1042
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    iput v0, p0, Landroid/widget/AbsListView;->mOldAdapterItemCount:I

    .line 1044
    :cond_3
    return-void
.end method

.method public whitelist setBottomEdgeEffectColor(I)V
    .locals 1
    .param p1, "color"    # I

    .line 7366
    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v0, p1}, Landroid/widget/EdgeEffect;->setColor(I)V

    .line 7367
    invoke-direct {p0}, Landroid/widget/AbsListView;->invalidateEdgeEffects()V

    .line 7368
    return-void
.end method

.method public whitelist setCacheColorHint(I)V
    .locals 3
    .param p1, "color"    # I

    .line 7182
    iget v0, p0, Landroid/widget/AbsListView;->mCacheColorHint:I

    if-eq p1, v0, :cond_1

    .line 7183
    iput p1, p0, Landroid/widget/AbsListView;->mCacheColorHint:I

    .line 7184
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 7185
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 7186
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 7185
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7188
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v1, p1}, Landroid/widget/AbsListView$RecycleBin;->setCacheColorHint(I)V

    .line 7190
    .end local v0    # "count":I
    :cond_1
    return-void
.end method

.method public whitelist setChoiceMode(I)V
    .locals 5
    .param p1, "choiceMode"    # I

    .line 1340
    iput p1, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    .line 1341
    iget-object v0, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 1342
    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 1343
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    .line 1345
    :cond_0
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_3

    .line 1346
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-nez v0, :cond_1

    .line 1347
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0, v2}, Landroid/util/SparseBooleanArray;-><init>(I)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 1349
    :cond_1
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1350
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0, v2}, Landroid/util/LongSparseArray;-><init>(I)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    .line 1353
    :cond_2
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-ne v0, v1, :cond_3

    .line 1354
    invoke-virtual {p0}, Landroid/widget/AbsListView;->clearChoices()V

    .line 1355
    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->setLongClickable(Z)V

    .line 1360
    :cond_3
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    const/4 v4, 0x2

    if-ne v0, v4, :cond_4

    .line 1361
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mIsDragBlockEnabled:Z

    goto :goto_0

    .line 1362
    :cond_4
    if-ne v0, v1, :cond_5

    .line 1363
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mIsDragBlockEnabled:Z

    goto :goto_0

    .line 1364
    :cond_5
    if-eqz v0, :cond_6

    if-ne v0, v3, :cond_7

    .line 1365
    :cond_6
    iput-boolean v2, p0, Landroid/widget/AbsListView;->mIsDragBlockEnabled:Z

    .line 1368
    :cond_7
    :goto_0
    return-void
.end method

.method public whitelist setDrawSelectorOnTop(Z)V
    .locals 0
    .param p1, "onTop"    # Z

    .line 3146
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mDrawSelectorOnTop:Z

    .line 3147
    return-void
.end method

.method public whitelist setEdgeEffectColor(I)V
    .locals 0
    .param p1, "color"    # I

    .line 7352
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->setTopEdgeEffectColor(I)V

    .line 7353
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->setBottomEdgeEffectColor(I)V

    .line 7354
    return-void
.end method

.method public blacklist setEnableDoubleFling(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .line 11448
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mDoubleFlingEnabled:Z

    .line 11449
    return-void
.end method

.method public blacklist setEnableHoverDrawable(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .line 11177
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mHoveringEnabled:Z

    .line 11178
    return-void
.end method

.method public blacklist setEnablePaddingInHoverScroll(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .line 9316
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mIsEnabledPaddingInHoverScroll:Z

    .line 9317
    return-void
.end method

.method public whitelist setFastScrollAlwaysVisible(Z)V
    .locals 1
    .param p1, "alwaysShow"    # Z

    .line 1486
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFastScrollAlwaysVisible:Z

    if-eq v0, p1, :cond_2

    .line 1487
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFastScrollEnabled:Z

    if-nez v0, :cond_0

    .line 1488
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->setFastScrollEnabled(Z)V

    .line 1491
    :cond_0
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mFastScrollAlwaysVisible:Z

    .line 1493
    invoke-direct {p0}, Landroid/widget/AbsListView;->isOwnerThread()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1494
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->setFastScrollerAlwaysVisibleUiThread(Z)V

    goto :goto_0

    .line 1496
    :cond_1
    new-instance v0, Landroid/widget/AbsListView$2;

    invoke-direct {v0, p0, p1}, Landroid/widget/AbsListView$2;-><init>(Landroid/widget/AbsListView;Z)V

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    .line 1504
    :cond_2
    :goto_0
    return-void
.end method

.method public whitelist setFastScrollEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 1414
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFastScrollEnabled:Z

    if-eq v0, p1, :cond_2

    .line 1415
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mFastScrollEnabled:Z

    .line 1417
    invoke-direct {p0}, Landroid/widget/AbsListView;->isOwnerThread()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1418
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mSemFastScrollCustomEffectEnabled:Z

    if-eqz v0, :cond_0

    .line 1419
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->semSetFastScrollEnabledUiThread(Z)V

    goto :goto_0

    .line 1421
    :cond_0
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->setFastScrollerEnabledUiThread(Z)V

    goto :goto_0

    .line 1424
    :cond_1
    new-instance v0, Landroid/widget/AbsListView$1;

    invoke-direct {v0, p0, p1}, Landroid/widget/AbsListView$1;-><init>(Landroid/widget/AbsListView;Z)V

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    .line 1436
    :cond_2
    :goto_0
    return-void
.end method

.method public whitelist setFastScrollStyle(I)V
    .locals 1
    .param p1, "styleResId"    # I

    .line 1464
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    if-nez v0, :cond_0

    .line 1465
    iput p1, p0, Landroid/widget/AbsListView;->mFastScrollStyle:I

    goto :goto_0

    .line 1467
    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/FastScroller;->setStyle(I)V

    .line 1469
    :goto_0
    return-void
.end method

.method public blacklist setFastScrollTrackPadding(II)V
    .locals 0
    .param p1, "paddingTop"    # I
    .param p2, "paddingBottom"    # I

    .line 9889
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isFastScrollEnabled()Z

    .line 9893
    return-void
.end method

.method public whitelist setFilterText(Ljava/lang/String;)V
    .locals 2
    .param p1, "filterText"    # Ljava/lang/String;

    .line 2176
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mTextFilterEnabled:Z

    if-eqz v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2177
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/AbsListView;->createTextFilter(Z)V

    .line 2180
    iget-object v0, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2181
    iget-object v0, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 2182
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v1, v0, Landroid/widget/Filterable;

    if-eqz v1, :cond_1

    .line 2184
    iget-object v1, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-nez v1, :cond_0

    .line 2185
    check-cast v0, Landroid/widget/Filterable;

    invoke-interface {v0}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    .line 2186
    .local v0, "f":Landroid/widget/Filter;
    invoke-virtual {v0, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 2190
    .end local v0    # "f":Landroid/widget/Filter;
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mFiltered:Z

    .line 2191
    iget-object v0, p0, Landroid/widget/AbsListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-virtual {v0}, Landroid/widget/AbsListView$AdapterDataSetObserver;->clearSavedState()V

    .line 2194
    :cond_1
    return-void
.end method

.method public blacklist setForcedClick(Z)V
    .locals 0
    .param p1, "force"    # Z

    .line 11352
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mForcedClick:Z

    .line 11353
    return-void
.end method

.method protected greylist-max-o setFrame(IIII)Z
    .locals 3
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 2430
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AdapterView;->setFrame(IIII)Z

    move-result v0

    .line 2432
    .local v0, "changed":Z
    if-eqz v0, :cond_1

    .line 2436
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWindowVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 2437
    .local v1, "visible":Z
    :goto_0
    iget-boolean v2, p0, Landroid/widget/AbsListView;->mFiltered:Z

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    iget-object v2, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2438
    invoke-direct {p0}, Landroid/widget/AbsListView;->positionPopup()V

    .line 2442
    .end local v1    # "visible":Z
    :cond_1
    return v0
.end method

.method public whitelist setFriction(F)V
    .locals 1
    .param p1, "friction"    # F

    .line 5705
    iget-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-nez v0, :cond_0

    .line 5706
    new-instance v0, Landroid/widget/AbsListView$FlingRunnable;

    invoke-direct {v0, p0}, Landroid/widget/AbsListView$FlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    .line 5708
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-static {v0}, Landroid/widget/AbsListView$FlingRunnable;->-$$Nest$fgetmScroller(Landroid/widget/AbsListView$FlingRunnable;)Landroid/widget/OverScroller;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/OverScroller;->setFriction(F)V

    .line 5709
    return-void
.end method

.method public whitelist setItemChecked(IZ)V
    .locals 11
    .param p1, "position"    # I
    .param p2, "value"    # Z

    .line 1161
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-nez v0, :cond_0

    .line 1162
    return-void

    .line 1166
    :cond_0
    const/4 v1, 0x3

    if-eqz p2, :cond_2

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-nez v0, :cond_2

    .line 1167
    iget-object v0, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    if-eqz v0, :cond_1

    .line 1168
    invoke-virtual {v0}, Landroid/widget/AbsListView$MultiChoiceModeWrapper;->hasWrappedCallback()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1173
    iget-object v0, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    goto :goto_0

    .line 1169
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "AbsListView: attempted to start selection mode for CHOICE_MODE_MULTIPLE_MODAL but no choice mode callback was supplied. Call setMultiChoiceModeListener to set a callback."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1177
    :cond_2
    :goto_0
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_3

    goto :goto_3

    .line 1201
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

    .line 1204
    .local v0, "updateIds":Z
    :goto_1
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->isItemChecked(I)Z

    move-result v1

    if-eq v1, p2, :cond_5

    move v1, v4

    goto :goto_2

    :cond_5
    move v1, v3

    .line 1205
    .local v1, "itemCheckChanged":Z
    :goto_2
    if-nez p2, :cond_6

    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->isItemChecked(I)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1206
    :cond_6
    iget-object v2, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->clear()V

    .line 1207
    if-eqz v0, :cond_7

    .line 1208
    iget-object v2, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v2}, Landroid/util/LongSparseArray;->clear()V

    .line 1213
    :cond_7
    if-eqz p2, :cond_9

    .line 1214
    iget-object v2, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p1, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1215
    if-eqz v0, :cond_8

    .line 1216
    iget-object v2, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v3, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v5, v6, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1218
    :cond_8
    iput v4, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    goto/16 :goto_6

    .line 1219
    :cond_9
    iget-object v2, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v3}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v2

    if-nez v2, :cond_12

    .line 1220
    :cond_a
    iput v3, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    goto :goto_6

    .line 1178
    .end local v0    # "updateIds":Z
    .end local v1    # "itemCheckChanged":Z
    :cond_b
    :goto_3
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    .line 1179
    .local v0, "oldValue":Z
    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1180
    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v1, :cond_d

    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1181
    if-eqz p2, :cond_c

    .line 1182
    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v5, v6, v2}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_4

    .line 1184
    :cond_c
    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Landroid/util/LongSparseArray;->delete(J)V

    .line 1187
    :cond_d
    :goto_4
    if-eq v0, p2, :cond_e

    move v3, v4

    :cond_e
    move v1, v3

    .line 1188
    .restart local v1    # "itemCheckChanged":Z
    if-eqz v1, :cond_10

    .line 1189
    if-eqz p2, :cond_f

    .line 1190
    iget v2, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    add-int/2addr v2, v4

    iput v2, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    goto :goto_5

    .line 1192
    :cond_f
    iget v2, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    sub-int/2addr v2, v4

    iput v2, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    .line 1195
    :cond_10
    :goto_5
    iget-object v2, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v2, :cond_11

    .line 1196
    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    .line 1197
    .local v2, "id":J
    iget-object v5, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    iget-object v6, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    move v7, p1

    move-wide v8, v2

    move v10, p2

    invoke-virtual/range {v5 .. v10}, Landroid/widget/AbsListView$MultiChoiceModeWrapper;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    .line 1200
    .end local v0    # "oldValue":Z
    .end local v2    # "id":J
    :cond_11
    nop

    .line 1225
    :cond_12
    :goto_6
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mInLayout:Z

    if-nez v0, :cond_14

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mBlockLayoutRequests:Z

    if-nez v0, :cond_14

    if-eqz v1, :cond_14

    .line 1226
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mForcedClick:Z

    if-nez v0, :cond_13

    .line 1227
    iput-boolean v4, p0, Landroid/widget/AbsListView;->mDataChanged:Z

    .line 1229
    :cond_13
    invoke-virtual {p0}, Landroid/widget/AbsListView;->rememberSyncState()V

    .line 1230
    invoke-virtual {p0}, Landroid/widget/AbsListView;->requestLayout()V

    .line 1232
    :cond_14
    return-void
.end method

.method public whitelist setMultiChoiceModeListener(Landroid/widget/AbsListView$MultiChoiceModeListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/widget/AbsListView$MultiChoiceModeListener;

    .line 1380
    iget-object v0, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    if-nez v0, :cond_0

    .line 1381
    new-instance v0, Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    invoke-direct {v0, p0}, Landroid/widget/AbsListView$MultiChoiceModeWrapper;-><init>(Landroid/widget/AbsListView;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    .line 1383
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    invoke-virtual {v0, p1}, Landroid/widget/AbsListView$MultiChoiceModeWrapper;->setWrapped(Landroid/widget/AbsListView$MultiChoiceModeListener;)V

    .line 1384
    return-void
.end method

.method public blacklist setMultiFocusListItem(II)V
    .locals 1
    .param p1, "startItem"    # I
    .param p2, "endItem"    # I

    .line 9400
    iget-object v0, p0, Landroid/widget/AbsListView;->mSemPressItemListArray:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 9401
    return-void

    .line 9403
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resetPressItemListArray()V

    .line 9404
    invoke-direct {p0, p1, p2}, Landroid/widget/AbsListView;->addToPressItemListArray(II)V

    .line 9405
    return-void
.end method

.method public whitelist setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 0
    .param p1, "l"    # Landroid/widget/AbsListView$OnScrollListener;

    .line 1628
    iput-object p1, p0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 1629
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invokeOnItemScrollListener()V

    .line 1630
    return-void
.end method

.method public blacklist setOverScrollEffectPadding(II)V
    .locals 0
    .param p1, "leftPadding"    # I
    .param p2, "rightPadding"    # I

    .line 11360
    return-void
.end method

.method public whitelist setRecyclerListener(Landroid/widget/AbsListView$RecyclerListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/widget/AbsListView$RecyclerListener;

    .line 7423
    iget-object v0, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-static {v0, p1}, Landroid/widget/AbsListView$RecycleBin;->-$$Nest$fputmRecyclerListener(Landroid/widget/AbsListView$RecycleBin;Landroid/widget/AbsListView$RecyclerListener;)V

    .line 7424
    return-void
.end method

.method public whitelist setRemoteViewsAdapter(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .line 7248
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/widget/AbsListView;->setRemoteViewsAdapter(Landroid/content/Intent;Z)V

    .line 7249
    return-void
.end method

.method public greylist-max-o setRemoteViewsAdapter(Landroid/content/Intent;Z)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "isAsync"    # Z

    .line 7261
    iget-object v0, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    if-eqz v0, :cond_0

    .line 7262
    new-instance v0, Landroid/content/Intent$FilterComparison;

    invoke-direct {v0, p1}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    .line 7263
    .local v0, "fcNew":Landroid/content/Intent$FilterComparison;
    new-instance v1, Landroid/content/Intent$FilterComparison;

    iget-object v2, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    .line 7264
    invoke-virtual {v2}, Landroid/widget/RemoteViewsAdapter;->getRemoteViewsServiceIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    .line 7265
    .local v1, "fcOld":Landroid/content/Intent$FilterComparison;
    invoke-virtual {v0, v1}, Landroid/content/Intent$FilterComparison;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 7266
    return-void

    .line 7269
    .end local v0    # "fcNew":Landroid/content/Intent$FilterComparison;
    .end local v1    # "fcOld":Landroid/content/Intent$FilterComparison;
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mDeferNotifyDataSetChanged:Z

    .line 7271
    new-instance v0, Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1, p0, p2}, Landroid/widget/RemoteViewsAdapter;-><init>(Landroid/content/Context;Landroid/content/Intent;Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;Z)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    .line 7272
    invoke-virtual {v0}, Landroid/widget/RemoteViewsAdapter;->isDataReady()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7273
    iget-object v0, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 7275
    :cond_1
    return-void
.end method

.method public greylist-max-o setRemoteViewsAdapterAsync(Landroid/content/Intent;)Ljava/lang/Runnable;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .line 7253
    new-instance v0, Landroid/widget/RemoteViewsAdapter$AsyncRemoteAdapterAction;

    invoke-direct {v0, p0, p1}, Landroid/widget/RemoteViewsAdapter$AsyncRemoteAdapterAction;-><init>(Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;Landroid/content/Intent;)V

    return-object v0
.end method

.method public blacklist setRemoteViewsInteractionHandler(Landroid/widget/RemoteViews$InteractionHandler;)V
    .locals 1
    .param p1, "handler"    # Landroid/widget/RemoteViews$InteractionHandler;

    .line 7287
    iget-object v0, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    if-eqz v0, :cond_0

    .line 7288
    invoke-virtual {v0, p1}, Landroid/widget/RemoteViewsAdapter;->setRemoteViewsInteractionHandler(Landroid/widget/RemoteViews$InteractionHandler;)V

    .line 7290
    :cond_0
    return-void
.end method

.method public whitelist setScrollBarStyle(I)V
    .locals 1
    .param p1, "style"    # I

    .line 1571
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->setScrollBarStyle(I)V

    .line 1572
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    if-eqz v0, :cond_0

    .line 1573
    invoke-virtual {v0, p1}, Landroid/widget/FastScroller;->setScrollBarStyle(I)V

    .line 1575
    :cond_0
    return-void
.end method

.method public whitelist setScrollIndicators(Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .param p1, "up"    # Landroid/view/View;
    .param p2, "down"    # Landroid/view/View;

    .line 3251
    iput-object p1, p0, Landroid/widget/AbsListView;->mScrollUp:Landroid/view/View;

    .line 3252
    iput-object p2, p0, Landroid/widget/AbsListView;->mScrollDown:Landroid/view/View;

    .line 3253
    return-void
.end method

.method public whitelist setScrollingCacheEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 1836
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mScrollingCacheEnabled:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 1837
    invoke-direct {p0}, Landroid/widget/AbsListView;->clearScrollingCache()V

    .line 1839
    :cond_0
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mScrollingCacheEnabled:Z

    .line 1840
    return-void
.end method

.method public whitelist setSelectedChildViewEnabled(Z)V
    .locals 0
    .param p1, "selectedChildViewEnabled"    # Z

    .line 2946
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mIsChildViewEnabled:Z

    .line 2947
    return-void
.end method

.method public whitelist setSelectionFromTop(II)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "y"    # I

    .line 8208
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_0

    .line 8209
    return-void

    .line 8212
    :cond_0
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mSemEnableGoToTop:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 8213
    invoke-direct {p0}, Landroid/widget/AbsListView;->canScrollUp()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/widget/AbsListView;->mSemGoToTopState:I

    if-eq v0, v1, :cond_1

    .line 8214
    iget-object v0, p0, Landroid/widget/AbsListView;->mSemGoToToFadeOutRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 8215
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->semSetupGoToTop(I)V

    .line 8216
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->semAutoHide(I)V

    .line 8219
    :cond_1
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_2

    .line 8220
    invoke-virtual {p0, p1, v1}, Landroid/widget/AbsListView;->lookForSelectablePosition(IZ)I

    move-result p1

    .line 8221
    if-ltz p1, :cond_3

    .line 8222
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->setNextSelectedPositionInt(I)V

    goto :goto_0

    .line 8225
    :cond_2
    iput p1, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 8228
    :cond_3
    :goto_0
    if-ltz p1, :cond_6

    .line 8229
    const/4 v0, 0x4

    iput v0, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 8230
    iget-object v0, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, p2

    iput v0, p0, Landroid/widget/AbsListView;->mSpecificTop:I

    .line 8232
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mNeedSync:Z

    if-eqz v0, :cond_4

    .line 8233
    iput p1, p0, Landroid/widget/AbsListView;->mSyncPosition:I

    .line 8234
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/AbsListView;->mSyncRowId:J

    .line 8237
    :cond_4
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-eqz v0, :cond_5

    .line 8238
    invoke-virtual {v0}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    .line 8240
    :cond_5
    invoke-virtual {p0}, Landroid/widget/AbsListView;->requestLayout()V

    .line 8242
    :cond_6
    return-void
.end method

.method abstract greylist-max-o setSelectionInt(I)V
.end method

.method public whitelist setSelector(I)V
    .locals 1
    .param p1, "resID"    # I

    .line 3169
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 3170
    return-void
.end method

.method public whitelist setSelector(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "sel"    # Landroid/graphics/drawable/Drawable;

    .line 3173
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 3174
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 3175
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3177
    :cond_0
    iput-object p1, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 3178
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 3179
    .local v0, "padding":Landroid/graphics/Rect;
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 3180
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iput v1, p0, Landroid/widget/AbsListView;->mSelectionLeftPadding:I

    .line 3181
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iput v1, p0, Landroid/widget/AbsListView;->mSelectionTopPadding:I

    .line 3182
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iput v1, p0, Landroid/widget/AbsListView;->mSelectionRightPadding:I

    .line 3183
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iput v1, p0, Landroid/widget/AbsListView;->mSelectionBottomPadding:I

    .line 3184
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 3185
    invoke-virtual {p0}, Landroid/widget/AbsListView;->updateSelectorState()V

    .line 3186
    return-void
.end method

.method public whitelist setSmoothScrollbarEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 1606
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mSmoothScrollbarEnabled:Z

    .line 1607
    return-void
.end method

.method public whitelist setStackFromBottom(Z)V
    .locals 1
    .param p1, "stackFromBottom"    # Z

    .line 1909
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    if-eq v0, p1, :cond_0

    .line 1910
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    .line 1911
    invoke-virtual {p0}, Landroid/widget/AbsListView;->requestLayoutIfNecessary()V

    .line 1913
    :cond_0
    return-void
.end method

.method public blacklist setSweepListAnimator(Lcom/samsung/android/animation/SemSweepListAnimator;)V
    .locals 0
    .param p1, "animator"    # Lcom/samsung/android/animation/SemSweepListAnimator;

    .line 11410
    iput-object p1, p0, Landroid/widget/AbsListView;->mSweepListAnimator:Lcom/samsung/android/animation/SemSweepListAnimator;

    .line 11411
    return-void
.end method

.method public whitelist setTextFilterEnabled(Z)V
    .locals 0
    .param p1, "textFilterEnabled"    # Z

    .line 1853
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mTextFilterEnabled:Z

    .line 1854
    return-void
.end method

.method public whitelist setTopEdgeEffectColor(I)V
    .locals 1
    .param p1, "color"    # I

    .line 7380
    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v0, p1}, Landroid/widget/EdgeEffect;->setColor(I)V

    .line 7381
    invoke-direct {p0}, Landroid/widget/AbsListView;->invalidateEdgeEffects()V

    .line 7382
    return-void
.end method

.method public blacklist setTouchSlop(I)V
    .locals 0
    .param p1, "value"    # I

    .line 10564
    iput p1, p0, Landroid/widget/AbsListView;->mTouchSlop:I

    .line 10565
    return-void
.end method

.method public whitelist setTranscriptMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .line 7148
    iput p1, p0, Landroid/widget/AbsListView;->mTranscriptMode:I

    .line 7149
    return-void
.end method

.method public whitelist setVelocityScale(F)V
    .locals 0
    .param p1, "scale"    # F

    .line 5718
    iput p1, p0, Landroid/widget/AbsListView;->mVelocityScale:F

    .line 5719
    return-void
.end method

.method public whitelist setVerticalScrollbarPosition(I)V
    .locals 1
    .param p1, "position"    # I

    .line 1561
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->setVerticalScrollbarPosition(I)V

    .line 1562
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    if-eqz v0, :cond_0

    .line 1563
    invoke-virtual {v0, p1}, Landroid/widget/FastScroller;->setScrollbarPosition(I)V

    goto :goto_0

    .line 1564
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mSemFastScroll:Landroid/widget/SemFastScroller;

    if-eqz v0, :cond_1

    .line 1565
    invoke-virtual {v0, p1}, Landroid/widget/SemFastScroller;->setScrollbarPosition(I)V

    .line 1567
    :cond_1
    :goto_0
    return-void
.end method

.method greylist-max-o setVisibleRangeHint(II)V
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 7337
    iget-object v0, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    if-eqz v0, :cond_0

    .line 7338
    invoke-virtual {v0, p1, p2}, Landroid/widget/RemoteViewsAdapter;->setVisibleRangeHint(II)V

    .line 7340
    :cond_0
    return-void
.end method

.method public final blacklist shouldDrawSelector()Z
    .locals 1

    .line 3133
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method greylist-max-o shouldShowSelector()Z
    .locals 1

    .line 3102
    invoke-virtual {p0}, Landroid/widget/AbsListView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mIsHoveredByMouse:Z

    if-eqz v0, :cond_2

    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsListView;->touchModeDrawsInPressedState()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isPressed()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isHovered()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mIsHoveredByMouse:Z

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist showContextMenu()Z
    .locals 2

    .line 3733
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v0, v1}, Landroid/widget/AbsListView;->showContextMenuInternal(FFZ)Z

    move-result v0

    return v0
.end method

.method public whitelist showContextMenu(FF)Z
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 3738
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/AbsListView;->showContextMenuInternal(FFZ)Z

    move-result v0

    return v0
.end method

.method public whitelist showContextMenuForChild(Landroid/view/View;)Z
    .locals 2
    .param p1, "originalView"    # Landroid/view/View;

    .line 3768
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isShowingContextMenuWithCoords()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3769
    return v1

    .line 3771
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0, v1}, Landroid/widget/AbsListView;->showContextMenuForChildInternal(Landroid/view/View;FFZ)Z

    move-result v0

    return v0
.end method

.method public whitelist showContextMenuForChild(Landroid/view/View;FF)Z
    .locals 1
    .param p1, "originalView"    # Landroid/view/View;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .line 3776
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/AbsListView;->showContextMenuForChildInternal(Landroid/view/View;FFZ)Z

    move-result v0

    return v0
.end method

.method public whitelist smoothScrollBy(II)V
    .locals 1
    .param p1, "distance"    # I
    .param p2, "duration"    # I

    .line 5800
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v0}, Landroid/widget/AbsListView;->smoothScrollBy(IIZZ)V

    .line 5801
    return-void
.end method

.method greylist smoothScrollBy(IIZZ)V
    .locals 8
    .param p1, "distance"    # I
    .param p2, "duration"    # I
    .param p3, "linear"    # Z
    .param p4, "suppressEndFlingStateChangeCall"    # Z

    .line 5806
    iget-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-nez v0, :cond_0

    .line 5807
    new-instance v0, Landroid/widget/AbsListView$FlingRunnable;

    invoke-direct {v0, p0}, Landroid/widget/AbsListView$FlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    .line 5811
    :cond_0
    iget v0, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    .line 5812
    .local v0, "firstPos":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    .line 5813
    .local v1, "childCount":I
    add-int v2, v0, v1

    .line 5814
    .local v2, "lastPos":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getPaddingTop()I

    move-result v3

    .line 5815
    .local v3, "topLimit":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    .line 5817
    .local v4, "bottomLimit":I
    const/4 v5, 0x0

    if-eqz p1, :cond_3

    iget v6, p0, Landroid/widget/AbsListView;->mItemCount:I

    if-eqz v6, :cond_3

    if-eqz v1, :cond_3

    if-nez v0, :cond_1

    .line 5818
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

    .line 5820
    invoke-virtual {p0, v6}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v6

    if-ne v6, v4, :cond_2

    if-lez p1, :cond_2

    goto :goto_0

    .line 5826
    :cond_2
    const/4 v6, 0x2

    invoke-virtual {p0, v6}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 5827
    iget-object v6, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {v6, p1, p2, p3, p4}, Landroid/widget/AbsListView$FlingRunnable;->startScroll(IIZZ)V

    goto :goto_1

    .line 5821
    :cond_3
    :goto_0
    iget-object v6, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {v6}, Landroid/widget/AbsListView$FlingRunnable;->endFling()V

    .line 5822
    iget-object v6, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-eqz v6, :cond_4

    .line 5823
    invoke-virtual {v6}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    .line 5831
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

    .line 5832
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

    .line 5833
    iput-boolean v5, p0, Landroid/widget/AbsListView;->mSemCanGoFuther:Z

    .line 5834
    iget-object v5, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {v5}, Landroid/widget/AbsListView$FlingRunnable;->endFling()V

    .line 5835
    iget-object v5, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-eqz v5, :cond_5

    .line 5836
    invoke-virtual {v5}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    .line 5838
    :cond_5
    iget-boolean v5, p0, Landroid/widget/AbsListView;->mGoToToping:Z

    if-eqz v5, :cond_6

    .line 5839
    iget-object v5, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 5840
    iget-object v5, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    const/16 v6, 0x2710

    invoke-virtual {v5, v6}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    .line 5841
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidate()V

    .line 5845
    :cond_6
    return-void
.end method

.method greylist-max-o smoothScrollByOffset(I)V
    .locals 9
    .param p1, "position"    # I

    .line 5851
    const/4 v0, -0x1

    .line 5852
    .local v0, "index":I
    if-gez p1, :cond_0

    .line 5853
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v0

    goto :goto_0

    .line 5854
    :cond_0
    if-lez p1, :cond_1

    .line 5855
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v0

    .line 5858
    :cond_1
    :goto_0
    const/4 v1, -0x1

    if-le v0, v1, :cond_4

    .line 5859
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v1

    sub-int v1, v0, v1

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 5860
    .local v1, "child":Landroid/view/View;
    if-eqz v1, :cond_4

    .line 5861
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 5862
    .local v2, "visibleRect":Landroid/graphics/Rect;
    invoke-virtual {v1, v2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 5864
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v4

    mul-int/2addr v3, v4

    .line 5865
    .local v3, "childRectArea":I
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v5

    mul-int/2addr v4, v5

    .line 5866
    .local v4, "visibleRectArea":I
    int-to-float v5, v4

    int-to-float v6, v3

    div-float/2addr v5, v6

    .line 5867
    .local v5, "visibleArea":F
    const/high16 v6, 0x3f400000    # 0.75f

    .line 5868
    .local v6, "visibleThreshold":F
    const/high16 v7, 0x3f400000    # 0.75f

    if-gez p1, :cond_2

    cmpg-float v8, v5, v7

    if-gez v8, :cond_2

    .line 5871
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 5872
    :cond_2
    if-lez p1, :cond_3

    cmpg-float v7, v5, v7

    if-gez v7, :cond_3

    .line 5875
    add-int/lit8 v0, v0, -0x1

    .line 5878
    .end local v3    # "childRectArea":I
    .end local v4    # "visibleRectArea":I
    .end local v5    # "visibleArea":F
    .end local v6    # "visibleThreshold":F
    :cond_3
    :goto_1
    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getCount()I

    move-result v4

    add-int v5, v0, p1

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->smoothScrollToPosition(I)V

    .line 5881
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "visibleRect":Landroid/graphics/Rect;
    :cond_4
    return-void
.end method

.method public whitelist smoothScrollToPosition(I)V
    .locals 1
    .param p1, "position"    # I

    .line 5734
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-nez v0, :cond_0

    .line 5735
    invoke-virtual {p0}, Landroid/widget/AbsListView;->createPositionScroller()Landroid/widget/AbsListView$AbsPositionScroller;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    .line 5737
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {v0, p1}, Landroid/widget/AbsListView$AbsPositionScroller;->start(I)V

    .line 5738
    return-void
.end method

.method public whitelist smoothScrollToPosition(II)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "boundPosition"    # I

    .line 5788
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-nez v0, :cond_0

    .line 5789
    invoke-virtual {p0}, Landroid/widget/AbsListView;->createPositionScroller()Landroid/widget/AbsListView$AbsPositionScroller;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    .line 5791
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {v0, p1, p2}, Landroid/widget/AbsListView$AbsPositionScroller;->start(II)V

    .line 5792
    return-void
.end method

.method public whitelist smoothScrollToPositionFromTop(II)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "offset"    # I

    .line 5771
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-nez v0, :cond_0

    .line 5772
    invoke-virtual {p0}, Landroid/widget/AbsListView;->createPositionScroller()Landroid/widget/AbsListView$AbsPositionScroller;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    .line 5774
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {v0, p1, p2}, Landroid/widget/AbsListView$AbsPositionScroller;->startWithOffset(II)V

    .line 5775
    return-void
.end method

.method public whitelist smoothScrollToPositionFromTop(III)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "offset"    # I
    .param p3, "duration"    # I

    .line 5753
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-nez v0, :cond_0

    .line 5754
    invoke-virtual {p0}, Landroid/widget/AbsListView;->createPositionScroller()Landroid/widget/AbsListView$AbsPositionScroller;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    .line 5756
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {v0, p1, p2, p3}, Landroid/widget/AbsListView$AbsPositionScroller;->startWithOffset(III)V

    .line 5757
    return-void
.end method

.method greylist-max-o touchModeDrawsInPressedState()Z
    .locals 1

    .line 3081
    iget v0, p0, Landroid/widget/AbsListView;->mTouchMode:I

    packed-switch v0, :pswitch_data_0

    .line 3086
    const/4 v0, 0x0

    return v0

    .line 3084
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
    .param p1, "deltaY"    # I
    .param p2, "incrementalDeltaY"    # I

    .line 5964
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v3

    .line 5965
    .local v3, "childCount":I
    const/4 v4, 0x1

    if-nez v3, :cond_0

    .line 5966
    return v4

    .line 5969
    :cond_0
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v6

    .line 5970
    .local v6, "firstTop":I
    add-int/lit8 v7, v3, -0x1

    invoke-virtual {v0, v7}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v7

    .line 5972
    .local v7, "lastBottom":I
    iget-object v8, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 5977
    .local v8, "listPadding":Landroid/graphics/Rect;
    const/4 v9, 0x0

    .line 5978
    .local v9, "effectivePaddingTop":I
    const/4 v10, 0x0

    .line 5979
    .local v10, "effectivePaddingBottom":I
    iget v11, v0, Landroid/widget/AbsListView;->mGroupFlags:I

    const/16 v12, 0x22

    and-int/2addr v11, v12

    if-ne v11, v12, :cond_1

    .line 5980
    iget v9, v8, Landroid/graphics/Rect;->top:I

    .line 5981
    iget v10, v8, Landroid/graphics/Rect;->bottom:I

    .line 5985
    :cond_1
    sub-int v11, v9, v6

    .line 5986
    .local v11, "spaceAbove":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v13

    sub-int/2addr v13, v10

    .line 5987
    .local v13, "end":I
    sub-int v14, v7, v13

    .line 5989
    .local v14, "spaceBelow":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v15

    iget v5, v0, Landroid/widget/AbsListView;->mPaddingBottom:I

    sub-int/2addr v15, v5

    iget v5, v0, Landroid/widget/AbsListView;->mPaddingTop:I

    sub-int/2addr v15, v5

    .line 5990
    .local v15, "height":I
    if-gez v1, :cond_2

    .line 5991
    add-int/lit8 v5, v15, -0x1

    neg-int v5, v5

    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .end local p1    # "deltaY":I
    .local v1, "deltaY":I
    goto :goto_0

    .line 5993
    .end local v1    # "deltaY":I
    .restart local p1    # "deltaY":I
    :cond_2
    add-int/lit8 v5, v15, -0x1

    invoke-static {v5, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 5996
    .end local p1    # "deltaY":I
    .restart local v1    # "deltaY":I
    :goto_0
    if-gez v2, :cond_3

    .line 5997
    add-int/lit8 v5, v15, -0x1

    neg-int v5, v5

    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .end local p2    # "incrementalDeltaY":I
    .local v2, "incrementalDeltaY":I
    goto :goto_1

    .line 5999
    .end local v2    # "incrementalDeltaY":I
    .restart local p2    # "incrementalDeltaY":I
    :cond_3
    add-int/lit8 v5, v15, -0x1

    invoke-static {v5, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 6002
    .end local p2    # "incrementalDeltaY":I
    .restart local v2    # "incrementalDeltaY":I
    :goto_1
    iget v5, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    .line 6005
    .local v5, "firstPosition":I
    if-nez v5, :cond_4

    .line 6006
    iget v4, v8, Landroid/graphics/Rect;->top:I

    sub-int v4, v6, v4

    iput v4, v0, Landroid/widget/AbsListView;->mFirstPositionDistanceGuess:I

    goto :goto_2

    .line 6008
    :cond_4
    iget v4, v0, Landroid/widget/AbsListView;->mFirstPositionDistanceGuess:I

    add-int/2addr v4, v2

    iput v4, v0, Landroid/widget/AbsListView;->mFirstPositionDistanceGuess:I

    .line 6010
    :goto_2
    add-int v4, v5, v3

    iget v12, v0, Landroid/widget/AbsListView;->mItemCount:I

    if-ne v4, v12, :cond_5

    .line 6011
    iget v4, v8, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v7

    iput v4, v0, Landroid/widget/AbsListView;->mLastPositionDistanceGuess:I

    goto :goto_3

    .line 6013
    :cond_5
    iget v4, v0, Landroid/widget/AbsListView;->mLastPositionDistanceGuess:I

    add-int/2addr v4, v2

    iput v4, v0, Landroid/widget/AbsListView;->mLastPositionDistanceGuess:I

    .line 6016
    :goto_3
    if-nez v5, :cond_6

    iget v4, v8, Landroid/graphics/Rect;->top:I

    if-lt v6, v4, :cond_6

    if-ltz v2, :cond_6

    const/4 v4, 0x1

    goto :goto_4

    :cond_6
    const/4 v4, 0x0

    .line 6018
    .local v4, "cannotScrollDown":Z
    :goto_4
    add-int v12, v5, v3

    move/from16 v17, v6

    .end local v6    # "firstTop":I
    .local v17, "firstTop":I
    iget v6, v0, Landroid/widget/AbsListView;->mItemCount:I

    if-ne v12, v6, :cond_7

    .line 6019
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

    .line 6021
    .local v6, "cannotScrollUp":Z
    :goto_5
    if-nez v4, :cond_22

    if-eqz v6, :cond_8

    move/from16 v19, v1

    move/from16 v16, v3

    move/from16 p1, v4

    move/from16 p2, v6

    move/from16 v21, v7

    move/from16 v22, v9

    move/from16 v23, v10

    move/from16 v24, v13

    const/4 v1, 0x1

    const/4 v3, 0x0

    goto/16 :goto_12

    .line 6025
    :cond_8
    if-gez v2, :cond_9

    const/4 v12, 0x1

    goto :goto_6

    :cond_9
    const/4 v12, 0x0

    .line 6027
    .local v12, "down":Z
    :goto_6
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->isInTouchMode()Z

    move-result v18

    .line 6028
    .local v18, "inTouchMode":Z
    if-eqz v18, :cond_a

    .line 6029
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->hideSelector()V

    .line 6032
    :cond_a
    move/from16 p1, v4

    .end local v4    # "cannotScrollDown":Z
    .local p1, "cannotScrollDown":Z
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeaderViewsCount()I

    move-result v4

    .line 6033
    .local v4, "headerViewsCount":I
    move/from16 p2, v6

    .end local v6    # "cannotScrollUp":Z
    .local p2, "cannotScrollUp":Z
    iget v6, v0, Landroid/widget/AbsListView;->mItemCount:I

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getFooterViewsCount()I

    move-result v19

    sub-int v6, v6, v19

    .line 6035
    .local v6, "footerViewsStart":I
    const/16 v19, 0x0

    .line 6036
    .local v19, "start":I
    const/16 v20, 0x0

    .line 6038
    .local v20, "count":I
    if-eqz v12, :cond_f

    .line 6039
    move/from16 v21, v7

    .end local v7    # "lastBottom":I
    .local v21, "lastBottom":I
    neg-int v7, v2

    .line 6040
    .local v7, "top":I
    move/from16 v22, v9

    .end local v9    # "effectivePaddingTop":I
    .local v22, "effectivePaddingTop":I
    iget v9, v0, Landroid/widget/AbsListView;->mGroupFlags:I

    move/from16 v23, v10

    const/16 v10, 0x22

    .end local v10    # "effectivePaddingBottom":I
    .local v23, "effectivePaddingBottom":I
    and-int/2addr v9, v10

    if-ne v9, v10, :cond_b

    .line 6041
    iget v9, v8, Landroid/graphics/Rect;->top:I

    add-int/2addr v7, v9

    .line 6043
    :cond_b
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_7
    if-ge v9, v3, :cond_e

    .line 6044
    invoke-virtual {v0, v9}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 6045
    .local v10, "child":Landroid/view/View;
    move/from16 v24, v13

    .end local v13    # "end":I
    .local v24, "end":I
    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v13

    if-lt v13, v7, :cond_c

    .line 6046
    goto :goto_9

    .line 6048
    :cond_c
    add-int/lit8 v20, v20, 0x1

    .line 6049
    add-int v13, v5, v9

    .line 6053
    .local v13, "position":I
    invoke-virtual {v10}, Landroid/view/View;->clearAccessibilityFocus()V

    .line 6054
    if-lt v13, v4, :cond_d

    if-ge v13, v6, :cond_d

    .line 6055
    move/from16 v16, v7

    .end local v7    # "top":I
    .local v16, "top":I
    iget-object v7, v0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v7, v10, v13}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    goto :goto_8

    .line 6054
    .end local v16    # "top":I
    .restart local v7    # "top":I
    :cond_d
    move/from16 v16, v7

    .line 6043
    .end local v7    # "top":I
    .end local v10    # "child":Landroid/view/View;
    .end local v13    # "position":I
    .restart local v16    # "top":I
    :goto_8
    add-int/lit8 v9, v9, 0x1

    move/from16 v7, v16

    move/from16 v13, v24

    goto :goto_7

    .end local v16    # "top":I
    .end local v24    # "end":I
    .restart local v7    # "top":I
    .local v13, "end":I
    :cond_e
    move/from16 v16, v7

    move/from16 v24, v13

    .line 6060
    .end local v7    # "top":I
    .end local v9    # "i":I
    .end local v13    # "end":I
    .restart local v24    # "end":I
    :goto_9
    move/from16 v16, v3

    move/from16 v3, v19

    move/from16 v7, v20

    goto :goto_d

    .line 6061
    .end local v21    # "lastBottom":I
    .end local v22    # "effectivePaddingTop":I
    .end local v23    # "effectivePaddingBottom":I
    .end local v24    # "end":I
    .local v7, "lastBottom":I
    .local v9, "effectivePaddingTop":I
    .local v10, "effectivePaddingBottom":I
    .restart local v13    # "end":I
    :cond_f
    move/from16 v21, v7

    move/from16 v22, v9

    move/from16 v23, v10

    move/from16 v24, v13

    .end local v7    # "lastBottom":I
    .end local v9    # "effectivePaddingTop":I
    .end local v10    # "effectivePaddingBottom":I
    .end local v13    # "end":I
    .restart local v21    # "lastBottom":I
    .restart local v22    # "effectivePaddingTop":I
    .restart local v23    # "effectivePaddingBottom":I
    .restart local v24    # "end":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v7

    sub-int/2addr v7, v2

    .line 6062
    .local v7, "bottom":I
    iget v9, v0, Landroid/widget/AbsListView;->mGroupFlags:I

    const/16 v10, 0x22

    and-int/2addr v9, v10

    if-ne v9, v10, :cond_10

    .line 6063
    iget v9, v8, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v9

    .line 6065
    :cond_10
    add-int/lit8 v9, v3, -0x1

    .local v9, "i":I
    :goto_a
    if-ltz v9, :cond_13

    .line 6066
    invoke-virtual {v0, v9}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 6067
    .local v10, "child":Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v13

    if-gt v13, v7, :cond_11

    .line 6068
    move/from16 v16, v3

    goto :goto_c

    .line 6070
    :cond_11
    move/from16 v19, v9

    .line 6071
    add-int/lit8 v20, v20, 0x1

    .line 6072
    add-int v13, v5, v9

    .line 6076
    .local v13, "position":I
    invoke-virtual {v10}, Landroid/view/View;->clearAccessibilityFocus()V

    .line 6077
    if-lt v13, v4, :cond_12

    if-ge v13, v6, :cond_12

    .line 6078
    move/from16 v16, v3

    .end local v3    # "childCount":I
    .local v16, "childCount":I
    iget-object v3, v0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v3, v10, v13}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    goto :goto_b

    .line 6077
    .end local v16    # "childCount":I
    .restart local v3    # "childCount":I
    :cond_12
    move/from16 v16, v3

    .line 6065
    .end local v3    # "childCount":I
    .end local v10    # "child":Landroid/view/View;
    .end local v13    # "position":I
    .restart local v16    # "childCount":I
    :goto_b
    add-int/lit8 v9, v9, -0x1

    move/from16 v3, v16

    goto :goto_a

    .end local v16    # "childCount":I
    .restart local v3    # "childCount":I
    :cond_13
    move/from16 v16, v3

    .line 6085
    .end local v3    # "childCount":I
    .end local v7    # "bottom":I
    .end local v9    # "i":I
    .restart local v16    # "childCount":I
    :goto_c
    move/from16 v3, v19

    move/from16 v7, v20

    .end local v19    # "start":I
    .end local v20    # "count":I
    .local v3, "start":I
    .local v7, "count":I
    :goto_d
    iget v9, v0, Landroid/widget/AbsListView;->mMotionViewOriginalTop:I

    add-int/2addr v9, v1

    iput v9, v0, Landroid/widget/AbsListView;->mMotionViewNewTop:I

    .line 6087
    const/4 v9, 0x1

    iput-boolean v9, v0, Landroid/widget/AbsListView;->mBlockLayoutRequests:Z

    .line 6089
    if-lez v7, :cond_14

    .line 6090
    invoke-virtual {v0, v3, v7}, Landroid/widget/AbsListView;->detachViewsFromParent(II)V

    .line 6091
    iget-object v9, v0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v9}, Landroid/widget/AbsListView$RecycleBin;->removeSkippedScrap()V

    .line 6096
    :cond_14
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->awakenScrollBars()Z

    move-result v9

    if-nez v9, :cond_15

    .line 6097
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->invalidate()V

    .line 6100
    :cond_15
    invoke-virtual {v0, v2}, Landroid/widget/AbsListView;->offsetChildrenTopAndBottom(I)V

    .line 6102
    if-eqz v12, :cond_16

    .line 6103
    iget v9, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    add-int/2addr v9, v7

    iput v9, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    .line 6106
    :cond_16
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v9

    .line 6107
    .local v9, "absIncrementalDeltaY":I
    if-lt v11, v9, :cond_17

    if-ge v14, v9, :cond_18

    .line 6108
    :cond_17
    invoke-virtual {v0, v12}, Landroid/widget/AbsListView;->fillGap(Z)V

    .line 6111
    :cond_18
    iget-object v10, v0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v10}, Landroid/widget/AbsListView$RecycleBin;->fullyDetachScrapViews()V

    .line 6112
    const/4 v10, 0x0

    .line 6113
    .local v10, "selectorOnScreen":Z
    const/4 v13, -0x1

    if-nez v18, :cond_1b

    move/from16 v19, v1

    .end local v1    # "deltaY":I
    .local v19, "deltaY":I
    iget v1, v0, Landroid/widget/AbsListView;->mSelectedPosition:I

    if-eq v1, v13, :cond_1a

    .line 6114
    iget v1, v0, Landroid/widget/AbsListView;->mSelectedPosition:I

    iget v13, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int/2addr v1, v13

    .line 6115
    .local v1, "childIndex":I
    if-ltz v1, :cond_19

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v13

    if-ge v1, v13, :cond_19

    .line 6116
    iget v13, v0, Landroid/widget/AbsListView;->mSelectedPosition:I

    move/from16 v20, v3

    .end local v3    # "start":I
    .local v20, "start":I
    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v0, v13, v3}, Landroid/widget/AbsListView;->positionSelector(ILandroid/view/View;)V

    .line 6117
    const/4 v10, 0x1

    goto :goto_e

    .line 6115
    .end local v20    # "start":I
    .restart local v3    # "start":I
    :cond_19
    move/from16 v20, v3

    .line 6119
    .end local v1    # "childIndex":I
    .end local v3    # "start":I
    .restart local v20    # "start":I
    :goto_e
    goto/16 :goto_11

    .line 6113
    .end local v20    # "start":I
    .restart local v3    # "start":I
    :cond_1a
    move/from16 v20, v3

    .end local v3    # "start":I
    .restart local v20    # "start":I
    goto :goto_f

    .end local v19    # "deltaY":I
    .end local v20    # "start":I
    .local v1, "deltaY":I
    .restart local v3    # "start":I
    :cond_1b
    move/from16 v19, v1

    move/from16 v20, v3

    .line 6120
    .end local v1    # "deltaY":I
    .end local v3    # "start":I
    .restart local v19    # "deltaY":I
    .restart local v20    # "start":I
    :goto_f
    iget-boolean v1, v0, Landroid/widget/AbsListView;->mIsMouseHoverScroll:Z

    if-eqz v1, :cond_1d

    iget v1, v0, Landroid/widget/AbsListView;->mSelectorPosition:I

    if-eq v1, v13, :cond_1d

    .line 6121
    iget v1, v0, Landroid/widget/AbsListView;->mIsMouseHoverScrollX:I

    iget v3, v0, Landroid/widget/AbsListView;->mIsMouseHoverScrollY:I

    invoke-virtual {v0, v1, v3}, Landroid/widget/AbsListView;->pointToPosition(II)I

    move-result v1

    iput v1, v0, Landroid/widget/AbsListView;->mSelectorPosition:I

    .line 6122
    iget v3, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int/2addr v1, v3

    .line 6123
    .local v1, "childIndex":I
    iget v3, v0, Landroid/widget/AbsListView;->mSelectorPosition:I

    if-eq v3, v13, :cond_1e

    .line 6124
    if-ltz v1, :cond_1c

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_1c

    iget-object v3, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    iget v13, v0, Landroid/widget/AbsListView;->mSelectorPosition:I

    invoke-interface {v3, v13}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 6125
    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const/4 v13, -0x1

    invoke-virtual {v0, v13, v3}, Landroid/widget/AbsListView;->positionSelector(ILandroid/view/View;)V

    goto :goto_10

    .line 6126
    :cond_1c
    if-ltz v1, :cond_1e

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_1e

    iget-object v3, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    iget v13, v0, Landroid/widget/AbsListView;->mSelectorPosition:I

    invoke-interface {v3, v13}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v3

    if-nez v3, :cond_1e

    .line 6127
    iget-object v3, v0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_10

    .line 6131
    .end local v1    # "childIndex":I
    :cond_1d
    iget v1, v0, Landroid/widget/AbsListView;->mSelectorPosition:I

    const/4 v3, -0x1

    if-eq v1, v3, :cond_1e

    .line 6132
    iget v3, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int/2addr v1, v3

    .line 6133
    .restart local v1    # "childIndex":I
    if-ltz v1, :cond_1f

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_1f

    .line 6134
    iget v3, v0, Landroid/widget/AbsListView;->mSelectorPosition:I

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v0, v3, v13}, Landroid/widget/AbsListView;->positionSelector(ILandroid/view/View;)V

    .line 6135
    const/4 v10, 0x1

    goto :goto_11

    .line 6131
    .end local v1    # "childIndex":I
    :cond_1e
    :goto_10
    nop

    .line 6138
    :cond_1f
    :goto_11
    if-nez v10, :cond_20

    .line 6139
    iget-object v1, v0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    .line 6142
    :cond_20
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/widget/AbsListView;->mBlockLayoutRequests:Z

    .line 6143
    iget-boolean v1, v0, Landroid/widget/AbsListView;->mSemEnableGoToTop:Z

    if-eqz v1, :cond_21

    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->canScrollUp()Z

    move-result v1

    if-eqz v1, :cond_21

    iget v1, v0, Landroid/widget/AbsListView;->mSemGoToTopState:I

    if-nez v1, :cond_21

    .line 6144
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->semSetupGoToTop(I)V

    .line 6145
    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->semAutoHide(I)V

    .line 6147
    :cond_21
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->invokeOnItemScrollListener()V

    .line 6149
    const/4 v3, 0x0

    return v3

    .line 6021
    .end local v12    # "down":Z
    .end local v16    # "childCount":I
    .end local v18    # "inTouchMode":Z
    .end local v19    # "deltaY":I
    .end local v20    # "start":I
    .end local v21    # "lastBottom":I
    .end local v22    # "effectivePaddingTop":I
    .end local v23    # "effectivePaddingBottom":I
    .end local v24    # "end":I
    .end local p1    # "cannotScrollDown":Z
    .end local p2    # "cannotScrollUp":Z
    .local v1, "deltaY":I
    .local v3, "childCount":I
    .local v4, "cannotScrollDown":Z
    .local v6, "cannotScrollUp":Z
    .local v7, "lastBottom":I
    .local v9, "effectivePaddingTop":I
    .local v10, "effectivePaddingBottom":I
    .local v13, "end":I
    :cond_22
    move/from16 v19, v1

    move/from16 v16, v3

    move/from16 p1, v4

    move/from16 p2, v6

    move/from16 v21, v7

    move/from16 v22, v9

    move/from16 v23, v10

    move/from16 v24, v13

    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 6022
    .end local v1    # "deltaY":I
    .end local v3    # "childCount":I
    .end local v4    # "cannotScrollDown":Z
    .end local v6    # "cannotScrollUp":Z
    .end local v7    # "lastBottom":I
    .end local v9    # "effectivePaddingTop":I
    .end local v10    # "effectivePaddingBottom":I
    .end local v13    # "end":I
    .restart local v16    # "childCount":I
    .restart local v19    # "deltaY":I
    .restart local v21    # "lastBottom":I
    .restart local v22    # "effectivePaddingTop":I
    .restart local v23    # "effectivePaddingBottom":I
    .restart local v24    # "end":I
    .restart local p1    # "cannotScrollDown":Z
    .restart local p2    # "cannotScrollUp":Z
    :goto_12
    if-eqz v2, :cond_23

    move v4, v1

    goto :goto_13

    :cond_23
    move v4, v3

    :goto_13
    return v4
.end method

.method blacklist triggerDoubleFling(I)V
    .locals 4
    .param p1, "initialVelocity"    # I

    .line 11383
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 11384
    .local v0, "adapterCount":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    .line 11386
    .local v1, "visibleItemsCount":I
    if-lez p1, :cond_1

    .line 11387
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v2

    mul-int/lit8 v3, v1, 0x2

    if-le v2, v3, :cond_0

    .line 11388
    mul-int/lit8 v2, v1, 0x2

    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->setSelection(I)V

    .line 11390
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->smoothScrollToPosition(I)V

    goto :goto_0

    .line 11391
    :cond_1
    if-gez p1, :cond_3

    .line 11392
    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v3

    sub-int/2addr v2, v3

    mul-int/lit8 v3, v1, 0x3

    if-le v2, v3, :cond_2

    .line 11393
    add-int/lit8 v2, v0, -0x1

    mul-int/lit8 v3, v1, 0x3

    sub-int/2addr v2, v3

    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->setSelection(I)V

    .line 11395
    :cond_2
    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->smoothScrollToPosition(I)V

    .line 11397
    :cond_3
    :goto_0
    return-void
.end method

.method public blacklist triggerJumpScrollToTop()V
    .locals 1

    .line 11366
    sget v0, Landroid/widget/AbsListView;->JUMP_SCROLL_TO_TOP_INITIATED:I

    iput v0, p0, Landroid/widget/AbsListView;->mJumpScrollToTopState:I

    .line 11367
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->triggerDoubleFling(I)V

    .line 11368
    return-void
.end method

.method public blacklist updateCustomEdgeGlow(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "edgeeffectCustomEdge"    # Landroid/graphics/drawable/Drawable;
    .param p2, "edgeeffectCustomGlow"    # Landroid/graphics/drawable/Drawable;

    .line 11546
    return-void
.end method

.method greylist-max-o updateScrollIndicators()V
    .locals 4

    .line 2471
    iget-object v0, p0, Landroid/widget/AbsListView;->mScrollUp:Landroid/view/View;

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-eqz v0, :cond_1

    .line 2472
    invoke-direct {p0}, Landroid/widget/AbsListView;->canScrollUp()Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2475
    :cond_1
    iget-object v0, p0, Landroid/widget/AbsListView;->mScrollDown:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 2476
    invoke-direct {p0}, Landroid/widget/AbsListView;->canScrollDown()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2478
    :cond_3
    return-void
.end method

.method greylist updateSelectorState()V
    .locals 2

    .line 3257
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 3258
    .local v0, "selector":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    .line 3259
    invoke-virtual {p0}, Landroid/widget/AbsListView;->shouldShowSelector()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3260
    invoke-direct {p0}, Landroid/widget/AbsListView;->getDrawableStateForSelector()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3261
    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 3264
    :cond_0
    sget-object v1, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 3267
    :cond_1
    :goto_0
    return-void
.end method

.method public whitelist verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "dr"    # Landroid/graphics/drawable/Drawable;

    .line 3312
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
