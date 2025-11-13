.class public abstract Landroid/widget/SemHorizontalAbsListView;
.super Landroid/widget/AdapterView;
.source "SemHorizontalAbsListView.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/widget/Filter$FilterListener;
.implements Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;
.implements Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;,
        Landroid/widget/SemHorizontalAbsListView$PositionScroller;,
        Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;,
        Landroid/widget/SemHorizontalAbsListView$RecycleBin;,
        Landroid/widget/SemHorizontalAbsListView$RecyclerListener;,
        Landroid/widget/SemHorizontalAbsListView$LayoutParams;,
        Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeWrapper;,
        Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeListener;,
        Landroid/widget/SemHorizontalAbsListView$AdapterDataSetObserver;,
        Landroid/widget/SemHorizontalAbsListView$InputConnectionWrapper;,
        Landroid/widget/SemHorizontalAbsListView$SemSmoothScrollByMove;,
        Landroid/widget/SemHorizontalAbsListView$FlingRunnable;,
        Landroid/widget/SemHorizontalAbsListView$CheckForTap;,
        Landroid/widget/SemHorizontalAbsListView$CheckForKeyLongPress;,
        Landroid/widget/SemHorizontalAbsListView$CheckForLongPress;,
        Landroid/widget/SemHorizontalAbsListView$PerformClick;,
        Landroid/widget/SemHorizontalAbsListView$WindowRunnnable;,
        Landroid/widget/SemHorizontalAbsListView$ListItemAccessibilityDelegate;,
        Landroid/widget/SemHorizontalAbsListView$SavedState;,
        Landroid/widget/SemHorizontalAbsListView$OnScrollListener;
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

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final blacklist CHECK_POSITION_SEARCH_DISTANCE:I = 0x14

.field public static final whitelist CHOICE_MODE_MULTIPLE:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist CHOICE_MODE_MULTIPLE_MODAL:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist CHOICE_MODE_NONE:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist CHOICE_MODE_SINGLE:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final blacklist DEBUG:Z = false

.field private static blacklist DEBUG_VELOCITY_TRACKER_TRACE:Z = false

.field private static final blacklist DRAGSCROLL_WORKING_ZONE_DP:I = 0x19

.field private static final blacklist HOVERSCROLL_LEFT:I = 0x1

.field private static final blacklist HOVERSCROLL_RIGHT:I = 0x2

.field private static final blacklist HOVERSCROLL_WIDTH_LEFT_DP:I = 0x19

.field private static final blacklist HOVERSCROLL_WIDTH_RIGHT_DP:I = 0x19

.field private static final blacklist INVALID_POINTER:I = -0x1

.field private static blacklist JUMP_SCROLL_TO_TOP_FINISHING:I = 0x0

.field private static blacklist JUMP_SCROLL_TO_TOP_IDLE:I = 0x0

.field private static blacklist JUMP_SCROLL_TO_TOP_INITIATED:I = 0x0

.field static final blacklist LAYOUT_FORCE_BOTTOM:I = 0x3

.field static final blacklist LAYOUT_FORCE_TOP:I = 0x1

.field static final blacklist LAYOUT_MOVE_SELECTION:I = 0x6

.field static final blacklist LAYOUT_NORMAL:I = 0x0

.field static final blacklist LAYOUT_SET_SELECTION:I = 0x2

.field static final blacklist LAYOUT_SPECIFIC:I = 0x4

.field static final blacklist LAYOUT_SYNC:I = 0x5

.field private static final blacklist MSG_HOVERSCROLL_MOVE:I = 0x1

.field static final blacklist OVERSCROLL_LIMIT_DIVISOR:I = 0x3

.field private static final blacklist PROFILE_FLINGING:Z = false

.field private static final blacklist PROFILE_SCROLLING:Z = false

.field private static final blacklist SAVED_STATE_KEY_FOR_BUNDLE:Ljava/lang/String; = "android.widget.SemHorizontalAbsListView.SavedState"

.field private static final blacklist TAG:Ljava/lang/String; = "SemHorizontalAbsListView"

.field static final blacklist TOUCH_MODE_DONE_WAITING:I = 0x2

.field static final blacklist TOUCH_MODE_DOWN:I = 0x0

.field static final blacklist TOUCH_MODE_FLING:I = 0x4

.field private static final blacklist TOUCH_MODE_OFF:I = 0x1

.field private static final blacklist TOUCH_MODE_ON:I = 0x0

.field static final blacklist TOUCH_MODE_OVERFLING:I = 0x6

.field static final blacklist TOUCH_MODE_OVERSCROLL:I = 0x5

.field static final blacklist TOUCH_MODE_REST:I = -0x1

.field static final blacklist TOUCH_MODE_SCROLL:I = 0x3

.field static final blacklist TOUCH_MODE_TAP:I = 0x1

.field private static final blacklist TOUCH_MODE_UNKNOWN:I = -0x1

.field public static final whitelist TRANSCRIPT_MODE_ALWAYS_SCROLL:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist TRANSCRIPT_MODE_DISABLED:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist TRANSCRIPT_MODE_NORMAL:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static blacklist mSemScrollAmount:I

.field static final blacklist sLinearInterpolator:Landroid/view/animation/Interpolator;


# instance fields
.field private blacklist HOVERSCROLL_DELAY:I

.field private blacklist HOVERSCROLL_SPEED:F

.field private blacklist mAccessibilityDelegate:Landroid/widget/SemHorizontalAbsListView$ListItemAccessibilityDelegate;

.field private blacklist mActivePointerId:I

.field blacklist mAdapter:Landroid/widget/ListAdapter;

.field blacklist mAdapterHasStableIds:Z

.field private blacklist mCacheColorHint:I

.field blacklist mCachingActive:Z

.field blacklist mCachingStarted:Z

.field blacklist mCheckStates:Landroid/util/SparseBooleanArray;

.field blacklist mCheckedIdStates:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field blacklist mCheckedItemCount:I

.field blacklist mChoiceActionMode:Landroid/view/ActionMode;

.field blacklist mChoiceMode:I

.field private blacklist mClearScrollingCache:Ljava/lang/Runnable;

.field private blacklist mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

.field private blacklist mCurrentKeyCode:I

.field private blacklist mDVFSLockAcquired:Z

.field blacklist mDataSetObserver:Landroid/widget/SemHorizontalAbsListView$AdapterDataSetObserver;

.field private blacklist mDefInputConnection:Landroid/view/inputmethod/InputConnection;

.field private blacklist mDeferNotifyDataSetChanged:Z

.field private blacklist mDensityScale:F

.field private blacklist mDirection:I

.field private blacklist mDragScrollWorkingZonePx:I

.field blacklist mDrawSelectorOnTop:Z

.field private blacklist mEdgeGlowLeft:Landroid/widget/EdgeEffect;

.field private blacklist mEdgeGlowRight:Landroid/widget/EdgeEffect;

.field private blacklist mEnableVibrationAtLongPress:Z

.field private blacklist mExtraPaddingInLeftHoverArea:I

.field private blacklist mExtraPaddingInRightHoverArea:I

.field private blacklist mFastScroll:Lcom/samsung/android/widget/SemHorizontalFastScroller;

.field blacklist mFastScrollAlwaysVisible:Z

.field blacklist mFastScrollEnabled:Z

.field private blacklist mFastScrollStyle:I

.field private blacklist mFiltered:Z

.field private blacklist mFirstPositionDistanceGuess:I

.field private blacklist mFirstPressedPoint:I

.field private blacklist mFlingProfilingStarted:Z

.field private blacklist mFlingRunnable:Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

.field private blacklist mFlingStrictSpan:Landroid/os/StrictMode$Span;

.field private blacklist mForceTranscriptScroll:Z

.field private blacklist mForcedClick:Z

.field private blacklist mGlobalLayoutListenerAddedFilter:Z

.field private blacklist mGlowPaddingBottom:I

.field private blacklist mGlowPaddingTop:I

.field private blacklist mHapticOverScroll:Z

.field private blacklist mHasWindowFocusForMotion:Z

.field blacklist mHeightMeasureSpec:I

.field public blacklist mHoverAreaEnter:Z

.field private blacklist mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

.field private blacklist mHoverLeftAreaWidth:I

.field private blacklist mHoverPosition:I

.field private blacklist mHoverRecognitionCurrentTime:J

.field private blacklist mHoverRecognitionDurationTime:J

.field private blacklist mHoverRecognitionStartTime:J

.field private blacklist mHoverRightAreaWidth:I

.field private blacklist mHoverScrollDirection:I

.field private blacklist mHoverScrollEnable:Z

.field private blacklist mHoverScrollSpeed:I

.field private blacklist mHoverScrollStartTime:J

.field private blacklist mHoverScrollStateChanged:Z

.field private blacklist mHoverScrollStateForListener:I

.field private blacklist mHoverScrollTimeInterval:J

.field private blacklist mHoveredOnEllipsizedText:Z

.field blacklist mHoveringEnabled:Z

.field private blacklist mIsChildViewEnabled:Z

.field private blacklist mIsCloseChildSetted:Z

.field private blacklist mIsCtrlkeyPressed:Z

.field private blacklist mIsDetaching:Z

.field private blacklist mIsDragBlockEnabled:Z

.field private blacklist mIsDragScrolled:Z

.field private blacklist mIsEnabledPaddingInHoverScroll:Z

.field private blacklist mIsHoverOverscrolled:Z

.field private blacklist mIsHoveredByMouse:Z

.field private blacklist mIsMultiFocusEnabled:Z

.field private blacklist mIsNeedPenSelectIconSet:Z

.field private blacklist mIsNeedPenSelection:Z

.field private blacklist mIsPenHovered:Z

.field private blacklist mIsPenPressed:Z

.field private blacklist mIsPenSelectPointerSetted:Z

.field blacklist mIsRTL:Z

.field final blacklist mIsScrap:[Z

.field private blacklist mIsSendHoverScrollState:Z

.field private blacklist mIsShiftkeyPressed:Z

.field private blacklist mIsTextSelectionStarted:Z

.field private blacklist mIsfirstMoveEvent:Z

.field private blacklist mJumpScrollToTopState:I

.field private blacklist mLastAccessibilityScrollEventFromIndex:I

.field private blacklist mLastAccessibilityScrollEventToIndex:I

.field private blacklist mLastHandledItemCount:I

.field private blacklist mLastPosition:I

.field private blacklist mLastPositionDistanceGuess:I

.field blacklist mLastScrollState:I

.field private blacklist mLastTouchMode:I

.field blacklist mLastX:I

.field blacklist mLayoutMode:I

.field blacklist mListPadding:Landroid/graphics/Rect;

.field private blacklist mMaximumVelocity:I

.field private blacklist mMinimumVelocity:I

.field blacklist mMotionCorrection:I

.field blacklist mMotionPosition:I

.field blacklist mMotionViewNewLeft:I

.field blacklist mMotionViewOriginalLeft:I

.field blacklist mMotionX:I

.field blacklist mMotionY:I

.field blacklist mMultiChoiceModeCallback:Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeWrapper;

.field private blacklist mMultiFocusImage:Landroid/graphics/drawable/Drawable;

.field private blacklist mNeedsHoverScroll:Z

.field private blacklist mNestedXOffset:I

.field private blacklist mNewTextViewHoverState:Z

.field private blacklist mOldAdapterItemCount:I

.field private blacklist mOldHoverScrollDirection:I

.field private blacklist mOldKeyCode:I

.field private blacklist mOldTextViewHoverState:Z

.field private blacklist mOnScrollListener:Landroid/widget/SemHorizontalAbsListView$OnScrollListener;

.field blacklist mOverflingDistance:I

.field blacklist mOverscrollDistance:I

.field blacklist mOverscrollMax:I

.field private final blacklist mOwnerThread:Ljava/lang/Thread;

.field private blacklist mPenDragScrollTimeInterval:J

.field private blacklist mPendingCheckForKeyLongPress:Landroid/widget/SemHorizontalAbsListView$CheckForKeyLongPress;

.field private blacklist mPendingCheckForLongPress:Landroid/widget/SemHorizontalAbsListView$CheckForLongPress;

.field private blacklist mPendingCheckForTap:Landroid/widget/SemHorizontalAbsListView$CheckForTap;

.field private blacklist mPendingSync:Landroid/widget/SemHorizontalAbsListView$SavedState;

.field private blacklist mPerformClick:Landroid/widget/SemHorizontalAbsListView$PerformClick;

.field private blacklist mPointerCount:I

.field blacklist mPopup:Landroid/widget/PopupWindow;

.field private blacklist mPopupHidden:Z

.field blacklist mPositionScrollAfterLayout:Ljava/lang/Runnable;

.field blacklist mPositionScroller:Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;

.field private blacklist mPreviousTextViewScroll:Z

.field private blacklist mPublicInputConnection:Landroid/widget/SemHorizontalAbsListView$InputConnectionWrapper;

.field final blacklist mRecycler:Landroid/widget/SemHorizontalAbsListView$RecycleBin;

.field private blacklist mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

.field blacklist mResurrectToPosition:I

.field private final blacklist mScrollConsumed:[I

.field blacklist mScrollLeft:Landroid/view/View;

.field private final blacklist mScrollOffset:[I

.field private blacklist mScrollProfilingStarted:Z

.field blacklist mScrollRight:Landroid/view/View;

.field private blacklist mScrollStrictSpan:Landroid/os/StrictMode$Span;

.field blacklist mScrollingCacheEnabled:Z

.field private blacklist mSecondPressedPoint:I

.field blacklist mSelectedLeft:I

.field blacklist mSelectionBottomPadding:I

.field blacklist mSelectionLeftPadding:I

.field blacklist mSelectionRightPadding:I

.field blacklist mSelectionTopPadding:I

.field blacklist mSelector:Landroid/graphics/drawable/Drawable;

.field blacklist mSelectorPosition:I

.field blacklist mSelectorRect:Landroid/graphics/Rect;

.field private blacklist mSemCloseChildByLeft:Landroid/view/View;

.field private blacklist mSemCloseChildByRight:Landroid/view/View;

.field private blacklist mSemCloseChildPositionByLeft:I

.field private blacklist mSemCloseChildPositionByRight:I

.field protected blacklist mSemCurrentFocusPosition:I

.field private blacklist mSemCustomMultiChoiceMode:Z

.field private blacklist mSemDistanceFromCloseChildLeft:I

.field private blacklist mSemDistanceFromCloseChildRight:I

.field private blacklist mSemDistanceFromTrackedChildLeft:I

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

.field private blacklist mSemIsOnClickEnabled:Z

.field private blacklist mSemPressItemListArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mSemScrollRemains:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mSemSmoothScrollByMove:Landroid/widget/SemHorizontalAbsListView$SemSmoothScrollByMove;

.field private blacklist mSemTrackedChild:Landroid/view/View;

.field private blacklist mSemTrackedChildPosition:I

.field private blacklist mSmoothScrollbarEnabled:Z

.field blacklist mStackFromBottom:Z

.field blacklist mTextFilter:Landroid/widget/EditText;

.field private blacklist mTextFilterEnabled:Z

.field private blacklist mTouchFrame:Landroid/graphics/Rect;

.field blacklist mTouchMode:I

.field private blacklist mTouchModeReset:Ljava/lang/Runnable;

.field private blacklist mTouchSlop:I

.field private blacklist mTranscriptMode:I

.field private blacklist mVelocityScale:F

.field private blacklist mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmActivePointerId(Landroid/widget/SemHorizontalAbsListView;)I
    .locals 0

    iget p0, p0, Landroid/widget/SemHorizontalAbsListView;->mActivePointerId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDefInputConnection(Landroid/widget/SemHorizontalAbsListView;)Landroid/view/inputmethod/InputConnection;
    .locals 0

    iget-object p0, p0, Landroid/widget/SemHorizontalAbsListView;->mDefInputConnection:Landroid/view/inputmethod/InputConnection;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmEdgeGlowLeft(Landroid/widget/SemHorizontalAbsListView;)Landroid/widget/EdgeEffect;
    .locals 0

    iget-object p0, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmEdgeGlowRight(Landroid/widget/SemHorizontalAbsListView;)Landroid/widget/EdgeEffect;
    .locals 0

    iget-object p0, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFastScroll(Landroid/widget/SemHorizontalAbsListView;)Lcom/samsung/android/widget/SemHorizontalFastScroller;
    .locals 0

    iget-object p0, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScroll:Lcom/samsung/android/widget/SemHorizontalFastScroller;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFirstPressedPoint(Landroid/widget/SemHorizontalAbsListView;)I
    .locals 0

    iget p0, p0, Landroid/widget/SemHorizontalAbsListView;->mFirstPressedPoint:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFlingRunnable(Landroid/widget/SemHorizontalAbsListView;)Landroid/widget/SemHorizontalAbsListView$FlingRunnable;
    .locals 0

    iget-object p0, p0, Landroid/widget/SemHorizontalAbsListView;->mFlingRunnable:Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFlingStrictSpan(Landroid/widget/SemHorizontalAbsListView;)Landroid/os/StrictMode$Span;
    .locals 0

    iget-object p0, p0, Landroid/widget/SemHorizontalAbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmForcedClick(Landroid/widget/SemHorizontalAbsListView;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/widget/SemHorizontalAbsListView;->mForcedClick:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsCtrlkeyPressed(Landroid/widget/SemHorizontalAbsListView;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/widget/SemHorizontalAbsListView;->mIsCtrlkeyPressed:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsDetaching(Landroid/widget/SemHorizontalAbsListView;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/widget/SemHorizontalAbsListView;->mIsDetaching:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsShiftkeyPressed(Landroid/widget/SemHorizontalAbsListView;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/widget/SemHorizontalAbsListView;->mIsShiftkeyPressed:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmJumpScrollToTopState(Landroid/widget/SemHorizontalAbsListView;)I
    .locals 0

    iget p0, p0, Landroid/widget/SemHorizontalAbsListView;->mJumpScrollToTopState:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMaximumVelocity(Landroid/widget/SemHorizontalAbsListView;)I
    .locals 0

    iget p0, p0, Landroid/widget/SemHorizontalAbsListView;->mMaximumVelocity:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMinimumVelocity(Landroid/widget/SemHorizontalAbsListView;)I
    .locals 0

    iget p0, p0, Landroid/widget/SemHorizontalAbsListView;->mMinimumVelocity:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPendingCheckForLongPress(Landroid/widget/SemHorizontalAbsListView;)Landroid/widget/SemHorizontalAbsListView$CheckForLongPress;
    .locals 0

    iget-object p0, p0, Landroid/widget/SemHorizontalAbsListView;->mPendingCheckForLongPress:Landroid/widget/SemHorizontalAbsListView$CheckForLongPress;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSemCustomMultiChoiceMode(Landroid/widget/SemHorizontalAbsListView;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/widget/SemHorizontalAbsListView;->mSemCustomMultiChoiceMode:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSemScrollRemains(Landroid/widget/SemHorizontalAbsListView;)Ljava/util/LinkedList;
    .locals 0

    iget-object p0, p0, Landroid/widget/SemHorizontalAbsListView;->mSemScrollRemains:Ljava/util/LinkedList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmVelocityTracker(Landroid/widget/SemHorizontalAbsListView;)Landroid/view/VelocityTracker;
    .locals 0

    iget-object p0, p0, Landroid/widget/SemHorizontalAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmFirstPressedPoint(Landroid/widget/SemHorizontalAbsListView;I)V
    .locals 0

    iput p1, p0, Landroid/widget/SemHorizontalAbsListView;->mFirstPressedPoint:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmFlingStrictSpan(Landroid/widget/SemHorizontalAbsListView;Landroid/os/StrictMode$Span;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/SemHorizontalAbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsChildViewEnabled(Landroid/widget/SemHorizontalAbsListView;Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/SemHorizontalAbsListView;->mIsChildViewEnabled:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmJumpScrollToTopState(Landroid/widget/SemHorizontalAbsListView;I)V
    .locals 0

    iput p1, p0, Landroid/widget/SemHorizontalAbsListView;->mJumpScrollToTopState:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmPendingCheckForLongPress(Landroid/widget/SemHorizontalAbsListView;Landroid/widget/SemHorizontalAbsListView$CheckForLongPress;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/SemHorizontalAbsListView;->mPendingCheckForLongPress:Landroid/widget/SemHorizontalAbsListView$CheckForLongPress;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmTouchModeReset(Landroid/widget/SemHorizontalAbsListView;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$maddToPressItemListArray(Landroid/widget/SemHorizontalAbsListView;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/SemHorizontalAbsListView;->addToPressItemListArray(II)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mclearScrollingCache(Landroid/widget/SemHorizontalAbsListView;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->clearScrollingCache()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mcontentFits(Landroid/widget/SemHorizontalAbsListView;)Z
    .locals 0

    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->contentFits()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetTextFilterInput(Landroid/widget/SemHorizontalAbsListView;)Landroid/widget/EditText;
    .locals 0

    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->getTextFilterInput()Landroid/widget/EditText;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleMessage(Landroid/widget/SemHorizontalAbsListView;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/SemHorizontalAbsListView;->handleMessage(Landroid/os/Message;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mpostOnJumpScrollToFinished(Landroid/widget/SemHorizontalAbsListView;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->postOnJumpScrollToFinished()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetFastScrollerAlwaysVisibleUiThread(Landroid/widget/SemHorizontalAbsListView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/SemHorizontalAbsListView;->setFastScrollerAlwaysVisibleUiThread(Z)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetJUMP_SCROLL_TO_TOP_FINISHING()I
    .locals 1

    sget v0, Landroid/widget/SemHorizontalAbsListView;->JUMP_SCROLL_TO_TOP_FINISHING:I

    return v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetJUMP_SCROLL_TO_TOP_IDLE()I
    .locals 1

    sget v0, Landroid/widget/SemHorizontalAbsListView;->JUMP_SCROLL_TO_TOP_IDLE:I

    return v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetJUMP_SCROLL_TO_TOP_INITIATED()I
    .locals 1

    sget v0, Landroid/widget/SemHorizontalAbsListView;->JUMP_SCROLL_TO_TOP_INITIATED:I

    return v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 2

    .line 142
    const/4 v0, 0x0

    sput-boolean v0, Landroid/widget/SemHorizontalAbsListView;->DEBUG_VELOCITY_TRACKER_TRACE:Z

    .line 859
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v1, Landroid/widget/SemHorizontalAbsListView;->sLinearInterpolator:Landroid/view/animation/Interpolator;

    .line 6384
    sput v0, Landroid/widget/SemHorizontalAbsListView;->JUMP_SCROLL_TO_TOP_IDLE:I

    .line 6385
    const/4 v0, 0x1

    sput v0, Landroid/widget/SemHorizontalAbsListView;->JUMP_SCROLL_TO_TOP_INITIATED:I

    .line 6386
    const/4 v0, 0x2

    sput v0, Landroid/widget/SemHorizontalAbsListView;->JUMP_SCROLL_TO_TOP_FINISHING:I

    .line 7423
    const/16 v0, 0x1f4

    sput v0, Landroid/widget/SemHorizontalAbsListView;->mSemScrollAmount:I

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1095
    invoke-direct {p0, p1}, Landroid/widget/AdapterView;-><init>(Landroid/content/Context;)V

    .line 139
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mHasWindowFocusForMotion:Z

    .line 299
    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceMode:I

    .line 332
    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mLayoutMode:I

    .line 357
    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mDeferNotifyDataSetChanged:Z

    .line 362
    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mDrawSelectorOnTop:Z

    .line 372
    const/4 v1, -0x1

    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectorPosition:I

    .line 377
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 383
    new-instance v2, Landroid/widget/SemHorizontalAbsListView$RecycleBin;

    invoke-direct {v2, p0}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;-><init>(Landroid/widget/SemHorizontalAbsListView;)V

    iput-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mRecycler:Landroid/widget/SemHorizontalAbsListView$RecycleBin;

    .line 388
    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectionLeftPadding:I

    .line 393
    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectionTopPadding:I

    .line 398
    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectionRightPadding:I

    .line 403
    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectionBottomPadding:I

    .line 408
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 413
    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mHeightMeasureSpec:I

    .line 461
    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    .line 492
    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectedLeft:I

    .line 535
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/widget/SemHorizontalAbsListView;->mSmoothScrollbarEnabled:Z

    .line 555
    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mResurrectToPosition:I

    .line 557
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/widget/SemHorizontalAbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 583
    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mLastTouchMode:I

    .line 586
    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mScrollProfilingStarted:Z

    .line 589
    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFlingProfilingStarted:Z

    .line 597
    iput-object v3, p0, Landroid/widget/SemHorizontalAbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 598
    iput-object v3, p0, Landroid/widget/SemHorizontalAbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 646
    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mLastScrollState:I

    .line 671
    const/high16 v4, 0x3f800000    # 1.0f

    iput v4, p0, Landroid/widget/SemHorizontalAbsListView;->mVelocityScale:F

    .line 673
    new-array v4, v2, [Z

    iput-object v4, p0, Landroid/widget/SemHorizontalAbsListView;->mIsScrap:[Z

    .line 675
    const/4 v4, 0x2

    new-array v5, v4, [I

    iput-object v5, p0, Landroid/widget/SemHorizontalAbsListView;->mScrollOffset:[I

    .line 676
    new-array v4, v4, [I

    iput-object v4, p0, Landroid/widget/SemHorizontalAbsListView;->mScrollConsumed:[I

    .line 682
    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mNestedXOffset:I

    .line 692
    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mActivePointerId:I

    .line 697
    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPointerCount:I

    .line 703
    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mHapticOverScroll:Z

    .line 753
    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mDirection:I

    .line 789
    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverLeftAreaWidth:I

    .line 791
    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverRightAreaWidth:I

    .line 801
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverRecognitionDurationTime:J

    .line 803
    iput-wide v4, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverRecognitionCurrentTime:J

    .line 805
    iput-wide v4, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverRecognitionStartTime:J

    .line 807
    const-wide/16 v6, 0x12c

    iput-wide v6, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollTimeInterval:J

    .line 809
    const-wide/16 v6, 0x1f4

    iput-wide v6, p0, Landroid/widget/SemHorizontalAbsListView;->mPenDragScrollTimeInterval:J

    .line 811
    iput-wide v4, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollStartTime:J

    .line 813
    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollDirection:I

    .line 818
    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mIsHoverOverscrolled:Z

    .line 823
    iput-boolean v2, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollEnable:Z

    .line 824
    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollStateChanged:Z

    .line 830
    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverAreaEnter:Z

    .line 832
    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mIsSendHoverScrollState:Z

    .line 837
    const/high16 v4, 0x40c00000    # 6.0f

    iput v4, p0, Landroid/widget/SemHorizontalAbsListView;->HOVERSCROLL_SPEED:F

    .line 842
    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->HOVERSCROLL_DELAY:I

    .line 844
    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mNeedsHoverScroll:Z

    .line 846
    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollStateForListener:I

    .line 848
    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mIsEnabledPaddingInHoverScroll:Z

    .line 851
    iput-boolean v2, p0, Landroid/widget/SemHorizontalAbsListView;->mHoveringEnabled:Z

    .line 853
    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mExtraPaddingInLeftHoverArea:I

    .line 854
    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mExtraPaddingInRightHoverArea:I

    .line 869
    iput-boolean v2, p0, Landroid/widget/SemHorizontalAbsListView;->mEnableVibrationAtLongPress:Z

    .line 879
    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSemCustomMultiChoiceMode:Z

    .line 884
    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mIsCtrlkeyPressed:Z

    .line 885
    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mIsShiftkeyPressed:Z

    .line 886
    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mIsPenHovered:Z

    .line 887
    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mIsPenPressed:Z

    .line 888
    iput-boolean v2, p0, Landroid/widget/SemHorizontalAbsListView;->mIsfirstMoveEvent:Z

    .line 890
    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mIsMultiFocusEnabled:Z

    .line 894
    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mFirstPressedPoint:I

    .line 895
    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mSecondPressedPoint:I

    .line 896
    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mOldAdapterItemCount:I

    .line 897
    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mOldKeyCode:I

    .line 898
    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mCurrentKeyCode:I

    .line 903
    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mSemCurrentFocusPosition:I

    .line 907
    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mIsTextSelectionStarted:Z

    .line 908
    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mIsNeedPenSelection:Z

    .line 910
    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDragSelectedItemSize:I

    .line 911
    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDragSelectedViewPosition:I

    .line 912
    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mIsPenSelectPointerSetted:Z

    .line 913
    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mIsNeedPenSelectIconSet:Z

    .line 914
    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mOldTextViewHoverState:Z

    .line 915
    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mNewTextViewHoverState:Z

    .line 916
    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPreviousTextViewScroll:Z

    .line 919
    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mIsDragBlockEnabled:Z

    .line 920
    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDragStartX:I

    .line 921
    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDragStartY:I

    .line 922
    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDragEndX:I

    .line 923
    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDragEndY:I

    .line 925
    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockLeft:I

    .line 926
    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockTop:I

    .line 927
    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockRight:I

    .line 928
    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockBottom:I

    .line 930
    iput-object v3, p0, Landroid/widget/SemHorizontalAbsListView;->mSemTrackedChild:Landroid/view/View;

    .line 931
    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mSemTrackedChildPosition:I

    .line 932
    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDistanceFromTrackedChildLeft:I

    .line 934
    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mIsCloseChildSetted:Z

    .line 935
    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mOldHoverScrollDirection:I

    .line 936
    iput-object v3, p0, Landroid/widget/SemHorizontalAbsListView;->mSemCloseChildByLeft:Landroid/view/View;

    .line 937
    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mSemCloseChildPositionByLeft:I

    .line 938
    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDistanceFromCloseChildLeft:I

    .line 939
    iput-object v3, p0, Landroid/widget/SemHorizontalAbsListView;->mSemCloseChildByRight:Landroid/view/View;

    .line 940
    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mSemCloseChildPositionByRight:I

    .line 941
    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDistanceFromCloseChildRight:I

    .line 944
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockRect:Landroid/graphics/Rect;

    .line 946
    iput-boolean v2, p0, Landroid/widget/SemHorizontalAbsListView;->mSemIsOnClickEnabled:Z

    .line 947
    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    .line 1034
    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mDVFSLockAcquired:Z

    .line 4322
    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mForcedClick:Z

    .line 5433
    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mDragScrollWorkingZonePx:I

    .line 5434
    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mIsDragScrolled:Z

    .line 6387
    sget v4, Landroid/widget/SemHorizontalAbsListView;->JUMP_SCROLL_TO_TOP_IDLE:I

    iput v4, p0, Landroid/widget/SemHorizontalAbsListView;->mJumpScrollToTopState:I

    .line 6446
    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverPosition:I

    .line 6448
    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mHoveredOnEllipsizedText:Z

    .line 6449
    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mIsHoveredByMouse:Z

    .line 7421
    iput-object v3, p0, Landroid/widget/SemHorizontalAbsListView;->mSemSmoothScrollByMove:Landroid/widget/SemHorizontalAbsListView$SemSmoothScrollByMove;

    .line 7422
    iput-object v3, p0, Landroid/widget/SemHorizontalAbsListView;->mSemScrollRemains:Ljava/util/LinkedList;

    .line 10643
    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollSpeed:I

    .line 1097
    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->initAbsListView()V

    .line 1099
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mOwnerThread:Ljava/lang/Thread;

    .line 1101
    invoke-virtual {p0, v2}, Landroid/widget/SemHorizontalAbsListView;->setHorizontalScrollBarEnabled(Z)V

    .line 1102
    sget-object v0, Lcom/android/internal/R$styleable;->View:[I

    invoke-virtual {p1, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1103
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {p0, v0}, Landroid/widget/SemHorizontalAbsListView;->initializeScrollbarsInternal(Landroid/content/res/TypedArray;)V

    .line 1104
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1106
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1128
    const v0, 0x101006a

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/SemHorizontalAbsListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 1129
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1152
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/SemHorizontalAbsListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 1153
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1192
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/AdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 139
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mHasWindowFocusForMotion:Z

    .line 299
    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceMode:I

    .line 332
    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mLayoutMode:I

    .line 357
    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mDeferNotifyDataSetChanged:Z

    .line 362
    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mDrawSelectorOnTop:Z

    .line 372
    const/4 v1, -0x1

    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectorPosition:I

    .line 377
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 383
    new-instance v2, Landroid/widget/SemHorizontalAbsListView$RecycleBin;

    invoke-direct {v2, p0}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;-><init>(Landroid/widget/SemHorizontalAbsListView;)V

    iput-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mRecycler:Landroid/widget/SemHorizontalAbsListView$RecycleBin;

    .line 388
    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectionLeftPadding:I

    .line 393
    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectionTopPadding:I

    .line 398
    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectionRightPadding:I

    .line 403
    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectionBottomPadding:I

    .line 408
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 413
    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mHeightMeasureSpec:I

    .line 461
    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    .line 492
    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectedLeft:I

    .line 535
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/widget/SemHorizontalAbsListView;->mSmoothScrollbarEnabled:Z

    .line 555
    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mResurrectToPosition:I

    .line 557
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/widget/SemHorizontalAbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 583
    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mLastTouchMode:I

    .line 586
    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mScrollProfilingStarted:Z

    .line 589
    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFlingProfilingStarted:Z

    .line 597
    iput-object v3, p0, Landroid/widget/SemHorizontalAbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 598
    iput-object v3, p0, Landroid/widget/SemHorizontalAbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 646
    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mLastScrollState:I

    .line 671
    const/high16 v4, 0x3f800000    # 1.0f

    iput v4, p0, Landroid/widget/SemHorizontalAbsListView;->mVelocityScale:F

    .line 673
    new-array v4, v2, [Z

    iput-object v4, p0, Landroid/widget/SemHorizontalAbsListView;->mIsScrap:[Z

    .line 675
    const/4 v4, 0x2

    new-array v5, v4, [I

    iput-object v5, p0, Landroid/widget/SemHorizontalAbsListView;->mScrollOffset:[I

    .line 676
    new-array v5, v4, [I

    iput-object v5, p0, Landroid/widget/SemHorizontalAbsListView;->mScrollConsumed:[I

    .line 682
    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mNestedXOffset:I

    .line 692
    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mActivePointerId:I

    .line 697
    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPointerCount:I

    .line 703
    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mHapticOverScroll:Z

    .line 753
    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mDirection:I

    .line 789
    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverLeftAreaWidth:I

    .line 791
    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverRightAreaWidth:I

    .line 801
    const-wide/16 v5, 0x0

    iput-wide v5, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverRecognitionDurationTime:J

    .line 803
    iput-wide v5, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverRecognitionCurrentTime:J

    .line 805
    iput-wide v5, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverRecognitionStartTime:J

    .line 807
    const-wide/16 v7, 0x12c

    iput-wide v7, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollTimeInterval:J

    .line 809
    const-wide/16 v7, 0x1f4

    iput-wide v7, p0, Landroid/widget/SemHorizontalAbsListView;->mPenDragScrollTimeInterval:J

    .line 811
    iput-wide v5, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollStartTime:J

    .line 813
    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollDirection:I

    .line 818
    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mIsHoverOverscrolled:Z

    .line 823
    iput-boolean v2, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollEnable:Z

    .line 824
    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollStateChanged:Z

    .line 830
    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverAreaEnter:Z

    .line 832
    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mIsSendHoverScrollState:Z

    .line 837
    const/high16 v5, 0x40c00000    # 6.0f

    iput v5, p0, Landroid/widget/SemHorizontalAbsListView;->HOVERSCROLL_SPEED:F

    .line 842
    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->HOVERSCROLL_DELAY:I

    .line 844
    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mNeedsHoverScroll:Z

    .line 846
    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollStateForListener:I

    .line 848
    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mIsEnabledPaddingInHoverScroll:Z

    .line 851
    iput-boolean v2, p0, Landroid/widget/SemHorizontalAbsListView;->mHoveringEnabled:Z

    .line 853
    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mExtraPaddingInLeftHoverArea:I

    .line 854
    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mExtraPaddingInRightHoverArea:I

    .line 869
    iput-boolean v2, p0, Landroid/widget/SemHorizontalAbsListView;->mEnableVibrationAtLongPress:Z

    .line 879
    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSemCustomMultiChoiceMode:Z

    .line 884
    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mIsCtrlkeyPressed:Z

    .line 885
    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mIsShiftkeyPressed:Z

    .line 886
    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mIsPenHovered:Z

    .line 887
    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mIsPenPressed:Z

    .line 888
    iput-boolean v2, p0, Landroid/widget/SemHorizontalAbsListView;->mIsfirstMoveEvent:Z

    .line 890
    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mIsMultiFocusEnabled:Z

    .line 894
    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mFirstPressedPoint:I

    .line 895
    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mSecondPressedPoint:I

    .line 896
    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mOldAdapterItemCount:I

    .line 897
    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mOldKeyCode:I

    .line 898
    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mCurrentKeyCode:I

    .line 903
    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mSemCurrentFocusPosition:I

    .line 907
    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mIsTextSelectionStarted:Z

    .line 908
    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mIsNeedPenSelection:Z

    .line 910
    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDragSelectedItemSize:I

    .line 911
    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDragSelectedViewPosition:I

    .line 912
    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mIsPenSelectPointerSetted:Z

    .line 913
    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mIsNeedPenSelectIconSet:Z

    .line 914
    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mOldTextViewHoverState:Z

    .line 915
    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mNewTextViewHoverState:Z

    .line 916
    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPreviousTextViewScroll:Z

    .line 919
    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mIsDragBlockEnabled:Z

    .line 920
    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDragStartX:I

    .line 921
    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDragStartY:I

    .line 922
    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDragEndX:I

    .line 923
    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDragEndY:I

    .line 925
    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockLeft:I

    .line 926
    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockTop:I

    .line 927
    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockRight:I

    .line 928
    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockBottom:I

    .line 930
    iput-object v3, p0, Landroid/widget/SemHorizontalAbsListView;->mSemTrackedChild:Landroid/view/View;

    .line 931
    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mSemTrackedChildPosition:I

    .line 932
    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDistanceFromTrackedChildLeft:I

    .line 934
    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mIsCloseChildSetted:Z

    .line 935
    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mOldHoverScrollDirection:I

    .line 936
    iput-object v3, p0, Landroid/widget/SemHorizontalAbsListView;->mSemCloseChildByLeft:Landroid/view/View;

    .line 937
    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mSemCloseChildPositionByLeft:I

    .line 938
    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDistanceFromCloseChildLeft:I

    .line 939
    iput-object v3, p0, Landroid/widget/SemHorizontalAbsListView;->mSemCloseChildByRight:Landroid/view/View;

    .line 940
    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mSemCloseChildPositionByRight:I

    .line 941
    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDistanceFromCloseChildRight:I

    .line 944
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockRect:Landroid/graphics/Rect;

    .line 946
    iput-boolean v2, p0, Landroid/widget/SemHorizontalAbsListView;->mSemIsOnClickEnabled:Z

    .line 947
    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    .line 1034
    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mDVFSLockAcquired:Z

    .line 4322
    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mForcedClick:Z

    .line 5433
    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mDragScrollWorkingZonePx:I

    .line 5434
    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mIsDragScrolled:Z

    .line 6387
    sget v5, Landroid/widget/SemHorizontalAbsListView;->JUMP_SCROLL_TO_TOP_IDLE:I

    iput v5, p0, Landroid/widget/SemHorizontalAbsListView;->mJumpScrollToTopState:I

    .line 6446
    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverPosition:I

    .line 6448
    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mHoveredOnEllipsizedText:Z

    .line 6449
    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mIsHoveredByMouse:Z

    .line 7421
    iput-object v3, p0, Landroid/widget/SemHorizontalAbsListView;->mSemSmoothScrollByMove:Landroid/widget/SemHorizontalAbsListView$SemSmoothScrollByMove;

    .line 7422
    iput-object v3, p0, Landroid/widget/SemHorizontalAbsListView;->mSemScrollRemains:Ljava/util/LinkedList;

    .line 10643
    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollSpeed:I

    .line 1194
    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->initAbsListView()V

    .line 1196
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mOwnerThread:Ljava/lang/Thread;

    .line 1198
    sget-object v1, Lcom/android/internal/R$styleable;->AbsListView:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 1201
    .local v1, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 1202
    .local v3, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_0

    .line 1203
    invoke-virtual {p0, v3}, Landroid/widget/SemHorizontalAbsListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 1206
    :cond_0
    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Landroid/widget/SemHorizontalAbsListView;->mDrawSelectorOnTop:Z

    .line 1209
    invoke-virtual {v1, v4, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    .line 1210
    .local v4, "stackFromBottom":Z
    invoke-virtual {p0, v4}, Landroid/widget/SemHorizontalAbsListView;->setStackFromBottom(Z)V

    .line 1212
    const/4 v5, 0x3

    invoke-virtual {v1, v5, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    .line 1213
    .local v5, "scrollingCacheEnabled":Z
    invoke-virtual {p0, v5}, Landroid/widget/SemHorizontalAbsListView;->setScrollingCacheEnabled(Z)V

    .line 1215
    const/4 v6, 0x4

    invoke-virtual {v1, v6, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    .line 1216
    .local v6, "useTextFilter":Z
    invoke-virtual {p0, v6}, Landroid/widget/SemHorizontalAbsListView;->setTextFilterEnabled(Z)V

    .line 1218
    const/4 v7, 0x5

    invoke-virtual {v1, v7, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    .line 1220
    .local v7, "transcriptMode":I
    invoke-virtual {p0, v7}, Landroid/widget/SemHorizontalAbsListView;->setTranscriptMode(I)V

    .line 1222
    const/16 v8, 0x8

    invoke-virtual {v1, v8, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    .line 1223
    .local v8, "enableFastScroll":Z
    invoke-virtual {p0, v8}, Landroid/widget/SemHorizontalAbsListView;->setFastScrollEnabled(Z)V

    .line 1225
    const/16 v9, 0xb

    invoke-virtual {v1, v9, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    .line 1226
    .local v9, "fastScrollStyle":I
    invoke-virtual {p0, v9}, Landroid/widget/SemHorizontalAbsListView;->setFastScrollStyle(I)V

    .line 1228
    const/16 v10, 0x9

    invoke-virtual {v1, v10, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    .line 1229
    .local v2, "smoothScrollbar":Z
    invoke-virtual {p0, v2}, Landroid/widget/SemHorizontalAbsListView;->setSmoothScrollbarEnabled(Z)V

    .line 1231
    const/16 v10, 0xa

    .line 1232
    invoke-virtual {v1, v10, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    .line 1231
    invoke-virtual {p0, v0}, Landroid/widget/SemHorizontalAbsListView;->setFastScrollAlwaysVisible(Z)V

    .line 1234
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 1236
    return-void
.end method

.method private blacklist acceptFilter()Z
    .locals 1

    .line 2643
    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mTextFilterEnabled:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/Filterable;

    if-eqz v0, :cond_0

    .line 2644
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Landroid/widget/Filterable;

    invoke-interface {v0}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2643
    :goto_0
    return v0
.end method

.method static synthetic blacklist access$000(Landroid/widget/SemHorizontalAbsListView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/SemHorizontalAbsListView;

    .line 131
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method static synthetic blacklist access$100(Landroid/widget/SemHorizontalAbsListView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/SemHorizontalAbsListView;

    .line 131
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method static synthetic blacklist access$1000(Landroid/widget/SemHorizontalAbsListView;IIIIIIIIZ)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/SemHorizontalAbsListView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # I
    .param p6, "x6"    # I
    .param p7, "x7"    # I
    .param p8, "x8"    # I
    .param p9, "x9"    # Z

    .line 131
    invoke-virtual/range {p0 .. p9}, Landroid/widget/SemHorizontalAbsListView;->overScrollBy(IIIIIIIIZ)Z

    move-result v0

    return v0
.end method

.method static synthetic blacklist access$1100(Landroid/widget/SemHorizontalAbsListView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/SemHorizontalAbsListView;

    .line 131
    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mScrollX:I

    return v0
.end method

.method static synthetic blacklist access$1200(Landroid/widget/SemHorizontalAbsListView;IIIIIIIIZ)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/SemHorizontalAbsListView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # I
    .param p6, "x6"    # I
    .param p7, "x7"    # I
    .param p8, "x8"    # I
    .param p9, "x9"    # Z

    .line 131
    invoke-virtual/range {p0 .. p9}, Landroid/widget/SemHorizontalAbsListView;->overScrollBy(IIIIIIIIZ)Z

    move-result v0

    return v0
.end method

.method static synthetic blacklist access$1300(Landroid/widget/SemHorizontalAbsListView;Z)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/SemHorizontalAbsListView;
    .param p1, "x1"    # Z

    .line 131
    invoke-virtual {p0, p1}, Landroid/widget/SemHorizontalAbsListView;->setChildrenDrawnWithCacheEnabled(Z)V

    return-void
.end method

.method static synthetic blacklist access$1400(Landroid/widget/SemHorizontalAbsListView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/SemHorizontalAbsListView;

    .line 131
    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPersistentDrawingCache:I

    return v0
.end method

.method static synthetic blacklist access$1500(Landroid/widget/SemHorizontalAbsListView;Z)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/SemHorizontalAbsListView;
    .param p1, "x1"    # Z

    .line 131
    invoke-virtual {p0, p1}, Landroid/widget/SemHorizontalAbsListView;->setChildrenDrawingCacheEnabled(Z)V

    return-void
.end method

.method static synthetic blacklist access$1600(Landroid/widget/SemHorizontalAbsListView;Landroid/view/View;Z)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/SemHorizontalAbsListView;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Z

    .line 131
    invoke-virtual {p0, p1, p2}, Landroid/widget/SemHorizontalAbsListView;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic blacklist access$1700(Landroid/widget/SemHorizontalAbsListView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Landroid/widget/SemHorizontalAbsListView;

    .line 131
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic blacklist access$200(Landroid/widget/SemHorizontalAbsListView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/SemHorizontalAbsListView;

    .line 131
    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mScrollX:I

    return v0
.end method

.method static synthetic blacklist access$300(Landroid/widget/SemHorizontalAbsListView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/SemHorizontalAbsListView;

    .line 131
    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mScrollX:I

    return v0
.end method

.method static synthetic blacklist access$400(Landroid/widget/SemHorizontalAbsListView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/SemHorizontalAbsListView;

    .line 131
    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mScrollX:I

    return v0
.end method

.method static synthetic blacklist access$500(Landroid/widget/SemHorizontalAbsListView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/SemHorizontalAbsListView;

    .line 131
    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPaddingRight:I

    return v0
.end method

.method static synthetic blacklist access$600(Landroid/widget/SemHorizontalAbsListView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/SemHorizontalAbsListView;

    .line 131
    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPaddingLeft:I

    return v0
.end method

.method static synthetic blacklist access$700(Landroid/widget/SemHorizontalAbsListView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/SemHorizontalAbsListView;

    .line 131
    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPaddingRight:I

    return v0
.end method

.method static synthetic blacklist access$800(Landroid/widget/SemHorizontalAbsListView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/SemHorizontalAbsListView;

    .line 131
    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPaddingLeft:I

    return v0
.end method

.method static synthetic blacklist access$900(Landroid/widget/SemHorizontalAbsListView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/SemHorizontalAbsListView;

    .line 131
    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mScrollX:I

    return v0
.end method

.method private blacklist addToPressItemListArray(II)V
    .locals 4
    .param p1, "firstpoint"    # I
    .param p2, "secondpoint"    # I

    .line 10805
    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mIsMultiFocusEnabled:Z

    if-nez v0, :cond_0

    .line 10806
    return-void

    .line 10809
    :cond_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_2

    .line 10810
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSemPressItemListArray:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10811
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSemPressItemListArray:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 10813
    :cond_1
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSemPressItemListArray:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 10816
    :cond_2
    if-ge p1, p2, :cond_5

    .line 10817
    sub-int v0, p2, p1

    add-int/lit8 v0, v0, 0x1

    .line 10818
    .local v0, "checkCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_4

    .line 10819
    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mSemPressItemListArray:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 10820
    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mSemPressItemListArray:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 10822
    :cond_3
    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mSemPressItemListArray:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10824
    :goto_1
    add-int/lit8 p1, p1, 0x1

    .line 10818
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v1    # "i":I
    :cond_4
    goto :goto_4

    .line 10826
    .end local v0    # "checkCount":I
    :cond_5
    if-le p1, p2, :cond_8

    .line 10827
    sub-int v0, p1, p2

    add-int/lit8 v0, v0, 0x1

    .line 10828
    .restart local v0    # "checkCount":I
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    if-ge v1, v0, :cond_7

    .line 10829
    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mSemPressItemListArray:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 10830
    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mSemPressItemListArray:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_3

    .line 10832
    :cond_6
    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mSemPressItemListArray:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10834
    :goto_3
    add-int/lit8 p1, p1, -0x1

    .line 10828
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .end local v1    # "i":I
    :cond_7
    goto :goto_4

    .line 10837
    .end local v0    # "checkCount":I
    :cond_8
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSemPressItemListArray:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 10838
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSemPressItemListArray:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_4

    .line 10840
    :cond_9
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSemPressItemListArray:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10845
    :goto_4
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->invalidate()V

    .line 10846
    return-void
.end method

.method private blacklist clearScrollingCache()V
    .locals 1

    .line 7599
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->isHardwareAccelerated()Z

    move-result v0

    if-nez v0, :cond_1

    .line 7600
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mClearScrollingCache:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 7601
    new-instance v0, Landroid/widget/SemHorizontalAbsListView$4;

    invoke-direct {v0, p0}, Landroid/widget/SemHorizontalAbsListView$4;-><init>(Landroid/widget/SemHorizontalAbsListView;)V

    iput-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mClearScrollingCache:Ljava/lang/Runnable;

    .line 7617
    :cond_0
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mClearScrollingCache:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/SemHorizontalAbsListView;->post(Ljava/lang/Runnable;)Z

    .line 7619
    :cond_1
    return-void
.end method

.method private blacklist contentFits()Z
    .locals 6

    .line 1731
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getChildCount()I

    move-result v0

    .line 1732
    .local v0, "childCount":I
    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 1733
    return v1

    .line 1734
    :cond_0
    iget v2, p0, Landroid/widget/SemHorizontalAbsListView;->mItemCount:I

    const/4 v3, 0x0

    if-eq v0, v2, :cond_1

    .line 1735
    return v3

    .line 1737
    :cond_1
    iget-boolean v2, p0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    if-eqz v2, :cond_3

    .line 1738
    invoke-virtual {p0, v3}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getWidth()I

    move-result v4

    iget-object v5, p0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v5

    if-gt v2, v4, :cond_2

    add-int/lit8 v2, v0, -0x1

    .line 1739
    invoke-virtual {p0, v2}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    iget-object v4, p0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    if-lt v2, v4, :cond_2

    goto :goto_0

    :cond_2
    move v1, v3

    .line 1738
    :goto_0
    return v1

    .line 1742
    :cond_3
    invoke-virtual {p0, v3}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    iget-object v4, p0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    if-lt v2, v4, :cond_4

    add-int/lit8 v2, v0, -0x1

    .line 1743
    invoke-virtual {p0, v2}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getWidth()I

    move-result v4

    iget-object v5, p0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v5

    if-gt v2, v4, :cond_4

    goto :goto_1

    :cond_4
    move v1, v3

    .line 1742
    :goto_1
    return v1
.end method

.method private blacklist createScrollingCache()V
    .locals 1

    .line 7591
    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mScrollingCacheEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mCachingStarted:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->isHardwareAccelerated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 7592
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/SemHorizontalAbsListView;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 7593
    invoke-virtual {p0, v0}, Landroid/widget/SemHorizontalAbsListView;->setChildrenDrawingCacheEnabled(Z)V

    .line 7594
    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mCachingActive:Z

    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mCachingStarted:Z

    .line 7596
    :cond_0
    return-void
.end method

.method private blacklist createTextFilter(Z)V
    .locals 2
    .param p1, "animateEntrance"    # Z

    .line 8783
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-nez v0, :cond_0

    .line 8784
    new-instance v0, Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    .line 8785
    .local v0, "p":Landroid/widget/PopupWindow;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 8786
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 8787
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 8788
    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->getTextFilterInput()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 8789
    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 8790
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 8791
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 8792
    iput-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPopup:Landroid/widget/PopupWindow;

    .line 8793
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 8794
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/SemHorizontalAbsListView;->mGlobalLayoutListenerAddedFilter:Z

    .line 8796
    .end local v0    # "p":Landroid/widget/PopupWindow;
    :cond_0
    if-eqz p1, :cond_1

    .line 8797
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPopup:Landroid/widget/PopupWindow;

    const v1, 0x1030315

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    goto :goto_0

    .line 8799
    :cond_1
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPopup:Landroid/widget/PopupWindow;

    const v1, 0x1030316

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 8801
    :goto_0
    return-void
.end method

.method private blacklist dismissPopup()V
    .locals 1

    .line 8390
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 8391
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 8393
    :cond_0
    return-void
.end method

.method private blacklist drawSelector(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 3771
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 3773
    .local v0, "tempSelectorRect":Landroid/graphics/Rect;
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3774
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 3775
    .local v1, "selector":Landroid/graphics/drawable/Drawable;
    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 3776
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3780
    .end local v1    # "selector":Landroid/graphics/drawable/Drawable;
    :cond_0
    iget-boolean v1, p0, Landroid/widget/SemHorizontalAbsListView;->mIsMultiFocusEnabled:Z

    if-eqz v1, :cond_2

    .line 3782
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mSemPressItemListArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 3783
    .local v2, "selectedPosition":Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget v4, p0, Landroid/widget/SemHorizontalAbsListView;->mFirstPosition:I

    sub-int/2addr v3, v4

    invoke-virtual {p0, v3}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 3785
    .local v3, "selectedChild":Landroid/view/View;
    if-eqz v3, :cond_1

    .line 3786
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v6

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v7

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 3787
    iget-object v4, p0, Landroid/widget/SemHorizontalAbsListView;->mMultiFocusImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 3788
    iget-object v4, p0, Landroid/widget/SemHorizontalAbsListView;->mMultiFocusImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3790
    .end local v2    # "selectedPosition":Ljava/lang/Integer;
    :cond_1
    goto :goto_0

    .line 3793
    .end local v3    # "selectedChild":Landroid/view/View;
    :cond_2
    return-void
.end method

.method private blacklist finishGlows()V
    .locals 1

    .line 9140
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_0

    .line 9141
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->finish()V

    .line 9142
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->finish()V

    .line 9144
    :cond_0
    return-void
.end method

.method static blacklist getDistance(Landroid/graphics/Rect;Landroid/graphics/Rect;I)I
    .locals 8
    .param p0, "source"    # Landroid/graphics/Rect;
    .param p1, "dest"    # Landroid/graphics/Rect;
    .param p2, "direction"    # I

    .line 8436
    sparse-switch p2, :sswitch_data_0

    .line 8469
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT, FOCUS_FORWARD, FOCUS_BACKWARD}."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8444
    :sswitch_0
    iget v0, p0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 8445
    .local v0, "sX":I
    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    .line 8446
    .local v1, "sY":I
    iget v2, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    .line 8447
    .local v2, "dX":I
    iget v3, p1, Landroid/graphics/Rect;->top:I

    .line 8448
    .local v3, "dY":I
    goto :goto_0

    .line 8438
    .end local v0    # "sX":I
    .end local v1    # "sY":I
    .end local v2    # "dX":I
    .end local v3    # "dY":I
    :sswitch_1
    iget v0, p0, Landroid/graphics/Rect;->right:I

    .line 8439
    .restart local v0    # "sX":I
    iget v1, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    .line 8440
    .restart local v1    # "sY":I
    iget v2, p1, Landroid/graphics/Rect;->left:I

    .line 8441
    .restart local v2    # "dX":I
    iget v3, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    .line 8442
    .restart local v3    # "dY":I
    goto :goto_0

    .line 8456
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

    .line 8457
    .restart local v0    # "sX":I
    iget v1, p0, Landroid/graphics/Rect;->top:I

    .line 8458
    .restart local v1    # "sY":I
    iget v2, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    .line 8459
    .restart local v2    # "dX":I
    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    .line 8460
    .restart local v3    # "dY":I
    goto :goto_0

    .line 8450
    .end local v0    # "sX":I
    .end local v1    # "sY":I
    .end local v2    # "dX":I
    .end local v3    # "dY":I
    :sswitch_3
    iget v0, p0, Landroid/graphics/Rect;->left:I

    .line 8451
    .restart local v0    # "sX":I
    iget v1, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    .line 8452
    .restart local v1    # "sY":I
    iget v2, p1, Landroid/graphics/Rect;->right:I

    .line 8453
    .restart local v2    # "dX":I
    iget v3, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    .line 8454
    .restart local v3    # "dY":I
    goto :goto_0

    .line 8463
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

    .line 8464
    .restart local v0    # "sX":I
    iget v1, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    .line 8465
    .restart local v1    # "sY":I
    iget v2, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    .line 8466
    .restart local v2    # "dX":I
    iget v3, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    .line 8467
    .restart local v3    # "dY":I
    nop

    .line 8473
    :goto_0
    sub-int v4, v2, v0

    .line 8474
    .local v4, "deltaX":I
    sub-int v5, v3, v1

    .line 8475
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

.method private blacklist getTextFilterInput()Landroid/widget/EditText;
    .locals 3

    .line 8804
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mTextFilter:Landroid/widget/EditText;

    if-nez v0, :cond_0

    .line 8805
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 8806
    .local v0, "layoutInflater":Landroid/view/LayoutInflater;
    const v1, 0x10901d4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mTextFilter:Landroid/widget/EditText;

    .line 8811
    const/16 v2, 0xb1

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setRawInputType(I)V

    .line 8813
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mTextFilter:Landroid/widget/EditText;

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 8814
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v1, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 8816
    .end local v0    # "layoutInflater":Landroid/view/LayoutInflater;
    :cond_0
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mTextFilter:Landroid/widget/EditText;

    return-object v0
.end method

.method private blacklist handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .line 10662
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_4

    .line 10666
    :pswitch_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverRecognitionCurrentTime:J

    .line 10667
    iget-wide v2, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverRecognitionStartTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    iput-wide v2, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverRecognitionDurationTime:J

    .line 10669
    iget-boolean v2, p0, Landroid/widget/SemHorizontalAbsListView;->mIsPenHovered:Z

    if-eqz v2, :cond_0

    iget-wide v2, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollStartTime:J

    sub-long v2, v0, v2

    iget-wide v4, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollTimeInterval:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 10670
    goto/16 :goto_4

    .line 10671
    :cond_0
    iget-boolean v2, p0, Landroid/widget/SemHorizontalAbsListView;->mIsPenPressed:Z

    if-eqz v2, :cond_1

    iget-wide v2, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollStartTime:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Landroid/widget/SemHorizontalAbsListView;->mPenDragScrollTimeInterval:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 10672
    goto/16 :goto_4

    .line 10675
    :cond_1
    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->HOVERSCROLL_SPEED:F

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mContext:Landroid/content/Context;

    .line 10676
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 10675
    const/4 v2, 0x1

    invoke-static {v2, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollSpeed:I

    .line 10678
    iget-wide v3, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverRecognitionDurationTime:J

    const-wide/16 v5, 0x3

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    .line 10679
    int-to-double v3, v0

    const-wide v5, 0x3fb999999999999aL    # 0.1

    mul-double/2addr v3, v5

    double-to-int v1, v3

    add-int/2addr v0, v1

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollSpeed:I

    goto :goto_0

    .line 10680
    :cond_2
    const-wide/16 v5, 0x4

    cmp-long v1, v3, v5

    if-nez v1, :cond_3

    .line 10681
    int-to-double v3, v0

    const-wide v5, 0x3fc999999999999aL    # 0.2

    mul-double/2addr v3, v5

    double-to-int v1, v3

    add-int/2addr v0, v1

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollSpeed:I

    goto :goto_0

    .line 10682
    :cond_3
    const-wide/16 v5, 0x5

    cmp-long v1, v3, v5

    if-ltz v1, :cond_4

    .line 10683
    int-to-double v3, v0

    const-wide v5, 0x3fd3333333333333L    # 0.3

    mul-double/2addr v3, v5

    double-to-int v1, v3

    add-int/2addr v0, v1

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollSpeed:I

    .line 10686
    :cond_4
    :goto_0
    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollDirection:I

    const/4 v1, 0x2

    iget v3, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollSpeed:I

    if-ne v0, v1, :cond_5

    neg-int v3, v3

    .line 10688
    .local v3, "offset":I
    :cond_5
    iget-object v4, p0, Landroid/widget/SemHorizontalAbsListView;->mSemTrackedChild:Landroid/view/View;

    if-nez v4, :cond_6

    iget-object v4, p0, Landroid/widget/SemHorizontalAbsListView;->mSemCloseChildByRight:Landroid/view/View;

    if-nez v4, :cond_7

    :cond_6
    iget v4, p0, Landroid/widget/SemHorizontalAbsListView;->mOldHoverScrollDirection:I

    if-eq v4, v0, :cond_8

    iget-boolean v4, p0, Landroid/widget/SemHorizontalAbsListView;->mIsCloseChildSetted:Z

    if-eqz v4, :cond_8

    .line 10690
    :cond_7
    iget-object v4, p0, Landroid/widget/SemHorizontalAbsListView;->mSemCloseChildByRight:Landroid/view/View;

    iput-object v4, p0, Landroid/widget/SemHorizontalAbsListView;->mSemTrackedChild:Landroid/view/View;

    .line 10691
    iget v4, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDistanceFromCloseChildRight:I

    iput v4, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDistanceFromTrackedChildLeft:I

    .line 10692
    iget v4, p0, Landroid/widget/SemHorizontalAbsListView;->mSemCloseChildPositionByRight:I

    iput v4, p0, Landroid/widget/SemHorizontalAbsListView;->mSemTrackedChildPosition:I

    .line 10693
    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mOldHoverScrollDirection:I

    .line 10694
    iput-boolean v2, p0, Landroid/widget/SemHorizontalAbsListView;->mIsCloseChildSetted:Z

    .line 10697
    :cond_8
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getChildCount()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-virtual {p0, v0}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_9

    .line 10698
    goto/16 :goto_4

    .line 10701
    :cond_9
    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    const/4 v4, 0x0

    if-eqz v0, :cond_b

    if-gez v3, :cond_b

    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFirstPosition:I

    .line 10702
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getChildCount()I

    move-result v5

    add-int/2addr v0, v5

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getCount()I

    move-result v5

    if-ne v0, v5, :cond_a

    .line 10703
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getChildCount()I

    move-result v5

    sub-int/2addr v5, v2

    invoke-virtual {p0, v5}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v5

    if-eq v0, v5, :cond_b

    .line 10704
    :cond_a
    invoke-virtual {p0, v3, v4}, Landroid/widget/SemHorizontalAbsListView;->smoothScrollBy(II)V

    .line 10705
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    iget v1, p0, Landroid/widget/SemHorizontalAbsListView;->HOVERSCROLL_DELAY:I

    int-to-long v4, v1

    invoke-virtual {v0, v2, v4, v5}, Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_4

    .line 10706
    :cond_b
    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    if-eqz v0, :cond_d

    if-lez v3, :cond_d

    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFirstPosition:I

    if-nez v0, :cond_c

    .line 10707
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getPaddingRight()I

    move-result v5

    sub-int/2addr v0, v5

    invoke-virtual {p0, v4}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v5

    if-eq v0, v5, :cond_d

    .line 10708
    :cond_c
    invoke-virtual {p0, v3, v4}, Landroid/widget/SemHorizontalAbsListView;->smoothScrollBy(II)V

    .line 10709
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    iget v1, p0, Landroid/widget/SemHorizontalAbsListView;->HOVERSCROLL_DELAY:I

    int-to-long v4, v1

    invoke-virtual {v0, v2, v4, v5}, Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_4

    .line 10710
    :cond_d
    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    if-nez v0, :cond_f

    if-gez v3, :cond_f

    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFirstPosition:I

    if-nez v0, :cond_e

    .line 10711
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0, v4}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v5

    if-eq v0, v5, :cond_f

    .line 10712
    :cond_e
    invoke-virtual {p0, v3, v4}, Landroid/widget/SemHorizontalAbsListView;->smoothScrollBy(II)V

    .line 10713
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    iget v1, p0, Landroid/widget/SemHorizontalAbsListView;->HOVERSCROLL_DELAY:I

    int-to-long v4, v1

    invoke-virtual {v0, v2, v4, v5}, Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_4

    .line 10714
    :cond_f
    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    if-nez v0, :cond_11

    if-lez v3, :cond_11

    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFirstPosition:I

    .line 10715
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getChildCount()I

    move-result v5

    add-int/2addr v0, v5

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getCount()I

    move-result v5

    if-ne v0, v5, :cond_10

    .line 10716
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getPaddingRight()I

    move-result v5

    sub-int/2addr v0, v5

    .line 10717
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getChildCount()I

    move-result v5

    sub-int/2addr v5, v2

    .line 10716
    invoke-virtual {p0, v5}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 10717
    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v5

    if-eq v0, v5, :cond_11

    .line 10718
    :cond_10
    invoke-virtual {p0, v3, v4}, Landroid/widget/SemHorizontalAbsListView;->smoothScrollBy(II)V

    .line 10719
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    iget v1, p0, Landroid/widget/SemHorizontalAbsListView;->HOVERSCROLL_DELAY:I

    int-to-long v4, v1

    invoke-virtual {v0, v2, v4, v5}, Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_4

    .line 10722
    :cond_11
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getOverScrollMode()I

    move-result v0

    .line 10723
    .local v0, "overscrollMode":I
    if-eqz v0, :cond_13

    if-ne v0, v2, :cond_12

    .line 10724
    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->contentFits()Z

    move-result v5

    if-nez v5, :cond_12

    goto :goto_1

    :cond_12
    goto :goto_2

    :cond_13
    :goto_1
    move v4, v2

    .line 10726
    .local v4, "canOverscroll":Z
    :goto_2
    if-eqz v4, :cond_18

    iget-boolean v5, p0, Landroid/widget/SemHorizontalAbsListView;->mIsHoverOverscrolled:Z

    if-nez v5, :cond_18

    .line 10727
    iget v5, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollDirection:I

    const v6, 0x3ecccccd    # 0.4f

    if-ne v5, v1, :cond_14

    .line 10729
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getHeight()I

    move-result v7

    invoke-virtual {v1, v5, v7}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 10730
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v1, v6}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 10731
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    if-nez v1, :cond_15

    .line 10732
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    goto :goto_3

    .line 10734
    :cond_14
    if-ne v5, v2, :cond_15

    .line 10736
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getHeight()I

    move-result v7

    invoke-virtual {v1, v5, v7}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 10737
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v1, v6}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 10738
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    if-nez v1, :cond_15

    .line 10739
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 10743
    :cond_15
    :goto_3
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    if-eqz v1, :cond_17

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_16

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    .line 10744
    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    if-nez v1, :cond_17

    .line 10745
    :cond_16
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->invalidate()V

    .line 10748
    :cond_17
    iput-boolean v2, p0, Landroid/widget/SemHorizontalAbsListView;->mIsHoverOverscrolled:Z

    .line 10750
    :cond_18
    if-nez v4, :cond_19

    iget-boolean v1, p0, Landroid/widget/SemHorizontalAbsListView;->mIsHoverOverscrolled:Z

    if-nez v1, :cond_19

    .line 10751
    iput-boolean v2, p0, Landroid/widget/SemHorizontalAbsListView;->mIsHoverOverscrolled:Z

    .line 10755
    .end local v0    # "overscrollMode":I
    .end local v4    # "canOverscroll":Z
    :cond_19
    nop

    .line 10759
    .end local v3    # "offset":I
    :goto_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist initAbsListView()V
    .locals 6

    .line 1240
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/SemHorizontalAbsListView;->setClickable(Z)V

    .line 1241
    invoke-virtual {p0, v0}, Landroid/widget/SemHorizontalAbsListView;->setFocusableInTouchMode(Z)V

    .line 1242
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/SemHorizontalAbsListView;->setWillNotDraw(Z)V

    .line 1243
    invoke-virtual {p0, v1}, Landroid/widget/SemHorizontalAbsListView;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 1244
    invoke-virtual {p0, v0}, Landroid/widget/SemHorizontalAbsListView;->setScrollingCacheEnabled(Z)V

    .line 1245
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->semEnableHorizontalScrollbar()V

    .line 1247
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_1

    .line 1248
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    .line 1249
    .local v1, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    iput v2, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchSlop:I

    .line 1250
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v2

    iput v2, p0, Landroid/widget/SemHorizontalAbsListView;->mMinimumVelocity:I

    .line 1251
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v2

    iput v2, p0, Landroid/widget/SemHorizontalAbsListView;->mMaximumVelocity:I

    .line 1252
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledOverscrollDistance()I

    move-result v2

    iput v2, p0, Landroid/widget/SemHorizontalAbsListView;->mOverscrollDistance:I

    .line 1253
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledOverflingDistance()I

    move-result v2

    iput v2, p0, Landroid/widget/SemHorizontalAbsListView;->mOverflingDistance:I

    .line 1254
    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    iput v2, p0, Landroid/widget/SemHorizontalAbsListView;->mDensityScale:F

    .line 1257
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 1258
    .local v2, "value":Landroid/util/TypedValue;
    iget-object v3, p0, Landroid/widget/SemHorizontalAbsListView;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_1

    .line 1259
    iget-object v3, p0, Landroid/widget/SemHorizontalAbsListView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    const v4, 0x1120164

    invoke-virtual {v3, v4, v2, v0}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v3

    .line 1260
    .local v3, "resolved":Z
    if-eqz v3, :cond_0

    .line 1261
    iget-object v4, p0, Landroid/widget/SemHorizontalAbsListView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, v2, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Landroid/widget/SemHorizontalAbsListView;->mMultiFocusImage:Landroid/graphics/drawable/Drawable;

    .line 1264
    :cond_0
    iget-object v4, p0, Landroid/widget/SemHorizontalAbsListView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    const v5, 0x1120163

    invoke-virtual {v4, v5, v2, v0}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v0

    .line 1265
    .end local v3    # "resolved":Z
    .local v0, "resolved":Z
    if-eqz v0, :cond_1

    .line 1266
    iget-object v3, p0, Landroid/widget/SemHorizontalAbsListView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, v2, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockImage:Landroid/graphics/drawable/Drawable;

    .line 1270
    .end local v0    # "resolved":Z
    .end local v1    # "configuration":Landroid/view/ViewConfiguration;
    .end local v2    # "value":Landroid/util/TypedValue;
    :cond_1
    return-void
.end method

.method private blacklist initOrResetVelocityTracker()V
    .locals 1

    .line 6727
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 6728
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_0

    .line 6730
    :cond_0
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 6732
    :goto_0
    return-void
.end method

.method private blacklist initVelocityTrackerIfNotExists()V
    .locals 1

    .line 6735
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 6736
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 6738
    :cond_0
    return-void
.end method

.method private blacklist isLockScreenMode()Z
    .locals 2

    .line 5098
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mContext:Landroid/content/Context;

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 5099
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    .line 5098
    return v0
.end method

.method private blacklist isOwnerThread()Z
    .locals 2

    .line 1862
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mOwnerThread:Ljava/lang/Thread;

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

.method private static blacklist log(Ljava/lang/String;)V
    .locals 1
    .param p0, "log"    # Ljava/lang/String;

    .line 10771
    const-string v0, "SemHorizontalAbsListView"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10772
    return-void
.end method

.method private blacklist onHoverDrawableState(Landroid/view/MotionEvent;)V
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 6452
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 6453
    .local v0, "action":I
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v2

    .line 6456
    .local v2, "toolType":I
    const/16 v3, 0x9

    const/4 v4, 0x1

    const/4 v5, 0x7

    if-eq v0, v5, :cond_0

    if-ne v0, v3, :cond_1

    :cond_0
    const/4 v5, 0x2

    if-ne v2, v5, :cond_1

    .line 6457
    iput-boolean v4, p0, Landroid/widget/SemHorizontalAbsListView;->mIsPenHovered:Z

    goto :goto_0

    .line 6458
    :cond_1
    const/16 v5, 0xa

    if-ne v0, v5, :cond_2

    .line 6459
    iput-boolean v1, p0, Landroid/widget/SemHorizontalAbsListView;->mIsPenHovered:Z

    .line 6463
    :cond_2
    :goto_0
    if-eq v2, v4, :cond_4

    .line 6464
    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    move v1, v4

    :cond_3
    iput-boolean v1, p0, Landroid/widget/SemHorizontalAbsListView;->mIsHoveredByMouse:Z

    .line 6465
    return-void

    .line 6467
    :cond_4
    iput-boolean v1, p0, Landroid/widget/SemHorizontalAbsListView;->mIsHoveredByMouse:Z

    .line 6470
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-boolean v1, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverAreaEnter:Z

    if-eqz v1, :cond_5

    goto :goto_1

    .line 6475
    :cond_5
    if-ne v0, v3, :cond_6

    iget-boolean v1, p0, Landroid/widget/SemHorizontalAbsListView;->mIsPenHovered:Z

    if-nez v1, :cond_6

    .line 6476
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    .line 6478
    :cond_6
    return-void

    .line 6471
    :cond_7
    :goto_1
    return-void
.end method

.method private blacklist onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 6926
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const v1, 0xff00

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x8

    .line 6928
    .local v0, "pointerIndex":I
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 6929
    .local v1, "pointerId":I
    iget v2, p0, Landroid/widget/SemHorizontalAbsListView;->mActivePointerId:I

    if-ne v1, v2, :cond_1

    .line 6933
    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 6934
    .local v3, "newPointerIndex":I
    :goto_0
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Landroid/widget/SemHorizontalAbsListView;->mMotionX:I

    .line 6935
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Landroid/widget/SemHorizontalAbsListView;->mMotionY:I

    .line 6936
    iput v2, p0, Landroid/widget/SemHorizontalAbsListView;->mMotionCorrection:I

    .line 6937
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    iput v2, p0, Landroid/widget/SemHorizontalAbsListView;->mActivePointerId:I

    .line 6942
    iget v2, p0, Landroid/widget/SemHorizontalAbsListView;->mMotionX:I

    iput v2, p0, Landroid/widget/SemHorizontalAbsListView;->mLastX:I

    .line 6944
    .end local v3    # "newPointerIndex":I
    :cond_1
    return-void
.end method

.method private blacklist onTouchCancel()V
    .locals 4

    .line 6345
    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 6358
    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    .line 6359
    invoke-virtual {p0, v2}, Landroid/widget/SemHorizontalAbsListView;->setPressed(Z)V

    .line 6360
    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mMotionPosition:I

    iget v3, p0, Landroid/widget/SemHorizontalAbsListView;->mFirstPosition:I

    sub-int/2addr v0, v3

    invoke-virtual {p0, v0}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 6361
    .local v0, "motionView":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 6362
    invoke-virtual {v0, v2}, Landroid/view/View;->setPressed(Z)V

    goto :goto_0

    .line 6355
    .end local v0    # "motionView":Landroid/view/View;
    :pswitch_0
    goto :goto_1

    .line 6347
    :pswitch_1
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFlingRunnable:Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    if-nez v0, :cond_0

    .line 6348
    new-instance v0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    invoke-direct {v0, p0}, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;-><init>(Landroid/widget/SemHorizontalAbsListView;)V

    iput-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFlingRunnable:Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    .line 6350
    :cond_0
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFlingRunnable:Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    invoke-virtual {v0}, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->startSpringback()V

    .line 6351
    goto :goto_1

    .line 6364
    .restart local v0    # "motionView":Landroid/view/View;
    :cond_1
    :goto_0
    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->clearScrollingCache()V

    .line 6365
    iget-object v3, p0, Landroid/widget/SemHorizontalAbsListView;->mPendingCheckForLongPress:Landroid/widget/SemHorizontalAbsListView$CheckForLongPress;

    invoke-virtual {p0, v3}, Landroid/widget/SemHorizontalAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 6366
    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->recycleVelocityTracker()V

    .line 6369
    .end local v0    # "motionView":Landroid/view/View;
    :goto_1
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_2

    .line 6370
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 6371
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 6373
    :cond_2
    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mActivePointerId:I

    .line 6374
    iput v2, p0, Landroid/widget/SemHorizontalAbsListView;->mPointerCount:I

    .line 6382
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist onTouchDown(Landroid/view/MotionEvent;)V
    .locals 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 6058
    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 6074
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mActivePointerId:I

    .line 6075
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 6076
    .local v0, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    .line 6077
    .local v2, "y":I
    invoke-virtual {p0, v0, v2}, Landroid/widget/SemHorizontalAbsListView;->pointToPosition(II)I

    move-result v3

    .line 6079
    .local v3, "motionPosition":I
    iget-boolean v4, p0, Landroid/widget/SemHorizontalAbsListView;->mDataChanged:Z

    if-nez v4, :cond_3

    .line 6080
    iget v4, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    const/4 v5, 0x4

    if-eq v4, v5, :cond_2

    if-ltz v3, :cond_2

    .line 6081
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v4

    check-cast v4, Landroid/widget/ListAdapter;

    invoke-interface {v4, v3}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 6085
    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    .line 6087
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mPendingCheckForTap:Landroid/widget/SemHorizontalAbsListView$CheckForTap;

    if-nez v1, :cond_1

    .line 6088
    new-instance v1, Landroid/widget/SemHorizontalAbsListView$CheckForTap;

    const/4 v4, 0x0

    invoke-direct {v1, p0, v4}, Landroid/widget/SemHorizontalAbsListView$CheckForTap;-><init>(Landroid/widget/SemHorizontalAbsListView;Landroid/widget/SemHorizontalAbsListView$CheckForTap-IA;)V

    iput-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mPendingCheckForTap:Landroid/widget/SemHorizontalAbsListView$CheckForTap;

    goto :goto_0

    .line 6060
    .end local v0    # "x":I
    .end local v2    # "y":I
    .end local v3    # "motionPosition":I
    :pswitch_0
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFlingRunnable:Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    invoke-virtual {v0}, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->endFling()V

    .line 6061
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPositionScroller:Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;

    if-eqz v0, :cond_0

    .line 6062
    invoke-virtual {v0}, Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;->stop()V

    .line 6064
    :cond_0
    const/4 v0, 0x5

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    .line 6065
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mLastX:I

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mMotionX:I

    .line 6066
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mMotionY:I

    .line 6067
    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mMotionCorrection:I

    .line 6068
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mActivePointerId:I

    .line 6069
    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mDirection:I

    .line 6070
    goto :goto_2

    .line 6090
    .restart local v0    # "x":I
    .restart local v2    # "y":I
    .restart local v3    # "motionPosition":I
    :cond_1
    :goto_0
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mPendingCheckForTap:Landroid/widget/SemHorizontalAbsListView$CheckForTap;

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {p0, v1, v4, v5}, Landroid/widget/SemHorizontalAbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 6091
    :cond_2
    iget v4, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    if-ne v4, v5, :cond_3

    .line 6093
    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->createScrollingCache()V

    .line 6094
    const/4 v4, 0x3

    iput v4, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    .line 6095
    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mMotionCorrection:I

    .line 6096
    invoke-virtual {p0, v0}, Landroid/widget/SemHorizontalAbsListView;->findMotionRow(I)I

    move-result v3

    .line 6097
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mFlingRunnable:Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    invoke-virtual {v1}, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->flywheelTouch()V

    .line 6101
    :cond_3
    :goto_1
    if-ltz v3, :cond_4

    .line 6103
    iget v1, p0, Landroid/widget/SemHorizontalAbsListView;->mFirstPosition:I

    sub-int v1, v3, v1

    invoke-virtual {p0, v1}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 6104
    .local v1, "v":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v4

    iput v4, p0, Landroid/widget/SemHorizontalAbsListView;->mMotionViewOriginalLeft:I

    .line 6106
    .end local v1    # "v":Landroid/view/View;
    :cond_4
    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mMotionX:I

    .line 6107
    iput v2, p0, Landroid/widget/SemHorizontalAbsListView;->mMotionY:I

    .line 6108
    iput v3, p0, Landroid/widget/SemHorizontalAbsListView;->mMotionPosition:I

    .line 6109
    const/high16 v1, -0x80000000

    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mLastX:I

    .line 6110
    nop

    .line 6114
    .end local v0    # "x":I
    .end local v2    # "y":I
    .end local v3    # "motionPosition":I
    :goto_2
    invoke-virtual {p0, p1}, Landroid/widget/SemHorizontalAbsListView;->performButtonActionOnTouchDown(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    if-nez v0, :cond_5

    .line 6115
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPendingCheckForTap:Landroid/widget/SemHorizontalAbsListView$CheckForTap;

    invoke-virtual {p0, v0}, Landroid/widget/SemHorizontalAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 6117
    :cond_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist onTouchMove(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)V
    .locals 6
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .param p2, "vtev"    # Landroid/view/MotionEvent;

    .line 6120
    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 6121
    .local v0, "pointerIndex":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 6122
    const/4 v0, 0x0

    .line 6123
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mActivePointerId:I

    .line 6126
    :cond_0
    iget-boolean v1, p0, Landroid/widget/SemHorizontalAbsListView;->mDataChanged:Z

    if-eqz v1, :cond_1

    .line 6129
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->layoutChildren()V

    .line 6132
    :cond_1
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    float-to-int v1, v1

    .line 6134
    .local v1, "x":I
    iget v2, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    .line 6160
    :pswitch_1
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    float-to-int v2, v2

    invoke-direct {p0, v1, v2, p2}, Landroid/widget/SemHorizontalAbsListView;->scrollIfNeeded(IILandroid/view/MotionEvent;)V

    goto :goto_1

    .line 6140
    :pswitch_2
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    float-to-int v2, v2

    invoke-direct {p0, v1, v2, p2}, Landroid/widget/SemHorizontalAbsListView;->startScrollIfNeeded(IILandroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 6141
    goto :goto_1

    .line 6145
    :cond_2
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    .line 6146
    .local v2, "y":F
    int-to-float v3, v1

    iget v4, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchSlop:I

    int-to-float v4, v4

    invoke-virtual {p0, v3, v2, v4}, Landroid/widget/SemHorizontalAbsListView;->pointInView(FFF)Z

    move-result v3

    if-nez v3, :cond_5

    .line 6147
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Landroid/widget/SemHorizontalAbsListView;->setPressed(Z)V

    .line 6148
    iget v4, p0, Landroid/widget/SemHorizontalAbsListView;->mMotionPosition:I

    iget v5, p0, Landroid/widget/SemHorizontalAbsListView;->mFirstPosition:I

    sub-int/2addr v4, v5

    invoke-virtual {p0, v4}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 6149
    .local v4, "motionView":Landroid/view/View;
    if-eqz v4, :cond_3

    .line 6150
    invoke-virtual {v4, v3}, Landroid/view/View;->setPressed(Z)V

    .line 6152
    :cond_3
    iget v3, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    if-nez v3, :cond_4

    .line 6153
    iget-object v3, p0, Landroid/widget/SemHorizontalAbsListView;->mPendingCheckForTap:Landroid/widget/SemHorizontalAbsListView$CheckForTap;

    goto :goto_0

    :cond_4
    iget-object v3, p0, Landroid/widget/SemHorizontalAbsListView;->mPendingCheckForLongPress:Landroid/widget/SemHorizontalAbsListView$CheckForLongPress;

    .line 6152
    :goto_0
    invoke-virtual {p0, v3}, Landroid/widget/SemHorizontalAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 6154
    const/4 v3, 0x2

    iput v3, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    .line 6155
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->updateSelectorState()V

    .line 6163
    .end local v2    # "y":F
    .end local v4    # "motionView":Landroid/view/View;
    :cond_5
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

.method private blacklist onTouchUp(Landroid/view/MotionEvent;)V
    .locals 13
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 6166
    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/16 v3, 0x3e8

    const/4 v4, -0x1

    const/4 v5, 0x0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_7

    .line 6299
    :pswitch_1
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFlingRunnable:Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    if-nez v0, :cond_0

    .line 6300
    new-instance v0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    invoke-direct {v0, p0}, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;-><init>(Landroid/widget/SemHorizontalAbsListView;)V

    iput-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFlingRunnable:Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    .line 6302
    :cond_0
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 6303
    .local v0, "velocityTracker":Landroid/view/VelocityTracker;
    iget v6, p0, Landroid/widget/SemHorizontalAbsListView;->mMaximumVelocity:I

    int-to-float v6, v6

    invoke-virtual {v0, v3, v6}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 6304
    iget v3, p0, Landroid/widget/SemHorizontalAbsListView;->mActivePointerId:I

    invoke-virtual {v0, v3}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v3

    float-to-int v3, v3

    .line 6306
    .local v3, "initialVelocity":I
    invoke-virtual {p0, v2}, Landroid/widget/SemHorizontalAbsListView;->reportScrollStateChange(I)V

    .line 6307
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v6, p0, Landroid/widget/SemHorizontalAbsListView;->mMinimumVelocity:I

    if-le v2, v6, :cond_1

    .line 6308
    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mFlingRunnable:Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    neg-int v6, v3

    invoke-virtual {v2, v6}, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->startOverfling(I)V

    goto/16 :goto_7

    .line 6310
    :cond_1
    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mFlingRunnable:Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    invoke-virtual {v2}, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->startSpringback()V

    goto/16 :goto_7

    .line 6242
    .end local v0    # "velocityTracker":Landroid/view/VelocityTracker;
    .end local v3    # "initialVelocity":I
    :pswitch_2
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getChildCount()I

    move-result v0

    .line 6243
    .local v0, "childCount":I
    if-lez v0, :cond_a

    .line 6246
    iget-boolean v6, p0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    if-eqz v6, :cond_2

    .line 6247
    add-int/lit8 v6, v0, -0x1

    invoke-virtual {p0, v6}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v6

    .line 6248
    .local v6, "firstChildLeft":I
    invoke-virtual {p0, v5}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v7

    .local v7, "lastChildRight":I
    goto :goto_0

    .line 6250
    .end local v6    # "firstChildLeft":I
    .end local v7    # "lastChildRight":I
    :cond_2
    invoke-virtual {p0, v5}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v6

    .line 6251
    .restart local v6    # "firstChildLeft":I
    add-int/lit8 v7, v0, -0x1

    invoke-virtual {p0, v7}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v7

    .line 6253
    .restart local v7    # "lastChildRight":I
    :goto_0
    iget-object v8, p0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    .line 6254
    .local v8, "contentLeft":I
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getWidth()I

    move-result v9

    iget-object v10, p0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->right:I

    sub-int/2addr v9, v10

    .line 6255
    .local v9, "contentRight":I
    iget v10, p0, Landroid/widget/SemHorizontalAbsListView;->mFirstPosition:I

    if-nez v10, :cond_3

    if-lt v6, v8, :cond_3

    iget v10, p0, Landroid/widget/SemHorizontalAbsListView;->mFirstPosition:I

    add-int/2addr v10, v0

    iget v11, p0, Landroid/widget/SemHorizontalAbsListView;->mItemCount:I

    if-ge v10, v11, :cond_3

    .line 6257
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getWidth()I

    move-result v10

    sub-int/2addr v10, v9

    if-gt v7, v10, :cond_3

    .line 6258
    iput v4, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    .line 6259
    invoke-virtual {p0, v5}, Landroid/widget/SemHorizontalAbsListView;->reportScrollStateChange(I)V

    goto :goto_1

    .line 6261
    :cond_3
    iget-object v10, p0, Landroid/widget/SemHorizontalAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 6262
    .local v10, "velocityTracker":Landroid/view/VelocityTracker;
    iget v11, p0, Landroid/widget/SemHorizontalAbsListView;->mMaximumVelocity:I

    int-to-float v11, v11

    invoke-virtual {v10, v3, v11}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 6264
    iget v3, p0, Landroid/widget/SemHorizontalAbsListView;->mActivePointerId:I

    .line 6265
    invoke-virtual {v10, v3}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v3

    iget v11, p0, Landroid/widget/SemHorizontalAbsListView;->mVelocityScale:F

    mul-float/2addr v3, v11

    float-to-int v3, v3

    .line 6270
    .restart local v3    # "initialVelocity":I
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v11

    iget v12, p0, Landroid/widget/SemHorizontalAbsListView;->mMinimumVelocity:I

    if-le v11, v12, :cond_7

    iget v11, p0, Landroid/widget/SemHorizontalAbsListView;->mFirstPosition:I

    if-nez v11, :cond_4

    iget v11, p0, Landroid/widget/SemHorizontalAbsListView;->mOverscrollDistance:I

    sub-int v11, v8, v11

    if-eq v6, v11, :cond_7

    :cond_4
    iget v11, p0, Landroid/widget/SemHorizontalAbsListView;->mFirstPosition:I

    add-int/2addr v11, v0

    iget v12, p0, Landroid/widget/SemHorizontalAbsListView;->mItemCount:I

    if-ne v11, v12, :cond_5

    iget v11, p0, Landroid/widget/SemHorizontalAbsListView;->mOverscrollDistance:I

    add-int/2addr v11, v9

    if-eq v7, v11, :cond_7

    .line 6275
    :cond_5
    iget-object v11, p0, Landroid/widget/SemHorizontalAbsListView;->mFlingRunnable:Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    if-nez v11, :cond_6

    .line 6276
    new-instance v11, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    invoke-direct {v11, p0}, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;-><init>(Landroid/widget/SemHorizontalAbsListView;)V

    iput-object v11, p0, Landroid/widget/SemHorizontalAbsListView;->mFlingRunnable:Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    .line 6278
    :cond_6
    invoke-virtual {p0, v2}, Landroid/widget/SemHorizontalAbsListView;->reportScrollStateChange(I)V

    .line 6280
    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mFlingRunnable:Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    neg-int v11, v3

    invoke-virtual {v2, v11}, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->start(I)V

    goto :goto_1

    .line 6282
    :cond_7
    iput v4, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    .line 6283
    invoke-virtual {p0, v5}, Landroid/widget/SemHorizontalAbsListView;->reportScrollStateChange(I)V

    .line 6284
    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mFlingRunnable:Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    if-eqz v2, :cond_8

    .line 6285
    invoke-virtual {v2}, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->endFling()V

    .line 6287
    :cond_8
    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mPositionScroller:Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;

    if-eqz v2, :cond_9

    .line 6288
    invoke-virtual {v2}, Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;->stop()V

    .line 6292
    .end local v3    # "initialVelocity":I
    .end local v6    # "firstChildLeft":I
    .end local v7    # "lastChildRight":I
    .end local v8    # "contentLeft":I
    .end local v9    # "contentRight":I
    .end local v10    # "velocityTracker":Landroid/view/VelocityTracker;
    :cond_9
    :goto_1
    goto/16 :goto_7

    .line 6293
    :cond_a
    iput v4, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    .line 6294
    invoke-virtual {p0, v5}, Landroid/widget/SemHorizontalAbsListView;->reportScrollStateChange(I)V

    .line 6296
    goto/16 :goto_7

    .line 6170
    .end local v0    # "childCount":I
    :pswitch_3
    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mMotionPosition:I

    .line 6171
    .local v0, "motionPosition":I
    iget v2, p0, Landroid/widget/SemHorizontalAbsListView;->mFirstPosition:I

    sub-int v2, v0, v2

    invoke-virtual {p0, v2}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 6172
    .local v2, "child":Landroid/view/View;
    if-eqz v2, :cond_17

    .line 6173
    iget v3, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    if-eqz v3, :cond_b

    .line 6174
    invoke-virtual {v2, v5}, Landroid/view/View;->setPressed(Z)V

    .line 6177
    :cond_b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 6178
    .local v3, "y":F
    iget-object v6, p0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    cmpl-float v6, v3, v6

    const/4 v7, 0x1

    if-lez v6, :cond_c

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getHeight()I

    move-result v6

    iget-object v8, p0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v8

    int-to-float v6, v6

    cmpg-float v6, v3, v6

    if-gez v6, :cond_c

    move v6, v7

    goto :goto_2

    :cond_c
    move v6, v5

    .line 6179
    .local v6, "inList":Z
    :goto_2
    if-eqz v6, :cond_17

    invoke-virtual {v2}, Landroid/view/View;->hasExplicitFocusable()Z

    move-result v8

    if-nez v8, :cond_17

    .line 6180
    iget-object v8, p0, Landroid/widget/SemHorizontalAbsListView;->mPerformClick:Landroid/widget/SemHorizontalAbsListView$PerformClick;

    if-nez v8, :cond_d

    .line 6181
    new-instance v8, Landroid/widget/SemHorizontalAbsListView$PerformClick;

    invoke-direct {v8, p0, v1}, Landroid/widget/SemHorizontalAbsListView$PerformClick;-><init>(Landroid/widget/SemHorizontalAbsListView;Landroid/widget/SemHorizontalAbsListView$PerformClick-IA;)V

    iput-object v8, p0, Landroid/widget/SemHorizontalAbsListView;->mPerformClick:Landroid/widget/SemHorizontalAbsListView$PerformClick;

    .line 6184
    :cond_d
    iget-object v8, p0, Landroid/widget/SemHorizontalAbsListView;->mPerformClick:Landroid/widget/SemHorizontalAbsListView$PerformClick;

    .line 6185
    .local v8, "performClick":Landroid/widget/SemHorizontalAbsListView$PerformClick;
    iput v0, v8, Landroid/widget/SemHorizontalAbsListView$PerformClick;->mClickMotionPosition:I

    .line 6186
    invoke-virtual {v8}, Landroid/widget/SemHorizontalAbsListView$PerformClick;->rememberWindowAttachCount()V

    .line 6188
    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mResurrectToPosition:I

    .line 6190
    iget v9, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    if-eqz v9, :cond_10

    if-ne v9, v7, :cond_e

    goto :goto_3

    .line 6233
    :cond_e
    iget-boolean v7, p0, Landroid/widget/SemHorizontalAbsListView;->mForcedClick:Z

    if-nez v7, :cond_f

    iget-boolean v7, p0, Landroid/widget/SemHorizontalAbsListView;->mDataChanged:Z

    if-nez v7, :cond_17

    :cond_f
    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v7, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v7

    if-eqz v7, :cond_17

    .line 6234
    invoke-virtual {v8}, Landroid/widget/SemHorizontalAbsListView$PerformClick;->run()V

    goto/16 :goto_6

    .line 6191
    :cond_10
    :goto_3
    if-nez v9, :cond_11

    .line 6192
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mPendingCheckForTap:Landroid/widget/SemHorizontalAbsListView$CheckForTap;

    goto :goto_4

    :cond_11
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mPendingCheckForLongPress:Landroid/widget/SemHorizontalAbsListView$CheckForLongPress;

    .line 6191
    :goto_4
    invoke-virtual {p0, v1}, Landroid/widget/SemHorizontalAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 6193
    iput v5, p0, Landroid/widget/SemHorizontalAbsListView;->mLayoutMode:I

    .line 6194
    iget-boolean v1, p0, Landroid/widget/SemHorizontalAbsListView;->mDataChanged:Z

    if-nez v1, :cond_15

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 6195
    iput v7, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    .line 6196
    iget v1, p0, Landroid/widget/SemHorizontalAbsListView;->mMotionPosition:I

    invoke-virtual {p0, v1}, Landroid/widget/SemHorizontalAbsListView;->setSelectedPositionInt(I)V

    .line 6197
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->layoutChildren()V

    .line 6198
    invoke-virtual {v2, v7}, Landroid/view/View;->setPressed(Z)V

    .line 6199
    iget v1, p0, Landroid/widget/SemHorizontalAbsListView;->mMotionPosition:I

    invoke-virtual {p0, v1, v2}, Landroid/widget/SemHorizontalAbsListView;->positionSelector(ILandroid/view/View;)V

    .line 6200
    invoke-virtual {p0, v7}, Landroid/widget/SemHorizontalAbsListView;->setPressed(Z)V

    .line 6201
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_13

    .line 6202
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 6203
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    instance-of v4, v1, Landroid/graphics/drawable/TransitionDrawable;

    if-eqz v4, :cond_12

    .line 6204
    move-object v4, v1

    check-cast v4, Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    .line 6206
    :cond_12
    iget-object v4, p0, Landroid/widget/SemHorizontalAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {v4, v5, v3}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 6208
    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    :cond_13
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    if-eqz v1, :cond_14

    .line 6209
    invoke-virtual {p0, v1}, Landroid/widget/SemHorizontalAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 6211
    :cond_14
    new-instance v1, Landroid/widget/SemHorizontalAbsListView$2;

    invoke-direct {v1, p0, v2, v8}, Landroid/widget/SemHorizontalAbsListView$2;-><init>(Landroid/widget/SemHorizontalAbsListView;Landroid/view/View;Landroid/widget/SemHorizontalAbsListView$PerformClick;)V

    iput-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    .line 6223
    nop

    .line 6224
    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v4

    int-to-long v4, v4

    .line 6223
    invoke-virtual {p0, v1, v4, v5}, Landroid/widget/SemHorizontalAbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_5

    .line 6226
    :cond_15
    iput v4, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    .line 6227
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->updateSelectorState()V

    .line 6228
    iget-boolean v1, p0, Landroid/widget/SemHorizontalAbsListView;->mForcedClick:Z

    if-eqz v1, :cond_16

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 6229
    invoke-virtual {v8}, Landroid/widget/SemHorizontalAbsListView$PerformClick;->run()V

    .line 6232
    :cond_16
    :goto_5
    return-void

    .line 6238
    .end local v3    # "y":F
    .end local v6    # "inList":Z
    .end local v8    # "performClick":Landroid/widget/SemHorizontalAbsListView$PerformClick;
    :cond_17
    :goto_6
    iput v4, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    .line 6239
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->updateSelectorState()V

    .line 6240
    nop

    .line 6316
    .end local v0    # "motionPosition":I
    .end local v2    # "child":Landroid/view/View;
    :goto_7
    invoke-virtual {p0, v5}, Landroid/widget/SemHorizontalAbsListView;->setPressed(Z)V

    .line 6318
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_18

    .line 6319
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 6320
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 6324
    :cond_18
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->invalidate()V

    .line 6325
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPendingCheckForLongPress:Landroid/widget/SemHorizontalAbsListView$CheckForLongPress;

    invoke-virtual {p0, v0}, Landroid/widget/SemHorizontalAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 6326
    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->recycleVelocityTracker()V

    .line 6328
    iput v4, p0, Landroid/widget/SemHorizontalAbsListView;->mActivePointerId:I

    .line 6329
    iput v5, p0, Landroid/widget/SemHorizontalAbsListView;->mPointerCount:I

    .line 6338
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v0, :cond_19

    .line 6339
    invoke-virtual {v0}, Landroid/os/StrictMode$Span;->finish()V

    .line 6340
    iput-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 6342
    :cond_19
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

.method private blacklist positionPopup()V
    .locals 6

    .line 8409
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 8410
    .local v0, "screenHeight":I
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 8411
    .local v1, "xy":[I
    invoke-virtual {p0, v1}, Landroid/widget/SemHorizontalAbsListView;->getLocationOnScreen([I)V

    .line 8414
    const/4 v2, 0x1

    aget v2, v1, v2

    sub-int v2, v0, v2

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p0, Landroid/widget/SemHorizontalAbsListView;->mDensityScale:F

    const/high16 v4, 0x41a00000    # 20.0f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    add-int/2addr v2, v3

    .line 8415
    .local v2, "bottomGap":I
    iget-object v3, p0, Landroid/widget/SemHorizontalAbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    .line 8416
    iget-object v3, p0, Landroid/widget/SemHorizontalAbsListView;->mPopup:Landroid/widget/PopupWindow;

    const/16 v5, 0x51

    aget v4, v1, v4

    invoke-virtual {v3, p0, v5, v4, v2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_0

    .line 8419
    :cond_0
    iget-object v3, p0, Landroid/widget/SemHorizontalAbsListView;->mPopup:Landroid/widget/PopupWindow;

    aget v4, v1, v4

    const/4 v5, -0x1

    invoke-virtual {v3, v4, v2, v5, v5}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 8421
    :goto_0
    return-void
.end method

.method private blacklist positionSelector(ILandroid/view/View;ZFF)V
    .locals 9
    .param p1, "position"    # I
    .param p2, "sel"    # Landroid/view/View;
    .param p3, "manageHotspot"    # Z
    .param p4, "x"    # F
    .param p5, "y"    # F

    .line 3499
    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectorPosition:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 3500
    .local v0, "positionChanged":Z
    :goto_0
    const/4 v3, -0x1

    if-eq p1, v3, :cond_1

    .line 3501
    iput p1, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectorPosition:I

    .line 3504
    :cond_1
    iget-object v4, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 3505
    .local v4, "selectorRect":Landroid/graphics/Rect;
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v5

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v6

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v7

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v8

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 3508
    iget v5, v4, Landroid/graphics/Rect;->left:I

    iget v6, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectionLeftPadding:I

    sub-int/2addr v5, v6

    iput v5, v4, Landroid/graphics/Rect;->left:I

    .line 3509
    iget v5, v4, Landroid/graphics/Rect;->top:I

    iget v6, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectionTopPadding:I

    sub-int/2addr v5, v6

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 3510
    iget v5, v4, Landroid/graphics/Rect;->right:I

    iget v6, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectionRightPadding:I

    add-int/2addr v5, v6

    iput v5, v4, Landroid/graphics/Rect;->right:I

    .line 3511
    iget v5, v4, Landroid/graphics/Rect;->bottom:I

    iget v6, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectionBottomPadding:I

    add-int/2addr v5, v6

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    .line 3514
    iget-object v5, p0, Landroid/widget/SemHorizontalAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 3515
    .local v5, "selector":Landroid/graphics/drawable/Drawable;
    if-eqz v5, :cond_5

    .line 3516
    if-eqz v0, :cond_2

    .line 3519
    invoke-virtual {v5, v2, v2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 3520
    sget-object v6, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 3522
    :cond_2
    invoke-virtual {v5, v4}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 3523
    if-eqz v0, :cond_4

    .line 3524
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getVisibility()I

    move-result v6

    if-nez v6, :cond_3

    .line 3525
    invoke-virtual {v5, v1, v2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 3527
    :cond_3
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->updateSelectorState()V

    .line 3529
    :cond_4
    if-eqz p3, :cond_5

    .line 3530
    invoke-virtual {v5, p4, p5}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 3534
    :cond_5
    iget-boolean v1, p0, Landroid/widget/SemHorizontalAbsListView;->mIsChildViewEnabled:Z

    .line 3535
    .local v1, "isChildViewEnabled":Z
    invoke-virtual {p2}, Landroid/view/View;->isEnabled()Z

    move-result v2

    if-eq v2, v1, :cond_6

    .line 3536
    xor-int/lit8 v2, v1, 0x1

    iput-boolean v2, p0, Landroid/widget/SemHorizontalAbsListView;->mIsChildViewEnabled:Z

    .line 3537
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getSelectedItemPosition()I

    move-result v2

    if-eq v2, v3, :cond_6

    .line 3538
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->refreshDrawableState()V

    .line 3541
    :cond_6
    return-void
.end method

.method private blacklist postOnJumpScrollToFinished()V
    .locals 1

    .line 6398
    new-instance v0, Landroid/widget/SemHorizontalAbsListView$3;

    invoke-direct {v0, p0}, Landroid/widget/SemHorizontalAbsListView$3;-><init>(Landroid/widget/SemHorizontalAbsListView;)V

    invoke-virtual {p0, v0}, Landroid/widget/SemHorizontalAbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 6403
    return-void
.end method

.method private blacklist recycleVelocityTracker()V
    .locals 1

    .line 6741
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 6742
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 6743
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 6745
    :cond_0
    return-void
.end method

.method private blacklist releaseAllBoosters()V
    .locals 1

    .line 1037
    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mDVFSLockAcquired:Z

    if-eqz v0, :cond_0

    .line 1038
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/samsung/android/os/SemPerfManager;->onScrollEvent(Z)V

    .line 1039
    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mDVFSLockAcquired:Z

    .line 1041
    :cond_0
    return-void
.end method

.method private blacklist scrollIfNeeded(IILandroid/view/MotionEvent;)V
    .locals 33
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "vtev"    # Landroid/view/MotionEvent;

    .line 4855
    move-object/from16 v10, p0

    move/from16 v11, p1

    move/from16 v12, p2

    move-object/from16 v13, p3

    iget v0, v10, Landroid/widget/SemHorizontalAbsListView;->mMotionX:I

    sub-int v0, v11, v0

    .line 4856
    .local v0, "rawDeltaX":I
    const/4 v1, 0x0

    .line 4857
    .local v1, "scrollOffsetCorrection":I
    const/4 v2, 0x0

    .line 4858
    .local v2, "scrollConsumedCorrection":I
    iget v3, v10, Landroid/widget/SemHorizontalAbsListView;->mLastX:I

    const/high16 v4, -0x80000000

    if-ne v3, v4, :cond_0

    .line 4859
    iget v5, v10, Landroid/widget/SemHorizontalAbsListView;->mMotionCorrection:I

    sub-int/2addr v0, v5

    .line 4861
    :cond_0
    if-eq v3, v4, :cond_1

    sub-int/2addr v3, v11

    goto :goto_0

    :cond_1
    neg-int v3, v0

    :goto_0
    iget-object v5, v10, Landroid/widget/SemHorizontalAbsListView;->mScrollConsumed:[I

    iget-object v6, v10, Landroid/widget/SemHorizontalAbsListView;->mScrollOffset:[I

    const/4 v14, 0x0

    invoke-virtual {v10, v14, v3, v5, v6}, Landroid/widget/SemHorizontalAbsListView;->dispatchNestedPreScroll(II[I[I)Z

    move-result v3

    const/4 v6, 0x0

    if-eqz v3, :cond_3

    .line 4863
    iget-object v3, v10, Landroid/widget/SemHorizontalAbsListView;->mScrollConsumed:[I

    aget v5, v3, v14

    add-int/2addr v0, v5

    .line 4864
    iget-object v5, v10, Landroid/widget/SemHorizontalAbsListView;->mScrollOffset:[I

    aget v5, v5, v14

    neg-int v1, v5

    .line 4865
    aget v2, v3, v14

    .line 4866
    if-eqz v13, :cond_2

    .line 4867
    int-to-float v3, v5

    invoke-virtual {v13, v3, v6}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 4868
    iget v3, v10, Landroid/widget/SemHorizontalAbsListView;->mNestedXOffset:I

    iget-object v5, v10, Landroid/widget/SemHorizontalAbsListView;->mScrollOffset:[I

    aget v5, v5, v14

    add-int/2addr v3, v5

    iput v3, v10, Landroid/widget/SemHorizontalAbsListView;->mNestedXOffset:I

    .line 4871
    :cond_2
    move v15, v0

    move/from16 v16, v1

    move/from16 v17, v2

    goto :goto_1

    .line 4861
    :cond_3
    move v15, v0

    move/from16 v16, v1

    move/from16 v17, v2

    .line 4871
    .end local v0    # "rawDeltaX":I
    .end local v1    # "scrollOffsetCorrection":I
    .end local v2    # "scrollConsumedCorrection":I
    .local v15, "rawDeltaX":I
    .local v16, "scrollOffsetCorrection":I
    .local v17, "scrollConsumedCorrection":I
    :goto_1
    move v9, v15

    .line 4873
    .local v9, "deltaX":I
    iget v0, v10, Landroid/widget/SemHorizontalAbsListView;->mLastX:I

    if-eq v0, v4, :cond_4

    sub-int v1, v11, v0

    add-int v1, v1, v17

    goto :goto_2

    :cond_4
    move v1, v9

    :goto_2
    move v8, v1

    .line 4874
    .local v8, "incrementalDeltaX":I
    const/16 v18, 0x0

    .line 4876
    .local v18, "lastXCorrection":I
    iget v1, v10, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    const/high16 v19, 0x3f800000    # 1.0f

    const/4 v7, 0x5

    const/4 v5, 0x3

    const/4 v4, 0x1

    if-ne v1, v5, :cond_18

    .line 4884
    iget-object v0, v10, Landroid/widget/SemHorizontalAbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    if-nez v0, :cond_5

    .line 4886
    const-string v0, "SemHorizontalAbsListView-scroll"

    invoke-static {v0}, Landroid/os/StrictMode;->enterCriticalSpan(Ljava/lang/String;)Landroid/os/StrictMode$Span;

    move-result-object v0

    iput-object v0, v10, Landroid/widget/SemHorizontalAbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 4889
    :cond_5
    iget v0, v10, Landroid/widget/SemHorizontalAbsListView;->mLastX:I

    if-eq v11, v0, :cond_17

    .line 4893
    iget v0, v10, Landroid/widget/SemHorizontalAbsListView;->mGroupFlags:I

    const/high16 v1, 0x80000

    and-int/2addr v0, v1

    if-nez v0, :cond_6

    .line 4894
    invoke-static {v15}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, v10, Landroid/widget/SemHorizontalAbsListView;->mTouchSlop:I

    if-le v0, v1, :cond_6

    .line 4895
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 4896
    .local v0, "parent":Landroid/view/ViewParent;
    if-eqz v0, :cond_6

    .line 4897
    invoke-interface {v0, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 4902
    .end local v0    # "parent":Landroid/view/ViewParent;
    :cond_6
    iget v0, v10, Landroid/widget/SemHorizontalAbsListView;->mMotionPosition:I

    if-ltz v0, :cond_7

    .line 4903
    iget v1, v10, Landroid/widget/SemHorizontalAbsListView;->mFirstPosition:I

    sub-int/2addr v0, v1

    move v5, v0

    .local v0, "motionIndex":I
    goto :goto_3

    .line 4907
    .end local v0    # "motionIndex":I
    :cond_7
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->getChildCount()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    move v5, v0

    .line 4910
    .local v5, "motionIndex":I
    :goto_3
    const/4 v0, 0x0

    .line 4911
    .local v0, "motionViewPrevLeft":I
    invoke-virtual {v10, v5}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 4912
    .local v1, "motionView":Landroid/view/View;
    if-eqz v1, :cond_8

    .line 4913
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v0

    move/from16 v20, v0

    goto :goto_4

    .line 4912
    :cond_8
    move/from16 v20, v0

    .line 4917
    .end local v0    # "motionViewPrevLeft":I
    .local v20, "motionViewPrevLeft":I
    :goto_4
    const/4 v0, 0x0

    .line 4918
    .local v0, "atEdge":Z
    if-eqz v8, :cond_9

    .line 4919
    invoke-virtual {v10, v9, v8}, Landroid/widget/SemHorizontalAbsListView;->trackMotionScroll(II)Z

    move-result v0

    move/from16 v21, v0

    goto :goto_5

    .line 4918
    :cond_9
    move/from16 v21, v0

    .line 4923
    .end local v0    # "atEdge":Z
    .local v21, "atEdge":Z
    :goto_5
    invoke-virtual {v10, v5}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v22

    .line 4924
    .end local v1    # "motionView":Landroid/view/View;
    .local v22, "motionView":Landroid/view/View;
    if-eqz v22, :cond_16

    .line 4927
    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getLeft()I

    move-result v23

    .line 4928
    .local v23, "motionViewRealLeft":I
    if-eqz v21, :cond_14

    .line 4931
    neg-int v0, v8

    sub-int v1, v23, v20

    sub-int v3, v0, v1

    .line 4933
    .local v3, "overscroll":I
    sub-int v1, v3, v8

    const/4 v2, 0x0

    const/16 v24, 0x0

    iget-object v0, v10, Landroid/widget/SemHorizontalAbsListView;->mScrollOffset:[I

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move/from16 v26, v3

    .end local v3    # "overscroll":I
    .local v26, "overscroll":I
    move/from16 v3, v24

    move/from16 v4, v26

    move/from16 v24, v5

    .end local v5    # "motionIndex":I
    .local v24, "motionIndex":I
    move-object/from16 v5, v25

    invoke-virtual/range {v0 .. v5}, Landroid/widget/SemHorizontalAbsListView;->dispatchNestedScroll(IIII[I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 4935
    iget-object v0, v10, Landroid/widget/SemHorizontalAbsListView;->mScrollOffset:[I

    aget v0, v0, v14

    sub-int v18, v18, v0

    .line 4936
    if-eqz v13, :cond_a

    .line 4937
    int-to-float v0, v0

    invoke-virtual {v13, v0, v6}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 4938
    iget v0, v10, Landroid/widget/SemHorizontalAbsListView;->mNestedXOffset:I

    iget-object v1, v10, Landroid/widget/SemHorizontalAbsListView;->mScrollOffset:[I

    aget v1, v1, v14

    add-int/2addr v0, v1

    iput v0, v10, Landroid/widget/SemHorizontalAbsListView;->mNestedXOffset:I

    .line 4977
    .end local v26    # "overscroll":I
    :cond_a
    move v3, v8

    move/from16 v25, v9

    goto/16 :goto_7

    .line 4941
    .restart local v26    # "overscroll":I
    :cond_b
    const/4 v2, 0x0

    iget v3, v10, Landroid/widget/SemHorizontalAbsListView;->mScrollX:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget v1, v10, Landroid/widget/SemHorizontalAbsListView;->mOverscrollDistance:I

    const/16 v25, 0x0

    const/16 v28, 0x1

    move-object/from16 v0, p0

    move/from16 v29, v1

    move/from16 v1, v26

    move/from16 v7, v29

    move/from16 v30, v8

    .end local v8    # "incrementalDeltaX":I
    .local v30, "incrementalDeltaX":I
    move/from16 v8, v25

    move/from16 v25, v9

    .end local v9    # "deltaX":I
    .local v25, "deltaX":I
    move/from16 v9, v28

    invoke-virtual/range {v0 .. v9}, Landroid/widget/SemHorizontalAbsListView;->overScrollBy(IIIIIIIIZ)Z

    move-result v0

    .line 4944
    .local v0, "atOverscrollEdge":Z
    if-eqz v0, :cond_c

    iget-object v1, v10, Landroid/widget/SemHorizontalAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v1, :cond_c

    .line 4946
    invoke-virtual {v1}, Landroid/view/VelocityTracker;->clear()V

    .line 4949
    :cond_c
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->getOverScrollMode()I

    move-result v1

    .line 4950
    .local v1, "overscrollMode":I
    if-eqz v1, :cond_f

    const/4 v9, 0x1

    if-ne v1, v9, :cond_e

    .line 4952
    invoke-direct/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->contentFits()Z

    move-result v2

    if-nez v2, :cond_d

    goto :goto_6

    :cond_d
    move/from16 v3, v30

    goto/16 :goto_7

    .line 4950
    :cond_e
    move/from16 v3, v30

    goto/16 :goto_7

    .line 4953
    :cond_f
    :goto_6
    if-nez v0, :cond_10

    .line 4954
    iput v14, v10, Landroid/widget/SemHorizontalAbsListView;->mDirection:I

    .line 4955
    const/4 v2, 0x5

    iput v2, v10, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    .line 4957
    :cond_10
    move/from16 v3, v30

    .end local v30    # "incrementalDeltaX":I
    .local v3, "incrementalDeltaX":I
    if-lez v3, :cond_12

    .line 4958
    iget-object v2, v10, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    move/from16 v4, v26

    .end local v26    # "overscroll":I
    .local v4, "overscroll":I
    neg-int v5, v4

    int-to-float v5, v5

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    int-to-float v6, v12

    .line 4959
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->getHeight()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    sub-float v6, v19, v6

    .line 4958
    invoke-virtual {v2, v5, v6}, Landroid/widget/EdgeEffect;->onPull(FF)V

    .line 4960
    iget-object v2, v10, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v2

    if-nez v2, :cond_11

    .line 4961
    iget-object v2, v10, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 4963
    :cond_11
    iget-object v2, v10, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->getMaxHeight()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->getPaddingLeft()I

    move-result v5

    add-int/2addr v2, v5

    .line 4964
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->getHeight()I

    move-result v5

    .line 4963
    invoke-virtual {v10, v14, v14, v2, v5}, Landroid/widget/SemHorizontalAbsListView;->invalidate(IIII)V

    goto :goto_7

    .line 4965
    .end local v4    # "overscroll":I
    .restart local v26    # "overscroll":I
    :cond_12
    move/from16 v4, v26

    .end local v26    # "overscroll":I
    .restart local v4    # "overscroll":I
    if-gez v3, :cond_15

    .line 4966
    iget-object v2, v10, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    int-to-float v5, v4

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    int-to-float v6, v12

    .line 4967
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->getHeight()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    .line 4966
    invoke-virtual {v2, v5, v6}, Landroid/widget/EdgeEffect;->onPull(FF)V

    .line 4968
    iget-object v2, v10, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v2

    if-nez v2, :cond_13

    .line 4969
    iget-object v2, v10, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 4971
    :cond_13
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->getWidth()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->getPaddingRight()I

    move-result v5

    sub-int/2addr v2, v5

    iget-object v5, v10, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v5}, Landroid/widget/EdgeEffect;->getMaxHeight()I

    move-result v5

    sub-int/2addr v2, v5

    .line 4972
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->getWidth()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->getHeight()I

    move-result v6

    .line 4971
    invoke-virtual {v10, v2, v14, v5, v6}, Landroid/widget/SemHorizontalAbsListView;->invalidate(IIII)V

    goto :goto_7

    .line 4928
    .end local v0    # "atOverscrollEdge":Z
    .end local v1    # "overscrollMode":I
    .end local v3    # "incrementalDeltaX":I
    .end local v4    # "overscroll":I
    .end local v24    # "motionIndex":I
    .end local v25    # "deltaX":I
    .restart local v5    # "motionIndex":I
    .restart local v8    # "incrementalDeltaX":I
    .restart local v9    # "deltaX":I
    :cond_14
    move/from16 v24, v5

    move v3, v8

    move/from16 v25, v9

    .line 4977
    .end local v5    # "motionIndex":I
    .end local v8    # "incrementalDeltaX":I
    .end local v9    # "deltaX":I
    .restart local v3    # "incrementalDeltaX":I
    .restart local v24    # "motionIndex":I
    .restart local v25    # "deltaX":I
    :cond_15
    :goto_7
    add-int v0, v11, v18

    add-int v0, v0, v16

    iput v0, v10, Landroid/widget/SemHorizontalAbsListView;->mMotionX:I

    goto :goto_8

    .line 4924
    .end local v3    # "incrementalDeltaX":I
    .end local v23    # "motionViewRealLeft":I
    .end local v24    # "motionIndex":I
    .end local v25    # "deltaX":I
    .restart local v5    # "motionIndex":I
    .restart local v8    # "incrementalDeltaX":I
    .restart local v9    # "deltaX":I
    :cond_16
    move/from16 v24, v5

    move v3, v8

    move/from16 v25, v9

    .line 4979
    .end local v5    # "motionIndex":I
    .end local v8    # "incrementalDeltaX":I
    .end local v9    # "deltaX":I
    .restart local v3    # "incrementalDeltaX":I
    .restart local v24    # "motionIndex":I
    .restart local v25    # "deltaX":I
    :goto_8
    add-int v0, v11, v18

    add-int v0, v0, v16

    iput v0, v10, Landroid/widget/SemHorizontalAbsListView;->mLastX:I

    .line 4980
    .end local v20    # "motionViewPrevLeft":I
    .end local v21    # "atEdge":Z
    .end local v22    # "motionView":Landroid/view/View;
    .end local v24    # "motionIndex":I
    move v8, v3

    goto/16 :goto_d

    .line 4889
    .end local v3    # "incrementalDeltaX":I
    .end local v25    # "deltaX":I
    .restart local v8    # "incrementalDeltaX":I
    .restart local v9    # "deltaX":I
    :cond_17
    move v3, v8

    move/from16 v25, v9

    .end local v8    # "incrementalDeltaX":I
    .end local v9    # "deltaX":I
    .restart local v3    # "incrementalDeltaX":I
    .restart local v25    # "deltaX":I
    goto/16 :goto_c

    .line 4981
    .end local v3    # "incrementalDeltaX":I
    .end local v25    # "deltaX":I
    .restart local v8    # "incrementalDeltaX":I
    .restart local v9    # "deltaX":I
    :cond_18
    move v2, v7

    move v3, v8

    move/from16 v25, v9

    move v9, v4

    .end local v8    # "incrementalDeltaX":I
    .end local v9    # "deltaX":I
    .restart local v3    # "incrementalDeltaX":I
    .restart local v25    # "deltaX":I
    if-ne v1, v2, :cond_27

    .line 4982
    if-eq v11, v0, :cond_27

    .line 4983
    iget v8, v10, Landroid/widget/SemHorizontalAbsListView;->mScrollX:I

    .line 4984
    .local v8, "oldScroll":I
    sub-int v20, v8, v3

    .line 4985
    .local v20, "newScroll":I
    iget v0, v10, Landroid/widget/SemHorizontalAbsListView;->mLastX:I

    if-le v11, v0, :cond_19

    move v4, v9

    goto :goto_9

    :cond_19
    const/4 v4, -0x1

    :goto_9
    move v7, v4

    .line 4987
    .local v7, "newDirection":I
    iget v0, v10, Landroid/widget/SemHorizontalAbsListView;->mDirection:I

    if-nez v0, :cond_1a

    .line 4988
    iput v7, v10, Landroid/widget/SemHorizontalAbsListView;->mDirection:I

    .line 4991
    :cond_1a
    neg-int v0, v3

    .line 4992
    .local v0, "overScrollDistance":I
    if-gez v20, :cond_1b

    if-gez v8, :cond_1c

    :cond_1b
    if-lez v20, :cond_1d

    if-gtz v8, :cond_1d

    .line 4993
    :cond_1c
    neg-int v0, v8

    .line 4994
    add-int v1, v3, v0

    move v6, v0

    move v4, v1

    .end local v3    # "incrementalDeltaX":I
    .local v1, "incrementalDeltaX":I
    goto :goto_a

    .line 4996
    .end local v1    # "incrementalDeltaX":I
    .restart local v3    # "incrementalDeltaX":I
    :cond_1d
    const/4 v1, 0x0

    move v6, v0

    move v4, v1

    .line 4999
    .end local v0    # "overScrollDistance":I
    .end local v3    # "incrementalDeltaX":I
    .local v4, "incrementalDeltaX":I
    .local v6, "overScrollDistance":I
    :goto_a
    if-eqz v6, :cond_22

    .line 5000
    const/4 v2, 0x0

    iget v3, v10, Landroid/widget/SemHorizontalAbsListView;->mScrollX:I

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    iget v1, v10, Landroid/widget/SemHorizontalAbsListView;->mOverscrollDistance:I

    const/16 v24, 0x0

    const/16 v26, 0x1

    move-object/from16 v0, p0

    move/from16 v27, v1

    move v1, v6

    move/from16 v31, v4

    .end local v4    # "incrementalDeltaX":I
    .local v31, "incrementalDeltaX":I
    move/from16 v4, v21

    move/from16 v5, v22

    move v14, v6

    .end local v6    # "overScrollDistance":I
    .local v14, "overScrollDistance":I
    move/from16 v6, v23

    move/from16 v32, v7

    .end local v7    # "newDirection":I
    .local v32, "newDirection":I
    move/from16 v7, v27

    move/from16 v22, v8

    .end local v8    # "oldScroll":I
    .local v22, "oldScroll":I
    move/from16 v8, v24

    move v13, v9

    move/from16 v9, v26

    invoke-virtual/range {v0 .. v9}, Landroid/widget/SemHorizontalAbsListView;->overScrollBy(IIIIIIIIZ)Z

    .line 5002
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->getOverScrollMode()I

    move-result v0

    .line 5003
    .local v0, "overscrollMode":I
    if-eqz v0, :cond_1e

    if-ne v0, v13, :cond_23

    .line 5005
    invoke-direct/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->contentFits()Z

    move-result v1

    if-nez v1, :cond_23

    .line 5006
    :cond_1e
    if-lez v15, :cond_20

    .line 5007
    iget-object v1, v10, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    int-to-float v2, v14

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    int-to-float v3, v12

    .line 5008
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    sub-float v3, v19, v3

    .line 5007
    invoke-virtual {v1, v2, v3}, Landroid/widget/EdgeEffect;->onPull(FF)V

    .line 5009
    iget-object v1, v10, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    if-nez v1, :cond_1f

    .line 5010
    iget-object v1, v10, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 5012
    :cond_1f
    iget-object v1, v10, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->getMaxHeight()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->getPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    .line 5013
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->getHeight()I

    move-result v2

    .line 5012
    const/4 v3, 0x0

    invoke-virtual {v10, v3, v3, v1, v2}, Landroid/widget/SemHorizontalAbsListView;->invalidate(IIII)V

    goto :goto_b

    .line 5015
    :cond_20
    if-gez v15, :cond_23

    .line 5016
    iget-object v1, v10, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    int-to-float v2, v14

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    int-to-float v3, v12

    .line 5017
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    .line 5016
    invoke-virtual {v1, v2, v3}, Landroid/widget/EdgeEffect;->onPull(FF)V

    .line 5018
    iget-object v1, v10, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    if-nez v1, :cond_21

    .line 5019
    iget-object v1, v10, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 5021
    :cond_21
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->getWidth()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, v10, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    .line 5022
    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->getMaxHeight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->getWidth()I

    move-result v2

    .line 5023
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->getHeight()I

    move-result v3

    .line 5021
    const/4 v4, 0x0

    invoke-virtual {v10, v1, v4, v2, v3}, Landroid/widget/SemHorizontalAbsListView;->invalidate(IIII)V

    goto :goto_b

    .line 4999
    .end local v0    # "overscrollMode":I
    .end local v14    # "overScrollDistance":I
    .end local v22    # "oldScroll":I
    .end local v31    # "incrementalDeltaX":I
    .end local v32    # "newDirection":I
    .restart local v4    # "incrementalDeltaX":I
    .restart local v6    # "overScrollDistance":I
    .restart local v7    # "newDirection":I
    .restart local v8    # "oldScroll":I
    :cond_22
    move/from16 v31, v4

    move v14, v6

    move/from16 v32, v7

    move/from16 v22, v8

    .line 5028
    .end local v4    # "incrementalDeltaX":I
    .end local v6    # "overScrollDistance":I
    .end local v7    # "newDirection":I
    .end local v8    # "oldScroll":I
    .restart local v14    # "overScrollDistance":I
    .restart local v22    # "oldScroll":I
    .restart local v31    # "incrementalDeltaX":I
    .restart local v32    # "newDirection":I
    :cond_23
    :goto_b
    move/from16 v1, v31

    .end local v31    # "incrementalDeltaX":I
    .restart local v1    # "incrementalDeltaX":I
    if-eqz v1, :cond_26

    .line 5030
    iget v0, v10, Landroid/widget/SemHorizontalAbsListView;->mScrollX:I

    if-eqz v0, :cond_24

    .line 5031
    const/4 v0, 0x0

    iput v0, v10, Landroid/widget/SemHorizontalAbsListView;->mScrollX:I

    .line 5032
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->invalidateParentIfNeeded()V

    .line 5035
    :cond_24
    invoke-virtual {v10, v1, v1}, Landroid/widget/SemHorizontalAbsListView;->trackMotionScroll(II)Z

    .line 5037
    const/4 v0, 0x3

    iput v0, v10, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    .line 5041
    invoke-virtual/range {p0 .. p1}, Landroid/widget/SemHorizontalAbsListView;->findClosestMotionRow(I)I

    move-result v0

    .line 5043
    .local v0, "motionPosition":I
    const/4 v2, 0x0

    iput v2, v10, Landroid/widget/SemHorizontalAbsListView;->mMotionCorrection:I

    .line 5044
    iget v3, v10, Landroid/widget/SemHorizontalAbsListView;->mFirstPosition:I

    sub-int v3, v0, v3

    invoke-virtual {v10, v3}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 5045
    .local v3, "motionView":Landroid/view/View;
    if-eqz v3, :cond_25

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v2

    :cond_25
    iput v2, v10, Landroid/widget/SemHorizontalAbsListView;->mMotionViewOriginalLeft:I

    .line 5046
    iput v11, v10, Landroid/widget/SemHorizontalAbsListView;->mMotionX:I

    .line 5047
    iput v0, v10, Landroid/widget/SemHorizontalAbsListView;->mMotionPosition:I

    .line 5049
    .end local v0    # "motionPosition":I
    .end local v3    # "motionView":Landroid/view/View;
    :cond_26
    add-int v0, v11, v18

    add-int v0, v0, v16

    iput v0, v10, Landroid/widget/SemHorizontalAbsListView;->mLastX:I

    .line 5050
    move/from16 v0, v32

    .end local v32    # "newDirection":I
    .local v0, "newDirection":I
    iput v0, v10, Landroid/widget/SemHorizontalAbsListView;->mDirection:I

    move v8, v1

    goto :goto_d

    .line 5053
    .end local v0    # "newDirection":I
    .end local v1    # "incrementalDeltaX":I
    .end local v14    # "overScrollDistance":I
    .end local v20    # "newScroll":I
    .end local v22    # "oldScroll":I
    .local v3, "incrementalDeltaX":I
    :cond_27
    :goto_c
    move v8, v3

    .end local v3    # "incrementalDeltaX":I
    .local v8, "incrementalDeltaX":I
    :goto_d
    return-void
.end method

.method private blacklist semGetEnableVibrationAtLongPress()Z
    .locals 1

    .line 1019
    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mEnableVibrationAtLongPress:Z

    return v0
.end method

.method private blacklist semNotifyMultiSelectState(Landroid/view/View;IJ)Z
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .line 1593
    iget-boolean v5, p0, Landroid/widget/SemHorizontalAbsListView;->mIsShiftkeyPressed:Z

    iget-boolean v6, p0, Landroid/widget/SemHorizontalAbsListView;->mIsCtrlkeyPressed:Z

    iget-boolean v7, p0, Landroid/widget/SemHorizontalAbsListView;->mIsPenPressed:Z

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    invoke-super/range {v0 .. v7}, Landroid/widget/AdapterView;->semNotifyMultiSelectedState(Landroid/view/View;IJZZZ)Z

    move-result v0

    return v0
.end method

.method private blacklist setFastScrollerAlwaysVisibleUiThread(Z)V
    .locals 1
    .param p1, "alwaysShow"    # Z

    .line 1853
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScroll:Lcom/samsung/android/widget/SemHorizontalFastScroller;

    if-eqz v0, :cond_0

    .line 1854
    invoke-virtual {v0, p1}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->setAlwaysShow(Z)V

    .line 1856
    :cond_0
    return-void
.end method

.method private blacklist setFastScrollerEnabledUiThread(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .line 1784
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScroll:Lcom/samsung/android/widget/SemHorizontalFastScroller;

    if-eqz v0, :cond_0

    .line 1785
    invoke-virtual {v0, p1}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->setEnabled(Z)V

    goto :goto_0

    .line 1786
    :cond_0
    if-eqz p1, :cond_1

    .line 1787
    new-instance v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;

    iget v1, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScrollStyle:I

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/widget/SemHorizontalFastScroller;-><init>(Landroid/widget/SemHorizontalAbsListView;I)V

    iput-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScroll:Lcom/samsung/android/widget/SemHorizontalFastScroller;

    .line 1788
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->setEnabled(Z)V

    .line 1791
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->resolvePadding()V

    .line 1793
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScroll:Lcom/samsung/android/widget/SemHorizontalFastScroller;

    if-eqz v0, :cond_2

    .line 1794
    invoke-virtual {v0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->updateLayout()V

    .line 1796
    :cond_2
    return-void
.end method

.method private blacklist setItemViewLayoutParams(Landroid/view/View;I)V
    .locals 4
    .param p1, "child"    # Landroid/view/View;
    .param p2, "position"    # I

    .line 3339
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 3341
    .local v0, "vlp":Landroid/view/ViewGroup$LayoutParams;
    if-nez v0, :cond_0

    .line 3342
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/SemHorizontalAbsListView$LayoutParams;

    .local v1, "lp":Landroid/widget/SemHorizontalAbsListView$LayoutParams;
    goto :goto_0

    .line 3343
    .end local v1    # "lp":Landroid/widget/SemHorizontalAbsListView$LayoutParams;
    :cond_0
    invoke-virtual {p0, v0}, Landroid/widget/SemHorizontalAbsListView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 3344
    invoke-virtual {p0, v0}, Landroid/widget/SemHorizontalAbsListView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/SemHorizontalAbsListView$LayoutParams;

    .restart local v1    # "lp":Landroid/widget/SemHorizontalAbsListView$LayoutParams;
    goto :goto_0

    .line 3346
    .end local v1    # "lp":Landroid/widget/SemHorizontalAbsListView$LayoutParams;
    :cond_1
    move-object v1, v0

    check-cast v1, Landroid/widget/SemHorizontalAbsListView$LayoutParams;

    .line 3349
    .restart local v1    # "lp":Landroid/widget/SemHorizontalAbsListView$LayoutParams;
    :goto_0
    iget-boolean v2, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapterHasStableIds:Z

    if-eqz v2, :cond_2

    .line 3350
    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    iput-wide v2, v1, Landroid/widget/SemHorizontalAbsListView$LayoutParams;->itemId:J

    .line 3352
    :cond_2
    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p2}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v2

    iput v2, v1, Landroid/widget/SemHorizontalAbsListView$LayoutParams;->viewType:I

    .line 3353
    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3354
    return-void
.end method

.method private blacklist showPointerIcon(Landroid/view/MotionEvent;I)V
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .param p2, "iconId"    # I

    .line 10762
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v0

    .line 10763
    .local v0, "inputDevice":Landroid/view/InputDevice;
    if-eqz v0, :cond_0

    .line 10764
    invoke-virtual {v0, p2}, Landroid/view/InputDevice;->setPointerType(I)V

    goto :goto_0

    .line 10766
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

    const-string v2, "SemHorizontalAbsListView"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10768
    :goto_0
    return-void
.end method

.method private blacklist showPopup()V
    .locals 1

    .line 8400
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getWindowVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 8401
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/widget/SemHorizontalAbsListView;->createTextFilter(Z)V

    .line 8402
    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->positionPopup()V

    .line 8404
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->checkFocus()V

    .line 8406
    :cond_0
    return-void
.end method

.method private blacklist startScrollIfNeeded(IILandroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "vtev"    # Landroid/view/MotionEvent;

    .line 4809
    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mMotionX:I

    sub-int v0, p1, v0

    .line 4810
    .local v0, "deltaX":I
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 4811
    .local v1, "distance":I
    iget v2, p0, Landroid/widget/SemHorizontalAbsListView;->mScrollX:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    .line 4812
    .local v2, "overscroll":Z
    :goto_0
    if-nez v2, :cond_1

    iget v5, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchSlop:I

    if-le v1, v5, :cond_7

    .line 4813
    :cond_1
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getNestedScrollAxes()I

    move-result v5

    and-int/2addr v5, v4

    if-nez v5, :cond_7

    .line 4814
    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->createScrollingCache()V

    .line 4815
    if-eqz v2, :cond_2

    .line 4816
    const/4 v5, 0x5

    iput v5, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    .line 4817
    iput v3, p0, Landroid/widget/SemHorizontalAbsListView;->mMotionCorrection:I

    goto :goto_2

    .line 4819
    :cond_2
    const/4 v5, 0x3

    iput v5, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    .line 4820
    iget v5, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchSlop:I

    if-lez v0, :cond_3

    goto :goto_1

    :cond_3
    neg-int v5, v5

    :goto_1
    iput v5, p0, Landroid/widget/SemHorizontalAbsListView;->mMotionCorrection:I

    .line 4822
    :goto_2
    iget-object v5, p0, Landroid/widget/SemHorizontalAbsListView;->mPendingCheckForLongPress:Landroid/widget/SemHorizontalAbsListView$CheckForLongPress;

    invoke-virtual {p0, v5}, Landroid/widget/SemHorizontalAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4823
    invoke-virtual {p0, v3}, Landroid/widget/SemHorizontalAbsListView;->setPressed(Z)V

    .line 4824
    iget v5, p0, Landroid/widget/SemHorizontalAbsListView;->mMotionPosition:I

    iget v6, p0, Landroid/widget/SemHorizontalAbsListView;->mFirstPosition:I

    sub-int/2addr v5, v6

    invoke-virtual {p0, v5}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 4825
    .local v5, "motionView":Landroid/view/View;
    if-eqz v5, :cond_4

    .line 4826
    invoke-virtual {v5, v3}, Landroid/view/View;->setPressed(Z)V

    .line 4829
    :cond_4
    iget v6, p0, Landroid/widget/SemHorizontalAbsListView;->mPointerCount:I

    if-le v6, v4, :cond_5

    .line 4835
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getChildCount()I

    move-result v6

    .line 4836
    .local v6, "childCount":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_3
    if-ge v7, v6, :cond_5

    .line 4837
    invoke-virtual {p0, v7}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8, v3}, Landroid/view/View;->setPressed(Z)V

    .line 4836
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 4840
    .end local v6    # "childCount":I
    .end local v7    # "i":I
    :cond_5
    invoke-virtual {p0, v4}, Landroid/widget/SemHorizontalAbsListView;->reportScrollStateChange(I)V

    .line 4843
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    .line 4844
    .local v3, "parent":Landroid/view/ViewParent;
    if-eqz v3, :cond_6

    .line 4845
    invoke-interface {v3, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 4847
    :cond_6
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/SemHorizontalAbsListView;->scrollIfNeeded(IILandroid/view/MotionEvent;)V

    .line 4848
    return v4

    .line 4851
    .end local v3    # "parent":Landroid/view/ViewParent;
    .end local v5    # "motionView":Landroid/view/View;
    :cond_7
    return v3
.end method

.method private blacklist updateOnScreenCheckedViews()V
    .locals 8

    .line 1603
    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFirstPosition:I

    .line 1604
    .local v0, "firstPos":I
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getChildCount()I

    move-result v1

    .line 1605
    .local v1, "count":I
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getContext()Landroid/content/Context;

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

    .line 1607
    .local v2, "useActivated":Z
    :goto_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v1, :cond_3

    .line 1608
    invoke-virtual {p0, v3}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1609
    .local v4, "child":Landroid/view/View;
    add-int v5, v0, v3

    .line 1611
    .local v5, "position":I
    instance-of v6, v4, Landroid/widget/Checkable;

    if-eqz v6, :cond_1

    .line 1612
    move-object v6, v4

    check-cast v6, Landroid/widget/Checkable;

    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v7, v5}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v7

    invoke-interface {v6, v7}, Landroid/widget/Checkable;->setChecked(Z)V

    goto :goto_2

    .line 1613
    :cond_1
    if-eqz v2, :cond_2

    .line 1614
    iget-object v6, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v6

    invoke-virtual {v4, v6}, Landroid/view/View;->setActivated(Z)V

    .line 1607
    .end local v4    # "child":Landroid/view/View;
    .end local v5    # "position":I
    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1617
    .end local v3    # "i":I
    :cond_3
    return-void
.end method

.method private blacklist useDefaultSelector()V
    .locals 2

    .line 2305
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x1080062

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/SemHorizontalAbsListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 2307
    return-void
.end method


# virtual methods
.method public blacklist addExtraPaddingInLeftHoverArea(I)V
    .locals 3
    .param p1, "extraSpace"    # I

    .line 5122
    int-to-float v0, p1

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mContext:Landroid/content/Context;

    .line 5124
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 5122
    const/4 v2, 0x1

    invoke-static {v2, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mExtraPaddingInLeftHoverArea:I

    .line 5125
    return-void
.end method

.method public blacklist addExtraPaddingInRightHoverArea(I)V
    .locals 3
    .param p1, "extraSpace"    # I

    .line 5131
    int-to-float v0, p1

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mContext:Landroid/content/Context;

    .line 5133
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 5131
    const/4 v2, 0x1

    invoke-static {v2, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mExtraPaddingInRightHoverArea:I

    .line 5134
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

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6954
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getChildCount()I

    move-result v0

    .line 6955
    .local v0, "count":I
    iget v1, p0, Landroid/widget/SemHorizontalAbsListView;->mFirstPosition:I

    .line 6956
    .local v1, "firstPosition":I
    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 6958
    .local v2, "adapter":Landroid/widget/ListAdapter;
    if-nez v2, :cond_0

    .line 6959
    return-void

    .line 6962
    :cond_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_2

    .line 6963
    invoke-virtual {p0, v3}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 6964
    .local v4, "child":Landroid/view/View;
    add-int v5, v1, v3

    invoke-interface {v2, v5}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 6965
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6967
    :cond_1
    invoke-virtual {v4, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    .line 6962
    .end local v4    # "child":Landroid/view/View;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 6969
    .end local v3    # "i":I
    :cond_2
    return-void
.end method

.method public whitelist afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 8959
    return-void
.end method

.method public whitelist beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 8888
    return-void
.end method

.method public whitelist canScrollList(I)Z
    .locals 9
    .param p1, "direction"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7634
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getChildCount()I

    move-result v0

    .line 7635
    .local v0, "childCount":I
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 7636
    return v1

    .line 7639
    :cond_0
    iget v2, p0, Landroid/widget/SemHorizontalAbsListView;->mFirstPosition:I

    .line 7640
    .local v2, "firstPosition":I
    iget-object v3, p0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 7641
    .local v3, "listPadding":Landroid/graphics/Rect;
    const/4 v4, 0x1

    if-lez p1, :cond_5

    .line 7643
    iget-boolean v5, p0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    if-eqz v5, :cond_1

    invoke-virtual {p0, v1}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v5

    .local v5, "lastRight":I
    goto :goto_0

    .line 7644
    .end local v5    # "lastRight":I
    :cond_1
    add-int/lit8 v5, v0, -0x1

    invoke-virtual {p0, v5}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v5

    .line 7646
    .restart local v5    # "lastRight":I
    :goto_0
    add-int v6, v2, v0

    .line 7647
    .local v6, "lastPosition":I
    iget-boolean v7, p0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    if-eqz v7, :cond_2

    if-lez v2, :cond_4

    goto :goto_1

    :cond_2
    iget v7, p0, Landroid/widget/SemHorizontalAbsListView;->mItemCount:I

    if-lt v6, v7, :cond_3

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getWidth()I

    move-result v7

    iget v8, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v7, v8

    if-le v5, v7, :cond_4

    :cond_3
    :goto_1
    move v1, v4

    :cond_4
    return v1

    .line 7650
    .end local v5    # "lastRight":I
    .end local v6    # "lastPosition":I
    :cond_5
    iget-boolean v5, p0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    if-eqz v5, :cond_6

    add-int/lit8 v5, v0, -0x1

    invoke-virtual {p0, v5}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v5

    .local v5, "firstLeft":I
    goto :goto_2

    .line 7651
    .end local v5    # "firstLeft":I
    :cond_6
    invoke-virtual {p0, v1}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v5

    .line 7652
    .restart local v5    # "firstLeft":I
    :goto_2
    add-int v6, v2, v0

    .line 7653
    .restart local v6    # "lastPosition":I
    iget-boolean v7, p0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    if-eqz v7, :cond_7

    iget v7, p0, Landroid/widget/SemHorizontalAbsListView;->mItemCount:I

    if-ge v6, v7, :cond_9

    goto :goto_3

    :cond_7
    if-gtz v2, :cond_8

    iget v7, v3, Landroid/graphics/Rect;->left:I

    if-ge v5, v7, :cond_9

    :cond_8
    :goto_3
    move v1, v4

    :cond_9
    return v1
.end method

.method public whitelist checkInputConnectionProxy(Landroid/view/View;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 8774
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mTextFilter:Landroid/widget/EditText;

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
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 9041
    instance-of v0, p1, Landroid/widget/SemHorizontalAbsListView$LayoutParams;

    return v0
.end method

.method public whitelist clearChoices()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1420
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_0

    .line 1421
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 1423
    :cond_0
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_1

    .line 1424
    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    .line 1426
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckedItemCount:I

    .line 1427
    return-void
.end method

.method public whitelist clearTextFilter()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 8826
    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFiltered:Z

    if-eqz v0, :cond_0

    .line 8827
    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->getTextFilterInput()Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 8828
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFiltered:Z

    .line 8829
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8830
    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->dismissPopup()V

    .line 8833
    :cond_0
    return-void
.end method

.method protected whitelist computeHorizontalScrollExtent()I
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2771
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getChildCount()I

    move-result v0

    .line 2773
    .local v0, "count":I
    const/4 v1, 0x0

    if-lez v0, :cond_6

    .line 2774
    iget-boolean v2, p0, Landroid/widget/SemHorizontalAbsListView;->mSmoothScrollbarEnabled:Z

    if-eqz v2, :cond_5

    .line 2775
    mul-int/lit8 v2, v0, 0x64

    .line 2777
    .local v2, "extent":I
    iget-boolean v3, p0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    if-eqz v3, :cond_2

    .line 2779
    add-int/lit8 v3, v0, -0x1

    invoke-virtual {p0, v3}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 2780
    .local v3, "viewLast":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v4

    .line 2781
    .local v4, "left":I
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v5

    .line 2782
    .local v5, "width":I
    if-lez v5, :cond_0

    .line 2783
    mul-int/lit8 v6, v4, 0x64

    div-int/2addr v6, v5

    add-int/2addr v2, v6

    .line 2785
    :cond_0
    invoke-virtual {p0, v1}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2786
    .local v1, "view":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v6

    .line 2787
    .local v6, "right":I
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v5

    .line 2788
    if-lez v5, :cond_1

    .line 2789
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getWidth()I

    move-result v7

    sub-int v7, v6, v7

    mul-int/lit8 v7, v7, 0x64

    div-int/2addr v7, v5

    sub-int/2addr v2, v7

    .line 2791
    :cond_1
    return v2

    .line 2793
    .end local v1    # "view":Landroid/view/View;
    .end local v3    # "viewLast":Landroid/view/View;
    .end local v4    # "left":I
    .end local v5    # "width":I
    .end local v6    # "right":I
    :cond_2
    invoke-virtual {p0, v1}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2794
    .restart local v1    # "view":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v3

    .line 2795
    .local v3, "left":I
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v4

    .line 2796
    .local v4, "width":I
    if-lez v4, :cond_3

    .line 2797
    mul-int/lit8 v5, v3, 0x64

    div-int/2addr v5, v4

    add-int/2addr v2, v5

    .line 2799
    :cond_3
    add-int/lit8 v5, v0, -0x1

    invoke-virtual {p0, v5}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2800
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v5

    .line 2801
    .local v5, "right":I
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v4

    .line 2802
    if-lez v4, :cond_4

    .line 2803
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getWidth()I

    move-result v6

    sub-int v6, v5, v6

    mul-int/lit8 v6, v6, 0x64

    div-int/2addr v6, v4

    sub-int/2addr v2, v6

    .line 2805
    :cond_4
    return v2

    .line 2809
    .end local v1    # "view":Landroid/view/View;
    .end local v2    # "extent":I
    .end local v3    # "left":I
    .end local v4    # "width":I
    .end local v5    # "right":I
    :cond_5
    const/4 v1, 0x1

    return v1

    .line 2812
    :cond_6
    return v1
.end method

.method protected whitelist computeHorizontalScrollOffset()I
    .locals 11
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2837
    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFirstPosition:I

    .line 2838
    .local v0, "firstPosition":I
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getChildCount()I

    move-result v1

    .line 2839
    .local v1, "childCount":I
    iget v2, p0, Landroid/widget/SemHorizontalAbsListView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getChildCount()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    .line 2841
    .local v2, "lastPosition":I
    const/4 v3, 0x0

    if-ltz v0, :cond_6

    if-lez v1, :cond_6

    .line 2842
    iget-boolean v4, p0, Landroid/widget/SemHorizontalAbsListView;->mSmoothScrollbarEnabled:Z

    if-eqz v4, :cond_3

    .line 2843
    iget-boolean v4, p0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    const/high16 v5, 0x42c80000    # 100.0f

    if-eqz v4, :cond_1

    .line 2844
    add-int/lit8 v4, v1, -0x1

    invoke-virtual {p0, v4}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 2845
    .local v4, "view":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v6

    .line 2847
    .local v6, "left":I
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v7

    .line 2848
    .local v7, "width":I
    if-lez v7, :cond_0

    .line 2849
    iget v8, p0, Landroid/widget/SemHorizontalAbsListView;->mItemCount:I

    sub-int/2addr v8, v2

    mul-int/lit8 v8, v8, 0x64

    mul-int/lit8 v9, v6, 0x64

    div-int/2addr v9, v7

    sub-int/2addr v8, v9

    iget v9, p0, Landroid/widget/SemHorizontalAbsListView;->mScrollX:I

    int-to-float v9, v9

    .line 2850
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getWidth()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v9, v10

    iget v10, p0, Landroid/widget/SemHorizontalAbsListView;->mItemCount:I

    int-to-float v10, v10

    mul-float/2addr v9, v10

    mul-float/2addr v9, v5

    float-to-int v5, v9

    add-int/2addr v8, v5

    .line 2849
    invoke-static {v8, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    return v3

    .line 2852
    .end local v4    # "view":Landroid/view/View;
    .end local v6    # "left":I
    .end local v7    # "width":I
    :cond_0
    goto :goto_1

    .line 2853
    :cond_1
    invoke-virtual {p0, v3}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 2854
    .restart local v4    # "view":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v6

    .line 2855
    .restart local v6    # "left":I
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v7

    .line 2856
    .restart local v7    # "width":I
    if-lez v7, :cond_2

    .line 2857
    mul-int/lit8 v8, v0, 0x64

    mul-int/lit8 v9, v6, 0x64

    div-int/2addr v9, v7

    sub-int/2addr v8, v9

    iget v9, p0, Landroid/widget/SemHorizontalAbsListView;->mScrollX:I

    int-to-float v9, v9

    .line 2858
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getWidth()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v9, v10

    iget v10, p0, Landroid/widget/SemHorizontalAbsListView;->mItemCount:I

    int-to-float v10, v10

    mul-float/2addr v9, v10

    mul-float/2addr v9, v5

    float-to-int v5, v9

    add-int/2addr v8, v5

    .line 2857
    invoke-static {v8, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    return v3

    .line 2860
    .end local v4    # "view":Landroid/view/View;
    .end local v6    # "left":I
    .end local v7    # "width":I
    :cond_2
    goto :goto_1

    .line 2863
    :cond_3
    iget v3, p0, Landroid/widget/SemHorizontalAbsListView;->mItemCount:I

    .line 2864
    .local v3, "count":I
    if-nez v0, :cond_4

    .line 2865
    const/4 v4, 0x0

    .local v4, "index":I
    goto :goto_0

    .line 2866
    .end local v4    # "index":I
    :cond_4
    add-int v4, v0, v1

    if-ne v4, v3, :cond_5

    .line 2867
    move v4, v3

    .restart local v4    # "index":I
    goto :goto_0

    .line 2869
    .end local v4    # "index":I
    :cond_5
    div-int/lit8 v4, v1, 0x2

    add-int/2addr v4, v0

    .line 2871
    .restart local v4    # "index":I
    :goto_0
    int-to-float v5, v0

    int-to-float v6, v1

    int-to-float v7, v4

    int-to-float v8, v3

    div-float/2addr v7, v8

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    float-to-int v5, v5

    return v5

    .line 2874
    .end local v3    # "count":I
    .end local v4    # "index":I
    :cond_6
    :goto_1
    return v3
.end method

.method protected whitelist computeHorizontalScrollRange()I
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2900
    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSmoothScrollbarEnabled:Z

    if-eqz v0, :cond_0

    .line 2901
    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mItemCount:I

    mul-int/lit8 v0, v0, 0x64

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2902
    .local v0, "result":I
    iget v1, p0, Landroid/widget/SemHorizontalAbsListView;->mScrollX:I

    if-eqz v1, :cond_1

    .line 2904
    iget v1, p0, Landroid/widget/SemHorizontalAbsListView;->mScrollX:I

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget v2, p0, Landroid/widget/SemHorizontalAbsListView;->mItemCount:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    .line 2907
    .end local v0    # "result":I
    :cond_0
    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mItemCount:I

    .line 2909
    .restart local v0    # "result":I
    :cond_1
    :goto_0
    return v0
.end method

.method blacklist confirmCheckedPositionsById()V
    .locals 18

    .line 8155
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/SemHorizontalAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->clear()V

    .line 8157
    const/4 v1, 0x0

    .line 8158
    .local v1, "checkedCountChanged":Z
    const/4 v2, 0x0

    .local v2, "checkedIndex":I
    :goto_0
    iget-object v3, v0, Landroid/widget/SemHorizontalAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v3}, Landroid/util/LongSparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_5

    .line 8159
    iget-object v3, v0, Landroid/widget/SemHorizontalAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v2}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v10

    .line 8160
    .local v10, "id":J
    iget-object v3, v0, Landroid/widget/SemHorizontalAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v2}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 8162
    .local v3, "lastPos":I
    iget-object v4, v0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v4, v3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v12

    .line 8163
    .local v12, "lastPosId":J
    cmp-long v4, v10, v12

    const/4 v14, 0x1

    if-eqz v4, :cond_4

    .line 8165
    const/4 v4, 0x0

    add-int/lit8 v5, v3, -0x14

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 8166
    .local v15, "start":I
    add-int/lit8 v4, v3, 0x14

    iget v5, v0, Landroid/widget/SemHorizontalAbsListView;->mItemCount:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 8167
    .local v9, "end":I
    const/4 v4, 0x0

    .line 8168
    .local v4, "found":Z
    move v5, v15

    .local v5, "searchPos":I
    :goto_1
    if-ge v5, v9, :cond_1

    .line 8169
    iget-object v6, v0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v6, v5}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v6

    .line 8170
    .local v6, "searchId":J
    cmp-long v8, v10, v6

    if-nez v8, :cond_0

    .line 8171
    const/4 v4, 0x1

    .line 8172
    iget-object v8, v0, Landroid/widget/SemHorizontalAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v8, v5, v14}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 8173
    iget-object v8, v0, Landroid/widget/SemHorizontalAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v8, v2, v14}, Landroid/util/LongSparseArray;->setValueAt(ILjava/lang/Object;)V

    .line 8174
    move v14, v4

    goto :goto_2

    .line 8168
    .end local v6    # "searchId":J
    :cond_0
    add-int/lit8 v5, v5, 0x1

    const/4 v14, 0x1

    goto :goto_1

    :cond_1
    move v14, v4

    .line 8178
    .end local v4    # "found":Z
    .end local v5    # "searchPos":I
    .local v14, "found":Z
    :goto_2
    if-nez v14, :cond_3

    .line 8179
    iget-object v4, v0, Landroid/widget/SemHorizontalAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v4, v10, v11}, Landroid/util/LongSparseArray;->delete(J)V

    .line 8180
    add-int/lit8 v2, v2, -0x1

    .line 8181
    iget v4, v0, Landroid/widget/SemHorizontalAbsListView;->mCheckedItemCount:I

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    iput v4, v0, Landroid/widget/SemHorizontalAbsListView;->mCheckedItemCount:I

    .line 8182
    const/4 v1, 0x1

    .line 8183
    iget-object v5, v0, Landroid/widget/SemHorizontalAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v5, :cond_2

    iget-object v4, v0, Landroid/widget/SemHorizontalAbsListView;->mMultiChoiceModeCallback:Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeWrapper;

    if-eqz v4, :cond_2

    .line 8184
    const/16 v16, 0x0

    move v6, v3

    move-wide v7, v10

    move/from16 v17, v9

    .end local v9    # "end":I
    .local v17, "end":I
    move/from16 v9, v16

    invoke-virtual/range {v4 .. v9}, Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeWrapper;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    goto :goto_3

    .line 8183
    .end local v17    # "end":I
    .restart local v9    # "end":I
    :cond_2
    move/from16 v17, v9

    .end local v9    # "end":I
    .restart local v17    # "end":I
    goto :goto_3

    .line 8178
    .end local v17    # "end":I
    .restart local v9    # "end":I
    :cond_3
    move/from16 v17, v9

    .line 8188
    .end local v9    # "end":I
    .end local v14    # "found":Z
    .end local v15    # "start":I
    :goto_3
    const/4 v5, 0x1

    goto :goto_4

    .line 8189
    :cond_4
    iget-object v4, v0, Landroid/widget/SemHorizontalAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    const/4 v5, 0x1

    invoke-virtual {v4, v3, v5}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 8158
    .end local v3    # "lastPos":I
    .end local v10    # "id":J
    .end local v12    # "lastPosId":J
    :goto_4
    add-int/2addr v2, v5

    goto/16 :goto_0

    .line 8193
    .end local v2    # "checkedIndex":I
    :cond_5
    if-eqz v1, :cond_6

    iget-object v2, v0, Landroid/widget/SemHorizontalAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v2, :cond_6

    .line 8194
    invoke-virtual {v2}, Landroid/view/ActionMode;->invalidate()V

    .line 8196
    :cond_6
    return-void
.end method

.method blacklist createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .line 4279
    new-instance v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/widget/AdapterView$AdapterContextMenuInfo;-><init>(Landroid/view/View;IJ)V

    return-object v0
.end method

.method blacklist createPositionScroller()Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;
    .locals 1

    .line 7313
    new-instance v0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;

    invoke-direct {v0, p0}, Landroid/widget/SemHorizontalAbsListView$PositionScroller;-><init>(Landroid/widget/SemHorizontalAbsListView;)V

    return-object v0
.end method

.method public whitelist deferNotifyDataSetChanged()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 9206
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mDeferNotifyDataSetChanged:Z

    .line 9207
    return-void
.end method

.method public whitelist dispatchDragEvent(Landroid/view/DragEvent;)Z
    .locals 18
    .param p1, "ev"    # Landroid/view/DragEvent;

    .line 5441
    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getAction()I

    move-result v1

    .line 5443
    .local v1, "action":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getClipDescription()Landroid/content/ClipDescription;

    move-result-object v2

    .line 5444
    .local v2, "cd":Landroid/content/ClipDescription;
    if-eqz v2, :cond_1a

    invoke-virtual {v2}, Landroid/content/ClipDescription;->getLabel()Ljava/lang/CharSequence;

    move-result-object v3

    const-string v4, "cropUri"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_7

    .line 5449
    :cond_0
    const/4 v3, 0x1

    if-ne v1, v3, :cond_2

    .line 5450
    iget v4, v0, Landroid/widget/SemHorizontalAbsListView;->mDragScrollWorkingZonePx:I

    if-gtz v4, :cond_1

    .line 5451
    const/high16 v4, 0x41c80000    # 25.0f

    iget-object v5, v0, Landroid/widget/SemHorizontalAbsListView;->mContext:Landroid/content/Context;

    .line 5453
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    .line 5451
    invoke-static {v3, v4, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v0, Landroid/widget/SemHorizontalAbsListView;->mDragScrollWorkingZonePx:I

    .line 5455
    :cond_1
    invoke-super/range {p0 .. p1}, Landroid/widget/AdapterView;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    return v3

    .line 5458
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    .line 5459
    .local v4, "x":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    .line 5460
    .local v5, "y":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->getChildCount()I

    move-result v6

    .line 5461
    .local v6, "childCount":I
    const/4 v7, 0x0

    .line 5462
    .local v7, "contentRight":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->getChildCount()I

    move-result v8

    .line 5466
    .local v8, "count":I
    if-eqz v6, :cond_3

    .line 5467
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->getWidth()I

    move-result v7

    .line 5471
    :cond_3
    iget v9, v0, Landroid/widget/SemHorizontalAbsListView;->mFirstPosition:I

    add-int/2addr v9, v8

    iget v10, v0, Landroid/widget/SemHorizontalAbsListView;->mItemCount:I

    const/4 v11, 0x0

    if-ge v9, v10, :cond_4

    move v9, v3

    goto :goto_0

    :cond_4
    move v9, v11

    .line 5473
    .local v9, "canScrollRight":Z
    :goto_0
    if-nez v9, :cond_7

    if-lez v8, :cond_7

    .line 5474
    add-int/lit8 v10, v8, -0x1

    invoke-virtual {v0, v10}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 5475
    .local v10, "child":Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->getRight()I

    move-result v12

    iget v13, v0, Landroid/widget/SemHorizontalAbsListView;->mRight:I

    iget-object v14, v0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->right:I

    sub-int/2addr v13, v14

    if-gt v12, v13, :cond_6

    .line 5476
    invoke-virtual {v10}, Landroid/view/View;->getRight()I

    move-result v12

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->getWidth()I

    move-result v13

    iget-object v14, v0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->right:I

    sub-int/2addr v13, v14

    if-le v12, v13, :cond_5

    goto :goto_1

    :cond_5
    move v12, v11

    goto :goto_2

    :cond_6
    :goto_1
    move v12, v3

    :goto_2
    move v9, v12

    .line 5480
    .end local v10    # "child":Landroid/view/View;
    :cond_7
    iget v10, v0, Landroid/widget/SemHorizontalAbsListView;->mFirstPosition:I

    if-lez v10, :cond_8

    move v10, v3

    goto :goto_3

    :cond_8
    move v10, v11

    .line 5482
    .local v10, "canScrollLeft":Z
    :goto_3
    if-nez v10, :cond_a

    .line 5483
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->getChildCount()I

    move-result v12

    if-lez v12, :cond_a

    .line 5484
    invoke-virtual {v0, v11}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 5485
    .local v12, "child":Landroid/view/View;
    invoke-virtual {v12}, Landroid/view/View;->getLeft()I

    move-result v13

    iget-object v14, v0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->left:I

    if-ge v13, v14, :cond_9

    move v13, v3

    goto :goto_4

    :cond_9
    move v13, v11

    :goto_4
    move v10, v13

    .line 5490
    .end local v12    # "child":Landroid/view/View;
    :cond_a
    iget v12, v0, Landroid/widget/SemHorizontalAbsListView;->mDragScrollWorkingZonePx:I

    const/4 v13, 0x2

    if-le v4, v12, :cond_b

    sub-int v12, v7, v12

    if-lt v4, v12, :cond_15

    :cond_b
    if-lez v5, :cond_15

    .line 5491
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->getBottom()I

    move-result v12

    if-gt v5, v12, :cond_15

    if-nez v10, :cond_c

    if-nez v9, :cond_c

    goto/16 :goto_6

    .line 5514
    :cond_c
    iget-object v12, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    if-nez v12, :cond_d

    .line 5515
    new-instance v12, Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    invoke-direct {v12, v0}, Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;-><init>(Landroid/widget/SemHorizontalAbsListView;)V

    iput-object v12, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    .line 5517
    :cond_d
    iget-boolean v12, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverAreaEnter:Z

    if-nez v12, :cond_e

    .line 5518
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    iput-wide v14, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollStartTime:J

    .line 5520
    :cond_e
    packed-switch v1, :pswitch_data_0

    goto/16 :goto_5

    .line 5522
    :pswitch_0
    iput-boolean v3, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverAreaEnter:Z

    .line 5523
    if-ltz v4, :cond_f

    iget v11, v0, Landroid/widget/SemHorizontalAbsListView;->mDragScrollWorkingZonePx:I

    if-gt v4, v11, :cond_f

    .line 5525
    iget-object v11, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    invoke-virtual {v11, v3}, Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v11

    if-nez v11, :cond_14

    .line 5526
    iput-boolean v3, v0, Landroid/widget/SemHorizontalAbsListView;->mIsDragScrolled:Z

    .line 5527
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    iput-wide v11, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverRecognitionStartTime:J

    .line 5528
    iput v13, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollDirection:I

    .line 5529
    iget-object v11, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    invoke-virtual {v11, v3}, Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_5

    .line 5531
    :cond_f
    iget v11, v0, Landroid/widget/SemHorizontalAbsListView;->mDragScrollWorkingZonePx:I

    sub-int v11, v7, v11

    if-lt v4, v11, :cond_14

    if-gt v4, v7, :cond_14

    .line 5533
    iget-object v11, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    invoke-virtual {v11, v3}, Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v11

    if-nez v11, :cond_14

    .line 5534
    iput-boolean v3, v0, Landroid/widget/SemHorizontalAbsListView;->mIsDragScrolled:Z

    .line 5535
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    iput-wide v11, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverRecognitionStartTime:J

    .line 5536
    iput v3, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollDirection:I

    .line 5537
    iget-object v11, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    invoke-virtual {v11, v3}, Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;->sendEmptyMessage(I)Z

    goto :goto_5

    .line 5568
    :pswitch_1
    iget-boolean v12, v0, Landroid/widget/SemHorizontalAbsListView;->mIsDragScrolled:Z

    if-eqz v12, :cond_10

    .line 5569
    iput-boolean v11, v0, Landroid/widget/SemHorizontalAbsListView;->mIsDragScrolled:Z

    .line 5575
    :cond_10
    :pswitch_2
    iget-object v12, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    invoke-virtual {v12, v3}, Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v12

    if-eqz v12, :cond_11

    .line 5576
    iget-object v12, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    invoke-virtual {v12, v3}, Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;->removeMessages(I)V

    .line 5578
    :cond_11
    iput-boolean v11, v0, Landroid/widget/SemHorizontalAbsListView;->mIsDragScrolled:Z

    .line 5580
    const-wide/16 v12, 0x0

    iput-wide v12, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverRecognitionStartTime:J

    .line 5581
    iput-wide v12, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollStartTime:J

    .line 5582
    iput-boolean v11, v0, Landroid/widget/SemHorizontalAbsListView;->mIsHoverOverscrolled:Z

    .line 5583
    iput-boolean v11, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverAreaEnter:Z

    .line 5584
    goto :goto_5

    .line 5543
    :pswitch_3
    iget-boolean v11, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverAreaEnter:Z

    if-nez v11, :cond_12

    .line 5544
    iput-boolean v3, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverAreaEnter:Z

    .line 5547
    :cond_12
    if-ltz v4, :cond_13

    iget v11, v0, Landroid/widget/SemHorizontalAbsListView;->mDragScrollWorkingZonePx:I

    if-gt v4, v11, :cond_13

    .line 5549
    iget-object v11, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    invoke-virtual {v11, v3}, Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v11

    if-nez v11, :cond_14

    .line 5550
    iput-boolean v3, v0, Landroid/widget/SemHorizontalAbsListView;->mIsDragScrolled:Z

    .line 5551
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    iput-wide v11, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverRecognitionStartTime:J

    .line 5552
    iput v13, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollDirection:I

    .line 5553
    iget-object v11, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    invoke-virtual {v11, v3}, Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;->sendEmptyMessage(I)Z

    goto :goto_5

    .line 5555
    :cond_13
    iget v11, v0, Landroid/widget/SemHorizontalAbsListView;->mDragScrollWorkingZonePx:I

    sub-int v11, v7, v11

    if-lt v4, v11, :cond_14

    if-gt v4, v7, :cond_14

    .line 5557
    iget-object v11, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    invoke-virtual {v11, v3}, Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v11

    if-nez v11, :cond_14

    .line 5558
    iput-boolean v3, v0, Landroid/widget/SemHorizontalAbsListView;->mIsDragScrolled:Z

    .line 5559
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    iput-wide v11, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverRecognitionStartTime:J

    .line 5560
    iput v3, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollDirection:I

    .line 5561
    iget-object v11, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    invoke-virtual {v11, v3}, Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;->sendEmptyMessage(I)Z

    .line 5590
    :cond_14
    :goto_5
    invoke-super/range {p0 .. p1}, Landroid/widget/AdapterView;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v3

    return v3

    .line 5493
    :cond_15
    :goto_6
    iget-object v12, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    if-eqz v12, :cond_16

    invoke-virtual {v12, v3}, Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v12

    if-eqz v12, :cond_16

    .line 5494
    iget-object v12, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    invoke-virtual {v12, v3}, Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;->removeMessages(I)V

    .line 5497
    :cond_16
    iget-boolean v3, v0, Landroid/widget/SemHorizontalAbsListView;->mIsHoverOverscrolled:Z

    if-nez v3, :cond_17

    iget-wide v14, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollStartTime:J

    const-wide/16 v16, 0x0

    cmp-long v3, v14, v16

    if-eqz v3, :cond_18

    .line 5498
    :cond_17
    iput-boolean v11, v0, Landroid/widget/SemHorizontalAbsListView;->mIsHoverOverscrolled:Z

    .line 5501
    :cond_18
    const-wide/16 v14, 0x0

    iput-wide v14, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverRecognitionStartTime:J

    .line 5502
    iput-wide v14, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollStartTime:J

    .line 5503
    iput-boolean v11, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverAreaEnter:Z

    .line 5506
    if-ne v1, v13, :cond_19

    iget-boolean v3, v0, Landroid/widget/SemHorizontalAbsListView;->mIsDragScrolled:Z

    if-eqz v3, :cond_19

    .line 5507
    iput-boolean v11, v0, Landroid/widget/SemHorizontalAbsListView;->mIsDragScrolled:Z

    .line 5510
    :cond_19
    invoke-super/range {p0 .. p1}, Landroid/widget/AdapterView;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v3

    return v3

    .line 5445
    .end local v4    # "x":I
    .end local v5    # "y":I
    .end local v6    # "childCount":I
    .end local v7    # "contentRight":I
    .end local v8    # "count":I
    .end local v9    # "canScrollRight":Z
    .end local v10    # "canScrollLeft":Z
    :cond_1a
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
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3554
    const/4 v0, 0x0

    .line 3555
    .local v0, "saveCount":I
    const/4 v1, 0x0

    .line 3559
    .local v1, "trackChildLeft":I
    iget v2, p0, Landroid/widget/SemHorizontalAbsListView;->mGroupFlags:I

    const/16 v3, 0x22

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 3560
    .local v2, "clipToPadding":Z
    :goto_0
    if-eqz v2, :cond_1

    .line 3561
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 3562
    iget v4, p0, Landroid/widget/SemHorizontalAbsListView;->mScrollX:I

    .line 3563
    .local v4, "scrollX":I
    iget v5, p0, Landroid/widget/SemHorizontalAbsListView;->mScrollY:I

    .line 3564
    .local v5, "scrollY":I
    iget v6, p0, Landroid/widget/SemHorizontalAbsListView;->mPaddingLeft:I

    add-int/2addr v6, v4

    iget v7, p0, Landroid/widget/SemHorizontalAbsListView;->mPaddingTop:I

    add-int/2addr v7, v5

    iget v8, p0, Landroid/widget/SemHorizontalAbsListView;->mRight:I

    add-int/2addr v8, v4

    iget v9, p0, Landroid/widget/SemHorizontalAbsListView;->mLeft:I

    sub-int/2addr v8, v9

    iget v9, p0, Landroid/widget/SemHorizontalAbsListView;->mPaddingRight:I

    sub-int/2addr v8, v9

    iget v9, p0, Landroid/widget/SemHorizontalAbsListView;->mBottom:I

    add-int/2addr v9, v5

    iget v10, p0, Landroid/widget/SemHorizontalAbsListView;->mTop:I

    sub-int/2addr v9, v10

    iget v10, p0, Landroid/widget/SemHorizontalAbsListView;->mPaddingBottom:I

    sub-int/2addr v9, v10

    invoke-virtual {p1, v6, v7, v8, v9}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 3567
    iget v6, p0, Landroid/widget/SemHorizontalAbsListView;->mGroupFlags:I

    and-int/lit8 v6, v6, -0x23

    iput v6, p0, Landroid/widget/SemHorizontalAbsListView;->mGroupFlags:I

    .line 3570
    .end local v4    # "scrollX":I
    .end local v5    # "scrollY":I
    :cond_1
    iget-boolean v4, p0, Landroid/widget/SemHorizontalAbsListView;->mDrawSelectorOnTop:Z

    .line 3571
    .local v4, "drawSelectorOnTop":Z
    if-nez v4, :cond_2

    .line 3572
    invoke-direct {p0, p1}, Landroid/widget/SemHorizontalAbsListView;->drawSelector(Landroid/graphics/Canvas;)V

    .line 3575
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 3577
    if-eqz v4, :cond_3

    .line 3578
    invoke-direct {p0, p1}, Landroid/widget/SemHorizontalAbsListView;->drawSelector(Landroid/graphics/Canvas;)V

    .line 3581
    :cond_3
    if-eqz v2, :cond_4

    .line 3582
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 3583
    iget v5, p0, Landroid/widget/SemHorizontalAbsListView;->mGroupFlags:I

    or-int/2addr v3, v5

    iput v3, p0, Landroid/widget/SemHorizontalAbsListView;->mGroupFlags:I

    .line 3586
    :cond_4
    iget-boolean v3, p0, Landroid/widget/SemHorizontalAbsListView;->mIsDragBlockEnabled:Z

    if-eqz v3, :cond_a

    .line 3587
    iget v3, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockLeft:I

    if-nez v3, :cond_5

    iget v3, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockTop:I

    if-nez v3, :cond_5

    .line 3588
    return-void

    .line 3590
    :cond_5
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getFirstVisiblePosition()I

    move-result v3

    .line 3591
    .local v3, "firstChildPosition":I
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getLastVisiblePosition()I

    move-result v5

    .line 3593
    .local v5, "lastChildPosition":I
    iget v6, p0, Landroid/widget/SemHorizontalAbsListView;->mSemTrackedChildPosition:I

    if-lt v6, v3, :cond_7

    if-gt v6, v5, :cond_7

    .line 3594
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getFirstVisiblePosition()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {p0, v6}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Landroid/widget/SemHorizontalAbsListView;->mSemTrackedChild:Landroid/view/View;

    .line 3595
    if-eqz v6, :cond_6

    .line 3596
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v1

    .line 3598
    :cond_6
    iget v6, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDistanceFromTrackedChildLeft:I

    add-int/2addr v6, v1

    iput v6, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDragStartX:I

    .line 3601
    :cond_7
    iget v6, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDragStartX:I

    iget v7, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDragEndX:I

    if-ge v6, v7, :cond_8

    move v8, v6

    goto :goto_1

    :cond_8
    move v8, v7

    :goto_1
    iput v8, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockLeft:I

    .line 3602
    if-le v7, v6, :cond_9

    move v6, v7

    :cond_9
    iput v6, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockRight:I

    .line 3604
    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockRect:Landroid/graphics/Rect;

    iget v9, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockTop:I

    iget v10, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockBottom:I

    invoke-virtual {v7, v8, v9, v6, v10}, Landroid/graphics/Rect;->set(IIII)V

    .line 3605
    iget-object v6, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockImage:Landroid/graphics/drawable/Drawable;

    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 3606
    iget-object v6, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3608
    .end local v3    # "firstChildPosition":I
    .end local v5    # "lastChildPosition":I
    :cond_a
    return-void
.end method

.method protected whitelist dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 16
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5151
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    .line 5154
    .local v2, "action":I
    iget-boolean v3, v0, Landroid/widget/SemHorizontalAbsListView;->mHoveringEnabled:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    iget v3, v0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    if-ne v3, v4, :cond_0

    iget-boolean v3, v0, Landroid/widget/SemHorizontalAbsListView;->mIsPenPressed:Z

    if-nez v3, :cond_1

    .line 5155
    :cond_0
    invoke-direct/range {p0 .. p1}, Landroid/widget/SemHorizontalAbsListView;->onHoverDrawableState(Landroid/view/MotionEvent;)V

    .line 5162
    :cond_1
    invoke-static {}, Landroid/widget/TextView;->semIsTextViewHovered()Z

    move-result v3

    iput-boolean v3, v0, Landroid/widget/SemHorizontalAbsListView;->mNewTextViewHoverState:Z

    .line 5164
    const/4 v5, 0x2

    const/4 v6, 0x0

    if-nez v3, :cond_2

    iget-boolean v3, v0, Landroid/widget/SemHorizontalAbsListView;->mOldTextViewHoverState:Z

    if-eqz v3, :cond_2

    iget-boolean v3, v0, Landroid/widget/SemHorizontalAbsListView;->mIsDragBlockEnabled:Z

    if-eqz v3, :cond_2

    .line 5165
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v3

    if-ne v3, v5, :cond_2

    move v3, v4

    goto :goto_0

    :cond_2
    move v3, v6

    :goto_0
    iput-boolean v3, v0, Landroid/widget/SemHorizontalAbsListView;->mIsNeedPenSelectIconSet:Z

    .line 5167
    iget-boolean v3, v0, Landroid/widget/SemHorizontalAbsListView;->mNewTextViewHoverState:Z

    iput-boolean v3, v0, Landroid/widget/SemHorizontalAbsListView;->mOldTextViewHoverState:Z

    .line 5170
    const/16 v3, 0x9

    const/16 v7, 0x4e35

    const/16 v8, 0xa

    const/16 v9, 0x4e21

    if-eq v2, v3, :cond_8

    iget-boolean v3, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollStateChanged:Z

    if-eqz v3, :cond_3

    goto :goto_1

    .line 5209
    :cond_3
    const/4 v3, 0x7

    if-ne v2, v3, :cond_7

    .line 5210
    iget-boolean v3, v0, Landroid/widget/SemHorizontalAbsListView;->mIsDragBlockEnabled:Z

    if-eqz v3, :cond_4

    iget-boolean v3, v0, Landroid/widget/SemHorizontalAbsListView;->mIsPenSelectPointerSetted:Z

    if-nez v3, :cond_4

    .line 5211
    invoke-virtual {v1, v6}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v3

    if-ne v3, v5, :cond_4

    .line 5212
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v3

    if-eq v3, v5, :cond_5

    :cond_4
    iget-boolean v3, v0, Landroid/widget/SemHorizontalAbsListView;->mIsNeedPenSelectIconSet:Z

    if-eqz v3, :cond_6

    .line 5214
    :cond_5
    invoke-direct {v0, v1, v7}, Landroid/widget/SemHorizontalAbsListView;->showPointerIcon(Landroid/view/MotionEvent;I)V

    .line 5215
    iput-boolean v4, v0, Landroid/widget/SemHorizontalAbsListView;->mIsPenSelectPointerSetted:Z

    goto/16 :goto_4

    .line 5216
    :cond_6
    iget-boolean v3, v0, Landroid/widget/SemHorizontalAbsListView;->mIsDragBlockEnabled:Z

    if-eqz v3, :cond_12

    iget-boolean v3, v0, Landroid/widget/SemHorizontalAbsListView;->mIsPenSelectPointerSetted:Z

    if-eqz v3, :cond_12

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v3

    if-eq v3, v5, :cond_12

    .line 5217
    invoke-direct {v0, v1, v9}, Landroid/widget/SemHorizontalAbsListView;->showPointerIcon(Landroid/view/MotionEvent;I)V

    .line 5218
    iput-boolean v6, v0, Landroid/widget/SemHorizontalAbsListView;->mIsPenSelectPointerSetted:Z

    goto/16 :goto_4

    .line 5220
    :cond_7
    if-ne v2, v8, :cond_12

    .line 5221
    iget-boolean v3, v0, Landroid/widget/SemHorizontalAbsListView;->mIsPenSelectPointerSetted:Z

    if-eqz v3, :cond_12

    .line 5222
    invoke-direct {v0, v1, v9}, Landroid/widget/SemHorizontalAbsListView;->showPointerIcon(Landroid/view/MotionEvent;I)V

    .line 5223
    iput-boolean v6, v0, Landroid/widget/SemHorizontalAbsListView;->mIsPenSelectPointerSetted:Z

    goto/16 :goto_4

    .line 5171
    :cond_8
    :goto_1
    invoke-virtual {v1, v6}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v3

    .line 5173
    .local v3, "toolType":I
    iput-boolean v4, v0, Landroid/widget/SemHorizontalAbsListView;->mNeedsHoverScroll:Z

    .line 5174
    iput-boolean v6, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollStateChanged:Z

    .line 5177
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->isHoveringUIEnabled()Z

    move-result v10

    if-eqz v10, :cond_9

    iget-boolean v10, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollEnable:Z

    if-nez v10, :cond_a

    .line 5178
    :cond_9
    iput-boolean v6, v0, Landroid/widget/SemHorizontalAbsListView;->mNeedsHoverScroll:Z

    .line 5182
    :cond_a
    iget-boolean v10, v0, Landroid/widget/SemHorizontalAbsListView;->mNeedsHoverScroll:Z

    if-eqz v10, :cond_f

    if-ne v3, v5, :cond_f

    .line 5184
    iget-object v10, v0, Landroid/widget/SemHorizontalAbsListView;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "pen_hovering"

    invoke-static {v10, v11, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-ne v10, v4, :cond_b

    move v10, v4

    goto :goto_2

    :cond_b
    move v10, v6

    .line 5186
    .local v10, "isHoveringOn":Z
    :goto_2
    iget-object v11, v0, Landroid/widget/SemHorizontalAbsListView;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const/4 v12, -0x3

    const-string v13, "car_mode_on"

    invoke-static {v11, v13, v6, v12}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v11

    if-ne v11, v4, :cond_c

    move v11, v4

    goto :goto_3

    :cond_c
    move v11, v6

    .line 5189
    .local v11, "isCarModeOn":Z
    :goto_3
    if-eqz v10, :cond_d

    if-eqz v11, :cond_e

    .line 5190
    :cond_d
    iput-boolean v6, v0, Landroid/widget/SemHorizontalAbsListView;->mNeedsHoverScroll:Z

    .line 5193
    :cond_e
    if-eqz v10, :cond_f

    iget-boolean v12, v0, Landroid/widget/SemHorizontalAbsListView;->mIsDragBlockEnabled:Z

    if-eqz v12, :cond_f

    iget-boolean v12, v0, Landroid/widget/SemHorizontalAbsListView;->mIsPenSelectPointerSetted:Z

    if-nez v12, :cond_f

    if-ne v3, v5, :cond_f

    .line 5194
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v12

    if-ne v12, v5, :cond_f

    .line 5195
    invoke-direct {v0, v1, v7}, Landroid/widget/SemHorizontalAbsListView;->showPointerIcon(Landroid/view/MotionEvent;I)V

    .line 5196
    iput-boolean v4, v0, Landroid/widget/SemHorizontalAbsListView;->mIsPenSelectPointerSetted:Z

    .line 5201
    .end local v10    # "isHoveringOn":Z
    .end local v11    # "isCarModeOn":Z
    :cond_f
    iget-boolean v7, v0, Landroid/widget/SemHorizontalAbsListView;->mNeedsHoverScroll:Z

    if-eqz v7, :cond_11

    const/4 v7, 0x3

    if-ne v3, v7, :cond_11

    .line 5202
    const/4 v7, 0x0

    .line 5203
    .local v7, "isMouseHoveringOn":Z
    const/4 v10, 0x0

    .line 5205
    .local v10, "isMouseHoverListScrollOn":Z
    if-eqz v7, :cond_10

    if-nez v10, :cond_11

    .line 5206
    :cond_10
    iput-boolean v6, v0, Landroid/widget/SemHorizontalAbsListView;->mNeedsHoverScroll:Z

    .line 5209
    .end local v3    # "toolType":I
    .end local v7    # "isMouseHoveringOn":Z
    .end local v10    # "isMouseHoverListScrollOn":Z
    :cond_11
    nop

    .line 5228
    :cond_12
    :goto_4
    iget-boolean v3, v0, Landroid/widget/SemHorizontalAbsListView;->mNeedsHoverScroll:Z

    if-nez v3, :cond_13

    .line 5229
    invoke-super/range {p0 .. p1}, Landroid/widget/AdapterView;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    return v3

    .line 5233
    :cond_13
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    .line 5234
    .local v3, "x":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v7, v7

    .line 5238
    .local v7, "y":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->getChildCount()I

    move-result v10

    .line 5243
    .local v10, "count":I
    iget-object v11, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    if-nez v11, :cond_14

    .line 5244
    new-instance v11, Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    invoke-direct {v11, v0}, Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;-><init>(Landroid/widget/SemHorizontalAbsListView;)V

    iput-object v11, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    .line 5247
    :cond_14
    iget v11, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverLeftAreaWidth:I

    if-lez v11, :cond_15

    iget v11, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverRightAreaWidth:I

    if-gtz v11, :cond_16

    .line 5248
    :cond_15
    iget-object v11, v0, Landroid/widget/SemHorizontalAbsListView;->mContext:Landroid/content/Context;

    .line 5250
    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v11

    .line 5248
    const/high16 v12, 0x41c80000    # 25.0f

    invoke-static {v4, v12, v11}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v11

    const/high16 v13, 0x3f000000    # 0.5f

    add-float/2addr v11, v13

    float-to-int v11, v11

    iput v11, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverLeftAreaWidth:I

    .line 5252
    iget-object v11, v0, Landroid/widget/SemHorizontalAbsListView;->mContext:Landroid/content/Context;

    .line 5254
    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v11

    .line 5252
    invoke-static {v4, v12, v11}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v11

    add-float/2addr v11, v13

    float-to-int v11, v11

    iput v11, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverRightAreaWidth:I

    .line 5257
    :cond_16
    iget-boolean v11, v0, Landroid/widget/SemHorizontalAbsListView;->mIsEnabledPaddingInHoverScroll:Z

    if-eqz v11, :cond_17

    .line 5258
    iget-object v11, v0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->left:I

    .line 5259
    .local v11, "contentLeft":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->getWidth()I

    move-result v12

    iget-object v13, v0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->right:I

    sub-int/2addr v12, v13

    .local v12, "contentRight":I
    goto :goto_5

    .line 5261
    .end local v11    # "contentLeft":I
    .end local v12    # "contentRight":I
    :cond_17
    iget v11, v0, Landroid/widget/SemHorizontalAbsListView;->mExtraPaddingInLeftHoverArea:I

    .line 5262
    .restart local v11    # "contentLeft":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->getWidth()I

    move-result v12

    iget v13, v0, Landroid/widget/SemHorizontalAbsListView;->mExtraPaddingInRightHoverArea:I

    sub-int/2addr v12, v13

    .line 5265
    .restart local v12    # "contentRight":I
    :goto_5
    iget-boolean v13, v0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    if-eqz v13, :cond_1e

    .line 5267
    iget v13, v0, Landroid/widget/SemHorizontalAbsListView;->mFirstPosition:I

    if-lez v13, :cond_18

    move v13, v4

    goto :goto_6

    :cond_18
    move v13, v6

    .line 5269
    .local v13, "canScrollRight":Z
    :goto_6
    if-nez v13, :cond_1b

    if-lez v10, :cond_1b

    .line 5270
    invoke-virtual {v0, v6}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    .line 5271
    .local v14, "child":Landroid/view/View;
    invoke-virtual {v14}, Landroid/view/View;->getRight()I

    move-result v15

    iget v8, v0, Landroid/widget/SemHorizontalAbsListView;->mRight:I

    iget-object v9, v0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    sub-int/2addr v8, v9

    if-gt v15, v8, :cond_1a

    .line 5272
    invoke-virtual {v14}, Landroid/view/View;->getWidth()I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->getWidth()I

    move-result v9

    iget-object v15, v0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->right:I

    sub-int/2addr v9, v15

    if-le v8, v9, :cond_19

    goto :goto_7

    :cond_19
    move v8, v6

    goto :goto_8

    :cond_1a
    :goto_7
    move v8, v4

    :goto_8
    move v13, v8

    .line 5275
    .end local v14    # "child":Landroid/view/View;
    :cond_1b
    iget v8, v0, Landroid/widget/SemHorizontalAbsListView;->mFirstPosition:I

    add-int/2addr v8, v10

    iget v9, v0, Landroid/widget/SemHorizontalAbsListView;->mItemCount:I

    if-ge v8, v9, :cond_1c

    move v8, v4

    goto :goto_9

    :cond_1c
    move v8, v6

    .line 5277
    .local v8, "canScrollLeft":Z
    :goto_9
    if-nez v8, :cond_25

    if-lez v10, :cond_25

    .line 5278
    add-int/lit8 v9, v10, -0x1

    invoke-virtual {v0, v9}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 5279
    .local v9, "child":Landroid/view/View;
    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v14

    iget-object v15, v0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->left:I

    if-ge v14, v15, :cond_1d

    move v14, v4

    goto :goto_a

    :cond_1d
    move v14, v6

    :goto_a
    move v8, v14

    .line 5280
    .end local v9    # "child":Landroid/view/View;
    goto/16 :goto_11

    .line 5283
    .end local v8    # "canScrollLeft":Z
    .end local v13    # "canScrollRight":Z
    :cond_1e
    iget v8, v0, Landroid/widget/SemHorizontalAbsListView;->mFirstPosition:I

    add-int/2addr v8, v10

    iget v9, v0, Landroid/widget/SemHorizontalAbsListView;->mItemCount:I

    if-ge v8, v9, :cond_1f

    move v8, v4

    goto :goto_b

    :cond_1f
    move v8, v6

    .line 5285
    .local v8, "canScrollRight":Z
    :goto_b
    if-nez v8, :cond_22

    if-lez v10, :cond_22

    .line 5286
    add-int/lit8 v9, v10, -0x1

    invoke-virtual {v0, v9}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 5287
    .restart local v9    # "child":Landroid/view/View;
    invoke-virtual {v9}, Landroid/view/View;->getRight()I

    move-result v13

    iget v14, v0, Landroid/widget/SemHorizontalAbsListView;->mRight:I

    iget-object v15, v0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->right:I

    sub-int/2addr v14, v15

    if-gt v13, v14, :cond_21

    .line 5288
    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->getWidth()I

    move-result v14

    iget-object v15, v0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->right:I

    sub-int/2addr v14, v15

    if-le v13, v14, :cond_20

    goto :goto_c

    :cond_20
    move v13, v6

    goto :goto_d

    :cond_21
    :goto_c
    move v13, v4

    :goto_d
    move v8, v13

    goto :goto_e

    .line 5291
    .end local v9    # "child":Landroid/view/View;
    :cond_22
    move v13, v8

    .end local v8    # "canScrollRight":Z
    .restart local v13    # "canScrollRight":Z
    :goto_e
    iget v8, v0, Landroid/widget/SemHorizontalAbsListView;->mFirstPosition:I

    if-lez v8, :cond_23

    move v8, v4

    goto :goto_f

    :cond_23
    move v8, v6

    .line 5293
    .local v8, "canScrollLeft":Z
    :goto_f
    if-nez v8, :cond_25

    if-lez v10, :cond_25

    .line 5294
    invoke-virtual {v0, v6}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 5295
    .restart local v9    # "child":Landroid/view/View;
    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v14

    iget-object v15, v0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->left:I

    if-ge v14, v15, :cond_24

    move v14, v4

    goto :goto_10

    :cond_24
    move v14, v6

    :goto_10
    move v8, v14

    .line 5299
    .end local v9    # "child":Landroid/view/View;
    :cond_25
    :goto_11
    invoke-virtual {v1, v6}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v9

    if-ne v9, v5, :cond_26

    move v9, v4

    goto :goto_12

    :cond_26
    move v9, v6

    .line 5301
    .local v9, "isPossibleTooltype":Z
    :goto_12
    iget v14, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverLeftAreaWidth:I

    add-int/2addr v14, v11

    if-le v3, v14, :cond_28

    iget v14, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverRightAreaWidth:I

    sub-int v14, v12, v14

    if-lt v3, v14, :cond_27

    goto :goto_13

    :cond_27
    const/4 v4, 0x1

    goto/16 :goto_1c

    :cond_28
    :goto_13
    if-lez v7, :cond_43

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->getBottom()I

    move-result v14

    if-gt v7, v14, :cond_43

    if-nez v8, :cond_29

    if-eqz v13, :cond_27

    :cond_29
    if-lt v3, v11, :cond_2a

    iget v14, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverLeftAreaWidth:I

    add-int/2addr v14, v11

    if-gt v3, v14, :cond_2a

    if-nez v8, :cond_2a

    iget-boolean v14, v0, Landroid/widget/SemHorizontalAbsListView;->mIsHoverOverscrolled:Z

    if-nez v14, :cond_27

    :cond_2a
    iget v14, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverRightAreaWidth:I

    sub-int v14, v12, v14

    if-lt v3, v14, :cond_2b

    if-gt v3, v12, :cond_2b

    if-nez v13, :cond_2b

    iget-boolean v14, v0, Landroid/widget/SemHorizontalAbsListView;->mIsHoverOverscrolled:Z

    if-nez v14, :cond_27

    :cond_2b
    if-eqz v9, :cond_2d

    .line 5305
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v14

    const/4 v15, 0x2

    if-eq v14, v15, :cond_2c

    goto :goto_14

    :cond_2c
    const/4 v4, 0x1

    goto/16 :goto_1c

    :cond_2d
    :goto_14
    if-eqz v9, :cond_42

    .line 5306
    invoke-direct/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->isLockScreenMode()Z

    move-result v14

    if-eqz v14, :cond_2e

    const/4 v4, 0x1

    goto/16 :goto_1c

    .line 5335
    :cond_2e
    iget-boolean v14, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverAreaEnter:Z

    if-nez v14, :cond_2f

    .line 5336
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    iput-wide v14, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollStartTime:J

    .line 5339
    :cond_2f
    if-lt v3, v11, :cond_30

    iget v14, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverLeftAreaWidth:I

    add-int/2addr v14, v11

    if-gt v3, v14, :cond_30

    const/4 v14, 0x1

    goto :goto_15

    :cond_30
    move v14, v6

    .line 5340
    .local v14, "b1":Z
    :goto_15
    iget v15, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverRightAreaWidth:I

    sub-int v15, v12, v15

    if-lt v3, v15, :cond_31

    if-gt v3, v12, :cond_31

    const/4 v15, 0x1

    goto :goto_16

    :cond_31
    move v15, v6

    .line 5341
    .local v15, "b2":Z
    :goto_16
    const/16 v6, 0x4e2d

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    const/4 v4, 0x1

    goto/16 :goto_1b

    .line 5404
    :pswitch_1
    iget-object v6, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    const/4 v4, 0x1

    invoke-virtual {v6, v4}, Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v5

    if-eqz v5, :cond_32

    .line 5405
    iget-object v5, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    invoke-virtual {v5, v4}, Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;->removeMessages(I)V

    .line 5408
    :cond_32
    const/16 v4, 0x4e21

    invoke-direct {v0, v1, v4}, Landroid/widget/SemHorizontalAbsListView;->showPointerIcon(Landroid/view/MotionEvent;I)V

    .line 5410
    const-wide/16 v4, 0x0

    iput-wide v4, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverRecognitionStartTime:J

    .line 5411
    iput-wide v4, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollStartTime:J

    .line 5412
    const/4 v4, 0x0

    iput-boolean v4, v0, Landroid/widget/SemHorizontalAbsListView;->mIsHoverOverscrolled:Z

    .line 5413
    iput-boolean v4, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverAreaEnter:Z

    .line 5414
    iput-boolean v4, v0, Landroid/widget/SemHorizontalAbsListView;->mIsSendHoverScrollState:Z

    .line 5416
    iget v5, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollStateForListener:I

    if-eqz v5, :cond_33

    .line 5417
    iput v4, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollStateForListener:I

    .line 5418
    iget-object v5, v0, Landroid/widget/SemHorizontalAbsListView;->mOnScrollListener:Landroid/widget/SemHorizontalAbsListView$OnScrollListener;

    if-eqz v5, :cond_33

    iget v6, v0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    const/4 v4, 0x4

    if-eq v6, v4, :cond_33

    .line 5419
    const/4 v4, 0x0

    invoke-interface {v5, v0, v4}, Landroid/widget/SemHorizontalAbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/SemHorizontalAbsListView;I)V

    .line 5423
    :cond_33
    invoke-super/range {p0 .. p1}, Landroid/widget/AdapterView;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    return v4

    .line 5343
    :pswitch_2
    const/4 v4, 0x1

    iput-boolean v4, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverAreaEnter:Z

    .line 5344
    if-nez v14, :cond_35

    if-eqz v15, :cond_34

    goto :goto_17

    :cond_34
    const/4 v4, 0x1

    goto/16 :goto_1b

    .line 5345
    :cond_35
    :goto_17
    iget-object v4, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v4

    if-nez v4, :cond_37

    .line 5346
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverRecognitionStartTime:J

    .line 5348
    if-eqz v14, :cond_36

    .line 5349
    const/16 v4, 0x4e31

    invoke-direct {v0, v1, v4}, Landroid/widget/SemHorizontalAbsListView;->showPointerIcon(Landroid/view/MotionEvent;I)V

    .line 5350
    const/4 v4, 0x2

    iput v4, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollDirection:I

    const/4 v4, 0x1

    goto :goto_18

    .line 5352
    :cond_36
    invoke-direct {v0, v1, v6}, Landroid/widget/SemHorizontalAbsListView;->showPointerIcon(Landroid/view/MotionEvent;I)V

    .line 5353
    const/4 v4, 0x1

    iput v4, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollDirection:I

    .line 5355
    :goto_18
    iget-object v5, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    invoke-virtual {v5, v4}, Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_1b

    .line 5345
    :cond_37
    const/4 v4, 0x1

    goto/16 :goto_1b

    .line 5362
    :pswitch_3
    const/4 v4, 0x1

    iget-boolean v5, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverAreaEnter:Z

    if-nez v5, :cond_38

    .line 5363
    iput-boolean v4, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverAreaEnter:Z

    .line 5364
    const/16 v4, 0xa

    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->setAction(I)V

    .line 5365
    invoke-super/range {p0 .. p1}, Landroid/widget/AdapterView;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    return v4

    .line 5368
    :cond_38
    if-nez v14, :cond_3b

    if-eqz v15, :cond_39

    goto :goto_19

    .line 5388
    :cond_39
    iget-object v4, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v4

    if-eqz v4, :cond_3a

    .line 5389
    iget-object v4, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    invoke-virtual {v4, v5}, Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;->removeMessages(I)V

    .line 5392
    :cond_3a
    const/16 v4, 0x4e21

    invoke-direct {v0, v1, v4}, Landroid/widget/SemHorizontalAbsListView;->showPointerIcon(Landroid/view/MotionEvent;I)V

    .line 5394
    const-wide/16 v4, 0x0

    iput-wide v4, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverRecognitionStartTime:J

    .line 5395
    iput-wide v4, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollStartTime:J

    .line 5396
    const/4 v4, 0x0

    iput-boolean v4, v0, Landroid/widget/SemHorizontalAbsListView;->mIsHoverOverscrolled:Z

    .line 5397
    iput-boolean v4, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverAreaEnter:Z

    .line 5398
    iput-boolean v4, v0, Landroid/widget/SemHorizontalAbsListView;->mIsSendHoverScrollState:Z

    .line 5401
    const/4 v4, 0x1

    goto :goto_1b

    .line 5369
    :cond_3b
    :goto_19
    iget-object v4, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v4

    if-nez v4, :cond_41

    .line 5370
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverRecognitionStartTime:J

    .line 5371
    if-eqz v14, :cond_3e

    .line 5372
    iget-boolean v4, v0, Landroid/widget/SemHorizontalAbsListView;->mIsHoverOverscrolled:Z

    if-eqz v4, :cond_3c

    iget v4, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollDirection:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3d

    .line 5373
    :cond_3c
    const/16 v4, 0x4e31

    invoke-direct {v0, v1, v4}, Landroid/widget/SemHorizontalAbsListView;->showPointerIcon(Landroid/view/MotionEvent;I)V

    .line 5376
    :cond_3d
    const/4 v4, 0x2

    iput v4, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollDirection:I

    const/4 v4, 0x1

    goto :goto_1a

    .line 5378
    :cond_3e
    const/4 v4, 0x2

    iget-boolean v5, v0, Landroid/widget/SemHorizontalAbsListView;->mIsHoverOverscrolled:Z

    if-eqz v5, :cond_3f

    iget v5, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollDirection:I

    if-ne v5, v4, :cond_40

    .line 5379
    :cond_3f
    invoke-direct {v0, v1, v6}, Landroid/widget/SemHorizontalAbsListView;->showPointerIcon(Landroid/view/MotionEvent;I)V

    .line 5382
    :cond_40
    const/4 v4, 0x1

    iput v4, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollDirection:I

    .line 5384
    :goto_1a
    iget-object v5, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    invoke-virtual {v5, v4}, Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;->sendEmptyMessage(I)Z

    goto :goto_1b

    .line 5369
    :cond_41
    const/4 v4, 0x1

    .line 5428
    :goto_1b
    return v4

    .line 5305
    .end local v14    # "b1":Z
    .end local v15    # "b2":Z
    :cond_42
    const/4 v4, 0x1

    goto :goto_1c

    .line 5301
    :cond_43
    const/4 v4, 0x1

    .line 5308
    :goto_1c
    iget-object v5, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    invoke-virtual {v5, v4}, Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v5

    if-eqz v5, :cond_44

    .line 5309
    iget-object v5, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    invoke-virtual {v5, v4}, Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;->removeMessages(I)V

    .line 5310
    const/16 v4, 0x4e21

    invoke-direct {v0, v1, v4}, Landroid/widget/SemHorizontalAbsListView;->showPointerIcon(Landroid/view/MotionEvent;I)V

    .line 5313
    :cond_44
    iget v4, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverLeftAreaWidth:I

    add-int/2addr v4, v11

    if-le v3, v4, :cond_45

    iget v4, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverRightAreaWidth:I

    sub-int v4, v12, v4

    if-lt v3, v4, :cond_46

    :cond_45
    if-lez v7, :cond_46

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->getBottom()I

    move-result v4

    if-le v7, v4, :cond_47

    .line 5314
    :cond_46
    const/4 v4, 0x0

    iput-boolean v4, v0, Landroid/widget/SemHorizontalAbsListView;->mIsHoverOverscrolled:Z

    .line 5317
    :cond_47
    iget-boolean v4, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverAreaEnter:Z

    if-nez v4, :cond_48

    iget-wide v4, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollStartTime:J

    const-wide/16 v14, 0x0

    cmp-long v4, v4, v14

    if-eqz v4, :cond_49

    .line 5318
    :cond_48
    const/16 v4, 0x4e21

    invoke-direct {v0, v1, v4}, Landroid/widget/SemHorizontalAbsListView;->showPointerIcon(Landroid/view/MotionEvent;I)V

    .line 5320
    :cond_49
    const-wide/16 v4, 0x0

    iput-wide v4, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverRecognitionStartTime:J

    .line 5321
    iput-wide v4, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollStartTime:J

    .line 5322
    const/4 v4, 0x0

    iput-boolean v4, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverAreaEnter:Z

    .line 5323
    iput-boolean v4, v0, Landroid/widget/SemHorizontalAbsListView;->mIsSendHoverScrollState:Z

    .line 5325
    const/16 v5, 0xa

    if-ne v2, v5, :cond_4a

    iget v5, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollStateForListener:I

    if-eqz v5, :cond_4a

    .line 5326
    iput v4, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollStateForListener:I

    .line 5327
    iget-object v5, v0, Landroid/widget/SemHorizontalAbsListView;->mOnScrollListener:Landroid/widget/SemHorizontalAbsListView$OnScrollListener;

    if-eqz v5, :cond_4a

    iget v6, v0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    const/4 v14, 0x4

    if-eq v6, v14, :cond_4a

    .line 5328
    invoke-interface {v5, v0, v4}, Landroid/widget/SemHorizontalAbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/SemHorizontalAbsListView;I)V

    .line 5332
    :cond_4a
    invoke-super/range {p0 .. p1}, Landroid/widget/AdapterView;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    return v4

    nop

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
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4692
    return-void
.end method

.method public whitelist dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 19
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 5600
    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    .line 5601
    .local v1, "x":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    .line 5604
    .local v2, "y":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    .line 5605
    .local v3, "action":I
    invoke-static {}, Landroid/text/MultiSelection;->isNeedToScroll()Z

    move-result v4

    .line 5607
    .local v4, "needToScroll":Z
    iget-object v5, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragSelectedItemArray:Ljava/util/ArrayList;

    if-nez v5, :cond_0

    .line 5608
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragSelectedItemArray:Ljava/util/ArrayList;

    .line 5611
    :cond_0
    iget-object v5, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    if-nez v5, :cond_1

    .line 5612
    new-instance v5, Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    invoke-direct {v5, v0}, Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;-><init>(Landroid/widget/SemHorizontalAbsListView;)V

    iput-object v5, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    .line 5615
    :cond_1
    invoke-static {}, Landroid/widget/TextView;->semIsTextSelectionProgressing()Z

    move-result v5

    iput-boolean v5, v0, Landroid/widget/SemHorizontalAbsListView;->mIsTextSelectionStarted:Z

    .line 5618
    const/16 v5, 0xd3

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-ne v3, v5, :cond_3

    .line 5619
    iput-boolean v7, v0, Landroid/widget/SemHorizontalAbsListView;->mIsNeedPenSelection:Z

    .line 5620
    iget-object v5, v0, Landroid/widget/SemHorizontalAbsListView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v8, -0x3

    const-string v9, "car_mode_on"

    invoke-static {v5, v9, v6, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    if-ne v5, v7, :cond_2

    move v5, v7

    goto :goto_0

    :cond_2
    move v5, v6

    .line 5623
    .local v5, "isCarModeOn":Z
    :goto_0
    if-eqz v5, :cond_3

    .line 5624
    iput-boolean v6, v0, Landroid/widget/SemHorizontalAbsListView;->mIsNeedPenSelection:Z

    .line 5629
    .end local v5    # "isCarModeOn":Z
    :cond_3
    iget-boolean v5, v0, Landroid/widget/SemHorizontalAbsListView;->mIsTextSelectionStarted:Z

    if-eqz v5, :cond_4

    .line 5630
    iput-boolean v6, v0, Landroid/widget/SemHorizontalAbsListView;->mIsNeedPenSelection:Z

    .line 5633
    :cond_4
    iget v5, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverLeftAreaWidth:I

    if-lez v5, :cond_5

    iget v5, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverRightAreaWidth:I

    if-gtz v5, :cond_6

    .line 5634
    :cond_5
    iget-object v5, v0, Landroid/widget/SemHorizontalAbsListView;->mContext:Landroid/content/Context;

    .line 5636
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    .line 5634
    const/high16 v8, 0x41c80000    # 25.0f

    invoke-static {v7, v8, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v5

    const/high16 v9, 0x3f000000    # 0.5f

    add-float/2addr v5, v9

    float-to-int v5, v5

    iput v5, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverLeftAreaWidth:I

    .line 5638
    iget-object v5, v0, Landroid/widget/SemHorizontalAbsListView;->mContext:Landroid/content/Context;

    .line 5640
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    .line 5638
    invoke-static {v7, v8, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v5

    add-float/2addr v5, v9

    float-to-int v5, v5

    iput v5, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverRightAreaWidth:I

    .line 5643
    :cond_6
    iget-boolean v5, v0, Landroid/widget/SemHorizontalAbsListView;->mIsEnabledPaddingInHoverScroll:Z

    if-eqz v5, :cond_7

    .line 5644
    iget-object v5, v0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    .line 5645
    .local v5, "contentLeft":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->getWidth()I

    move-result v8

    iget-object v9, v0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    sub-int/2addr v8, v9

    .local v8, "contentRight":I
    goto :goto_1

    .line 5647
    .end local v5    # "contentLeft":I
    .end local v8    # "contentRight":I
    :cond_7
    const/4 v5, 0x0

    .line 5648
    .restart local v5    # "contentLeft":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->getWidth()I

    move-result v8

    .line 5652
    .restart local v8    # "contentRight":I
    :goto_1
    iget-boolean v9, v0, Landroid/widget/SemHorizontalAbsListView;->mIsEnabledPaddingInHoverScroll:Z

    if-eqz v9, :cond_9

    if-lt v1, v5, :cond_8

    if-le v1, v8, :cond_9

    .line 5653
    :cond_8
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    if-eq v9, v7, :cond_9

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    const/16 v10, 0xd4

    if-eq v9, v10, :cond_9

    .line 5654
    return v7

    .line 5657
    :cond_9
    const/4 v12, -0x1

    sparse-switch v3, :sswitch_data_0

    move/from16 v17, v3

    .end local v3    # "action":I
    .local v17, "action":I
    goto/16 :goto_19

    .line 5666
    .end local v17    # "action":I
    .restart local v3    # "action":I
    :sswitch_0
    iget-boolean v13, v0, Landroid/widget/SemHorizontalAbsListView;->mIsNeedPenSelection:Z

    if-eqz v13, :cond_26

    .line 5667
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->getChildCount()I

    move-result v13

    .line 5669
    .local v13, "count":I
    iget-boolean v14, v0, Landroid/widget/SemHorizontalAbsListView;->mIsfirstMoveEvent:Z

    if-eqz v14, :cond_14

    .line 5670
    iput v1, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragStartX:I

    .line 5671
    iput v2, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragStartY:I

    .line 5672
    invoke-super {v0, v1, v2}, Landroid/widget/AdapterView;->semNotifyMultiSelectedStart(II)V

    .line 5673
    iput-boolean v7, v0, Landroid/widget/SemHorizontalAbsListView;->mIsPenPressed:Z

    .line 5675
    invoke-virtual {v0, v1, v2}, Landroid/widget/SemHorizontalAbsListView;->pointToPosition(II)I

    move-result v14

    iput v14, v0, Landroid/widget/SemHorizontalAbsListView;->mSemTrackedChildPosition:I

    .line 5677
    if-ne v14, v12, :cond_12

    .line 5678
    const/4 v14, 0x0

    .line 5679
    .local v14, "oldDistanceFromLeft":I
    const/4 v15, 0x0

    .line 5683
    .local v15, "oldDistanceFromRight":I
    add-int/lit8 v16, v13, -0x1

    move/from16 v9, v16

    .local v9, "i":I
    :goto_2
    if-ltz v9, :cond_f

    .line 5684
    invoke-virtual {v0, v9}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 5685
    .local v10, "child":Landroid/view/View;
    if-eqz v10, :cond_d

    .line 5686
    invoke-virtual {v10}, Landroid/view/View;->getLeft()I

    move-result v11

    .line 5687
    .local v11, "childLeft":I
    invoke-virtual {v10}, Landroid/view/View;->getRight()I

    move-result v12

    .line 5690
    .local v12, "childRight":I
    iget v7, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragStartX:I

    if-lt v7, v11, :cond_a

    if-gt v7, v12, :cond_a

    .line 5691
    iput-object v10, v0, Landroid/widget/SemHorizontalAbsListView;->mSemTrackedChild:Landroid/view/View;

    .line 5692
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->getFirstVisiblePosition()I

    move-result v7

    add-int/2addr v7, v9

    iput v7, v0, Landroid/widget/SemHorizontalAbsListView;->mSemTrackedChildPosition:I

    .line 5693
    move/from16 v17, v3

    goto :goto_4

    .line 5697
    :cond_a
    sub-int/2addr v7, v11

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    .line 5698
    .local v7, "newDistanceFromLeft":I
    iget v6, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragStartX:I

    sub-int/2addr v6, v12

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    .line 5700
    .local v6, "newDistanceFromRight":I
    move/from16 v17, v3

    .end local v3    # "action":I
    .restart local v17    # "action":I
    add-int/lit8 v3, v13, -0x1

    if-ne v9, v3, :cond_b

    .line 5701
    add-int/lit8 v3, v13, -0x1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->getFirstVisiblePosition()I

    move-result v18

    add-int v3, v3, v18

    iput v3, v0, Landroid/widget/SemHorizontalAbsListView;->mSemCloseChildPositionByLeft:I

    .line 5702
    add-int/lit8 v3, v13, -0x1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->getFirstVisiblePosition()I

    move-result v18

    add-int v3, v3, v18

    iput v3, v0, Landroid/widget/SemHorizontalAbsListView;->mSemCloseChildPositionByRight:I

    .line 5703
    move v3, v7

    .line 5704
    .end local v14    # "oldDistanceFromLeft":I
    .local v3, "oldDistanceFromLeft":I
    move v14, v6

    move v15, v14

    move v14, v3

    .end local v15    # "oldDistanceFromRight":I
    .local v14, "oldDistanceFromRight":I
    goto :goto_3

    .line 5706
    .end local v3    # "oldDistanceFromLeft":I
    .local v14, "oldDistanceFromLeft":I
    .restart local v15    # "oldDistanceFromRight":I
    :cond_b
    if-gt v7, v14, :cond_c

    .line 5707
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->getFirstVisiblePosition()I

    move-result v3

    add-int/2addr v3, v9

    iput v3, v0, Landroid/widget/SemHorizontalAbsListView;->mSemCloseChildPositionByLeft:I

    .line 5708
    move v14, v7

    .line 5711
    :cond_c
    if-gt v6, v15, :cond_e

    .line 5712
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->getFirstVisiblePosition()I

    move-result v3

    add-int/2addr v3, v9

    iput v3, v0, Landroid/widget/SemHorizontalAbsListView;->mSemCloseChildPositionByRight:I

    .line 5713
    move v3, v6

    move v15, v3

    .end local v15    # "oldDistanceFromRight":I
    .local v3, "oldDistanceFromRight":I
    goto :goto_3

    .line 5685
    .end local v6    # "newDistanceFromRight":I
    .end local v7    # "newDistanceFromLeft":I
    .end local v11    # "childLeft":I
    .end local v12    # "childRight":I
    .end local v17    # "action":I
    .local v3, "action":I
    .restart local v15    # "oldDistanceFromRight":I
    :cond_d
    move/from16 v17, v3

    .line 5683
    .end local v3    # "action":I
    .end local v10    # "child":Landroid/view/View;
    .restart local v17    # "action":I
    :cond_e
    :goto_3
    add-int/lit8 v9, v9, -0x1

    move/from16 v3, v17

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v12, -0x1

    goto :goto_2

    .end local v17    # "action":I
    .restart local v3    # "action":I
    :cond_f
    move/from16 v17, v3

    .line 5719
    .end local v3    # "action":I
    .end local v9    # "i":I
    .restart local v17    # "action":I
    :goto_4
    iget-object v3, v0, Landroid/widget/SemHorizontalAbsListView;->mSemTrackedChild:Landroid/view/View;

    if-nez v3, :cond_11

    .line 5720
    iget v3, v0, Landroid/widget/SemHorizontalAbsListView;->mSemCloseChildPositionByLeft:I

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->getFirstVisiblePosition()I

    move-result v6

    sub-int/2addr v3, v6

    invoke-virtual {v0, v3}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v0, Landroid/widget/SemHorizontalAbsListView;->mSemCloseChildByLeft:Landroid/view/View;

    .line 5721
    if-eqz v3, :cond_10

    .line 5722
    iget v6, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragStartX:I

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int/2addr v6, v3

    iput v6, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDistanceFromCloseChildLeft:I

    .line 5725
    :cond_10
    iget v3, v0, Landroid/widget/SemHorizontalAbsListView;->mSemCloseChildPositionByRight:I

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->getFirstVisiblePosition()I

    move-result v6

    sub-int/2addr v3, v6

    invoke-virtual {v0, v3}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v0, Landroid/widget/SemHorizontalAbsListView;->mSemCloseChildByRight:Landroid/view/View;

    .line 5726
    if-eqz v3, :cond_11

    .line 5727
    iget v6, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragStartX:I

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int/2addr v6, v3

    iput v6, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDistanceFromCloseChildRight:I

    .line 5730
    .end local v14    # "oldDistanceFromLeft":I
    .end local v15    # "oldDistanceFromRight":I
    :cond_11
    goto :goto_5

    .line 5731
    .end local v17    # "action":I
    .restart local v3    # "action":I
    :cond_12
    move/from16 v17, v3

    .end local v3    # "action":I
    .restart local v17    # "action":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->getFirstVisiblePosition()I

    move-result v3

    sub-int/2addr v14, v3

    invoke-virtual {v0, v14}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v0, Landroid/widget/SemHorizontalAbsListView;->mSemTrackedChild:Landroid/view/View;

    .line 5734
    :goto_5
    iget-object v3, v0, Landroid/widget/SemHorizontalAbsListView;->mSemTrackedChild:Landroid/view/View;

    if-eqz v3, :cond_13

    .line 5735
    iget v6, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragStartX:I

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int/2addr v6, v3

    iput v6, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDistanceFromTrackedChildLeft:I

    .line 5737
    :cond_13
    const/4 v3, 0x0

    iput-boolean v3, v0, Landroid/widget/SemHorizontalAbsListView;->mIsfirstMoveEvent:Z

    goto :goto_6

    .line 5669
    .end local v17    # "action":I
    .restart local v3    # "action":I
    :cond_14
    move/from16 v17, v3

    .line 5740
    .end local v3    # "action":I
    .restart local v17    # "action":I
    :goto_6
    iget v3, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragStartX:I

    if-nez v3, :cond_15

    iget v3, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragStartY:I

    if-nez v3, :cond_15

    .line 5741
    iput v1, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragStartX:I

    .line 5742
    iput v2, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragStartY:I

    .line 5743
    invoke-super {v0, v1, v2}, Landroid/widget/AdapterView;->semNotifyMultiSelectedStart(II)V

    .line 5744
    const/4 v3, 0x1

    iput-boolean v3, v0, Landroid/widget/SemHorizontalAbsListView;->mIsPenPressed:Z

    .line 5747
    :cond_15
    iput v1, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragEndX:I

    .line 5748
    iput v2, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragEndY:I

    .line 5750
    if-gez v1, :cond_16

    .line 5751
    const/4 v3, 0x0

    iput v3, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragEndX:I

    goto :goto_7

    .line 5752
    :cond_16
    if-le v1, v8, :cond_17

    .line 5753
    iput v8, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragEndX:I

    .line 5756
    :cond_17
    :goto_7
    invoke-virtual {v0, v1, v2}, Landroid/widget/SemHorizontalAbsListView;->pointToPosition(II)I

    move-result v3

    iput v3, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragSelectedViewPosition:I

    .line 5758
    iget v3, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragStartY:I

    iget v6, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragEndY:I

    if-ge v3, v6, :cond_18

    move v7, v3

    goto :goto_8

    :cond_18
    move v7, v6

    :goto_8
    iput v7, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockTop:I

    .line 5759
    iget v7, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragStartX:I

    iget v9, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragEndX:I

    if-ge v7, v9, :cond_19

    move v10, v7

    goto :goto_9

    :cond_19
    move v10, v9

    :goto_9
    iput v10, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockLeft:I

    .line 5760
    if-le v6, v3, :cond_1a

    move v3, v6

    :cond_1a
    iput v3, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockBottom:I

    .line 5761
    if-le v9, v7, :cond_1b

    move v7, v9

    :cond_1b
    iput v7, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockRight:I

    .line 5763
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_a
    if-ge v3, v13, :cond_25

    .line 5764
    invoke-virtual {v0, v3}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 5765
    .local v6, "child":Landroid/view/View;
    if-eqz v6, :cond_24

    .line 5766
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v7

    .line 5767
    .local v7, "childLeft":I
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v9

    .line 5768
    .local v9, "childTop":I
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v10

    .line 5769
    .local v10, "childRight":I
    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v11

    .line 5771
    .local v11, "childBottom":I
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v12

    if-nez v12, :cond_24

    .line 5772
    iget v12, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockTop:I

    if-le v12, v9, :cond_1c

    iget v14, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockLeft:I

    if-le v14, v7, :cond_1c

    iget v14, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockBottom:I

    if-ge v14, v11, :cond_1c

    iget v14, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockRight:I

    if-lt v14, v10, :cond_22

    :cond_1c
    if-le v12, v9, :cond_1d

    iget v14, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockBottom:I

    if-lt v14, v11, :cond_1f

    :cond_1d
    if-ge v12, v9, :cond_1e

    iget v14, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockBottom:I

    if-gt v14, v9, :cond_1f

    :cond_1e
    if-ge v12, v11, :cond_23

    iget v12, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockBottom:I

    if-le v12, v11, :cond_23

    :cond_1f
    iget v12, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockLeft:I

    if-lt v12, v7, :cond_20

    iget v14, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockRight:I

    if-le v14, v10, :cond_22

    :cond_20
    if-gt v12, v7, :cond_21

    iget v14, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockRight:I

    if-gt v14, v7, :cond_22

    :cond_21
    if-ge v12, v10, :cond_23

    iget v12, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockRight:I

    if-lt v12, v10, :cond_23

    .line 5776
    :cond_22
    add-int/lit8 v12, v7, 0x1

    add-int/lit8 v14, v9, 0x1

    invoke-virtual {v0, v12, v14}, Landroid/widget/SemHorizontalAbsListView;->pointToPosition(II)I

    move-result v12

    iput v12, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragSelectedViewPosition:I

    .line 5777
    const/4 v14, -0x1

    if-eq v12, v14, :cond_24

    iget-object v14, v0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v14, v12}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v12

    if-eqz v12, :cond_24

    iget-object v12, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragSelectedItemArray:Ljava/util/ArrayList;

    iget v14, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragSelectedViewPosition:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_24

    .line 5778
    iget-object v12, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragSelectedItemArray:Ljava/util/ArrayList;

    iget v14, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragSelectedViewPosition:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5779
    iget v12, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragSelectedViewPosition:I

    const/4 v14, -0x1

    invoke-direct {v0, v12, v14}, Landroid/widget/SemHorizontalAbsListView;->addToPressItemListArray(II)V

    .line 5780
    iget v12, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragSelectedViewPosition:I

    invoke-virtual {v0, v12}, Landroid/widget/SemHorizontalAbsListView;->getItemIdAtPosition(I)J

    move-result-wide v14

    invoke-direct {v0, v6, v12, v14, v15}, Landroid/widget/SemHorizontalAbsListView;->semNotifyMultiSelectState(Landroid/view/View;IJ)Z

    goto :goto_b

    .line 5783
    :cond_23
    add-int/lit8 v12, v7, 0x1

    add-int/lit8 v14, v9, 0x1

    invoke-virtual {v0, v12, v14}, Landroid/widget/SemHorizontalAbsListView;->pointToPosition(II)I

    move-result v12

    iput v12, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragSelectedViewPosition:I

    .line 5784
    const/4 v14, -0x1

    if-eq v12, v14, :cond_24

    iget-object v14, v0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v14, v12}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v12

    if-eqz v12, :cond_24

    iget-object v12, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragSelectedItemArray:Ljava/util/ArrayList;

    iget v14, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragSelectedViewPosition:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_24

    .line 5785
    iget-object v12, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragSelectedItemArray:Ljava/util/ArrayList;

    iget v14, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragSelectedViewPosition:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 5786
    iget v12, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragSelectedViewPosition:I

    const/4 v14, -0x1

    invoke-direct {v0, v12, v14}, Landroid/widget/SemHorizontalAbsListView;->addToPressItemListArray(II)V

    .line 5787
    iget v12, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragSelectedViewPosition:I

    invoke-virtual {v0, v12}, Landroid/widget/SemHorizontalAbsListView;->getItemIdAtPosition(I)J

    move-result-wide v14

    invoke-direct {v0, v6, v12, v14, v15}, Landroid/widget/SemHorizontalAbsListView;->semNotifyMultiSelectState(Landroid/view/View;IJ)Z

    .line 5763
    .end local v6    # "child":Landroid/view/View;
    .end local v7    # "childLeft":I
    .end local v9    # "childTop":I
    .end local v10    # "childRight":I
    .end local v11    # "childBottom":I
    :cond_24
    :goto_b
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_a

    .line 5793
    .end local v3    # "i":I
    :cond_25
    const/4 v3, 0x1

    move v4, v3

    .end local v4    # "needToScroll":Z
    .local v3, "needToScroll":Z
    goto :goto_c

    .line 5666
    .end local v13    # "count":I
    .end local v17    # "action":I
    .local v3, "action":I
    .restart local v4    # "needToScroll":Z
    :cond_26
    move/from16 v17, v3

    .line 5796
    .end local v3    # "action":I
    .restart local v17    # "action":I
    :goto_c
    if-eqz v4, :cond_31

    .line 5797
    if-lt v1, v5, :cond_27

    iget v3, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverLeftAreaWidth:I

    add-int/2addr v3, v5

    if-gt v1, v3, :cond_27

    const/4 v3, 0x1

    goto :goto_d

    :cond_27
    const/4 v3, 0x0

    .line 5798
    .local v3, "b1":Z
    :goto_d
    iget v6, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverRightAreaWidth:I

    sub-int v6, v8, v6

    if-lt v1, v6, :cond_28

    if-gt v1, v8, :cond_28

    const/4 v6, 0x1

    goto :goto_e

    :cond_28
    const/4 v6, 0x0

    .line 5799
    .local v6, "b2":Z
    :goto_e
    if-nez v3, :cond_2c

    if-eqz v6, :cond_29

    goto :goto_10

    .line 5815
    :cond_29
    iget-boolean v7, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverAreaEnter:Z

    if-eqz v7, :cond_2a

    iget-object v7, v0, Landroid/widget/SemHorizontalAbsListView;->mOnScrollListener:Landroid/widget/SemHorizontalAbsListView$OnScrollListener;

    if-eqz v7, :cond_2a

    .line 5816
    const/4 v9, 0x0

    invoke-interface {v7, v0, v9}, Landroid/widget/SemHorizontalAbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/SemHorizontalAbsListView;I)V

    goto :goto_f

    .line 5815
    :cond_2a
    const/4 v9, 0x0

    .line 5819
    :goto_f
    const-wide/16 v10, 0x0

    iput-wide v10, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollStartTime:J

    .line 5820
    iput-wide v10, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverRecognitionStartTime:J

    .line 5821
    iput-boolean v9, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverAreaEnter:Z

    .line 5824
    iget-object v7, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    const/4 v9, 0x1

    invoke-virtual {v7, v9}, Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v7

    if-eqz v7, :cond_2b

    .line 5825
    iget-object v7, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    invoke-virtual {v7, v9}, Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;->removeMessages(I)V

    .line 5828
    :cond_2b
    const/4 v7, 0x0

    iput-boolean v7, v0, Landroid/widget/SemHorizontalAbsListView;->mIsHoverOverscrolled:Z

    goto :goto_13

    .line 5800
    :cond_2c
    :goto_10
    iget-boolean v7, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverAreaEnter:Z

    if-nez v7, :cond_2d

    .line 5801
    const/4 v7, 0x1

    iput-boolean v7, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverAreaEnter:Z

    .line 5802
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    iput-wide v9, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollStartTime:J

    .line 5804
    iget-object v9, v0, Landroid/widget/SemHorizontalAbsListView;->mOnScrollListener:Landroid/widget/SemHorizontalAbsListView$OnScrollListener;

    if-eqz v9, :cond_2e

    .line 5805
    invoke-interface {v9, v0, v7}, Landroid/widget/SemHorizontalAbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/SemHorizontalAbsListView;I)V

    goto :goto_11

    .line 5800
    :cond_2d
    const/4 v7, 0x1

    .line 5809
    :cond_2e
    :goto_11
    iget-object v9, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    invoke-virtual {v9, v7}, Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v9

    if-nez v9, :cond_30

    .line 5810
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    iput-wide v9, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverRecognitionStartTime:J

    .line 5811
    if-eqz v3, :cond_2f

    const/4 v9, 0x2

    goto :goto_12

    :cond_2f
    const/4 v9, 0x1

    :goto_12
    iput v9, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollDirection:I

    .line 5812
    iget-object v7, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    const/4 v9, 0x1

    invoke-virtual {v7, v9}, Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;->sendEmptyMessage(I)Z

    .line 5831
    :cond_30
    :goto_13
    iget-boolean v7, v0, Landroid/widget/SemHorizontalAbsListView;->mIsDragBlockEnabled:Z

    if-eqz v7, :cond_32

    .line 5832
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->invalidate()V

    goto :goto_14

    .line 5834
    .end local v3    # "b1":Z
    .end local v6    # "b2":Z
    :cond_31
    iget-boolean v3, v0, Landroid/widget/SemHorizontalAbsListView;->mPreviousTextViewScroll:Z

    if-eqz v3, :cond_32

    .line 5836
    iget-object v3, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v3

    if-eqz v3, :cond_33

    .line 5837
    iget-object v3, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    invoke-virtual {v3, v6}, Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;->removeMessages(I)V

    goto :goto_15

    .line 5834
    :cond_32
    :goto_14
    nop

    .line 5840
    :cond_33
    :goto_15
    iput-boolean v4, v0, Landroid/widget/SemHorizontalAbsListView;->mPreviousTextViewScroll:Z

    .line 5841
    goto/16 :goto_19

    .line 5662
    .end local v17    # "action":I
    .local v3, "action":I
    :sswitch_1
    move/from16 v17, v3

    .end local v3    # "action":I
    .restart local v17    # "action":I
    goto/16 :goto_19

    .line 5664
    .end local v17    # "action":I
    .restart local v3    # "action":I
    :sswitch_2
    move/from16 v17, v3

    .end local v3    # "action":I
    .restart local v17    # "action":I
    goto/16 :goto_19

    .line 5846
    .end local v17    # "action":I
    .restart local v3    # "action":I
    :sswitch_3
    move/from16 v17, v3

    .end local v3    # "action":I
    .restart local v17    # "action":I
    iget-boolean v3, v0, Landroid/widget/SemHorizontalAbsListView;->mIsTextSelectionStarted:Z

    const/4 v6, 0x0

    if-nez v3, :cond_3b

    .line 5847
    iget-boolean v3, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverAreaEnter:Z

    if-eqz v3, :cond_34

    iget-object v3, v0, Landroid/widget/SemHorizontalAbsListView;->mOnScrollListener:Landroid/widget/SemHorizontalAbsListView$OnScrollListener;

    if-eqz v3, :cond_34

    .line 5848
    const/4 v7, 0x0

    invoke-interface {v3, v0, v7}, Landroid/widget/SemHorizontalAbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/SemHorizontalAbsListView;I)V

    goto :goto_16

    .line 5847
    :cond_34
    const/4 v7, 0x0

    .line 5851
    :goto_16
    const-wide/16 v9, 0x0

    iput-wide v9, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverRecognitionStartTime:J

    .line 5852
    iput-wide v9, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollStartTime:J

    .line 5853
    iput-boolean v7, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverAreaEnter:Z

    .line 5854
    const/4 v3, 0x0

    .line 5856
    .local v3, "isNeedActionMode":Z
    iget-object v7, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragSelectedItemArray:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    iput v7, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragSelectedItemSize:I

    .line 5858
    if-eqz v7, :cond_3b

    .line 5859
    iget-object v7, v0, Landroid/widget/SemHorizontalAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v7, :cond_3a

    iget v7, v0, Landroid/widget/SemHorizontalAbsListView;->mChoiceMode:I

    const/4 v9, 0x3

    const/4 v10, 0x2

    if-eq v7, v10, :cond_35

    if-ne v7, v9, :cond_3a

    .line 5861
    :cond_35
    iget-object v7, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragSelectedItemArray:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_17
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_37

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    .line 5862
    .local v10, "dragSelectedViewPosition":Ljava/lang/Integer;
    iget-object v11, v0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-interface {v11, v12}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v11

    if-eqz v11, :cond_36

    .line 5863
    const/4 v3, 0x1

    .line 5865
    .end local v10    # "dragSelectedViewPosition":Ljava/lang/Integer;
    :cond_36
    goto :goto_17

    .line 5867
    :cond_37
    iget v7, v0, Landroid/widget/SemHorizontalAbsListView;->mChoiceMode:I

    if-ne v7, v9, :cond_38

    .line 5868
    iget-object v7, v0, Landroid/widget/SemHorizontalAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-nez v7, :cond_38

    if-eqz v3, :cond_38

    .line 5869
    iget-object v7, v0, Landroid/widget/SemHorizontalAbsListView;->mMultiChoiceModeCallback:Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeWrapper;

    invoke-virtual {v0, v7}, Landroid/widget/SemHorizontalAbsListView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v7

    iput-object v7, v0, Landroid/widget/SemHorizontalAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    .line 5873
    :cond_38
    iget-boolean v7, v0, Landroid/widget/SemHorizontalAbsListView;->mSemIsOnClickEnabled:Z

    if-eqz v7, :cond_3a

    .line 5874
    iget-object v7, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragSelectedItemArray:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_18
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    .line 5875
    .local v9, "dragSelectedViewPosition":Ljava/lang/Integer;
    iget-object v10, v0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-interface {v10, v11}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v10

    if-eqz v10, :cond_39

    .line 5876
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {v0, v11}, Landroid/widget/SemHorizontalAbsListView;->getItemIdAtPosition(I)J

    move-result-wide v11

    invoke-virtual {v0, v6, v10, v11, v12}, Landroid/widget/SemHorizontalAbsListView;->performItemClick(Landroid/view/View;IJ)Z

    .line 5877
    .end local v9    # "dragSelectedViewPosition":Ljava/lang/Integer;
    :cond_39
    goto :goto_18

    .line 5881
    :cond_3a
    invoke-super {v0, v1, v2}, Landroid/widget/AdapterView;->semNotifyMultiSelectedStop(II)V

    .line 5885
    .end local v3    # "isNeedActionMode":Z
    :cond_3b
    const/4 v3, 0x0

    iput-boolean v3, v0, Landroid/widget/SemHorizontalAbsListView;->mIsPenPressed:Z

    .line 5886
    const/4 v7, 0x1

    iput-boolean v7, v0, Landroid/widget/SemHorizontalAbsListView;->mIsfirstMoveEvent:Z

    .line 5887
    const/4 v7, -0x1

    iput v7, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragSelectedViewPosition:I

    .line 5889
    iput v3, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragStartX:I

    .line 5890
    iput v3, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragStartY:I

    .line 5891
    iput v3, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragEndX:I

    .line 5892
    iput v3, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragEndY:I

    .line 5894
    iput v3, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockLeft:I

    .line 5895
    iput v3, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockTop:I

    .line 5896
    iput v3, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockRight:I

    .line 5897
    iput v3, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockBottom:I

    .line 5899
    iget-object v7, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragSelectedItemArray:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 5900
    iput v3, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragSelectedItemSize:I

    .line 5901
    iput-object v6, v0, Landroid/widget/SemHorizontalAbsListView;->mSemTrackedChild:Landroid/view/View;

    .line 5902
    iput v3, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDistanceFromTrackedChildLeft:I

    .line 5904
    iput-boolean v3, v0, Landroid/widget/SemHorizontalAbsListView;->mIsCloseChildSetted:Z

    .line 5905
    const/4 v7, -0x1

    iput v7, v0, Landroid/widget/SemHorizontalAbsListView;->mOldHoverScrollDirection:I

    .line 5906
    iput-object v6, v0, Landroid/widget/SemHorizontalAbsListView;->mSemCloseChildByLeft:Landroid/view/View;

    .line 5907
    iput v7, v0, Landroid/widget/SemHorizontalAbsListView;->mSemCloseChildPositionByLeft:I

    .line 5908
    iput v3, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDistanceFromCloseChildLeft:I

    .line 5909
    iput-object v6, v0, Landroid/widget/SemHorizontalAbsListView;->mSemCloseChildByRight:Landroid/view/View;

    .line 5910
    iput v7, v0, Landroid/widget/SemHorizontalAbsListView;->mSemCloseChildPositionByRight:I

    .line 5911
    iput v3, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDistanceFromCloseChildRight:I

    .line 5913
    iget-boolean v3, v0, Landroid/widget/SemHorizontalAbsListView;->mIsDragBlockEnabled:Z

    if-eqz v3, :cond_3c

    .line 5914
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->invalidate()V

    .line 5918
    :cond_3c
    iget-object v3, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v3

    if-eqz v3, :cond_3d

    .line 5919
    iget-object v3, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    invoke-virtual {v3, v6}, Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;->removeMessages(I)V

    goto :goto_19

    .line 5659
    .end local v17    # "action":I
    .local v3, "action":I
    :sswitch_4
    move/from16 v17, v3

    .line 5927
    .end local v3    # "action":I
    .restart local v17    # "action":I
    :cond_3d
    :goto_19
    invoke-super/range {p0 .. p1}, Landroid/widget/AdapterView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    return v3

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_4
        0x1 -> :sswitch_3
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0xd3 -> :sswitch_1
        0xd4 -> :sswitch_3
        0xd5 -> :sswitch_0
    .end sparse-switch
.end method

.method public whitelist draw(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6682
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->draw(Landroid/graphics/Canvas;)V

    .line 6683
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_3

    .line 6684
    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mScrollX:I

    .line 6685
    .local v0, "scrollX":I
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 6686
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 6687
    .local v1, "restoreCount":I
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getHeight()I

    move-result v3

    .line 6689
    .local v3, "height":I
    iget v4, p0, Landroid/widget/SemHorizontalAbsListView;->mFirstPositionDistanceGuess:I

    add-int/2addr v4, v0

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 6690
    .local v4, "edgeX":I
    int-to-float v5, v4

    int-to-float v6, v3

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 6691
    const/high16 v5, 0x43870000    # 270.0f

    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->rotate(F)V

    .line 6692
    iget-object v5, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getWidth()I

    move-result v6

    invoke-virtual {v5, v3, v6}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 6693
    iget-object v5, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v5, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 6694
    iget-object v5, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v5}, Landroid/widget/EdgeEffect;->getMaxHeight()I

    move-result v5

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getPaddingLeft()I

    move-result v6

    add-int/2addr v5, v6

    .line 6695
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getHeight()I

    move-result v6

    .line 6694
    invoke-virtual {p0, v2, v2, v5, v6}, Landroid/widget/SemHorizontalAbsListView;->invalidate(IIII)V

    .line 6697
    :cond_0
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 6699
    .end local v1    # "restoreCount":I
    .end local v3    # "height":I
    .end local v4    # "edgeX":I
    :cond_1
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    if-nez v1, :cond_3

    .line 6700
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 6701
    .restart local v1    # "restoreCount":I
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getWidth()I

    move-result v3

    .line 6702
    .local v3, "width":I
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getHeight()I

    move-result v4

    .line 6704
    .local v4, "height":I
    iget v5, p0, Landroid/widget/SemHorizontalAbsListView;->mLastPositionDistanceGuess:I

    add-int/2addr v5, v0

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 6705
    .local v5, "edgeX":I
    int-to-float v6, v5

    const/4 v7, 0x0

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 6706
    const/high16 v6, 0x42b40000    # 90.0f

    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->rotate(F)V

    .line 6707
    iget-object v6, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v6, v4, v3}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 6708
    iget-object v6, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v6, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 6709
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getPaddingRight()I

    move-result v7

    sub-int/2addr v6, v7

    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->getMaxHeight()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getWidth()I

    move-result v7

    .line 6710
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getHeight()I

    move-result v8

    .line 6709
    invoke-virtual {p0, v6, v2, v7, v8}, Landroid/widget/SemHorizontalAbsListView;->invalidate(IIII)V

    .line 6712
    :cond_2
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 6716
    .end local v0    # "scrollX":I
    .end local v1    # "restoreCount":I
    .end local v3    # "width":I
    .end local v4    # "height":I
    .end local v5    # "edgeX":I
    :cond_3
    return-void
.end method

.method protected whitelist drawableStateChanged()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3956
    invoke-super {p0}, Landroid/widget/AdapterView;->drawableStateChanged()V

    .line 3957
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->updateSelectorState()V

    .line 3958
    return-void
.end method

.method abstract blacklist fillGap(Z)V
.end method

.method abstract blacklist fillGapRTL(Z)V
.end method

.method blacklist findClosestMotionRow(I)I
    .locals 3
    .param p1, "x"    # I

    .line 7997
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getChildCount()I

    move-result v0

    .line 7998
    .local v0, "childCount":I
    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 7999
    return v1

    .line 8002
    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/SemHorizontalAbsListView;->findMotionRow(I)I

    move-result v2

    .line 8003
    .local v2, "motionRow":I
    if-eq v2, v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    iget v1, p0, Landroid/widget/SemHorizontalAbsListView;->mFirstPosition:I

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x1

    :goto_0
    return v1
.end method

.method abstract blacklist findMotionRow(I)I
.end method

.method public blacklist findViewByAccessibilityIdTraversal(I)Landroid/view/View;
    .locals 1
    .param p1, "accessibilityId"    # I

    .line 2190
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getAccessibilityViewId()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 2191
    return-object p0

    .line 2197
    :cond_0
    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mDataChanged:Z

    if-eqz v0, :cond_1

    .line 2198
    const/4 v0, 0x0

    return-object v0

    .line 2200
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->findViewByAccessibilityIdTraversal(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public whitelist finishMultiChoiceMode()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1713
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 1714
    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 1715
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    .line 1717
    :cond_0
    return-void
.end method

.method public blacklist fling(I)V
    .locals 1
    .param p1, "velocityX"    # I

    .line 6585
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFlingRunnable:Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    if-nez v0, :cond_0

    .line 6586
    new-instance v0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    invoke-direct {v0, p0}, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;-><init>(Landroid/widget/SemHorizontalAbsListView;)V

    iput-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFlingRunnable:Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    .line 6588
    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/widget/SemHorizontalAbsListView;->reportScrollStateChange(I)V

    .line 6589
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFlingRunnable:Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    invoke-virtual {v0, p1}, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->start(I)V

    .line 6590
    return-void
.end method

.method protected whitelist generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 8989
    new-instance v0, Landroid/widget/SemHorizontalAbsListView$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/SemHorizontalAbsListView$LayoutParams;-><init>(III)V

    return-object v0
.end method

.method public bridge synthetic whitelist generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 130
    invoke-virtual {p0, p1}, Landroid/widget/SemHorizontalAbsListView;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/SemHorizontalAbsListView$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method protected whitelist generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 9012
    new-instance v0, Landroid/widget/SemHorizontalAbsListView$LayoutParams;

    invoke-direct {v0, p1}, Landroid/widget/SemHorizontalAbsListView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public whitelist generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/SemHorizontalAbsListView$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 9028
    new-instance v0, Landroid/widget/SemHorizontalAbsListView$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/SemHorizontalAbsListView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method blacklist getAccessibilityFocusedChild(Landroid/view/View;)Landroid/view/View;
    .locals 2
    .param p1, "focusedView"    # Landroid/view/View;

    .line 3115
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 3116
    .local v0, "viewParent":Landroid/view/ViewParent;
    :goto_0
    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_0

    if-eq v0, p0, :cond_0

    .line 3117
    move-object p1, v0

    check-cast p1, Landroid/view/View;

    .line 3118
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    .line 3121
    :cond_0
    instance-of v1, v0, Landroid/view/View;

    if-nez v1, :cond_1

    .line 3122
    const/4 v1, 0x0

    return-object v1

    .line 3125
    :cond_1
    return-object p1
.end method

.method protected whitelist getBottomPaddingOffset()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3705
    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mGroupFlags:I

    const/16 v1, 0x22

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPaddingBottom:I

    :goto_0
    return v0
.end method

.method public whitelist getCacheColorHint()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 9104
    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mCacheColorHint:I

    return v0
.end method

.method public whitelist getCheckedItemCount()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1322
    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckedItemCount:I

    return v0
.end method

.method public whitelist getCheckedItemIds()[J
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1398
    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceMode:I

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_0

    goto :goto_1

    .line 1402
    :cond_0
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    .line 1403
    .local v0, "idStates":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Integer;>;"
    invoke-virtual {v0}, Landroid/util/LongSparseArray;->size()I

    move-result v1

    .line 1404
    .local v1, "count":I
    new-array v2, v1, [J

    .line 1406
    .local v2, "ids":[J
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 1407
    invoke-virtual {v0, v3}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v4

    aput-wide v4, v2, v3

    .line 1406
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1410
    .end local v3    # "i":I
    :cond_1
    return-object v2

    .line 1399
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
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1360
    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 1361
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v0

    return v0

    .line 1364
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public whitelist getCheckedItemPositions()Landroid/util/SparseBooleanArray;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1380
    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceMode:I

    if-eqz v0, :cond_0

    .line 1381
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    return-object v0

    .line 1383
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getChoiceMode()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1628
    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceMode:I

    return v0
.end method

.method protected whitelist getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4489
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    return-object v0
.end method

.method public whitelist getFocusedRect(Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "r"    # Landroid/graphics/Rect;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2292
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    .line 2293
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-ne v1, p0, :cond_0

    .line 2296
    invoke-virtual {v0, p1}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 2297
    invoke-virtual {p0, v0, p1}, Landroid/widget/SemHorizontalAbsListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    goto :goto_0

    .line 2300
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 2302
    :goto_0
    return-void
.end method

.method blacklist getFooterViewsCount()I
    .locals 1

    .line 7935
    const/4 v0, 0x0

    return v0
.end method

.method blacklist getHeaderViewsCount()I
    .locals 1

    .line 7925
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getHorizontalScrollbarHeight()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1894
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScroll:Lcom/samsung/android/widget/SemHorizontalFastScroller;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1895
    invoke-super {p0}, Landroid/widget/AdapterView;->getHorizontalScrollbarHeight()I

    move-result v0

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScroll:Lcom/samsung/android/widget/SemHorizontalFastScroller;

    invoke-virtual {v1}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0

    .line 1897
    :cond_0
    invoke-super {p0}, Landroid/widget/AdapterView;->getHorizontalScrollbarHeight()I

    move-result v0

    return v0
.end method

.method protected whitelist getLeftFadingEdgeStrength()F
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2927
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getChildCount()I

    move-result v0

    .line 2928
    .local v0, "count":I
    invoke-super {p0}, Landroid/widget/AdapterView;->getLeftFadingEdgeStrength()F

    move-result v1

    .line 2929
    .local v1, "fadeEdge":F
    if-nez v0, :cond_0

    .line 2930
    return v1

    .line 2932
    :cond_0
    iget-boolean v2, p0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    if-eqz v2, :cond_1

    iget v2, p0, Landroid/widget/SemHorizontalAbsListView;->mFirstPosition:I

    add-int/2addr v2, v0

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Landroid/widget/SemHorizontalAbsListView;->mItemCount:I

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_2

    goto :goto_0

    :cond_1
    iget v2, p0, Landroid/widget/SemHorizontalAbsListView;->mFirstPosition:I

    if-lez v2, :cond_2

    .line 2933
    :goto_0
    const/high16 v2, 0x3f800000    # 1.0f

    return v2

    .line 2936
    :cond_2
    iget-boolean v2, p0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    if-eqz v2, :cond_3

    add-int/lit8 v2, v0, -0x1

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {p0, v2}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    .line 2938
    .local v2, "left":I
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getHorizontalFadingEdgeLength()I

    move-result v3

    int-to-float v3, v3

    .line 2939
    .local v3, "fadeLength":F
    iget v4, p0, Landroid/widget/SemHorizontalAbsListView;->mPaddingLeft:I

    if-ge v2, v4, :cond_4

    iget v4, p0, Landroid/widget/SemHorizontalAbsListView;->mPaddingLeft:I

    sub-int v4, v2, v4

    neg-int v4, v4

    int-to-float v4, v4

    div-float/2addr v4, v3

    goto :goto_2

    :cond_4
    move v4, v1

    :goto_2
    return v4
.end method

.method protected whitelist getLeftPaddingOffset()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3651
    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mGroupFlags:I

    const/16 v1, 0x22

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPaddingLeft:I

    neg-int v0, v0

    :goto_0
    return v0
.end method

.method public whitelist getListPaddingBottom()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3208
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    return v0
.end method

.method public whitelist getListPaddingLeft()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3223
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    return v0
.end method

.method public whitelist getListPaddingRight()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3238
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    return v0
.end method

.method public whitelist getListPaddingTop()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3193
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method protected whitelist getRightFadingEdgeStrength()F
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2958
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getChildCount()I

    move-result v0

    .line 2959
    .local v0, "count":I
    invoke-super {p0}, Landroid/widget/AdapterView;->getRightFadingEdgeStrength()F

    move-result v1

    .line 2960
    .local v1, "fadeEdge":F
    if-nez v0, :cond_0

    .line 2961
    return v1

    .line 2963
    :cond_0
    iget-boolean v2, p0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    if-eqz v2, :cond_1

    iget v2, p0, Landroid/widget/SemHorizontalAbsListView;->mFirstPosition:I

    if-lez v2, :cond_2

    goto :goto_0

    :cond_1
    iget v2, p0, Landroid/widget/SemHorizontalAbsListView;->mFirstPosition:I

    add-int/2addr v2, v0

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Landroid/widget/SemHorizontalAbsListView;->mItemCount:I

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_2

    .line 2964
    :goto_0
    const/high16 v2, 0x3f800000    # 1.0f

    return v2

    .line 2967
    :cond_2
    iget-boolean v2, p0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    goto :goto_1

    :cond_3
    add-int/lit8 v2, v0, -0x1

    :goto_1
    invoke-virtual {p0, v2}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    .line 2969
    .local v2, "right":I
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getWidth()I

    move-result v3

    .line 2970
    .local v3, "width":I
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getHorizontalFadingEdgeLength()I

    move-result v4

    int-to-float v4, v4

    .line 2971
    .local v4, "fadeLength":F
    iget v5, p0, Landroid/widget/SemHorizontalAbsListView;->mPaddingRight:I

    sub-int v5, v3, v5

    if-le v2, v5, :cond_4

    .line 2972
    sub-int v5, v2, v3

    iget v6, p0, Landroid/widget/SemHorizontalAbsListView;->mPaddingRight:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    div-float/2addr v5, v4

    goto :goto_2

    :cond_4
    move v5, v1

    .line 2971
    :goto_2
    return v5
.end method

.method protected whitelist getRightPaddingOffset()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3687
    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mGroupFlags:I

    const/16 v1, 0x22

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPaddingRight:I

    :goto_0
    return v0
.end method

.method public whitelist getSelectedView()Landroid/view/View;
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3174
    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mItemCount:I

    if-lez v0, :cond_0

    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectedPosition:I

    if-ltz v0, :cond_0

    .line 3175
    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectedPosition:I

    iget v1, p0, Landroid/widget/SemHorizontalAbsListView;->mFirstPosition:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 3177
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method blacklist getSelectionModeForAccessibility()I
    .locals 2

    .line 2125
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getChoiceMode()I

    move-result v0

    .line 2126
    .local v0, "choiceMode":I
    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 2135
    return v1

    .line 2133
    :pswitch_0
    const/4 v1, 0x2

    return v1

    .line 2130
    :pswitch_1
    const/4 v1, 0x1

    return v1

    .line 2128
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
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3859
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public whitelist getSolidColor()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 9090
    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mCacheColorHint:I

    return v0
.end method

.method public whitelist getTextFilter()Ljava/lang/CharSequence;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2686
    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mTextFilterEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mTextFilter:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 2687
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    return-object v0

    .line 2689
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected whitelist getTopPaddingOffset()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3669
    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mGroupFlags:I

    const/16 v1, 0x22

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPaddingTop:I

    neg-int v0, v0

    :goto_0
    return v0
.end method

.method public blacklist getTouchSlop()I
    .locals 1

    .line 1056
    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchSlop:I

    return v0
.end method

.method public whitelist getTranscriptMode()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 9071
    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mTranscriptMode:I

    return v0
.end method

.method blacklist getWidthForPosition(I)I
    .locals 6
    .param p1, "position"    # I

    .line 10069
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getFirstVisiblePosition()I

    move-result v0

    .line 10070
    .local v0, "firstVisiblePosition":I
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getChildCount()I

    move-result v1

    .line 10071
    .local v1, "childCount":I
    sub-int v2, p1, v0

    .line 10072
    .local v2, "index":I
    if-ltz v2, :cond_0

    if-ge v2, v1, :cond_0

    .line 10074
    invoke-virtual {p0, v2}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 10075
    .local v3, "view":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v4

    return v4

    .line 10078
    .end local v3    # "view":Landroid/view/View;
    :cond_0
    iget-object v3, p0, Landroid/widget/SemHorizontalAbsListView;->mIsScrap:[Z

    invoke-virtual {p0, p1, v3}, Landroid/widget/SemHorizontalAbsListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v3

    .line 10079
    .restart local v3    # "view":Landroid/view/View;
    iget v4, p0, Landroid/widget/SemHorizontalAbsListView;->mHeightMeasureSpec:I

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/View;->measure(II)V

    .line 10080
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    .line 10081
    .local v4, "width":I
    iget-object v5, p0, Landroid/widget/SemHorizontalAbsListView;->mRecycler:Landroid/widget/SemHorizontalAbsListView$RecycleBin;

    invoke-virtual {v5, v3, p1}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 10082
    return v4
.end method

.method protected whitelist handleDataChanged()V
    .locals 12
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 8206
    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mItemCount:I

    .line 8207
    .local v0, "count":I
    iget v1, p0, Landroid/widget/SemHorizontalAbsListView;->mLastHandledItemCount:I

    .line 8208
    .local v1, "lastHandledItemCount":I
    iget v2, p0, Landroid/widget/SemHorizontalAbsListView;->mItemCount:I

    iput v2, p0, Landroid/widget/SemHorizontalAbsListView;->mLastHandledItemCount:I

    .line 8211
    iget-boolean v2, p0, Landroid/widget/SemHorizontalAbsListView;->mIsMultiFocusEnabled:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v2, :cond_0

    iget v2, p0, Landroid/widget/SemHorizontalAbsListView;->mItemCount:I

    iget v3, p0, Landroid/widget/SemHorizontalAbsListView;->mOldAdapterItemCount:I

    if-eq v2, v3, :cond_0

    .line 8212
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mSemPressItemListArray:Ljava/util/ArrayList;

    .line 8213
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->resetPressItemListArray()V

    .line 8214
    iget v2, p0, Landroid/widget/SemHorizontalAbsListView;->mItemCount:I

    iput v2, p0, Landroid/widget/SemHorizontalAbsListView;->mOldAdapterItemCount:I

    .line 8217
    :cond_0
    iget v2, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceMode:I

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v2, :cond_1

    invoke-interface {v2}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 8218
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->confirmCheckedPositionsById()V

    .line 8222
    :cond_1
    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mRecycler:Landroid/widget/SemHorizontalAbsListView$RecycleBin;

    invoke-virtual {v2}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->clearTransientStateViews()V

    .line 8224
    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-lez v0, :cond_f

    .line 8229
    iget-boolean v6, p0, Landroid/widget/SemHorizontalAbsListView;->mNeedSync:Z

    if-eqz v6, :cond_a

    .line 8231
    iput-boolean v4, p0, Landroid/widget/SemHorizontalAbsListView;->mNeedSync:Z

    .line 8232
    iput-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mPendingSync:Landroid/widget/SemHorizontalAbsListView$SavedState;

    .line 8234
    iget v6, p0, Landroid/widget/SemHorizontalAbsListView;->mTranscriptMode:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_2

    .line 8235
    iput v3, p0, Landroid/widget/SemHorizontalAbsListView;->mLayoutMode:I

    .line 8236
    return-void

    .line 8237
    :cond_2
    if-ne v6, v5, :cond_7

    .line 8238
    iget-boolean v6, p0, Landroid/widget/SemHorizontalAbsListView;->mForceTranscriptScroll:Z

    if-eqz v6, :cond_3

    .line 8239
    iput-boolean v4, p0, Landroid/widget/SemHorizontalAbsListView;->mForceTranscriptScroll:Z

    .line 8240
    iput v3, p0, Landroid/widget/SemHorizontalAbsListView;->mLayoutMode:I

    .line 8241
    return-void

    .line 8243
    :cond_3
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getChildCount()I

    move-result v6

    .line 8244
    .local v6, "childCount":I
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getWidth()I

    move-result v8

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getPaddingRight()I

    move-result v9

    sub-int/2addr v8, v9

    .line 8246
    .local v8, "listRight":I
    iget-boolean v9, p0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    if-eqz v9, :cond_4

    invoke-virtual {p0, v4}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .local v9, "lastChild":Landroid/view/View;
    goto :goto_0

    .line 8247
    .end local v9    # "lastChild":Landroid/view/View;
    :cond_4
    add-int/lit8 v9, v6, -0x1

    invoke-virtual {p0, v9}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 8249
    .restart local v9    # "lastChild":Landroid/view/View;
    :goto_0
    if-eqz v9, :cond_5

    invoke-virtual {v9}, Landroid/view/View;->getRight()I

    move-result v10

    goto :goto_1

    :cond_5
    move v10, v8

    .line 8250
    .local v10, "lastRight":I
    :goto_1
    iget v11, p0, Landroid/widget/SemHorizontalAbsListView;->mFirstPosition:I

    add-int/2addr v11, v6

    if-lt v11, v1, :cond_6

    if-gt v10, v8, :cond_6

    .line 8252
    iput v3, p0, Landroid/widget/SemHorizontalAbsListView;->mLayoutMode:I

    .line 8253
    return-void

    .line 8257
    :cond_6
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->awakenScrollBars()Z

    .line 8260
    .end local v6    # "childCount":I
    .end local v8    # "listRight":I
    .end local v9    # "lastChild":Landroid/view/View;
    .end local v10    # "lastRight":I
    :cond_7
    iget v6, p0, Landroid/widget/SemHorizontalAbsListView;->mSyncMode:I

    const/4 v8, 0x5

    packed-switch v6, :pswitch_data_0

    goto :goto_3

    .line 8301
    :pswitch_0
    iput v8, p0, Landroid/widget/SemHorizontalAbsListView;->mLayoutMode:I

    .line 8302
    iget v2, p0, Landroid/widget/SemHorizontalAbsListView;->mSyncPosition:I

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/lit8 v3, v0, -0x1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p0, Landroid/widget/SemHorizontalAbsListView;->mSyncPosition:I

    .line 8304
    return-void

    .line 8262
    :pswitch_1
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->isInTouchMode()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 8267
    iput v8, p0, Landroid/widget/SemHorizontalAbsListView;->mLayoutMode:I

    .line 8268
    iget v2, p0, Landroid/widget/SemHorizontalAbsListView;->mSyncPosition:I

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/lit8 v3, v0, -0x1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p0, Landroid/widget/SemHorizontalAbsListView;->mSyncPosition:I

    .line 8270
    return-void

    .line 8274
    :cond_8
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->findSyncPosition()I

    move-result v6

    .line 8275
    .local v6, "newPos":I
    if-ltz v6, :cond_a

    .line 8277
    invoke-virtual {p0, v6, v5}, Landroid/widget/SemHorizontalAbsListView;->lookForSelectablePosition(IZ)I

    move-result v9

    .line 8278
    .local v9, "selectablePos":I
    if-ne v9, v6, :cond_a

    .line 8280
    iput v6, p0, Landroid/widget/SemHorizontalAbsListView;->mSyncPosition:I

    .line 8282
    iget-wide v2, p0, Landroid/widget/SemHorizontalAbsListView;->mSyncHeight:J

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getWidth()I

    move-result v4

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_9

    .line 8285
    iput v8, p0, Landroid/widget/SemHorizontalAbsListView;->mLayoutMode:I

    goto :goto_2

    .line 8289
    :cond_9
    iput v7, p0, Landroid/widget/SemHorizontalAbsListView;->mLayoutMode:I

    .line 8293
    :goto_2
    invoke-virtual {p0, v6}, Landroid/widget/SemHorizontalAbsListView;->setNextSelectedPositionInt(I)V

    .line 8294
    return-void

    .line 8308
    .end local v6    # "newPos":I
    .end local v9    # "selectablePos":I
    :cond_a
    :goto_3
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->isInTouchMode()Z

    move-result v6

    if-nez v6, :cond_e

    .line 8310
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getSelectedItemPosition()I

    move-result v6

    .line 8313
    .restart local v6    # "newPos":I
    if-lt v6, v0, :cond_b

    .line 8314
    add-int/lit8 v6, v0, -0x1

    .line 8316
    :cond_b
    if-gez v6, :cond_c

    .line 8317
    const/4 v6, 0x0

    .line 8321
    :cond_c
    invoke-virtual {p0, v6, v5}, Landroid/widget/SemHorizontalAbsListView;->lookForSelectablePosition(IZ)I

    move-result v7

    .line 8323
    .local v7, "selectablePos":I
    if-ltz v7, :cond_d

    .line 8324
    invoke-virtual {p0, v7}, Landroid/widget/SemHorizontalAbsListView;->setNextSelectedPositionInt(I)V

    .line 8325
    return-void

    .line 8328
    :cond_d
    invoke-virtual {p0, v6, v4}, Landroid/widget/SemHorizontalAbsListView;->lookForSelectablePosition(IZ)I

    move-result v7

    .line 8329
    if-ltz v7, :cond_f

    .line 8330
    invoke-virtual {p0, v7}, Landroid/widget/SemHorizontalAbsListView;->setNextSelectedPositionInt(I)V

    .line 8331
    return-void

    .line 8337
    .end local v6    # "newPos":I
    .end local v7    # "selectablePos":I
    :cond_e
    iget v6, p0, Landroid/widget/SemHorizontalAbsListView;->mResurrectToPosition:I

    if-ltz v6, :cond_f

    .line 8338
    return-void

    .line 8345
    :cond_f
    iget-boolean v6, p0, Landroid/widget/SemHorizontalAbsListView;->mStackFromBottom:Z

    if-eqz v6, :cond_10

    goto :goto_4

    :cond_10
    move v3, v5

    :goto_4
    iput v3, p0, Landroid/widget/SemHorizontalAbsListView;->mLayoutMode:I

    .line 8346
    const/4 v3, -0x1

    iput v3, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectedPosition:I

    .line 8347
    const-wide/high16 v5, -0x8000000000000000L

    iput-wide v5, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectedRowId:J

    .line 8348
    iput v3, p0, Landroid/widget/SemHorizontalAbsListView;->mNextSelectedPosition:I

    .line 8349
    iput-wide v5, p0, Landroid/widget/SemHorizontalAbsListView;->mNextSelectedRowId:J

    .line 8350
    iput-boolean v4, p0, Landroid/widget/SemHorizontalAbsListView;->mNeedSync:Z

    .line 8351
    iput-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mPendingSync:Landroid/widget/SemHorizontalAbsListView$SavedState;

    .line 8352
    iput v3, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectorPosition:I

    .line 8353
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->checkSelectionChanged()V

    .line 8354
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public whitelist hasTextFilter()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 8843
    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFiltered:Z

    return v0
.end method

.method blacklist hideSelector()V
    .locals 3

    .line 7953
    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectedPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 7954
    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mLayoutMode:I

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    .line 7955
    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectedPosition:I

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mResurrectToPosition:I

    .line 7957
    :cond_0
    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mNextSelectedPosition:I

    if-ltz v0, :cond_1

    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mNextSelectedPosition:I

    iget v2, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectedPosition:I

    if-eq v0, v2, :cond_1

    .line 7958
    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mNextSelectedPosition:I

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mResurrectToPosition:I

    .line 7960
    :cond_1
    invoke-virtual {p0, v1}, Landroid/widget/SemHorizontalAbsListView;->setSelectedPositionInt(I)V

    .line 7961
    invoke-virtual {p0, v1}, Landroid/widget/SemHorizontalAbsListView;->setNextSelectedPositionInt(I)V

    .line 7962
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectedLeft:I

    .line 7964
    :cond_2
    return-void
.end method

.method public whitelist invalidateViews()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 8013
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mDataChanged:Z

    .line 8014
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->rememberSyncState()V

    .line 8015
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->requestLayout()V

    .line 8016
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->invalidate()V

    .line 8017
    return-void
.end method

.method blacklist invokeOnItemScrollListener()V
    .locals 4

    .line 2030
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScroll:Lcom/samsung/android/widget/SemHorizontalFastScroller;

    if-eqz v0, :cond_0

    .line 2031
    iget v1, p0, Landroid/widget/SemHorizontalAbsListView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getChildCount()I

    move-result v2

    iget v3, p0, Landroid/widget/SemHorizontalAbsListView;->mItemCount:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->onScroll(III)V

    .line 2033
    :cond_0
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mOnScrollListener:Landroid/widget/SemHorizontalAbsListView$OnScrollListener;

    if-eqz v0, :cond_1

    .line 2034
    iget v1, p0, Landroid/widget/SemHorizontalAbsListView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getChildCount()I

    move-result v2

    iget v3, p0, Landroid/widget/SemHorizontalAbsListView;->mItemCount:I

    invoke-interface {v0, p0, v1, v2, v3}, Landroid/widget/SemHorizontalAbsListView$OnScrollListener;->onScroll(Landroid/widget/SemHorizontalAbsListView;III)V

    .line 2036
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0, v0}, Landroid/widget/SemHorizontalAbsListView;->onScrollChanged(IIII)V

    .line 2037
    return-void
.end method

.method public whitelist isFastScrollAlwaysVisible()Z
    .locals 3
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1876
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScroll:Lcom/samsung/android/widget/SemHorizontalFastScroller;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 1877
    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScrollEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScrollAlwaysVisible:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    .line 1879
    :cond_1
    invoke-virtual {v0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScroll:Lcom/samsung/android/widget/SemHorizontalFastScroller;

    invoke-virtual {v0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->isAlwaysShowEnabled()Z

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

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1911
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScroll:Lcom/samsung/android/widget/SemHorizontalFastScroller;

    if-nez v0, :cond_0

    .line 1912
    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScrollEnabled:Z

    return v0

    .line 1914
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->isEnabled()Z

    move-result v0

    return v0
.end method

.method protected whitelist isInFilterMode()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 8489
    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFiltered:Z

    return v0
.end method

.method public whitelist isItemChecked(I)Z
    .locals 1
    .param p1, "position"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1340
    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceMode:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_0

    .line 1341
    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    return v0

    .line 1344
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isMultiFocusEnabled()Z
    .locals 1

    .line 10792
    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mIsMultiFocusEnabled:Z

    return v0
.end method

.method public blacklist isMultiWindows()Z
    .locals 2

    .line 1995
    const-string/jumbo v0, "sys.multiwindow.running"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected whitelist isPaddingOffsetRequired()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3633
    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mGroupFlags:I

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

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2217
    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mScrollingCacheEnabled:Z

    return v0
.end method

.method protected blacklist isSemUsingAdapterView()Z
    .locals 1

    .line 7459
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist isSmoothScrollbarEnabled()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2010
    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSmoothScrollbarEnabled:Z

    return v0
.end method

.method public whitelist isStackFromBottom()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2320
    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mStackFromBottom:Z

    return v0
.end method

.method public whitelist isTextFilterEnabled()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2273
    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mTextFilterEnabled:Z

    return v0
.end method

.method public whitelist jumpDrawablesToCurrentState()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4047
    invoke-super {p0}, Landroid/widget/AdapterView;->jumpDrawablesToCurrentState()V

    .line 4048
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 4049
    :cond_0
    return-void
.end method

.method blacklist keyPressed()V
    .locals 8

    .line 3867
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->isClickable()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 3871
    :cond_0
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 3872
    .local v0, "selector":Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 3873
    .local v1, "selectorRect":Landroid/graphics/Rect;
    if-eqz v0, :cond_7

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->isFocused()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->touchModeDrawsInPressedState()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 3874
    :cond_1
    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    .line 3876
    iget v2, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectedPosition:I

    iget v3, p0, Landroid/widget/SemHorizontalAbsListView;->mFirstPosition:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v2}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 3878
    .local v2, "v":Landroid/view/View;
    const/4 v3, 0x1

    if-eqz v2, :cond_3

    .line 3879
    invoke-virtual {v2}, Landroid/view/View;->hasExplicitFocusable()Z

    move-result v4

    if-eqz v4, :cond_2

    return-void

    .line 3880
    :cond_2
    invoke-virtual {v2, v3}, Landroid/view/View;->setPressed(Z)V

    .line 3882
    :cond_3
    invoke-virtual {p0, v3}, Landroid/widget/SemHorizontalAbsListView;->setPressed(Z)V

    .line 3884
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->isLongClickable()Z

    move-result v3

    .line 3885
    .local v3, "longClickable":Z
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 3886
    .local v4, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v4, :cond_5

    instance-of v5, v4, Landroid/graphics/drawable/TransitionDrawable;

    if-eqz v5, :cond_5

    .line 3887
    if-eqz v3, :cond_4

    .line 3888
    move-object v5, v4

    check-cast v5, Landroid/graphics/drawable/TransitionDrawable;

    .line 3889
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v6

    .line 3888
    invoke-virtual {v5, v6}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    goto :goto_0

    .line 3891
    :cond_4
    move-object v5, v4

    check-cast v5, Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    .line 3894
    :cond_5
    :goto_0
    if-eqz v3, :cond_7

    iget-boolean v5, p0, Landroid/widget/SemHorizontalAbsListView;->mDataChanged:Z

    if-nez v5, :cond_7

    .line 3895
    iget-object v5, p0, Landroid/widget/SemHorizontalAbsListView;->mPendingCheckForKeyLongPress:Landroid/widget/SemHorizontalAbsListView$CheckForKeyLongPress;

    if-nez v5, :cond_6

    .line 3896
    new-instance v5, Landroid/widget/SemHorizontalAbsListView$CheckForKeyLongPress;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Landroid/widget/SemHorizontalAbsListView$CheckForKeyLongPress;-><init>(Landroid/widget/SemHorizontalAbsListView;Landroid/widget/SemHorizontalAbsListView$CheckForKeyLongPress-IA;)V

    iput-object v5, p0, Landroid/widget/SemHorizontalAbsListView;->mPendingCheckForKeyLongPress:Landroid/widget/SemHorizontalAbsListView$CheckForKeyLongPress;

    goto :goto_1

    .line 3898
    :cond_6
    invoke-virtual {p0, v5}, Landroid/widget/SemHorizontalAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3900
    :goto_1
    iget-object v5, p0, Landroid/widget/SemHorizontalAbsListView;->mPendingCheckForKeyLongPress:Landroid/widget/SemHorizontalAbsListView$CheckForKeyLongPress;

    invoke-virtual {v5}, Landroid/widget/SemHorizontalAbsListView$CheckForKeyLongPress;->rememberWindowAttachCount()V

    .line 3901
    iget-object v5, p0, Landroid/widget/SemHorizontalAbsListView;->mPendingCheckForKeyLongPress:Landroid/widget/SemHorizontalAbsListView$CheckForKeyLongPress;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {p0, v5, v6, v7}, Landroid/widget/SemHorizontalAbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3904
    .end local v2    # "v":Landroid/view/View;
    .end local v3    # "longClickable":Z
    .end local v4    # "d":Landroid/graphics/drawable/Drawable;
    :cond_7
    return-void

    .line 3868
    .end local v0    # "selector":Landroid/graphics/drawable/Drawable;
    .end local v1    # "selectorRect":Landroid/graphics/Rect;
    :cond_8
    :goto_2
    return-void
.end method

.method protected whitelist layoutChildren()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3107
    return-void
.end method

.method blacklist obtainView(I[Z)Landroid/view/View;
    .locals 9
    .param p1, "position"    # I
    .param p2, "isScrap"    # [Z

    .line 3254
    const-wide/16 v0, 0x8

    const-string/jumbo v2, "obtainView"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 3256
    const/4 v2, 0x0

    aput-boolean v2, p2, v2

    .line 3260
    iget-object v3, p0, Landroid/widget/SemHorizontalAbsListView;->mRecycler:Landroid/widget/SemHorizontalAbsListView$RecycleBin;

    invoke-virtual {v3, p1}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->getTransientStateView(I)Landroid/view/View;

    move-result-object v3

    .line 3261
    .local v3, "transientView":Landroid/view/View;
    const/4 v4, 0x1

    if-eqz v3, :cond_4

    .line 3262
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/SemHorizontalAbsListView$LayoutParams;

    .line 3265
    .local v0, "params":Landroid/widget/SemHorizontalAbsListView$LayoutParams;
    iget v1, v0, Landroid/widget/SemHorizontalAbsListView$LayoutParams;->viewType:I

    iget-object v5, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v5, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v5

    if-ne v1, v5, :cond_3

    .line 3266
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, p1, v3, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 3268
    .local v1, "updatedView":Landroid/view/View;
    iget-boolean v5, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapterHasStableIds:Z

    if-eqz v5, :cond_2

    .line 3269
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 3271
    .local v5, "vlp":Landroid/view/ViewGroup$LayoutParams;
    if-nez v5, :cond_0

    .line 3272
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/SemHorizontalAbsListView$LayoutParams;

    .local v6, "lp":Landroid/widget/SemHorizontalAbsListView$LayoutParams;
    goto :goto_0

    .line 3273
    .end local v6    # "lp":Landroid/widget/SemHorizontalAbsListView$LayoutParams;
    :cond_0
    invoke-virtual {p0, v5}, Landroid/widget/SemHorizontalAbsListView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 3274
    invoke-virtual {p0, v5}, Landroid/widget/SemHorizontalAbsListView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/SemHorizontalAbsListView$LayoutParams;

    .restart local v6    # "lp":Landroid/widget/SemHorizontalAbsListView$LayoutParams;
    goto :goto_0

    .line 3276
    .end local v6    # "lp":Landroid/widget/SemHorizontalAbsListView$LayoutParams;
    :cond_1
    move-object v6, v5

    check-cast v6, Landroid/widget/SemHorizontalAbsListView$LayoutParams;

    .line 3278
    .restart local v6    # "lp":Landroid/widget/SemHorizontalAbsListView$LayoutParams;
    :goto_0
    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v7, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v7

    iput-wide v7, v6, Landroid/widget/SemHorizontalAbsListView$LayoutParams;->itemId:J

    .line 3279
    invoke-virtual {v3, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3283
    .end local v5    # "vlp":Landroid/view/ViewGroup$LayoutParams;
    .end local v6    # "lp":Landroid/widget/SemHorizontalAbsListView$LayoutParams;
    :cond_2
    if-eq v1, v3, :cond_3

    .line 3284
    invoke-direct {p0, v1, p1}, Landroid/widget/SemHorizontalAbsListView;->setItemViewLayoutParams(Landroid/view/View;I)V

    .line 3285
    iget-object v5, p0, Landroid/widget/SemHorizontalAbsListView;->mRecycler:Landroid/widget/SemHorizontalAbsListView$RecycleBin;

    invoke-virtual {v5, v1, p1}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 3290
    .end local v1    # "updatedView":Landroid/view/View;
    :cond_3
    aput-boolean v4, p2, v2

    .line 3291
    return-object v3

    .line 3294
    .end local v0    # "params":Landroid/widget/SemHorizontalAbsListView$LayoutParams;
    :cond_4
    iget-object v5, p0, Landroid/widget/SemHorizontalAbsListView;->mRecycler:Landroid/widget/SemHorizontalAbsListView$RecycleBin;

    invoke-virtual {v5, p1}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->getScrapView(I)Landroid/view/View;

    move-result-object v5

    .line 3295
    .local v5, "scrapView":Landroid/view/View;
    iget-object v6, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v6, p1, v5, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 3296
    .local v6, "child":Landroid/view/View;
    if-nez v6, :cond_5

    .line 3297
    const/4 v0, 0x0

    return-object v0

    .line 3299
    :cond_5
    if-eqz v5, :cond_8

    .line 3300
    if-eq v6, v5, :cond_7

    .line 3301
    invoke-virtual {v5}, Landroid/view/View;->isAccessibilityFocused()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 3302
    invoke-virtual {v5}, Landroid/view/View;->clearAccessibilityFocus()V

    .line 3303
    invoke-virtual {v6}, Landroid/view/View;->requestAccessibilityFocus()Z

    .line 3306
    :cond_6
    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mRecycler:Landroid/widget/SemHorizontalAbsListView$RecycleBin;

    invoke-virtual {v2, v5, p1}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    goto :goto_1

    .line 3308
    :cond_7
    aput-boolean v4, p2, v2

    .line 3310
    invoke-virtual {v6}, Landroid/view/View;->dispatchFinishTemporaryDetach()V

    .line 3314
    :cond_8
    :goto_1
    iget v2, p0, Landroid/widget/SemHorizontalAbsListView;->mCacheColorHint:I

    if-eqz v2, :cond_9

    .line 3315
    invoke-virtual {v6, v2}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 3318
    :cond_9
    invoke-virtual {v6}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v2

    if-nez v2, :cond_a

    .line 3319
    invoke-virtual {v6, v4}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 3322
    :cond_a
    invoke-direct {p0, v6, p1}, Landroid/widget/SemHorizontalAbsListView;->setItemViewLayoutParams(Landroid/view/View;I)V

    .line 3324
    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 3325
    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mAccessibilityDelegate:Landroid/widget/SemHorizontalAbsListView$ListItemAccessibilityDelegate;

    if-nez v2, :cond_b

    .line 3326
    new-instance v2, Landroid/widget/SemHorizontalAbsListView$ListItemAccessibilityDelegate;

    invoke-direct {v2, p0}, Landroid/widget/SemHorizontalAbsListView$ListItemAccessibilityDelegate;-><init>(Landroid/widget/SemHorizontalAbsListView;)V

    iput-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mAccessibilityDelegate:Landroid/widget/SemHorizontalAbsListView$ListItemAccessibilityDelegate;

    .line 3328
    :cond_b
    invoke-virtual {v6}, Landroid/view/View;->getAccessibilityDelegate()Landroid/view/View$AccessibilityDelegate;

    move-result-object v2

    if-nez v2, :cond_c

    .line 3329
    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mAccessibilityDelegate:Landroid/widget/SemHorizontalAbsListView$ListItemAccessibilityDelegate;

    invoke-virtual {v6, v2}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 3333
    :cond_c
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 3335
    return-object v6
.end method

.method protected whitelist onAttachedToWindow()V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4065
    invoke-super {p0}, Landroid/widget/AdapterView;->onAttachedToWindow()V

    .line 4067
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 4068
    .local v0, "treeObserver":Landroid/view/ViewTreeObserver;
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 4070
    iget-boolean v1, p0, Landroid/widget/SemHorizontalAbsListView;->mTextFilterEnabled:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroid/widget/SemHorizontalAbsListView;->mGlobalLayoutListenerAddedFilter:Z

    if-nez v1, :cond_0

    .line 4071
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 4074
    :cond_0
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mDataSetObserver:Landroid/widget/SemHorizontalAbsListView$AdapterDataSetObserver;

    if-nez v1, :cond_1

    .line 4075
    new-instance v1, Landroid/widget/SemHorizontalAbsListView$AdapterDataSetObserver;

    invoke-direct {v1, p0}, Landroid/widget/SemHorizontalAbsListView$AdapterDataSetObserver;-><init>(Landroid/widget/SemHorizontalAbsListView;)V

    iput-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mDataSetObserver:Landroid/widget/SemHorizontalAbsListView$AdapterDataSetObserver;

    .line 4076
    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, v1}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 4079
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/SemHorizontalAbsListView;->mDataChanged:Z

    .line 4080
    iget v1, p0, Landroid/widget/SemHorizontalAbsListView;->mItemCount:I

    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mOldItemCount:I

    .line 4081
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mItemCount:I

    .line 4084
    :cond_1
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScroll:Lcom/samsung/android/widget/SemHorizontalFastScroller;

    if-eqz v1, :cond_2

    .line 4085
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getVerticalScrollbarPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->setScrollbarPosition(I)V

    .line 4087
    :cond_2
    return-void
.end method

.method public whitelist onCancelPendingInputEvents()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4290
    invoke-super {p0}, Landroid/widget/AdapterView;->onCancelPendingInputEvents()V

    .line 4291
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPerformClick:Landroid/widget/SemHorizontalAbsListView$PerformClick;

    if-eqz v0, :cond_0

    .line 4292
    invoke-virtual {p0, v0}, Landroid/widget/SemHorizontalAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4294
    :cond_0
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPendingCheckForTap:Landroid/widget/SemHorizontalAbsListView$CheckForTap;

    if-eqz v0, :cond_1

    .line 4295
    invoke-virtual {p0, v0}, Landroid/widget/SemHorizontalAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4297
    :cond_1
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPendingCheckForLongPress:Landroid/widget/SemHorizontalAbsListView$CheckForLongPress;

    if-eqz v0, :cond_2

    .line 4298
    invoke-virtual {p0, v0}, Landroid/widget/SemHorizontalAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4300
    :cond_2
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPendingCheckForKeyLongPress:Landroid/widget/SemHorizontalAbsListView$CheckForKeyLongPress;

    if-eqz v0, :cond_3

    .line 4301
    invoke-virtual {p0, v0}, Landroid/widget/SemHorizontalAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4303
    :cond_3
    return-void
.end method

.method protected whitelist onCreateDrawableState(I)[I
    .locals 5
    .param p1, "extraSpace"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3981
    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mIsChildViewEnabled:Z

    if-eqz v0, :cond_0

    .line 3983
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onCreateDrawableState(I)[I

    move-result-object v0

    return-object v0

    .line 3989
    :cond_0
    sget-object v0, Landroid/widget/SemHorizontalAbsListView;->ENABLED_STATE_SET:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    .line 3994
    .local v0, "enabledState":I
    add-int/lit8 v1, p1, 0x1

    invoke-super {p0, v1}, Landroid/widget/AdapterView;->onCreateDrawableState(I)[I

    move-result-object v1

    .line 3995
    .local v1, "state":[I
    const/4 v2, -0x1

    .line 3996
    .local v2, "enabledPos":I
    array-length v3, v1

    add-int/lit8 v3, v3, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_2

    .line 3997
    aget v4, v1, v3

    if-ne v4, v0, :cond_1

    .line 3998
    move v2, v3

    .line 3999
    goto :goto_1

    .line 3996
    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 4004
    .end local v3    # "i":I
    :cond_2
    :goto_1
    if-ltz v2, :cond_3

    .line 4005
    add-int/lit8 v3, v2, 0x1

    array-length v4, v1

    sub-int/2addr v4, v2

    add-int/lit8 v4, v4, -0x1

    invoke-static {v1, v3, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4009
    :cond_3
    return-object v1
.end method

.method public whitelist onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 2
    .param p1, "outAttrs"    # Landroid/view/inputmethod/EditorInfo;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 8588
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->isTextFilterEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8589
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPublicInputConnection:Landroid/widget/SemHorizontalAbsListView$InputConnectionWrapper;

    if-nez v0, :cond_0

    .line 8590
    new-instance v0, Landroid/view/inputmethod/BaseInputConnection;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/view/inputmethod/BaseInputConnection;-><init>(Landroid/view/View;Z)V

    iput-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mDefInputConnection:Landroid/view/inputmethod/InputConnection;

    .line 8591
    new-instance v0, Landroid/widget/SemHorizontalAbsListView$InputConnectionWrapper;

    invoke-direct {v0, p0, p1}, Landroid/widget/SemHorizontalAbsListView$InputConnectionWrapper;-><init>(Landroid/widget/SemHorizontalAbsListView;Landroid/view/inputmethod/EditorInfo;)V

    iput-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPublicInputConnection:Landroid/widget/SemHorizontalAbsListView$InputConnectionWrapper;

    .line 8593
    :cond_0
    const/16 v0, 0xb1

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 8594
    const/4 v0, 0x6

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 8595
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPublicInputConnection:Landroid/widget/SemHorizontalAbsListView$InputConnectionWrapper;

    return-object v0

    .line 8597
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method protected whitelist onDetachedFromWindow()V
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4100
    invoke-super {p0}, Landroid/widget/AdapterView;->onDetachedFromWindow()V

    .line 4102
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mIsDetaching:Z

    .line 4105
    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->dismissPopup()V

    .line 4108
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mRecycler:Landroid/widget/SemHorizontalAbsListView$RecycleBin;

    invoke-virtual {v0}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->clear()V

    .line 4110
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 4111
    .local v0, "treeObserver":Landroid/view/ViewTreeObserver;
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 4112
    iget-boolean v1, p0, Landroid/widget/SemHorizontalAbsListView;->mTextFilterEnabled:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_0

    .line 4113
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 4114
    iput-boolean v2, p0, Landroid/widget/SemHorizontalAbsListView;->mGlobalLayoutListenerAddedFilter:Z

    .line 4117
    :cond_0
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    iget-object v4, p0, Landroid/widget/SemHorizontalAbsListView;->mDataSetObserver:Landroid/widget/SemHorizontalAbsListView$AdapterDataSetObserver;

    if-eqz v4, :cond_1

    .line 4118
    invoke-interface {v1, v4}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 4119
    iput-object v3, p0, Landroid/widget/SemHorizontalAbsListView;->mDataSetObserver:Landroid/widget/SemHorizontalAbsListView$AdapterDataSetObserver;

    .line 4122
    :cond_1
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v1, :cond_2

    .line 4123
    invoke-virtual {v1}, Landroid/os/StrictMode$Span;->finish()V

    .line 4124
    iput-object v3, p0, Landroid/widget/SemHorizontalAbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 4127
    :cond_2
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v1, :cond_3

    .line 4128
    invoke-virtual {v1}, Landroid/os/StrictMode$Span;->finish()V

    .line 4129
    iput-object v3, p0, Landroid/widget/SemHorizontalAbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 4132
    :cond_3
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mFlingRunnable:Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    if-eqz v1, :cond_4

    .line 4133
    invoke-virtual {p0, v1}, Landroid/widget/SemHorizontalAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4136
    :cond_4
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mPositionScroller:Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;

    if-eqz v1, :cond_5

    .line 4137
    invoke-virtual {v1}, Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;->stop()V

    .line 4140
    :cond_5
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mClearScrollingCache:Ljava/lang/Runnable;

    if-eqz v1, :cond_6

    .line 4141
    invoke-virtual {p0, v1}, Landroid/widget/SemHorizontalAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4144
    :cond_6
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mPerformClick:Landroid/widget/SemHorizontalAbsListView$PerformClick;

    if-eqz v1, :cond_7

    .line 4145
    invoke-virtual {p0, v1}, Landroid/widget/SemHorizontalAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4148
    :cond_7
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    if-eqz v1, :cond_8

    .line 4149
    invoke-virtual {p0, v1}, Landroid/widget/SemHorizontalAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4150
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 4153
    :cond_8
    iget v1, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    const/4 v3, -0x1

    if-eq v1, v3, :cond_9

    .line 4154
    iput v3, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    .line 4157
    :cond_9
    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->releaseAllBoosters()V

    .line 4158
    iput-boolean v2, p0, Landroid/widget/SemHorizontalAbsListView;->mIsDetaching:Z

    .line 4159
    return-void
.end method

.method protected whitelist onDisplayHint(I)V
    .locals 1
    .param p1, "hint"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 8370
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onDisplayHint(I)V

    .line 8371
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 8373
    :sswitch_0
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8374
    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->dismissPopup()V

    goto :goto_0

    .line 8378
    :sswitch_1
    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFiltered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 8379
    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->showPopup()V

    .line 8383
    :cond_0
    :goto_0
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPopupHidden:Z

    .line 8384
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
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 8971
    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectedPosition:I

    if-gez v0, :cond_0

    if-lez p1, :cond_0

    .line 8972
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mResurrectToPosition:I

    .line 8973
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->resurrectSelection()Z

    .line 8975
    :cond_0
    return-void
.end method

.method protected whitelist onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1
    .param p1, "gainFocus"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2715
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AdapterView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 2716
    if-eqz p1, :cond_1

    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectedPosition:I

    if-gez v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2717
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 2720
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mDataChanged:Z

    .line 2721
    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mItemCount:I

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mOldItemCount:I

    .line 2722
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mItemCount:I

    .line 2724
    :cond_0
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->resurrectSelection()Z

    .line 2726
    :cond_1
    return-void
.end method

.method public whitelist onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6546
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_4

    .line 6547
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 6549
    :pswitch_0
    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_4

    .line 6550
    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    .line 6551
    .local v0, "hscroll":F
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    .line 6552
    .local v1, "viewRootImpl":Landroid/view/ViewRootImpl;
    const/4 v2, 0x0

    cmpl-float v3, v0, v2

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    .line 6553
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getHorizontalScrollFactor()F

    move-result v2

    mul-float/2addr v2, v0

    float-to-int v2, v2

    .line 6554
    .local v2, "delta":I
    invoke-virtual {p0, v2, v2}, Landroid/widget/SemHorizontalAbsListView;->trackMotionScroll(II)Z

    move-result v3

    if-nez v3, :cond_0

    .line 6555
    return v4

    .line 6557
    .end local v2    # "delta":I
    :cond_0
    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->isDesktopMode()Z

    move-result v3

    if-nez v3, :cond_3

    .line 6558
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v3

    and-int/2addr v3, v4

    if-eqz v3, :cond_4

    .line 6559
    :cond_3
    const/16 v3, 0x9

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v3

    .line 6560
    .local v3, "vscroll":F
    cmpl-float v2, v3, v2

    if-eqz v2, :cond_4

    .line 6561
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getVerticalScrollFactor()F

    move-result v2

    mul-float/2addr v2, v3

    float-to-int v2, v2

    .line 6562
    .restart local v2    # "delta":I
    invoke-virtual {p0, v2, v2}, Landroid/widget/SemHorizontalAbsListView;->trackMotionScroll(II)Z

    move-result v5

    if-nez v5, :cond_4

    .line 6563
    return v4

    .line 6571
    .end local v0    # "hscroll":F
    .end local v1    # "viewRootImpl":Landroid/view/ViewRootImpl;
    .end local v2    # "delta":I
    .end local v3    # "vscroll":F
    :cond_4
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method public whitelist onGlobalLayout()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 8855
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8857
    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFiltered:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPopupHidden:Z

    if-nez v0, :cond_1

    .line 8858
    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->showPopup()V

    goto :goto_0

    .line 8862
    :cond_0
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8863
    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->dismissPopup()V

    .line 8867
    :cond_1
    :goto_0
    return-void
.end method

.method public whitelist onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2070
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2071
    const-class v0, Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 2072
    return-void
.end method

.method public whitelist onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2110
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2111
    const-class v0, Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 2112
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2113
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getFirstVisiblePosition()I

    move-result v0

    const/4 v1, 0x1

    if-lez v0, :cond_0

    .line 2114
    const/16 v0, 0x2000

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2115
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 2117
    :cond_0
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getLastVisiblePosition()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getCount()I

    move-result v2

    sub-int/2addr v2, v1

    if-ge v0, v2, :cond_1

    .line 2118
    const/16 v0, 0x1000

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2119
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 2122
    :cond_1
    return-void
.end method

.method public whitelist onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;ILandroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3440
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ListAdapter;

    .line 3441
    .local v0, "adapter":Landroid/widget/ListAdapter;
    const/4 v1, -0x1

    if-eq p2, v1, :cond_6

    if-nez v0, :cond_0

    goto :goto_2

    .line 3446
    :cond_0
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0, p2}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    .line 3451
    :cond_1
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getSelectedItemPosition()I

    move-result v1

    const/4 v2, 0x1

    if-ne p2, v1, :cond_2

    .line 3452
    invoke-virtual {p3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSelected(Z)V

    .line 3453
    const/16 v1, 0x8

    invoke-virtual {p3, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    goto :goto_0

    .line 3455
    :cond_2
    const/4 v1, 0x4

    invoke-virtual {p3, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 3458
    :goto_0
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->isClickable()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3459
    const/16 v1, 0x10

    invoke-virtual {p3, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 3460
    invoke-virtual {p3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    .line 3463
    :cond_3
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->isLongClickable()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3464
    const/16 v1, 0x20

    invoke-virtual {p3, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 3465
    invoke-virtual {p3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLongClickable(Z)V

    .line 3467
    :cond_4
    return-void

    .line 3447
    :cond_5
    :goto_1
    const/4 v1, 0x0

    invoke-virtual {p3, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    .line 3448
    return-void

    .line 3443
    :cond_6
    :goto_2
    return-void
.end method

.method public whitelist onInterceptHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6790
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScroll:Lcom/samsung/android/widget/SemHorizontalFastScroller;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->onInterceptHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6791
    const/4 v0, 0x1

    return v0

    .line 6794
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onInterceptHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public whitelist onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6833
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 6836
    .local v0, "actionMasked":I
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mPositionScroller:Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;

    if-eqz v1, :cond_0

    .line 6837
    invoke-virtual {v1}, Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;->stop()V

    .line 6840
    :cond_0
    iget-boolean v1, p0, Landroid/widget/SemHorizontalAbsListView;->mIsDetaching:Z

    const/4 v2, 0x0

    if-nez v1, :cond_9

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->isAttachedToWindow()Z

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_3

    .line 6848
    :cond_1
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScroll:Lcom/samsung/android/widget/SemHorizontalFastScroller;

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    invoke-virtual {v1, p1}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6849
    return v3

    .line 6852
    :cond_2
    const/4 v1, -0x1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_2

    .line 6917
    :pswitch_1
    invoke-direct {p0, p1}, Landroid/widget/SemHorizontalAbsListView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_2

    .line 6888
    :pswitch_2
    iget v4, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    packed-switch v4, :pswitch_data_1

    goto :goto_0

    .line 6890
    :pswitch_3
    iget v4, p0, Landroid/widget/SemHorizontalAbsListView;->mActivePointerId:I

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v4

    .line 6891
    .local v4, "pointerIndex":I
    if-ne v4, v1, :cond_3

    .line 6892
    const/4 v4, 0x0

    .line 6893
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mActivePointerId:I

    .line 6895
    :cond_3
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    float-to-int v1, v1

    .line 6896
    .local v1, "x":I
    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->initVelocityTrackerIfNotExists()V

    .line 6897
    iget-object v5, p0, Landroid/widget/SemHorizontalAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 6898
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    float-to-int v5, v5

    const/4 v6, 0x0

    invoke-direct {p0, v1, v5, v6}, Landroid/widget/SemHorizontalAbsListView;->startScrollIfNeeded(IILandroid/view/MotionEvent;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 6899
    return v3

    .line 6903
    .end local v1    # "x":I
    .end local v4    # "pointerIndex":I
    :cond_4
    :goto_0
    goto :goto_2

    .line 6908
    :pswitch_4
    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    .line 6909
    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mActivePointerId:I

    .line 6910
    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->recycleVelocityTracker()V

    .line 6911
    invoke-virtual {p0, v2}, Landroid/widget/SemHorizontalAbsListView;->reportScrollStateChange(I)V

    .line 6912
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->stopNestedScroll()V

    .line 6913
    goto :goto_2

    .line 6854
    :pswitch_5
    iget v1, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    .line 6855
    .local v1, "touchMode":I
    const/4 v4, 0x6

    if-eq v1, v4, :cond_7

    const/4 v4, 0x5

    if-ne v1, v4, :cond_5

    goto :goto_1

    .line 6860
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    .line 6861
    .local v4, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    .line 6862
    .local v5, "y":I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    iput v6, p0, Landroid/widget/SemHorizontalAbsListView;->mActivePointerId:I

    .line 6864
    invoke-virtual {p0, v4}, Landroid/widget/SemHorizontalAbsListView;->findMotionRow(I)I

    move-result v6

    .line 6865
    .local v6, "motionPosition":I
    const/4 v7, 0x4

    if-eq v1, v7, :cond_6

    if-ltz v6, :cond_6

    .line 6868
    iget v8, p0, Landroid/widget/SemHorizontalAbsListView;->mFirstPosition:I

    sub-int v8, v6, v8

    invoke-virtual {p0, v8}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 6869
    .local v8, "v":Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v9

    iput v9, p0, Landroid/widget/SemHorizontalAbsListView;->mMotionViewOriginalLeft:I

    .line 6870
    iput v4, p0, Landroid/widget/SemHorizontalAbsListView;->mMotionX:I

    .line 6871
    iput v5, p0, Landroid/widget/SemHorizontalAbsListView;->mMotionY:I

    .line 6872
    iput v6, p0, Landroid/widget/SemHorizontalAbsListView;->mMotionPosition:I

    .line 6873
    iput v2, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    .line 6874
    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->clearScrollingCache()V

    .line 6876
    .end local v8    # "v":Landroid/view/View;
    :cond_6
    const/high16 v8, -0x80000000

    iput v8, p0, Landroid/widget/SemHorizontalAbsListView;->mLastX:I

    .line 6877
    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->initOrResetVelocityTracker()V

    .line 6878
    iget-object v8, p0, Landroid/widget/SemHorizontalAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v8, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 6879
    iput v2, p0, Landroid/widget/SemHorizontalAbsListView;->mNestedXOffset:I

    .line 6880
    const/4 v8, 0x2

    invoke-virtual {p0, v8}, Landroid/widget/SemHorizontalAbsListView;->startNestedScroll(I)Z

    .line 6881
    if-ne v1, v7, :cond_8

    .line 6882
    return v3

    .line 6856
    .end local v4    # "x":I
    .end local v5    # "y":I
    .end local v6    # "motionPosition":I
    :cond_7
    :goto_1
    iput v2, p0, Landroid/widget/SemHorizontalAbsListView;->mMotionCorrection:I

    .line 6857
    return v3

    .line 6922
    .end local v1    # "touchMode":I
    :cond_8
    :goto_2
    return v2

    .line 6845
    :cond_9
    :goto_3
    return v2

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

    .line 6409
    const-string v0, "SemHorizontalAbsListView"

    const-string/jumbo v1, "onJumpScrollToTopFinished()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6410
    return-void
.end method

.method public whitelist onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4557
    const/4 v0, 0x1

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 4560
    :sswitch_0
    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mIsCtrlkeyPressed:Z

    .line 4561
    goto :goto_0

    .line 4564
    :sswitch_1
    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mIsShiftkeyPressed:Z

    .line 4565
    goto :goto_0

    .line 4567
    :sswitch_2
    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mIsCtrlkeyPressed:Z

    if-eqz v0, :cond_0

    .line 4568
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->resetPressItemListArray()V

    .line 4572
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
    .locals 7
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4593
    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectedPosition:I

    iget v1, p0, Landroid/widget/SemHorizontalAbsListView;->mFirstPosition:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 4596
    .local v0, "selectedview":Landroid/view/View;
    invoke-static {p1}, Landroid/view/KeyEvent;->isConfirmKey(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 4597
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->isEnabled()Z

    move-result v1

    const/4 v3, 0x1

    if-nez v1, :cond_0

    .line 4598
    return v3

    .line 4600
    :cond_0
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->isClickable()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->isPressed()Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectedPosition:I

    if-ltz v1, :cond_2

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_2

    iget v1, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectedPosition:I

    iget-object v4, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 4602
    invoke-interface {v4}, Landroid/widget/ListAdapter;->getCount()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 4604
    iget v1, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectedPosition:I

    iget v4, p0, Landroid/widget/SemHorizontalAbsListView;->mFirstPosition:I

    sub-int/2addr v1, v4

    invoke-virtual {p0, v1}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 4605
    .local v1, "view":Landroid/view/View;
    if-eqz v1, :cond_1

    .line 4606
    iget v4, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectedPosition:I

    iget-wide v5, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectedRowId:J

    invoke-virtual {p0, v1, v4, v5, v6}, Landroid/widget/SemHorizontalAbsListView;->performItemClick(Landroid/view/View;IJ)Z

    .line 4607
    invoke-virtual {v1, v2}, Landroid/view/View;->setPressed(Z)V

    .line 4609
    :cond_1
    invoke-virtual {p0, v2}, Landroid/widget/SemHorizontalAbsListView;->setPressed(Z)V

    .line 4610
    return v3

    .line 4614
    .end local v1    # "view":Landroid/view/View;
    :cond_2
    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_2

    .line 4657
    :sswitch_0
    iput-boolean v2, p0, Landroid/widget/SemHorizontalAbsListView;->mIsCtrlkeyPressed:Z

    .line 4658
    goto/16 :goto_2

    .line 4661
    :sswitch_1
    iput-boolean v2, p0, Landroid/widget/SemHorizontalAbsListView;->mIsShiftkeyPressed:Z

    .line 4662
    iput v2, p0, Landroid/widget/SemHorizontalAbsListView;->mOldKeyCode:I

    .line 4663
    iput v2, p0, Landroid/widget/SemHorizontalAbsListView;->mCurrentKeyCode:I

    .line 4664
    const/4 v1, -0x1

    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mFirstPressedPoint:I

    .line 4665
    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mSecondPressedPoint:I

    .line 4666
    goto/16 :goto_2

    .line 4668
    :sswitch_2
    iget-boolean v1, p0, Landroid/widget/SemHorizontalAbsListView;->mIsCtrlkeyPressed:Z

    if-eqz v1, :cond_7

    .line 4669
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->resetPressItemListArray()V

    goto :goto_2

    .line 4620
    :sswitch_3
    iget-boolean v1, p0, Landroid/widget/SemHorizontalAbsListView;->mIsShiftkeyPressed:Z

    if-eqz v1, :cond_4

    .line 4621
    iget v1, p0, Landroid/widget/SemHorizontalAbsListView;->mOldKeyCode:I

    if-nez v1, :cond_3

    .line 4622
    iput p1, p0, Landroid/widget/SemHorizontalAbsListView;->mOldKeyCode:I

    goto :goto_0

    .line 4624
    :cond_3
    iput p1, p0, Landroid/widget/SemHorizontalAbsListView;->mCurrentKeyCode:I

    .line 4628
    :cond_4
    :goto_0
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->isClickable()Z

    move-result v1

    if-eqz v1, :cond_7

    iget v1, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectedPosition:I

    if-ltz v1, :cond_7

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_7

    iget v1, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectedPosition:I

    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 4630
    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_7

    .line 4632
    iget v1, p0, Landroid/widget/SemHorizontalAbsListView;->mSemCurrentFocusPosition:I

    invoke-virtual {p0, v1}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 4634
    .local v1, "currentview":Landroid/view/View;
    iget-boolean v2, p0, Landroid/widget/SemHorizontalAbsListView;->mIsShiftkeyPressed:Z

    if-eqz v2, :cond_6

    if-eqz v0, :cond_6

    .line 4635
    iget v2, p0, Landroid/widget/SemHorizontalAbsListView;->mCurrentKeyCode:I

    if-nez v2, :cond_5

    .line 4636
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->resetPressItemListArray()V

    .line 4637
    iget v2, p0, Landroid/widget/SemHorizontalAbsListView;->mSemCurrentFocusPosition:I

    iget-wide v3, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectedRowId:J

    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/widget/SemHorizontalAbsListView;->semNotifyKeyPressState(Landroid/view/View;IJ)Z

    .line 4638
    iget v2, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectedPosition:I

    iget-wide v3, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectedRowId:J

    invoke-virtual {p0, v0, v2, v3, v4}, Landroid/widget/SemHorizontalAbsListView;->semNotifyKeyPressState(Landroid/view/View;IJ)Z

    .line 4639
    iget v2, p0, Landroid/widget/SemHorizontalAbsListView;->mSemCurrentFocusPosition:I

    iget v3, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectedPosition:I

    invoke-direct {p0, v2, v3}, Landroid/widget/SemHorizontalAbsListView;->addToPressItemListArray(II)V

    .line 4640
    iget v2, p0, Landroid/widget/SemHorizontalAbsListView;->mSemCurrentFocusPosition:I

    iput v2, p0, Landroid/widget/SemHorizontalAbsListView;->mFirstPressedPoint:I

    goto :goto_1

    .line 4642
    :cond_5
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->resetPressItemListArray()V

    .line 4643
    iget v2, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectedPosition:I

    iget-wide v3, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectedRowId:J

    invoke-virtual {p0, v0, v2, v3, v4}, Landroid/widget/SemHorizontalAbsListView;->semNotifyKeyPressState(Landroid/view/View;IJ)Z

    .line 4644
    iget v2, p0, Landroid/widget/SemHorizontalAbsListView;->mFirstPressedPoint:I

    iget v3, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectedPosition:I

    invoke-direct {p0, v2, v3}, Landroid/widget/SemHorizontalAbsListView;->addToPressItemListArray(II)V

    .line 4648
    :cond_6
    :goto_1
    iget v2, p0, Landroid/widget/SemHorizontalAbsListView;->mCurrentKeyCode:I

    if-eqz v2, :cond_7

    .line 4649
    iput v2, p0, Landroid/widget/SemHorizontalAbsListView;->mOldKeyCode:I

    .line 4675
    .end local v1    # "currentview":Landroid/view/View;
    :cond_7
    :goto_2
    invoke-super {p0, p1, p2}, Landroid/widget/AdapterView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1

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
    .locals 4
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3057
    invoke-super/range {p0 .. p5}, Landroid/widget/AdapterView;->onLayout(ZIIII)V

    .line 3059
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mInLayout:Z

    .line 3061
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getChildCount()I

    move-result v0

    .line 3062
    .local v0, "childCount":I
    if-eqz p1, :cond_1

    .line 3063
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 3064
    invoke-virtual {p0, v1}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->forceLayout()V

    .line 3063
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3066
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mRecycler:Landroid/widget/SemHorizontalAbsListView$RecycleBin;

    invoke-virtual {v1}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->markChildrenDirty()V

    .line 3069
    :cond_1
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->layoutChildren()V

    .line 3070
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/SemHorizontalAbsListView;->mInLayout:Z

    .line 3072
    sub-int v1, p4, p2

    div-int/lit8 v1, v1, 0x3

    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mOverscrollMax:I

    .line 3075
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScroll:Lcom/samsung/android/widget/SemHorizontalFastScroller;

    if-eqz v1, :cond_2

    .line 3076
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getChildCount()I

    move-result v2

    iget v3, p0, Landroid/widget/SemHorizontalAbsListView;->mItemCount:I

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->onItemCountChanged(II)V

    .line 3078
    :cond_2
    return-void
.end method

.method protected whitelist onMeasure(II)V
    .locals 9
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3027
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 3028
    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->useDefaultSelector()V

    .line 3030
    :cond_0
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 3031
    .local v0, "listPadding":Landroid/graphics/Rect;
    iget v1, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectionLeftPadding:I

    iget v2, p0, Landroid/widget/SemHorizontalAbsListView;->mPaddingLeft:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 3032
    iget v1, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectionTopPadding:I

    iget v2, p0, Landroid/widget/SemHorizontalAbsListView;->mPaddingTop:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 3033
    iget v1, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectionRightPadding:I

    iget v2, p0, Landroid/widget/SemHorizontalAbsListView;->mPaddingRight:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 3034
    iget v1, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectionBottomPadding:I

    iget v2, p0, Landroid/widget/SemHorizontalAbsListView;->mPaddingBottom:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 3037
    iget v1, p0, Landroid/widget/SemHorizontalAbsListView;->mTranscriptMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    .line 3038
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getChildCount()I

    move-result v1

    .line 3039
    .local v1, "childCount":I
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    .line 3040
    .local v3, "listRight":I
    iget-boolean v4, p0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    invoke-virtual {p0, v5}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    goto :goto_0

    :cond_1
    add-int/lit8 v4, v1, -0x1

    invoke-virtual {p0, v4}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 3042
    .local v4, "lastChild":Landroid/view/View;
    :goto_0
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v6

    goto :goto_1

    :cond_2
    move v6, v3

    .line 3043
    .local v6, "lastRight":I
    :goto_1
    iget v7, p0, Landroid/widget/SemHorizontalAbsListView;->mFirstPosition:I

    add-int/2addr v7, v1

    iget v8, p0, Landroid/widget/SemHorizontalAbsListView;->mLastHandledItemCount:I

    if-lt v7, v8, :cond_3

    if-gt v6, v3, :cond_3

    goto :goto_2

    :cond_3
    move v2, v5

    :goto_2
    iput-boolean v2, p0, Landroid/widget/SemHorizontalAbsListView;->mForceTranscriptScroll:Z

    .line 3046
    .end local v1    # "childCount":I
    .end local v3    # "listRight":I
    .end local v4    # "lastChild":Landroid/view/View;
    .end local v6    # "lastRight":I
    :cond_4
    return-void
.end method

.method public whitelist onNestedFling(Landroid/view/View;FFZ)Z
    .locals 3
    .param p1, "target"    # Landroid/view/View;
    .param p2, "velocityX"    # F
    .param p3, "velocityY"    # F
    .param p4, "consumed"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6653
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getChildCount()I

    move-result v0

    .line 6654
    .local v0, "childCount":I
    if-nez p4, :cond_2

    if-lez v0, :cond_2

    float-to-int v1, p2

    invoke-virtual {p0, v1}, Landroid/widget/SemHorizontalAbsListView;->canScrollList(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6655
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Landroid/widget/SemHorizontalAbsListView;->mMinimumVelocity:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    .line 6656
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Landroid/widget/SemHorizontalAbsListView;->reportScrollStateChange(I)V

    .line 6657
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mFlingRunnable:Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    if-nez v1, :cond_0

    .line 6658
    new-instance v1, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    invoke-direct {v1, p0}, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;-><init>(Landroid/widget/SemHorizontalAbsListView;)V

    iput-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mFlingRunnable:Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    .line 6660
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, p2, v1}, Landroid/widget/SemHorizontalAbsListView;->dispatchNestedPreFling(FF)Z

    move-result v1

    if-nez v1, :cond_1

    .line 6661
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mFlingRunnable:Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    float-to-int v2, p2

    invoke-virtual {v1, v2}, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->start(I)V

    .line 6663
    :cond_1
    const/4 v1, 0x1

    return v1

    .line 6665
    :cond_2
    invoke-virtual {p0, p2, p3, p4}, Landroid/widget/SemHorizontalAbsListView;->dispatchNestedFling(FFZ)Z

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

    .line 6615
    move-object v6, p0

    move/from16 v7, p4

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getChildCount()I

    move-result v0

    div-int/lit8 v8, v0, 0x2

    .line 6616
    .local v8, "motionIndex":I
    invoke-virtual {p0, v8}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 6617
    .local v9, "motionView":Landroid/view/View;
    if-eqz v9, :cond_0

    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v10, v0

    .line 6618
    .local v10, "oldLeft":I
    if-eqz v9, :cond_1

    neg-int v0, v7

    neg-int v1, v7

    invoke-virtual {p0, v0, v1}, Landroid/widget/SemHorizontalAbsListView;->trackMotionScroll(II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6619
    :cond_1
    move/from16 v0, p4

    .line 6620
    .local v0, "myUnconsumed":I
    const/4 v1, 0x0

    .line 6621
    .local v1, "myConsumed":I
    if-eqz v9, :cond_2

    .line 6622
    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int v1, v2, v10

    .line 6623
    sub-int/2addr v0, v1

    move v11, v0

    move v12, v1

    goto :goto_1

    .line 6621
    :cond_2
    move v11, v0

    move v12, v1

    .line 6625
    .end local v0    # "myUnconsumed":I
    .end local v1    # "myConsumed":I
    .local v11, "myUnconsumed":I
    .local v12, "myConsumed":I
    :goto_1
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, v12

    move v3, v11

    invoke-virtual/range {v0 .. v5}, Landroid/widget/SemHorizontalAbsListView;->dispatchNestedScroll(IIII[I)Z

    .line 6627
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

    .line 6605
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AdapterView;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V

    .line 6606
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/SemHorizontalAbsListView;->startNestedScroll(I)Z

    .line 6607
    return-void
.end method

.method protected whitelist onOverScrolled(IIZZ)V
    .locals 3
    .param p1, "scrollX"    # I
    .param p2, "scrollY"    # I
    .param p3, "clampedX"    # Z
    .param p4, "clampedY"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6495
    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mScrollX:I

    if-eq v0, p1, :cond_0

    .line 6496
    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mScrollY:I

    iget v1, p0, Landroid/widget/SemHorizontalAbsListView;->mScrollX:I

    iget v2, p0, Landroid/widget/SemHorizontalAbsListView;->mScrollY:I

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/widget/SemHorizontalAbsListView;->onScrollChanged(IIII)V

    .line 6497
    iput p1, p0, Landroid/widget/SemHorizontalAbsListView;->mScrollX:I

    .line 6498
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->invalidateParentIfNeeded()V

    .line 6500
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->awakenScrollBars()Z

    .line 6502
    :cond_0
    return-void
.end method

.method public whitelist onRemoteAdapterConnected()Z
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 9218
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    .line 9219
    invoke-virtual {p0, v0}, Landroid/widget/SemHorizontalAbsListView;->setAdapter(Landroid/widget/Adapter;)V

    .line 9220
    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mDeferNotifyDataSetChanged:Z

    if-eqz v0, :cond_0

    .line 9221
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v0}, Landroid/widget/RemoteViewsAdapter;->notifyDataSetChanged()V

    .line 9222
    iput-boolean v2, p0, Landroid/widget/SemHorizontalAbsListView;->mDeferNotifyDataSetChanged:Z

    .line 9224
    :cond_0
    return v2

    .line 9225
    :cond_1
    if-eqz v0, :cond_2

    .line 9226
    invoke-virtual {v0}, Landroid/widget/RemoteViewsAdapter;->superNotifyDataSetChanged()V

    .line 9227
    const/4 v0, 0x1

    return v0

    .line 9229
    :cond_2
    return v2
.end method

.method public whitelist onRemoteAdapterDisconnected()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 9245
    return-void
.end method

.method public whitelist onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 6
    .param p1, "state"    # Landroid/os/Parcelable;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2584
    instance-of v0, p1, Landroid/widget/SemHorizontalAbsListView$SavedState;

    if-eqz v0, :cond_0

    .line 2585
    move-object v0, p1

    check-cast v0, Landroid/widget/SemHorizontalAbsListView$SavedState;

    .local v0, "ss":Landroid/widget/SemHorizontalAbsListView$SavedState;
    goto :goto_0

    .line 2586
    .end local v0    # "ss":Landroid/widget/SemHorizontalAbsListView$SavedState;
    :cond_0
    instance-of v0, p1, Landroid/os/Bundle;

    if-eqz v0, :cond_6

    .line 2587
    move-object v0, p1

    check-cast v0, Landroid/os/Bundle;

    .line 2588
    .local v0, "wrappedSavedState":Landroid/os/Bundle;
    const-class v1, Landroid/widget/SemHorizontalAbsListView$SavedState;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 2589
    const-string v1, "android.widget.SemHorizontalAbsListView.SavedState"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/widget/SemHorizontalAbsListView$SavedState;

    .line 2590
    .local v0, "ss":Landroid/widget/SemHorizontalAbsListView$SavedState;
    nop

    .line 2597
    :goto_0
    invoke-virtual {v0}, Landroid/widget/SemHorizontalAbsListView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/AdapterView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 2598
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/SemHorizontalAbsListView;->mDataChanged:Z

    .line 2600
    iget v2, v0, Landroid/widget/SemHorizontalAbsListView$SavedState;->width:I

    int-to-long v2, v2

    iput-wide v2, p0, Landroid/widget/SemHorizontalAbsListView;->mSyncHeight:J

    .line 2602
    iget-wide v2, v0, Landroid/widget/SemHorizontalAbsListView$SavedState;->selectedId:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1

    .line 2603
    iput-boolean v1, p0, Landroid/widget/SemHorizontalAbsListView;->mNeedSync:Z

    .line 2604
    iput-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPendingSync:Landroid/widget/SemHorizontalAbsListView$SavedState;

    .line 2605
    iget-wide v1, v0, Landroid/widget/SemHorizontalAbsListView$SavedState;->selectedId:J

    iput-wide v1, p0, Landroid/widget/SemHorizontalAbsListView;->mSyncRowId:J

    .line 2606
    iget v1, v0, Landroid/widget/SemHorizontalAbsListView$SavedState;->position:I

    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mSyncPosition:I

    .line 2607
    iget v1, v0, Landroid/widget/SemHorizontalAbsListView$SavedState;->viewLeft:I

    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mSpecificTop:I

    .line 2608
    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mSyncMode:I

    goto :goto_1

    .line 2609
    :cond_1
    iget-wide v2, v0, Landroid/widget/SemHorizontalAbsListView$SavedState;->firstId:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_2

    .line 2610
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Landroid/widget/SemHorizontalAbsListView;->setSelectedPositionInt(I)V

    .line 2612
    invoke-virtual {p0, v2}, Landroid/widget/SemHorizontalAbsListView;->setNextSelectedPositionInt(I)V

    .line 2613
    iput v2, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectorPosition:I

    .line 2614
    iput-boolean v1, p0, Landroid/widget/SemHorizontalAbsListView;->mNeedSync:Z

    .line 2615
    iput-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPendingSync:Landroid/widget/SemHorizontalAbsListView$SavedState;

    .line 2616
    iget-wide v2, v0, Landroid/widget/SemHorizontalAbsListView$SavedState;->firstId:J

    iput-wide v2, p0, Landroid/widget/SemHorizontalAbsListView;->mSyncRowId:J

    .line 2617
    iget v2, v0, Landroid/widget/SemHorizontalAbsListView$SavedState;->position:I

    iput v2, p0, Landroid/widget/SemHorizontalAbsListView;->mSyncPosition:I

    .line 2618
    iget v2, v0, Landroid/widget/SemHorizontalAbsListView$SavedState;->viewLeft:I

    iput v2, p0, Landroid/widget/SemHorizontalAbsListView;->mSpecificTop:I

    .line 2619
    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mSyncMode:I

    .line 2622
    :cond_2
    :goto_1
    iget-object v1, v0, Landroid/widget/SemHorizontalAbsListView$SavedState;->filter:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/widget/SemHorizontalAbsListView;->setFilterText(Ljava/lang/String;)V

    .line 2624
    iget-object v1, v0, Landroid/widget/SemHorizontalAbsListView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    if-eqz v1, :cond_3

    .line 2625
    iget-object v1, v0, Landroid/widget/SemHorizontalAbsListView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    iput-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 2628
    :cond_3
    iget-object v1, v0, Landroid/widget/SemHorizontalAbsListView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    if-eqz v1, :cond_4

    .line 2629
    iget-object v1, v0, Landroid/widget/SemHorizontalAbsListView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    iput-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    .line 2632
    :cond_4
    iget v1, v0, Landroid/widget/SemHorizontalAbsListView$SavedState;->checkedItemCount:I

    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckedItemCount:I

    .line 2634
    iget-boolean v1, v0, Landroid/widget/SemHorizontalAbsListView$SavedState;->inActionMode:Z

    if-eqz v1, :cond_5

    iget v1, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceMode:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_5

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mMultiChoiceModeCallback:Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeWrapper;

    if-eqz v1, :cond_5

    .line 2636
    invoke-virtual {p0, v1}, Landroid/widget/SemHorizontalAbsListView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    .line 2639
    :cond_5
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->requestLayout()V

    .line 2640
    return-void

    .line 2592
    .end local v0    # "ss":Landroid/widget/SemHorizontalAbsListView$SavedState;
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SemHorizontalAbsListView.onRestoreInstanceState() is of neither SavedState type nor Bundle type, but of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " type"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemHorizontalAbsListView"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2593
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 2594
    return-void
.end method

.method public whitelist onRtlPropertiesChanged(I)V
    .locals 2
    .param p1, "layoutDirection"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4258
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onRtlPropertiesChanged(I)V

    .line 4260
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->isLayoutRtl()Z

    move-result v0

    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    .line 4262
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScroll:Lcom/samsung/android/widget/SemHorizontalFastScroller;

    if-eqz v0, :cond_0

    .line 4263
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->semGetHorizontalScrollbarPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->setScrollbarPosition(I)V

    .line 4265
    :cond_0
    return-void
.end method

.method public whitelist onSaveInstanceState()Landroid/os/Parcelable;
    .locals 11
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2468
    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->dismissPopup()V

    .line 2470
    invoke-super {p0}, Landroid/widget/AdapterView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 2472
    .local v0, "superState":Landroid/os/Parcelable;
    new-instance v1, Landroid/widget/SemHorizontalAbsListView$SavedState;

    invoke-direct {v1, v0}, Landroid/widget/SemHorizontalAbsListView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 2474
    .local v1, "ss":Landroid/widget/SemHorizontalAbsListView$SavedState;
    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mPendingSync:Landroid/widget/SemHorizontalAbsListView$SavedState;

    if-eqz v2, :cond_0

    .line 2476
    iget-wide v2, v2, Landroid/widget/SemHorizontalAbsListView$SavedState;->selectedId:J

    iput-wide v2, v1, Landroid/widget/SemHorizontalAbsListView$SavedState;->selectedId:J

    .line 2477
    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mPendingSync:Landroid/widget/SemHorizontalAbsListView$SavedState;

    iget-wide v2, v2, Landroid/widget/SemHorizontalAbsListView$SavedState;->firstId:J

    iput-wide v2, v1, Landroid/widget/SemHorizontalAbsListView$SavedState;->firstId:J

    .line 2478
    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mPendingSync:Landroid/widget/SemHorizontalAbsListView$SavedState;

    iget v2, v2, Landroid/widget/SemHorizontalAbsListView$SavedState;->viewLeft:I

    iput v2, v1, Landroid/widget/SemHorizontalAbsListView$SavedState;->viewLeft:I

    .line 2479
    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mPendingSync:Landroid/widget/SemHorizontalAbsListView$SavedState;

    iget v2, v2, Landroid/widget/SemHorizontalAbsListView$SavedState;->position:I

    iput v2, v1, Landroid/widget/SemHorizontalAbsListView$SavedState;->position:I

    .line 2480
    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mPendingSync:Landroid/widget/SemHorizontalAbsListView$SavedState;

    iget v2, v2, Landroid/widget/SemHorizontalAbsListView$SavedState;->width:I

    iput v2, v1, Landroid/widget/SemHorizontalAbsListView$SavedState;->width:I

    .line 2481
    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mPendingSync:Landroid/widget/SemHorizontalAbsListView$SavedState;

    iget-object v2, v2, Landroid/widget/SemHorizontalAbsListView$SavedState;->filter:Ljava/lang/String;

    iput-object v2, v1, Landroid/widget/SemHorizontalAbsListView$SavedState;->filter:Ljava/lang/String;

    .line 2482
    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mPendingSync:Landroid/widget/SemHorizontalAbsListView$SavedState;

    iget-boolean v2, v2, Landroid/widget/SemHorizontalAbsListView$SavedState;->inActionMode:Z

    iput-boolean v2, v1, Landroid/widget/SemHorizontalAbsListView$SavedState;->inActionMode:Z

    .line 2483
    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mPendingSync:Landroid/widget/SemHorizontalAbsListView$SavedState;

    iget v2, v2, Landroid/widget/SemHorizontalAbsListView$SavedState;->checkedItemCount:I

    iput v2, v1, Landroid/widget/SemHorizontalAbsListView$SavedState;->checkedItemCount:I

    .line 2484
    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mPendingSync:Landroid/widget/SemHorizontalAbsListView$SavedState;

    iget-object v2, v2, Landroid/widget/SemHorizontalAbsListView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    iput-object v2, v1, Landroid/widget/SemHorizontalAbsListView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    .line 2485
    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mPendingSync:Landroid/widget/SemHorizontalAbsListView$SavedState;

    iget-object v2, v2, Landroid/widget/SemHorizontalAbsListView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    iput-object v2, v1, Landroid/widget/SemHorizontalAbsListView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    .line 2486
    return-object v1

    .line 2489
    :cond_0
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getChildCount()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-lez v2, :cond_1

    iget v2, p0, Landroid/widget/SemHorizontalAbsListView;->mItemCount:I

    if-lez v2, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    move v2, v4

    .line 2490
    .local v2, "haveChildren":Z
    :goto_0
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getSelectedItemId()J

    move-result-wide v5

    .line 2491
    .local v5, "selectedId":J
    iput-wide v5, v1, Landroid/widget/SemHorizontalAbsListView$SavedState;->selectedId:J

    .line 2492
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getWidth()I

    move-result v7

    iput v7, v1, Landroid/widget/SemHorizontalAbsListView$SavedState;->width:I

    .line 2494
    const-wide/16 v7, 0x0

    cmp-long v7, v5, v7

    const-wide/16 v8, -0x1

    if-ltz v7, :cond_2

    .line 2496
    iget v7, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectedLeft:I

    iput v7, v1, Landroid/widget/SemHorizontalAbsListView$SavedState;->viewLeft:I

    .line 2497
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getSelectedItemPosition()I

    move-result v7

    iput v7, v1, Landroid/widget/SemHorizontalAbsListView$SavedState;->position:I

    .line 2498
    iput-wide v8, v1, Landroid/widget/SemHorizontalAbsListView$SavedState;->firstId:J

    goto :goto_1

    .line 2500
    :cond_2
    if-eqz v2, :cond_4

    iget v7, p0, Landroid/widget/SemHorizontalAbsListView;->mFirstPosition:I

    if-lez v7, :cond_4

    .line 2510
    invoke-virtual {p0, v4}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 2511
    .local v7, "v":Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v8

    iput v8, v1, Landroid/widget/SemHorizontalAbsListView$SavedState;->viewLeft:I

    .line 2512
    iget v8, p0, Landroid/widget/SemHorizontalAbsListView;->mFirstPosition:I

    .line 2513
    .local v8, "firstPos":I
    iget v9, p0, Landroid/widget/SemHorizontalAbsListView;->mItemCount:I

    if-lt v8, v9, :cond_3

    .line 2514
    iget v9, p0, Landroid/widget/SemHorizontalAbsListView;->mItemCount:I

    add-int/lit8 v8, v9, -0x1

    .line 2516
    :cond_3
    iput v8, v1, Landroid/widget/SemHorizontalAbsListView$SavedState;->position:I

    .line 2517
    iget-object v9, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v9, v8}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v9

    iput-wide v9, v1, Landroid/widget/SemHorizontalAbsListView$SavedState;->firstId:J

    .line 2518
    .end local v7    # "v":Landroid/view/View;
    .end local v8    # "firstPos":I
    goto :goto_1

    .line 2519
    :cond_4
    iput v4, v1, Landroid/widget/SemHorizontalAbsListView$SavedState;->viewLeft:I

    .line 2520
    iput-wide v8, v1, Landroid/widget/SemHorizontalAbsListView$SavedState;->firstId:J

    .line 2521
    iput v4, v1, Landroid/widget/SemHorizontalAbsListView$SavedState;->position:I

    .line 2525
    :goto_1
    const/4 v7, 0x0

    iput-object v7, v1, Landroid/widget/SemHorizontalAbsListView$SavedState;->filter:Ljava/lang/String;

    .line 2526
    iget-boolean v7, p0, Landroid/widget/SemHorizontalAbsListView;->mFiltered:Z

    if-eqz v7, :cond_5

    .line 2527
    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mTextFilter:Landroid/widget/EditText;

    .line 2528
    .local v7, "textFilter":Landroid/widget/EditText;
    if-eqz v7, :cond_5

    .line 2529
    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    .line 2530
    .local v8, "filterText":Landroid/text/Editable;
    if-eqz v8, :cond_5

    .line 2531
    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v1, Landroid/widget/SemHorizontalAbsListView$SavedState;->filter:Ljava/lang/String;

    .line 2536
    .end local v7    # "textFilter":Landroid/widget/EditText;
    .end local v8    # "filterText":Landroid/text/Editable;
    :cond_5
    iget v7, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceMode:I

    const/4 v8, 0x3

    if-ne v7, v8, :cond_6

    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v7, :cond_6

    goto :goto_2

    :cond_6
    move v3, v4

    :goto_2
    iput-boolean v3, v1, Landroid/widget/SemHorizontalAbsListView$SavedState;->inActionMode:Z

    .line 2538
    iget-object v3, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v3, :cond_7

    .line 2539
    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->clone()Landroid/util/SparseBooleanArray;

    move-result-object v3

    iput-object v3, v1, Landroid/widget/SemHorizontalAbsListView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    .line 2541
    :cond_7
    iget-object v3, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v3, :cond_9

    .line 2542
    new-instance v3, Landroid/util/LongSparseArray;

    invoke-direct {v3}, Landroid/util/LongSparseArray;-><init>()V

    .line 2543
    .local v3, "idState":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Integer;>;"
    iget-object v4, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v4}, Landroid/util/LongSparseArray;->size()I

    move-result v4

    .line 2544
    .local v4, "count":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_3
    if-ge v7, v4, :cond_8

    .line 2545
    iget-object v8, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v8, v7}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v8

    iget-object v10, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v10, v7}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v3, v8, v9, v10}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 2544
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 2547
    .end local v7    # "i":I
    :cond_8
    iput-object v3, v1, Landroid/widget/SemHorizontalAbsListView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    .line 2549
    .end local v3    # "idState":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Integer;>;"
    .end local v4    # "count":I
    :cond_9
    iget v3, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckedItemCount:I

    iput v3, v1, Landroid/widget/SemHorizontalAbsListView$SavedState;->checkedItemCount:I

    .line 2551
    iget-object v3, p0, Landroid/widget/SemHorizontalAbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    if-eqz v3, :cond_a

    .line 2552
    invoke-virtual {v3}, Landroid/widget/RemoteViewsAdapter;->saveRemoteViewsCache()V

    .line 2559
    :cond_a
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 2560
    .local v3, "wrappedSavedState":Landroid/os/Bundle;
    const-string v4, "android.widget.SemHorizontalAbsListView.SavedState"

    invoke-virtual {v3, v4, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2562
    return-object v3
.end method

.method protected whitelist onSizeChanged(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3723
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 3724
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mDataChanged:Z

    .line 3725
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->rememberSyncState()V

    .line 3728
    :cond_0
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScroll:Lcom/samsung/android/widget/SemHorizontalFastScroller;

    if-eqz v0, :cond_1

    .line 3729
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->onSizeChanged(IIII)V

    .line 3731
    :cond_1
    return-void
.end method

.method public whitelist onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "nestedScrollAxes"    # I

    .line 6597
    and-int/lit8 v0, p3, 0x1

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
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 8910
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->isTextFilterEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8911
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/widget/SemHorizontalAbsListView;->createTextFilter(Z)V

    .line 8912
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 8913
    .local v1, "length":I
    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    .line 8914
    .local v2, "showing":Z
    if-nez v2, :cond_0

    if-lez v1, :cond_0

    .line 8916
    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->showPopup()V

    .line 8917
    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFiltered:Z

    goto :goto_0

    .line 8918
    :cond_0
    if-eqz v2, :cond_1

    if-nez v1, :cond_1

    .line 8920
    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->dismissPopup()V

    .line 8921
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFiltered:Z

    .line 8923
    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v3, v0, Landroid/widget/Filterable;

    if-eqz v3, :cond_3

    .line 8924
    check-cast v0, Landroid/widget/Filterable;

    invoke-interface {v0}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    .line 8926
    .local v0, "f":Landroid/widget/Filter;
    if-eqz v0, :cond_2

    .line 8927
    invoke-virtual {v0, p1, p0}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterListener;)V

    goto :goto_1

    .line 8929
    :cond_2
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "You cannot call onTextChanged with a non filterable adapter"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 8934
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
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5952
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->isEnabled()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_2

    .line 5955
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->isClickable()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->isLongClickable()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :cond_1
    :goto_0
    return v1

    .line 5958
    :cond_2
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPositionScroller:Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;

    if-eqz v0, :cond_3

    .line 5959
    invoke-virtual {v0}, Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;->stop()V

    .line 5962
    :cond_3
    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mIsDetaching:Z

    if-nez v0, :cond_b

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_4

    goto/16 :goto_2

    .line 5970
    :cond_4
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/widget/SemHorizontalAbsListView;->startNestedScroll(I)Z

    .line 5972
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScroll:Lcom/samsung/android/widget/SemHorizontalFastScroller;

    if-eqz v0, :cond_5

    .line 5973
    invoke-virtual {v0, p1}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 5974
    .local v0, "intercepted":Z
    if-eqz v0, :cond_5

    .line 5975
    return v1

    .line 5979
    .end local v0    # "intercepted":Z
    :cond_5
    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->initVelocityTrackerIfNotExists()V

    .line 5980
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 5982
    .local v0, "vtev":Landroid/view/MotionEvent;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    .line 5983
    .local v3, "actionMasked":I
    if-nez v3, :cond_6

    .line 5984
    iput v2, p0, Landroid/widget/SemHorizontalAbsListView;->mNestedXOffset:I

    .line 5986
    :cond_6
    iget v4, p0, Landroid/widget/SemHorizontalAbsListView;->mNestedXOffset:I

    int-to-float v4, v4

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 5987
    packed-switch v3, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_1

    .line 6009
    :pswitch_1
    invoke-direct {p0, p1}, Landroid/widget/SemHorizontalAbsListView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 6010
    iget v2, p0, Landroid/widget/SemHorizontalAbsListView;->mMotionX:I

    .line 6011
    .local v2, "x":I
    iget v4, p0, Landroid/widget/SemHorizontalAbsListView;->mMotionY:I

    .line 6012
    .local v4, "y":I
    invoke-virtual {p0, v2, v4}, Landroid/widget/SemHorizontalAbsListView;->pointToPosition(II)I

    move-result v5

    .line 6013
    .local v5, "motionPosition":I
    if-ltz v5, :cond_8

    .line 6015
    iget v6, p0, Landroid/widget/SemHorizontalAbsListView;->mFirstPosition:I

    sub-int v6, v5, v6

    invoke-virtual {p0, v6}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 6016
    .local v6, "child":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v7

    iput v7, p0, Landroid/widget/SemHorizontalAbsListView;->mMotionViewOriginalLeft:I

    .line 6017
    iput v5, p0, Landroid/widget/SemHorizontalAbsListView;->mMotionPosition:I

    .line 6018
    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v7, :cond_7

    invoke-interface {v7, v5}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-virtual {v6}, Landroid/view/View;->hasFocusable()Z

    move-result v7

    if-nez v7, :cond_7

    .line 6019
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->layoutChildren()V

    .line 6021
    .end local v6    # "child":Landroid/view/View;
    :cond_7
    goto :goto_1

    .line 6022
    :cond_8
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->layoutChildren()V

    .line 6025
    goto :goto_1

    .line 6030
    .end local v2    # "x":I
    .end local v4    # "y":I
    .end local v5    # "motionPosition":I
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v4

    .line 6031
    .local v4, "index":I
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    .line 6032
    .local v5, "id":I
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    float-to-int v6, v6

    .line 6033
    .local v6, "x":I
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    float-to-int v7, v7

    .line 6034
    .local v7, "y":I
    iput v2, p0, Landroid/widget/SemHorizontalAbsListView;->mMotionCorrection:I

    .line 6035
    iput v5, p0, Landroid/widget/SemHorizontalAbsListView;->mActivePointerId:I

    .line 6036
    iput v6, p0, Landroid/widget/SemHorizontalAbsListView;->mMotionX:I

    .line 6037
    iput v7, p0, Landroid/widget/SemHorizontalAbsListView;->mMotionY:I

    .line 6038
    invoke-virtual {p0, v6, v7}, Landroid/widget/SemHorizontalAbsListView;->pointToPosition(II)I

    move-result v2

    .line 6039
    .local v2, "motionPosition":I
    if-ltz v2, :cond_9

    .line 6041
    iget v8, p0, Landroid/widget/SemHorizontalAbsListView;->mFirstPosition:I

    sub-int v8, v2, v8

    invoke-virtual {p0, v8}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 6042
    .local v8, "child":Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v9

    iput v9, p0, Landroid/widget/SemHorizontalAbsListView;->mMotionViewOriginalLeft:I

    .line 6043
    iput v2, p0, Landroid/widget/SemHorizontalAbsListView;->mMotionPosition:I

    .line 6045
    .end local v8    # "child":Landroid/view/View;
    :cond_9
    iput v6, p0, Landroid/widget/SemHorizontalAbsListView;->mLastX:I

    .line 6046
    goto :goto_1

    .line 6004
    .end local v2    # "motionPosition":I
    .end local v4    # "index":I
    .end local v5    # "id":I
    .end local v6    # "x":I
    .end local v7    # "y":I
    :pswitch_3
    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->onTouchCancel()V

    .line 6005
    goto :goto_1

    .line 5994
    :pswitch_4
    invoke-direct {p0, p1, v0}, Landroid/widget/SemHorizontalAbsListView;->onTouchMove(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)V

    .line 5995
    goto :goto_1

    .line 5999
    :pswitch_5
    invoke-direct {p0, p1}, Landroid/widget/SemHorizontalAbsListView;->onTouchUp(Landroid/view/MotionEvent;)V

    .line 6000
    goto :goto_1

    .line 5989
    :pswitch_6
    invoke-direct {p0, p1}, Landroid/widget/SemHorizontalAbsListView;->onTouchDown(Landroid/view/MotionEvent;)V

    .line 5990
    nop

    .line 6050
    :goto_1
    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v2, :cond_a

    .line 6051
    invoke-virtual {v2, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 6053
    :cond_a
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 6054
    return v1

    .line 5967
    .end local v0    # "vtev":Landroid/view/MotionEvent;
    .end local v3    # "actionMasked":I
    :cond_b
    :goto_2
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
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5064
    if-eqz p1, :cond_1

    .line 5066
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->hideSelector()V

    .line 5070
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 5073
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->layoutChildren()V

    .line 5075
    :cond_0
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->updateSelectorState()V

    goto :goto_0

    .line 5077
    :cond_1
    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    .line 5078
    .local v0, "touchMode":I
    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    const/4 v1, 0x6

    if-ne v0, v1, :cond_5

    .line 5079
    :cond_2
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mFlingRunnable:Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    if-eqz v1, :cond_3

    .line 5080
    invoke-virtual {v1}, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->endFling()V

    .line 5082
    :cond_3
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mPositionScroller:Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;

    if-eqz v1, :cond_4

    .line 5083
    invoke-virtual {v1}, Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;->stop()V

    .line 5086
    :cond_4
    iget v1, p0, Landroid/widget/SemHorizontalAbsListView;->mScrollX:I

    if-eqz v1, :cond_5

    .line 5087
    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mScrollX:I

    .line 5088
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->invalidateParentCaches()V

    .line 5089
    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->finishGlows()V

    .line 5090
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->invalidate()V

    .line 5094
    .end local v0    # "touchMode":I
    :cond_5
    :goto_0
    return-void
.end method

.method protected whitelist onVisibilityChanged(Landroid/view/View;I)V
    .locals 1
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 10627
    invoke-super {p0, p1, p2}, Landroid/widget/AdapterView;->onVisibilityChanged(Landroid/view/View;I)V

    .line 10628
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverPosition:I

    .line 10630
    if-eqz p2, :cond_0

    .line 10631
    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->releaseAllBoosters()V

    .line 10633
    :cond_0
    return-void
.end method

.method public whitelist onWindowFocusChanged(Z)V
    .locals 5
    .param p1, "hasWindowFocus"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4176
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onWindowFocusChanged(Z)V

    .line 4181
    iput-boolean p1, p0, Landroid/widget/SemHorizontalAbsListView;->mHasWindowFocusForMotion:Z

    .line 4183
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->isInTouchMode()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 4185
    .local v0, "touchMode":I
    const/4 v2, 0x0

    if-nez p1, :cond_2

    .line 4186
    invoke-virtual {p0, v2}, Landroid/widget/SemHorizontalAbsListView;->setChildrenDrawingCacheEnabled(Z)V

    .line 4187
    iget-object v3, p0, Landroid/widget/SemHorizontalAbsListView;->mFlingRunnable:Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    if-eqz v3, :cond_1

    .line 4188
    invoke-virtual {p0, v3}, Landroid/widget/SemHorizontalAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4191
    iget-object v3, p0, Landroid/widget/SemHorizontalAbsListView;->mFlingRunnable:Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    invoke-virtual {v3}, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->endFling()V

    .line 4192
    iget-object v3, p0, Landroid/widget/SemHorizontalAbsListView;->mPositionScroller:Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;

    if-eqz v3, :cond_0

    .line 4193
    invoke-virtual {v3}, Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;->stop()V

    .line 4195
    :cond_0
    iget v3, p0, Landroid/widget/SemHorizontalAbsListView;->mScrollY:I

    if-eqz v3, :cond_1

    .line 4196
    iput v2, p0, Landroid/widget/SemHorizontalAbsListView;->mScrollY:I

    .line 4197
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->invalidateParentCaches()V

    .line 4198
    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->finishGlows()V

    .line 4199
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->invalidate()V

    .line 4203
    :cond_1
    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->dismissPopup()V

    .line 4205
    if-ne v0, v1, :cond_5

    .line 4207
    iget v1, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectedPosition:I

    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mResurrectToPosition:I

    goto :goto_0

    .line 4211
    :cond_2
    iget-boolean v3, p0, Landroid/widget/SemHorizontalAbsListView;->mFiltered:Z

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Landroid/widget/SemHorizontalAbsListView;->mPopupHidden:Z

    if-nez v3, :cond_3

    .line 4213
    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->showPopup()V

    .line 4217
    :cond_3
    iget v3, p0, Landroid/widget/SemHorizontalAbsListView;->mLastTouchMode:I

    if-eq v0, v3, :cond_5

    const/4 v4, -0x1

    if-eq v3, v4, :cond_5

    .line 4219
    if-ne v0, v1, :cond_4

    .line 4221
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->resurrectSelection()Z

    goto :goto_0

    .line 4225
    :cond_4
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->hideSelector()V

    .line 4226
    iput v2, p0, Landroid/widget/SemHorizontalAbsListView;->mLayoutMode:I

    .line 4227
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->layoutChildren()V

    .line 4232
    :cond_5
    :goto_0
    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mLastTouchMode:I

    .line 4234
    if-nez p1, :cond_6

    .line 4235
    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->releaseAllBoosters()V

    .line 4237
    :cond_6
    return-void
.end method

.method public whitelist performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 5
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2163
    invoke-super {p0, p1, p2}, Landroid/widget/AdapterView;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2164
    return v1

    .line 2166
    :cond_0
    const/16 v0, 0xc8

    const/4 v2, 0x0

    sparse-switch p1, :sswitch_data_0

    .line 2184
    return v2

    .line 2176
    :sswitch_0
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, p0, Landroid/widget/SemHorizontalAbsListView;->mFirstPosition:I

    if-lez v3, :cond_1

    .line 2177
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getWidth()I

    move-result v2

    iget-object v3, p0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v3

    .line 2178
    .local v2, "viewportWidth":I
    neg-int v3, v2

    invoke-virtual {p0, v3, v0}, Landroid/widget/SemHorizontalAbsListView;->smoothScrollBy(II)V

    .line 2179
    return v1

    .line 2182
    .end local v2    # "viewportWidth":I
    :cond_1
    return v2

    .line 2168
    :sswitch_1
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getLastVisiblePosition()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getCount()I

    move-result v4

    sub-int/2addr v4, v1

    if-ge v3, v4, :cond_2

    .line 2169
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getWidth()I

    move-result v2

    iget-object v3, p0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v3

    .line 2170
    .restart local v2    # "viewportWidth":I
    invoke-virtual {p0, v2, v0}, Landroid/widget/SemHorizontalAbsListView;->smoothScrollBy(II)V

    .line 2171
    return v1

    .line 2174
    .end local v2    # "viewportWidth":I
    :cond_2
    return v2

    nop

    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_1
        0x2000 -> :sswitch_0
    .end sparse-switch
.end method

.method public whitelist performItemClick(Landroid/view/View;IJ)Z
    .locals 12
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1527
    move-object v0, p0

    move v7, p2

    const/4 v1, 0x0

    .line 1528
    .local v1, "handled":Z
    const/4 v8, 0x1

    .line 1530
    .local v8, "dispatchItemClick":Z
    iget v2, v0, Landroid/widget/SemHorizontalAbsListView;->mChoiceMode:I

    if-eqz v2, :cond_c

    .line 1531
    const/4 v9, 0x1

    .line 1532
    .end local v1    # "handled":Z
    .local v9, "handled":Z
    const/4 v10, 0x0

    .line 1534
    .local v10, "checkedStateChanged":Z
    iget-object v1, v0, Landroid/widget/SemHorizontalAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_6

    const/4 v5, 0x2

    if-eq v2, v5, :cond_0

    const/4 v5, 0x3

    if-ne v2, v5, :cond_6

    iget-object v5, v0, Landroid/widget/SemHorizontalAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v5, :cond_6

    .line 1536
    :cond_0
    invoke-virtual {v1, p2, v3}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v1

    xor-int/2addr v1, v4

    move v11, v1

    .line 1537
    .local v11, "checked":Z
    iget-object v1, v0, Landroid/widget/SemHorizontalAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p2, v11}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1538
    iget-object v1, v0, Landroid/widget/SemHorizontalAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v1, :cond_2

    iget-object v1, v0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1539
    if-eqz v11, :cond_1

    .line 1540
    iget-object v1, v0, Landroid/widget/SemHorizontalAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v2, v0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_0

    .line 1542
    :cond_1
    iget-object v1, v0, Landroid/widget/SemHorizontalAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v2, v0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/util/LongSparseArray;->delete(J)V

    .line 1545
    :cond_2
    :goto_0
    if-eqz v11, :cond_3

    .line 1546
    iget v1, v0, Landroid/widget/SemHorizontalAbsListView;->mCheckedItemCount:I

    add-int/2addr v1, v4

    iput v1, v0, Landroid/widget/SemHorizontalAbsListView;->mCheckedItemCount:I

    goto :goto_1

    .line 1548
    :cond_3
    iget v1, v0, Landroid/widget/SemHorizontalAbsListView;->mCheckedItemCount:I

    sub-int/2addr v1, v4

    iput v1, v0, Landroid/widget/SemHorizontalAbsListView;->mCheckedItemCount:I

    .line 1550
    :goto_1
    iget-object v2, v0, Landroid/widget/SemHorizontalAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v2, :cond_4

    .line 1551
    iget-object v1, v0, Landroid/widget/SemHorizontalAbsListView;->mMultiChoiceModeCallback:Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeWrapper;

    move v3, p2

    move-wide v4, p3

    move v6, v11

    invoke-virtual/range {v1 .. v6}, Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeWrapper;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    .line 1553
    const/4 v8, 0x0

    .line 1555
    :cond_4
    const/4 v10, 0x1

    .line 1556
    .end local v11    # "checked":Z
    :cond_5
    goto :goto_3

    :cond_6
    if-eqz v1, :cond_5

    if-ne v2, v4, :cond_5

    .line 1557
    invoke-virtual {v1, p2, v3}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v1

    xor-int/2addr v1, v4

    .line 1558
    .local v1, "checked":Z
    if-eqz v1, :cond_8

    .line 1559
    iget-object v2, v0, Landroid/widget/SemHorizontalAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->clear()V

    .line 1560
    iget-object v2, v0, Landroid/widget/SemHorizontalAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p2, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1561
    iget-object v2, v0, Landroid/widget/SemHorizontalAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v2, :cond_7

    iget-object v2, v0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1562
    iget-object v2, v0, Landroid/widget/SemHorizontalAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v2}, Landroid/util/LongSparseArray;->clear()V

    .line 1563
    iget-object v2, v0, Landroid/widget/SemHorizontalAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v3, v0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v5, v6, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1565
    :cond_7
    iput v4, v0, Landroid/widget/SemHorizontalAbsListView;->mCheckedItemCount:I

    goto :goto_2

    .line 1566
    :cond_8
    iget-object v2, v0, Landroid/widget/SemHorizontalAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, v0, Landroid/widget/SemHorizontalAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v3}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v2

    if-nez v2, :cond_a

    .line 1567
    :cond_9
    iput v3, v0, Landroid/widget/SemHorizontalAbsListView;->mCheckedItemCount:I

    .line 1569
    :cond_a
    :goto_2
    const/4 v10, 0x1

    .line 1572
    .end local v1    # "checked":Z
    :goto_3
    if-eqz v10, :cond_b

    .line 1573
    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->updateOnScreenCheckedViews()V

    .line 1577
    .end local v10    # "checkedStateChanged":Z
    :cond_b
    move v1, v9

    .end local v9    # "handled":Z
    .local v1, "handled":Z
    :cond_c
    if-eqz v8, :cond_d

    .line 1578
    invoke-super/range {p0 .. p4}, Landroid/widget/AdapterView;->performItemClick(Landroid/view/View;IJ)Z

    move-result v2

    or-int/2addr v1, v2

    .line 1581
    :cond_d
    return v1
.end method

.method blacklist performLongPress(Landroid/view/View;IJ)Z
    .locals 9
    .param p1, "child"    # Landroid/view/View;
    .param p2, "longPressPosition"    # I
    .param p3, "longPressId"    # J

    .line 4442
    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceMode:I

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-ne v0, v1, :cond_2

    .line 4443
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mMultiChoiceModeCallback:Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeWrapper;

    .line 4444
    invoke-virtual {p0, v0}, Landroid/widget/SemHorizontalAbsListView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_1

    .line 4446
    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceMode:I

    if-ne v0, v1, :cond_0

    .line 4447
    iput-boolean v2, p0, Landroid/widget/SemHorizontalAbsListView;->mIsDragBlockEnabled:Z

    .line 4449
    :cond_0
    invoke-virtual {p0, p2, v2}, Landroid/widget/SemHorizontalAbsListView;->setItemChecked(IZ)V

    .line 4450
    invoke-static {v2}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/SemHorizontalAbsListView;->performHapticFeedback(I)Z

    .line 4452
    :cond_1
    return v2

    .line 4455
    :cond_2
    const/4 v0, 0x0

    .line 4456
    .local v0, "handled":Z
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    if-eqz v1, :cond_3

    .line 4457
    iget-object v3, p0, Landroid/widget/SemHorizontalAbsListView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    move-object v4, p0

    move-object v5, p1

    move v6, p2

    move-wide v7, p3

    invoke-interface/range {v3 .. v8}, Landroid/widget/AdapterView$OnItemLongClickListener;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result v0

    .line 4460
    :cond_3
    if-nez v0, :cond_4

    .line 4461
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/SemHorizontalAbsListView;->createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 4462
    invoke-super {p0, p0}, Landroid/widget/AdapterView;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v0

    .line 4464
    :cond_4
    if-eqz v0, :cond_6

    .line 4465
    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->semGetEnableVibrationAtLongPress()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 4466
    invoke-static {v2}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/SemHorizontalAbsListView;->performHapticFeedback(I)Z

    goto :goto_0

    .line 4468
    :cond_5
    const-string v1, "SemHorizontalAbsListView"

    const-string v2, " does not need vibration"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4471
    :cond_6
    :goto_0
    return v0
.end method

.method public whitelist pointToPosition(II)I
    .locals 7
    .param p1, "x"    # I
    .param p2, "y"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4706
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchFrame:Landroid/graphics/Rect;

    .line 4707
    .local v0, "frame":Landroid/graphics/Rect;
    if-nez v0, :cond_0

    .line 4708
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchFrame:Landroid/graphics/Rect;

    .line 4709
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchFrame:Landroid/graphics/Rect;

    .line 4711
    :cond_0
    instance-of v1, p0, Landroid/widget/SemHorizontalListView;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    move-object v1, p0

    check-cast v1, Landroid/widget/SemHorizontalListView;

    iget v1, v1, Landroid/widget/SemHorizontalListView;->mDividerHeight:I

    goto :goto_0

    :cond_1
    move v1, v2

    .line 4712
    .local v1, "dividerHeight":I
    :goto_0
    if-lez v1, :cond_2

    move-object v3, p0

    check-cast v3, Landroid/widget/SemHorizontalListView;

    iget-object v3, v3, Landroid/widget/SemHorizontalListView;->mDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_2

    const/4 v2, 0x1

    .line 4714
    .local v2, "drawDividers":Z
    :cond_2
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getChildCount()I

    move-result v3

    .line 4715
    .local v3, "count":I
    add-int/lit8 v4, v3, -0x1

    .local v4, "i":I
    :goto_1
    if-ltz v4, :cond_5

    .line 4716
    invoke-virtual {p0, v4}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 4717
    .local v5, "child":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_4

    .line 4718
    invoke-virtual {v5, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 4719
    if-eqz v2, :cond_3

    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, v1

    iput v6, v0, Landroid/graphics/Rect;->bottom:I

    .line 4721
    :cond_3
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 4722
    iget v6, p0, Landroid/widget/SemHorizontalAbsListView;->mFirstPosition:I

    add-int/2addr v6, v4

    return v6

    .line 4715
    .end local v5    # "child":Landroid/view/View;
    :cond_4
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 4726
    .end local v4    # "i":I
    :cond_5
    const/4 v4, -0x1

    return v4
.end method

.method public whitelist pointToRowId(II)J
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4742
    invoke-virtual {p0, p1, p2}, Landroid/widget/SemHorizontalAbsListView;->pointToPosition(II)I

    move-result v0

    .line 4743
    .local v0, "position":I
    if-ltz v0, :cond_0

    .line 4744
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, v0}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v1

    return-wide v1

    .line 4746
    :cond_0
    const-wide/high16 v1, -0x8000000000000000L

    return-wide v1
.end method

.method blacklist positionSelector(ILandroid/view/View;)V
    .locals 6
    .param p1, "position"    # I
    .param p2, "sel"    # Landroid/view/View;

    .line 3495
    const/4 v3, 0x0

    const/high16 v4, -0x40800000    # -1.0f

    const/high16 v5, -0x40800000    # -1.0f

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/SemHorizontalAbsListView;->positionSelector(ILandroid/view/View;ZFF)V

    .line 3496
    return-void
.end method

.method blacklist positionSelectorLikeFocus(ILandroid/view/View;)V
    .locals 9
    .param p1, "position"    # I
    .param p2, "sel"    # Landroid/view/View;

    .line 3484
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectorPosition:I

    if-eq v0, p1, :cond_0

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 3485
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 3486
    .local v0, "bounds":Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v7

    .line 3487
    .local v7, "x":F
    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v8

    .line 3488
    .local v8, "y":F
    const/4 v4, 0x1

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v5, v7

    move v6, v8

    invoke-direct/range {v1 .. v6}, Landroid/widget/SemHorizontalAbsListView;->positionSelector(ILandroid/view/View;ZFF)V

    .line 3489
    .end local v0    # "bounds":Landroid/graphics/Rect;
    .end local v7    # "x":F
    .end local v8    # "y":F
    goto :goto_0

    .line 3490
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/widget/SemHorizontalAbsListView;->positionSelector(ILandroid/view/View;)V

    .line 3492
    :goto_0
    return-void
.end method

.method blacklist positionSelectorLikeTouch(ILandroid/view/View;FF)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "sel"    # Landroid/view/View;
    .param p3, "x"    # F
    .param p4, "y"    # F

    .line 3473
    invoke-virtual {p0, p1, p2}, Landroid/widget/SemHorizontalAbsListView;->positionSelectorLikeFocus(ILandroid/view/View;)V

    .line 3475
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    .line 3476
    invoke-virtual {v0, p3, p4}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 3478
    :cond_0
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

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 9118
    .local p1, "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getChildCount()I

    move-result v0

    .line 9119
    .local v0, "childCount":I
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mRecycler:Landroid/widget/SemHorizontalAbsListView$RecycleBin;

    invoke-static {v1}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->-$$Nest$fgetmRecyclerListener(Landroid/widget/SemHorizontalAbsListView$RecycleBin;)Landroid/widget/SemHorizontalAbsListView$RecyclerListener;

    move-result-object v1

    .line 9122
    .local v1, "listener":Landroid/widget/SemHorizontalAbsListView$RecyclerListener;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 9123
    invoke-virtual {p0, v2}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 9124
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/SemHorizontalAbsListView$LayoutParams;

    .line 9126
    .local v4, "lp":Landroid/widget/SemHorizontalAbsListView$LayoutParams;
    if-eqz v4, :cond_0

    iget-object v5, p0, Landroid/widget/SemHorizontalAbsListView;->mRecycler:Landroid/widget/SemHorizontalAbsListView$RecycleBin;

    iget v6, v4, Landroid/widget/SemHorizontalAbsListView$LayoutParams;->viewType:I

    invoke-virtual {v5, v6}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 9127
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9128
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 9129
    if-eqz v1, :cond_0

    .line 9131
    invoke-interface {v1, v3}, Landroid/widget/SemHorizontalAbsListView$RecyclerListener;->onMovedToScrapHeap(Landroid/view/View;)V

    .line 9122
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "lp":Landroid/widget/SemHorizontalAbsListView$LayoutParams;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 9135
    .end local v2    # "i":I
    :cond_1
    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mRecycler:Landroid/widget/SemHorizontalAbsListView$RecycleBin;

    invoke-virtual {v2, p1}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->reclaimScrapViews(Ljava/util/List;)V

    .line 9136
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->removeAllViewsInLayout()V

    .line 9137
    return-void
.end method

.method blacklist reconcileSelectedPosition()I
    .locals 2

    .line 7972
    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectedPosition:I

    .line 7973
    .local v0, "position":I
    if-gez v0, :cond_0

    .line 7974
    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mResurrectToPosition:I

    .line 7976
    :cond_0
    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 7977
    iget v1, p0, Landroid/widget/SemHorizontalAbsListView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 7978
    return v0
.end method

.method blacklist rememberSyncState()V
    .locals 0

    .line 10867
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->rememberSyncStateHorizontal()V

    .line 10868
    return-void
.end method

.method blacklist removePendingCallbacks()V
    .locals 2

    .line 6436
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 6437
    .local v0, "handler":Landroid/os/Handler;
    if-eqz v0, :cond_0

    .line 6438
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mPendingCheckForTap:Landroid/widget/SemHorizontalAbsListView$CheckForTap;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6439
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mPendingCheckForLongPress:Landroid/widget/SemHorizontalAbsListView$CheckForLongPress;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6441
    :cond_0
    const/4 v1, -0x1

    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    .line 6442
    return-void
.end method

.method public blacklist reportScrollStateChange(I)V
    .locals 2
    .param p1, "newState"    # I

    .line 6980
    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mLastScrollState:I

    if-eq p1, v0, :cond_2

    .line 6982
    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverAreaEnter:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSemScrollingByScrollbar:Z

    if-nez v0, :cond_1

    .line 6983
    if-eqz p1, :cond_0

    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mLastScrollState:I

    if-nez v0, :cond_0

    .line 6985
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/samsung/android/os/SemPerfManager;->onScrollEvent(Z)V

    .line 6986
    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mDVFSLockAcquired:Z

    .line 6988
    :cond_0
    if-nez p1, :cond_1

    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mLastScrollState:I

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mDVFSLockAcquired:Z

    if-eqz v0, :cond_1

    .line 6991
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/samsung/android/os/SemPerfManager;->onScrollEvent(Z)V

    .line 6992
    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mDVFSLockAcquired:Z

    .line 6996
    :cond_1
    iput p1, p0, Landroid/widget/SemHorizontalAbsListView;->mLastScrollState:I

    .line 6997
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mOnScrollListener:Landroid/widget/SemHorizontalAbsListView$OnScrollListener;

    if-eqz v0, :cond_2

    iget-boolean v1, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverAreaEnter:Z

    if-nez v1, :cond_2

    .line 6999
    invoke-interface {v0, p0, p1}, Landroid/widget/SemHorizontalAbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/SemHorizontalAbsListView;I)V

    .line 7002
    :cond_2
    return-void
.end method

.method blacklist requestLayoutIfNecessary()V
    .locals 1

    .line 2341
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 2342
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->resetList()V

    .line 2343
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->requestLayout()V

    .line 2344
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->invalidate()V

    .line 2346
    :cond_0
    return-void
.end method

.method blacklist resetList()V
    .locals 4

    .line 2732
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->removeAllViewsInLayout()V

    .line 2733
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFirstPosition:I

    .line 2735
    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mDataChanged:Z

    .line 2736
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    .line 2737
    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mNeedSync:Z

    .line 2738
    iput-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mPendingSync:Landroid/widget/SemHorizontalAbsListView$SavedState;

    .line 2739
    const/4 v1, -0x1

    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mOldSelectedPosition:I

    .line 2740
    const-wide/high16 v2, -0x8000000000000000L

    iput-wide v2, p0, Landroid/widget/SemHorizontalAbsListView;->mOldSelectedRowId:J

    .line 2741
    invoke-virtual {p0, v1}, Landroid/widget/SemHorizontalAbsListView;->setSelectedPositionInt(I)V

    .line 2742
    invoke-virtual {p0, v1}, Landroid/widget/SemHorizontalAbsListView;->setNextSelectedPositionInt(I)V

    .line 2743
    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectedLeft:I

    .line 2744
    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectorPosition:I

    .line 2745
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 2746
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->invalidate()V

    .line 2747
    return-void
.end method

.method public blacklist resetPressItemListArray()V
    .locals 1

    .line 10852
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_0

    .line 10853
    return-void

    .line 10856
    :cond_0
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSemPressItemListArray:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 10857
    return-void

    .line 10859
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 10860
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->invalidate()V

    .line 10861
    return-void
.end method

.method blacklist resurrectSelection()Z
    .locals 17

    .line 8045
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->getChildCount()I

    move-result v1

    .line 8047
    .local v1, "childCount":I
    const/4 v2, 0x0

    if-gtz v1, :cond_0

    .line 8048
    return v2

    .line 8051
    :cond_0
    const/4 v3, 0x0

    .line 8052
    .local v3, "selectedLeft":I
    const/4 v4, 0x0

    .line 8054
    .local v4, "selectedRight":I
    iget-object v5, v0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    .line 8055
    .local v5, "childrenLeft":I
    iget v6, v0, Landroid/widget/SemHorizontalAbsListView;->mRight:I

    iget v7, v0, Landroid/widget/SemHorizontalAbsListView;->mLeft:I

    sub-int/2addr v6, v7

    iget-object v7, v0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    sub-int/2addr v6, v7

    .line 8056
    .local v6, "childrenRight":I
    iget v7, v0, Landroid/widget/SemHorizontalAbsListView;->mFirstPosition:I

    .line 8057
    .local v7, "firstPosition":I
    iget v8, v0, Landroid/widget/SemHorizontalAbsListView;->mResurrectToPosition:I

    .line 8058
    .local v8, "toPosition":I
    const/4 v9, 0x1

    .line 8060
    .local v9, "rightSide":Z
    const/4 v10, 0x1

    if-lt v8, v7, :cond_3

    add-int v11, v7, v1

    if-ge v8, v11, :cond_3

    .line 8061
    move v11, v8

    .line 8063
    .local v11, "selectedPos":I
    iget v12, v0, Landroid/widget/SemHorizontalAbsListView;->mFirstPosition:I

    sub-int v12, v11, v12

    invoke-virtual {v0, v12}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 8064
    .local v12, "selected":Landroid/view/View;
    invoke-virtual {v12}, Landroid/view/View;->getLeft()I

    move-result v3

    .line 8065
    invoke-virtual {v12}, Landroid/view/View;->getRight()I

    move-result v4

    .line 8068
    if-ge v3, v5, :cond_1

    .line 8069
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->getHorizontalFadingEdgeLength()I

    move-result v13

    add-int v3, v5, v13

    goto :goto_0

    .line 8070
    :cond_1
    if-le v4, v6, :cond_2

    .line 8071
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    sub-int v13, v6, v13

    .line 8072
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->getHorizontalFadingEdgeLength()I

    move-result v14

    sub-int v3, v13, v14

    .line 8074
    .end local v12    # "selected":Landroid/view/View;
    :cond_2
    :goto_0
    goto/16 :goto_6

    .line 8075
    .end local v11    # "selectedPos":I
    :cond_3
    if-ge v8, v7, :cond_8

    .line 8077
    move v11, v7

    .line 8078
    .restart local v11    # "selectedPos":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1
    if-ge v12, v1, :cond_7

    .line 8079
    invoke-virtual {v0, v12}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 8080
    .local v13, "v":Landroid/view/View;
    invoke-virtual {v13}, Landroid/view/View;->getLeft()I

    move-result v14

    .line 8081
    .local v14, "left":I
    invoke-virtual {v13}, Landroid/view/View;->getRight()I

    move-result v15

    .line 8083
    .local v15, "right":I
    if-nez v12, :cond_5

    .line 8085
    move v3, v14

    .line 8086
    move v4, v15

    .line 8088
    if-gtz v7, :cond_4

    if-ge v14, v5, :cond_5

    .line 8091
    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->getHorizontalFadingEdgeLength()I

    move-result v16

    add-int v5, v5, v16

    .line 8094
    :cond_5
    if-lt v14, v5, :cond_6

    .line 8096
    add-int v11, v7, v12

    .line 8097
    move v3, v14

    .line 8098
    move v4, v15

    .line 8099
    goto :goto_2

    .line 8078
    .end local v13    # "v":Landroid/view/View;
    .end local v14    # "left":I
    .end local v15    # "right":I
    :cond_6
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .end local v12    # "i":I
    :cond_7
    :goto_2
    goto :goto_6

    .line 8103
    .end local v11    # "selectedPos":I
    :cond_8
    iget v11, v0, Landroid/widget/SemHorizontalAbsListView;->mItemCount:I

    .line 8104
    .local v11, "itemCount":I
    const/4 v9, 0x0

    .line 8105
    add-int v12, v7, v1

    sub-int/2addr v12, v10

    .line 8107
    .local v12, "selectedPos":I
    add-int/lit8 v13, v1, -0x1

    .local v13, "i":I
    :goto_3
    if-ltz v13, :cond_d

    .line 8108
    invoke-virtual {v0, v13}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    .line 8109
    .local v14, "v":Landroid/view/View;
    invoke-virtual {v14}, Landroid/view/View;->getLeft()I

    move-result v15

    .line 8110
    .local v15, "left":I
    invoke-virtual {v14}, Landroid/view/View;->getRight()I

    move-result v10

    .line 8112
    .local v10, "right":I
    add-int/lit8 v2, v1, -0x1

    if-ne v13, v2, :cond_b

    .line 8113
    move v2, v15

    .line 8114
    .end local v3    # "selectedLeft":I
    .local v2, "selectedLeft":I
    move v3, v10

    .line 8115
    .end local v4    # "selectedRight":I
    .local v3, "selectedRight":I
    add-int v4, v7, v1

    if-lt v4, v11, :cond_a

    if-le v10, v6, :cond_9

    goto :goto_4

    :cond_9
    move v4, v3

    move v3, v2

    goto :goto_5

    .line 8116
    :cond_a
    :goto_4
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->getHorizontalFadingEdgeLength()I

    move-result v4

    sub-int/2addr v6, v4

    move v4, v3

    move v3, v2

    .line 8120
    .end local v2    # "selectedLeft":I
    .local v3, "selectedLeft":I
    .restart local v4    # "selectedRight":I
    :cond_b
    :goto_5
    if-gt v10, v6, :cond_c

    .line 8121
    add-int v2, v7, v13

    .line 8122
    .end local v12    # "selectedPos":I
    .local v2, "selectedPos":I
    move v3, v15

    .line 8123
    move v4, v10

    .line 8124
    move v11, v2

    goto :goto_6

    .line 8107
    .end local v2    # "selectedPos":I
    .end local v10    # "right":I
    .end local v14    # "v":Landroid/view/View;
    .end local v15    # "left":I
    .restart local v12    # "selectedPos":I
    :cond_c
    add-int/lit8 v13, v13, -0x1

    const/4 v2, 0x0

    const/4 v10, 0x1

    goto :goto_3

    :cond_d
    move v11, v12

    .line 8130
    .end local v12    # "selectedPos":I
    .end local v13    # "i":I
    .local v11, "selectedPos":I
    :goto_6
    const/4 v2, -0x1

    iput v2, v0, Landroid/widget/SemHorizontalAbsListView;->mResurrectToPosition:I

    .line 8131
    iget-object v10, v0, Landroid/widget/SemHorizontalAbsListView;->mFlingRunnable:Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    invoke-virtual {v0, v10}, Landroid/widget/SemHorizontalAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 8132
    iget-object v10, v0, Landroid/widget/SemHorizontalAbsListView;->mPositionScroller:Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;

    if-eqz v10, :cond_e

    .line 8133
    invoke-virtual {v10}, Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;->stop()V

    .line 8135
    :cond_e
    iput v2, v0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    .line 8136
    invoke-direct/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->clearScrollingCache()V

    .line 8137
    iget-boolean v2, v0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    if-eqz v2, :cond_f

    iput v4, v0, Landroid/widget/SemHorizontalAbsListView;->mSpecificTop:I

    goto :goto_7

    .line 8138
    :cond_f
    iput v3, v0, Landroid/widget/SemHorizontalAbsListView;->mSpecificTop:I

    .line 8139
    :goto_7
    invoke-virtual {v0, v11, v9}, Landroid/widget/SemHorizontalAbsListView;->lookForSelectablePosition(IZ)I

    move-result v2

    .line 8140
    .end local v11    # "selectedPos":I
    .restart local v2    # "selectedPos":I
    if-lt v2, v7, :cond_10

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->getLastVisiblePosition()I

    move-result v10

    if-gt v2, v10, :cond_10

    .line 8141
    const/4 v10, 0x4

    iput v10, v0, Landroid/widget/SemHorizontalAbsListView;->mLayoutMode:I

    .line 8142
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->updateSelectorState()V

    .line 8143
    invoke-virtual {v0, v2}, Landroid/widget/SemHorizontalAbsListView;->setSelectionInt(I)V

    .line 8144
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->invokeOnItemScrollListener()V

    goto :goto_8

    .line 8146
    :cond_10
    const/4 v2, -0x1

    .line 8148
    :goto_8
    const/4 v10, 0x0

    invoke-virtual {v0, v10}, Landroid/widget/SemHorizontalAbsListView;->reportScrollStateChange(I)V

    .line 8150
    if-ltz v2, :cond_11

    const/16 v16, 0x1

    goto :goto_9

    :cond_11
    move/from16 v16, v10

    :goto_9
    return v16
.end method

.method blacklist resurrectSelectionIfNeeded()Z
    .locals 1

    .line 8024
    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectedPosition:I

    if-gez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->resurrectSelection()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8025
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->updateSelectorState()V

    .line 8026
    const/4 v0, 0x1

    return v0

    .line 8028
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected blacklist semGetItemCount()I
    .locals 2

    .line 7446
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 7447
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

.method protected blacklist semGetScaledMinScrollbarTouchTarget(Landroid/view/ViewConfiguration;)I
    .locals 1
    .param p1, "configuration"    # Landroid/view/ViewConfiguration;

    .line 1953
    const/4 v0, 0x0

    return v0
.end method

.method protected blacklist semIsHorizontalScrollBarHidden()Z
    .locals 1

    .line 1962
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->isFastScrollEnabled()Z

    move-result v0

    return v0
.end method

.method protected blacklist semIsShowingScrollbar()Z
    .locals 1

    .line 7434
    invoke-super {p0}, Landroid/widget/AdapterView;->semIsShowingScrollbar()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScrollEnabled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist semNotifyKeyPressState(Landroid/view/View;IJ)Z
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .line 1589
    iget-boolean v5, p0, Landroid/widget/SemHorizontalAbsListView;->mIsShiftkeyPressed:Z

    if-eqz v5, :cond_0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    invoke-super/range {v0 .. v5}, Landroid/widget/AdapterView;->semNotifyKeyPress(Landroid/view/View;IJZ)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist semSetClickableInMultiSelectMode(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .line 10799
    iput-boolean p1, p0, Landroid/widget/SemHorizontalAbsListView;->mSemIsOnClickEnabled:Z

    .line 10800
    return-void
.end method

.method public blacklist semSetCustomMultiChoiceMode(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .line 1724
    iput-boolean p1, p0, Landroid/widget/SemHorizontalAbsListView;->mSemCustomMultiChoiceMode:Z

    .line 1725
    return-void
.end method

.method public blacklist semSetDragBlockEnabled(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .line 10785
    iput-boolean p1, p0, Landroid/widget/SemHorizontalAbsListView;->mIsDragBlockEnabled:Z

    .line 10786
    return-void
.end method

.method public blacklist semSetEnableVibrationAtLongPress(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .line 1029
    iput-boolean p1, p0, Landroid/widget/SemHorizontalAbsListView;->mEnableVibrationAtLongPress:Z

    .line 1031
    return-void
.end method

.method public blacklist semSetHoverScrollEnabled(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 5107
    iput-boolean p1, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollEnable:Z

    .line 5108
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollStateChanged:Z

    .line 5109
    return-void
.end method

.method public blacklist semSetMultiFocusEnabled(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .line 10778
    iput-boolean p1, p0, Landroid/widget/SemHorizontalAbsListView;->mIsMultiFocusEnabled:Z

    .line 10779
    return-void
.end method

.method public blacklist semSetSelection(I)V
    .locals 2
    .param p1, "position"    # I

    .line 7472
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_0

    .line 7473
    return-void

    .line 7475
    :cond_0
    iget-boolean v1, p0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    if-eqz v1, :cond_1

    .line 7476
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    sub-int/2addr v0, p1

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getChildCount()I

    move-result v1

    sub-int p1, v0, v1

    .line 7478
    :cond_1
    invoke-virtual {p0, p1}, Landroid/widget/SemHorizontalAbsListView;->setSelection(I)V

    .line 7479
    return-void
.end method

.method public blacklist semSmoothScrollBy(I)V
    .locals 3
    .param p1, "distance"    # I

    .line 7490
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFlingRunnable:Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    if-nez v0, :cond_0

    .line 7491
    new-instance v0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    invoke-direct {v0, p0}, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;-><init>(Landroid/widget/SemHorizontalAbsListView;)V

    iput-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFlingRunnable:Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    .line 7494
    :cond_0
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSemScrollRemains:Ljava/util/LinkedList;

    if-nez v0, :cond_1

    .line 7495
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSemScrollRemains:Ljava/util/LinkedList;

    .line 7496
    new-instance v0, Landroid/widget/SemHorizontalAbsListView$SemSmoothScrollByMove;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/widget/SemHorizontalAbsListView$SemSmoothScrollByMove;-><init>(Landroid/widget/SemHorizontalAbsListView;Landroid/widget/SemHorizontalAbsListView$SemSmoothScrollByMove-IA;)V

    iput-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSemSmoothScrollByMove:Landroid/widget/SemHorizontalAbsListView$SemSmoothScrollByMove;

    .line 7497
    const/high16 v0, 0x43160000    # 150.0f

    iget v1, p0, Landroid/widget/SemHorizontalAbsListView;->mDensityScale:F

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Landroid/widget/SemHorizontalAbsListView;->mSemScrollAmount:I

    .line 7500
    :cond_1
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSemScrollRemains:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    .line 7501
    .local v0, "isEmpty":Z
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    sget v2, Landroid/widget/SemHorizontalAbsListView;->mSemScrollAmount:I

    if-le v1, v2, :cond_3

    .line 7502
    if-lez p1, :cond_2

    .line 7503
    :goto_0
    sget v1, Landroid/widget/SemHorizontalAbsListView;->mSemScrollAmount:I

    if-le p1, v1, :cond_3

    .line 7504
    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mSemScrollRemains:Ljava/util/LinkedList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    .line 7503
    sget v1, Landroid/widget/SemHorizontalAbsListView;->mSemScrollAmount:I

    sub-int/2addr p1, v1

    goto :goto_0

    .line 7507
    :cond_2
    :goto_1
    sget v1, Landroid/widget/SemHorizontalAbsListView;->mSemScrollAmount:I

    neg-int v2, v1

    if-ge p1, v2, :cond_3

    .line 7508
    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mSemScrollRemains:Ljava/util/LinkedList;

    neg-int v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    .line 7507
    sget v1, Landroid/widget/SemHorizontalAbsListView;->mSemScrollAmount:I

    add-int/2addr p1, v1

    goto :goto_1

    .line 7512
    :cond_3
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mSemScrollRemains:Ljava/util/LinkedList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    .line 7513
    if-eqz v0, :cond_4

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mSemSmoothScrollByMove:Landroid/widget/SemHorizontalAbsListView$SemSmoothScrollByMove;

    invoke-virtual {p0, v1}, Landroid/widget/SemHorizontalAbsListView;->post(Ljava/lang/Runnable;)Z

    .line 7514
    :cond_4
    return-void
.end method

.method blacklist sendToTextFilter(IILandroid/view/KeyEvent;)Z
    .locals 10
    .param p1, "keyCode"    # I
    .param p2, "count"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .line 8501
    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->acceptFilter()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 8502
    return v1

    .line 8505
    :cond_0
    const/4 v0, 0x0

    .line 8506
    .local v0, "handled":Z
    const/4 v2, 0x1

    .line 8507
    .local v2, "okToSend":Z
    const/4 v3, 0x1

    sparse-switch p1, :sswitch_data_0

    goto :goto_1

    .line 8536
    :sswitch_0
    iget-boolean v2, p0, Landroid/widget/SemHorizontalAbsListView;->mFiltered:Z

    goto :goto_1

    .line 8515
    :sswitch_1
    const/4 v2, 0x0

    .line 8516
    goto :goto_1

    .line 8518
    :sswitch_2
    iget-boolean v4, p0, Landroid/widget/SemHorizontalAbsListView;->mFiltered:Z

    if-eqz v4, :cond_4

    iget-object v4, p0, Landroid/widget/SemHorizontalAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 8519
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_3

    .line 8520
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v4

    if-nez v4, :cond_3

    .line 8521
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v4

    .line 8522
    .local v4, "state":Landroid/view/KeyEvent$DispatcherState;
    if-eqz v4, :cond_1

    .line 8523
    invoke-virtual {v4, p3, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    .line 8525
    :cond_1
    const/4 v0, 0x1

    .line 8526
    .end local v4    # "state":Landroid/view/KeyEvent$DispatcherState;
    :cond_2
    goto :goto_0

    :cond_3
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-ne v4, v3, :cond_2

    .line 8527
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v4

    if-nez v4, :cond_4

    .line 8528
    const/4 v0, 0x1

    .line 8529
    iget-object v4, p0, Landroid/widget/SemHorizontalAbsListView;->mTextFilter:Landroid/widget/EditText;

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 8532
    :cond_4
    :goto_0
    const/4 v2, 0x0

    .line 8533
    nop

    .line 8540
    :goto_1
    if-eqz v2, :cond_c

    .line 8541
    invoke-direct {p0, v3}, Landroid/widget/SemHorizontalAbsListView;->createTextFilter(Z)V

    .line 8543
    move-object v4, p3

    .line 8544
    .local v4, "forwardEvent":Landroid/view/KeyEvent;
    invoke-virtual {v4}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v5

    if-lez v5, :cond_5

    .line 8545
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v5

    invoke-static {p3, v5, v6, v1}, Landroid/view/KeyEvent;->changeTimeRepeat(Landroid/view/KeyEvent;JI)Landroid/view/KeyEvent;

    move-result-object v4

    .line 8548
    :cond_5
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    .line 8549
    .local v5, "action":I
    const/16 v6, 0x72

    const/16 v7, 0x71

    const/16 v8, 0x3c

    const/16 v9, 0x3b

    packed-switch v5, :pswitch_data_0

    goto :goto_4

    .line 8573
    :pswitch_0
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v1, p1, p2, p3}, Landroid/widget/EditText;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_4

    .line 8560
    :pswitch_1
    iget-object v3, p0, Landroid/widget/SemHorizontalAbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v3, p1, v4}, Landroid/widget/EditText;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 8561
    if-eq p1, v9, :cond_8

    if-ne p1, v8, :cond_6

    goto :goto_2

    .line 8567
    :cond_6
    if-eq p1, v7, :cond_7

    if-ne p1, v6, :cond_c

    .line 8568
    :cond_7
    iput-boolean v1, p0, Landroid/widget/SemHorizontalAbsListView;->mIsCtrlkeyPressed:Z

    goto :goto_4

    .line 8562
    :cond_8
    :goto_2
    iput-boolean v1, p0, Landroid/widget/SemHorizontalAbsListView;->mIsShiftkeyPressed:Z

    .line 8563
    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mOldKeyCode:I

    .line 8564
    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mCurrentKeyCode:I

    .line 8565
    const/4 v1, -0x1

    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mFirstPressedPoint:I

    .line 8566
    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mSecondPressedPoint:I

    goto :goto_4

    .line 8551
    :pswitch_2
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v1, p1, v4}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 8552
    if-eq p1, v9, :cond_b

    if-ne p1, v8, :cond_9

    goto :goto_3

    .line 8554
    :cond_9
    if-eq p1, v7, :cond_a

    if-ne p1, v6, :cond_c

    .line 8555
    :cond_a
    iput-boolean v3, p0, Landroid/widget/SemHorizontalAbsListView;->mIsCtrlkeyPressed:Z

    goto :goto_4

    .line 8553
    :cond_b
    :goto_3
    iput-boolean v3, p0, Landroid/widget/SemHorizontalAbsListView;->mIsShiftkeyPressed:Z

    .line 8577
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

.method public whitelist setChoiceMode(I)V
    .locals 5
    .param p1, "choiceMode"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1644
    iput p1, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceMode:I

    .line 1645
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 1646
    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 1647
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    .line 1649
    :cond_0
    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceMode:I

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_3

    .line 1650
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-nez v0, :cond_1

    .line 1651
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0, v2}, Landroid/util/SparseBooleanArray;-><init>(I)V

    iput-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 1653
    :cond_1
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1654
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0, v2}, Landroid/util/LongSparseArray;-><init>(I)V

    iput-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    .line 1657
    :cond_2
    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceMode:I

    if-ne v0, v1, :cond_3

    .line 1658
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->clearChoices()V

    .line 1659
    invoke-virtual {p0, v3}, Landroid/widget/SemHorizontalAbsListView;->setLongClickable(Z)V

    .line 1663
    :cond_3
    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceMode:I

    const/4 v4, 0x2

    if-ne v0, v4, :cond_4

    .line 1664
    iput-boolean v3, p0, Landroid/widget/SemHorizontalAbsListView;->mIsDragBlockEnabled:Z

    goto :goto_0

    .line 1665
    :cond_4
    if-ne v0, v1, :cond_5

    .line 1666
    iput-boolean v3, p0, Landroid/widget/SemHorizontalAbsListView;->mIsDragBlockEnabled:Z

    goto :goto_0

    .line 1667
    :cond_5
    if-eqz v0, :cond_6

    if-ne v0, v3, :cond_7

    .line 1668
    :cond_6
    iput-boolean v2, p0, Landroid/widget/SemHorizontalAbsListView;->mIsDragBlockEnabled:Z

    .line 1671
    :cond_7
    :goto_0
    return-void
.end method

.method public whitelist setDrawSelectorOnTop(Z)V
    .locals 0
    .param p1, "onTop"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3808
    iput-boolean p1, p0, Landroid/widget/SemHorizontalAbsListView;->mDrawSelectorOnTop:Z

    .line 3809
    return-void
.end method

.method public blacklist setEnableHoverDrawable(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .line 1075
    iput-boolean p1, p0, Landroid/widget/SemHorizontalAbsListView;->mHoveringEnabled:Z

    .line 1076
    return-void
.end method

.method public blacklist setEnablePaddingInHoverScroll(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .line 5115
    iput-boolean p1, p0, Landroid/widget/SemHorizontalAbsListView;->mIsEnabledPaddingInHoverScroll:Z

    .line 5116
    return-void
.end method

.method public whitelist setFastScrollAlwaysVisible(Z)V
    .locals 1
    .param p1, "alwaysShow"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1832
    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScrollAlwaysVisible:Z

    if-eq v0, p1, :cond_2

    .line 1833
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScrollEnabled:Z

    if-nez v0, :cond_0

    .line 1834
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/SemHorizontalAbsListView;->setFastScrollEnabled(Z)V

    .line 1837
    :cond_0
    iput-boolean p1, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScrollAlwaysVisible:Z

    .line 1839
    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->isOwnerThread()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1840
    invoke-direct {p0, p1}, Landroid/widget/SemHorizontalAbsListView;->setFastScrollerAlwaysVisibleUiThread(Z)V

    goto :goto_0

    .line 1842
    :cond_1
    new-instance v0, Landroid/widget/SemHorizontalAbsListView$1;

    invoke-direct {v0, p0, p1}, Landroid/widget/SemHorizontalAbsListView$1;-><init>(Landroid/widget/SemHorizontalAbsListView;Z)V

    invoke-virtual {p0, v0}, Landroid/widget/SemHorizontalAbsListView;->post(Ljava/lang/Runnable;)Z

    .line 1850
    :cond_2
    :goto_0
    return-void
.end method

.method public whitelist setFastScrollEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1765
    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScrollEnabled:Z

    if-eq v0, p1, :cond_0

    .line 1766
    iput-boolean p1, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScrollEnabled:Z

    .line 1768
    invoke-direct {p0, p1}, Landroid/widget/SemHorizontalAbsListView;->setFastScrollerEnabledUiThread(Z)V

    .line 1781
    :cond_0
    return-void
.end method

.method public whitelist setFastScrollStyle(I)V
    .locals 1
    .param p1, "styleResId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1808
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScroll:Lcom/samsung/android/widget/SemHorizontalFastScroller;

    if-nez v0, :cond_0

    .line 1809
    iput p1, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScrollStyle:I

    goto :goto_0

    .line 1811
    :cond_0
    invoke-virtual {v0, p1}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->setStyle(I)V

    .line 1813
    :goto_0
    return-void
.end method

.method public whitelist setFilterText(Ljava/lang/String;)V
    .locals 2
    .param p1, "filterText"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2658
    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mTextFilterEnabled:Z

    if-eqz v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2659
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/SemHorizontalAbsListView;->createTextFilter(Z)V

    .line 2662
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2663
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 2664
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v1, v0, Landroid/widget/Filterable;

    if-eqz v1, :cond_1

    .line 2666
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-nez v1, :cond_0

    .line 2667
    check-cast v0, Landroid/widget/Filterable;

    invoke-interface {v0}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    .line 2668
    .local v0, "f":Landroid/widget/Filter;
    invoke-virtual {v0, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 2672
    .end local v0    # "f":Landroid/widget/Filter;
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFiltered:Z

    .line 2673
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mDataSetObserver:Landroid/widget/SemHorizontalAbsListView$AdapterDataSetObserver;

    invoke-virtual {v0}, Landroid/widget/SemHorizontalAbsListView$AdapterDataSetObserver;->clearSavedState()V

    .line 2676
    :cond_1
    return-void
.end method

.method public blacklist setForcedClick(Z)V
    .locals 0
    .param p1, "force"    # Z

    .line 4332
    iput-boolean p1, p0, Landroid/widget/SemHorizontalAbsListView;->mForcedClick:Z

    .line 4333
    return-void
.end method

.method protected blacklist setFrame(IIII)Z
    .locals 3
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 3085
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AdapterView;->setFrame(IIII)Z

    move-result v0

    .line 3087
    .local v0, "changed":Z
    if-eqz v0, :cond_1

    .line 3091
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getWindowVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 3092
    .local v1, "visible":Z
    :goto_0
    iget-boolean v2, p0, Landroid/widget/SemHorizontalAbsListView;->mFiltered:Z

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3093
    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->positionPopup()V

    .line 3097
    .end local v1    # "visible":Z
    :cond_1
    return v0
.end method

.method public whitelist setFriction(F)V
    .locals 1
    .param p1, "friction"    # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7289
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFlingRunnable:Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    if-nez v0, :cond_0

    .line 7290
    new-instance v0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    invoke-direct {v0, p0}, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;-><init>(Landroid/widget/SemHorizontalAbsListView;)V

    iput-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFlingRunnable:Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    .line 7292
    :cond_0
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFlingRunnable:Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    invoke-static {v0}, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->-$$Nest$fgetmScroller(Landroid/widget/SemHorizontalAbsListView$FlingRunnable;)Landroid/widget/OverScroller;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/OverScroller;->setFriction(F)V

    .line 7293
    return-void
.end method

.method public whitelist setItemChecked(IZ)V
    .locals 10
    .param p1, "position"    # I
    .param p2, "value"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1441
    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceMode:I

    if-nez v0, :cond_0

    .line 1442
    return-void

    .line 1446
    :cond_0
    const/4 v1, 0x3

    if-eqz p2, :cond_2

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-nez v0, :cond_2

    .line 1447
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mMultiChoiceModeCallback:Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeWrapper;

    if-eqz v0, :cond_1

    .line 1448
    invoke-virtual {v0}, Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeWrapper;->hasWrappedCallback()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1453
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mMultiChoiceModeCallback:Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeWrapper;

    invoke-virtual {p0, v0}, Landroid/widget/SemHorizontalAbsListView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    goto :goto_0

    .line 1449
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "SemHorizontalAbsListView: attempted to start selection mode for CHOICE_MODE_MULTIPLE_MODAL but no choice mode callback was supplied. Call setMultiChoiceModeListener to set a callback."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1456
    :cond_2
    :goto_0
    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceMode:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v2, :cond_a

    if-ne v0, v1, :cond_3

    goto :goto_2

    .line 1479
    :cond_3
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v3

    goto :goto_1

    :cond_4
    move v0, v1

    .line 1482
    .local v0, "updateIds":Z
    :goto_1
    if-nez p2, :cond_5

    invoke-virtual {p0, p1}, Landroid/widget/SemHorizontalAbsListView;->isItemChecked(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1483
    :cond_5
    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->clear()V

    .line 1484
    if-eqz v0, :cond_6

    .line 1485
    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v2}, Landroid/util/LongSparseArray;->clear()V

    .line 1490
    :cond_6
    if-eqz p2, :cond_8

    .line 1491
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1492
    if-eqz v0, :cond_7

    .line 1493
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v4, v5, v2}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1495
    :cond_7
    iput v3, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckedItemCount:I

    goto/16 :goto_5

    .line 1496
    :cond_8
    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v2

    if-nez v2, :cond_10

    .line 1497
    :cond_9
    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckedItemCount:I

    goto :goto_5

    .line 1457
    .end local v0    # "updateIds":Z
    :cond_a
    :goto_2
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    .line 1458
    .local v0, "oldValue":Z
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1459
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v1, :cond_c

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1460
    if-eqz p2, :cond_b

    .line 1461
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v4, v5, v2}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_3

    .line 1463
    :cond_b
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Landroid/util/LongSparseArray;->delete(J)V

    .line 1466
    :cond_c
    :goto_3
    if-eq v0, p2, :cond_e

    .line 1467
    if-eqz p2, :cond_d

    .line 1468
    iget v1, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckedItemCount:I

    add-int/2addr v1, v3

    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckedItemCount:I

    goto :goto_4

    .line 1470
    :cond_d
    iget v1, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckedItemCount:I

    sub-int/2addr v1, v3

    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckedItemCount:I

    .line 1473
    :cond_e
    :goto_4
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_f

    .line 1474
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v1

    .line 1475
    .local v1, "id":J
    iget-object v4, p0, Landroid/widget/SemHorizontalAbsListView;->mMultiChoiceModeCallback:Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeWrapper;

    iget-object v5, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    move v6, p1

    move-wide v7, v1

    move v9, p2

    invoke-virtual/range {v4 .. v9}, Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeWrapper;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    .line 1478
    .end local v0    # "oldValue":Z
    .end local v1    # "id":J
    :cond_f
    nop

    .line 1502
    :cond_10
    :goto_5
    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mInLayout:Z

    if-nez v0, :cond_12

    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mBlockLayoutRequests:Z

    if-nez v0, :cond_12

    .line 1503
    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mForcedClick:Z

    if-nez v0, :cond_11

    .line 1504
    iput-boolean v3, p0, Landroid/widget/SemHorizontalAbsListView;->mDataChanged:Z

    .line 1506
    :cond_11
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->rememberSyncState()V

    .line 1507
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->requestLayout()V

    .line 1509
    :cond_12
    return-void
.end method

.method public whitelist setMultiChoiceModeListener(Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1686
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mMultiChoiceModeCallback:Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeWrapper;

    if-nez v0, :cond_0

    .line 1687
    new-instance v0, Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeWrapper;

    invoke-direct {v0, p0}, Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeWrapper;-><init>(Landroid/widget/SemHorizontalAbsListView;)V

    iput-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mMultiChoiceModeCallback:Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeWrapper;

    .line 1689
    :cond_0
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mMultiChoiceModeCallback:Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeWrapper;

    invoke-virtual {v0, p1}, Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeWrapper;->setWrapped(Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeListener;)V

    .line 1690
    return-void
.end method

.method public whitelist setOnScrollListener(Landroid/widget/SemHorizontalAbsListView$OnScrollListener;)V
    .locals 0
    .param p1, "l"    # Landroid/widget/SemHorizontalAbsListView$OnScrollListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2022
    iput-object p1, p0, Landroid/widget/SemHorizontalAbsListView;->mOnScrollListener:Landroid/widget/SemHorizontalAbsListView$OnScrollListener;

    .line 2023
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->invokeOnItemScrollListener()V

    .line 2024
    return-void
.end method

.method public blacklist setOverScrollEffectPadding(II)V
    .locals 0
    .param p1, "topPadding"    # I
    .param p2, "bottomPadding"    # I

    .line 6722
    iput p1, p0, Landroid/widget/SemHorizontalAbsListView;->mGlowPaddingTop:I

    .line 6723
    iput p2, p0, Landroid/widget/SemHorizontalAbsListView;->mGlowPaddingBottom:I

    .line 6724
    return-void
.end method

.method public whitelist setOverScrollMode(I)V
    .locals 3
    .param p1, "mode"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1288
    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 1289
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    if-nez v0, :cond_1

    .line 1290
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1291
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroid/widget/EdgeEffect;

    invoke-direct {v1, v0}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    .line 1292
    new-instance v1, Landroid/widget/EdgeEffect;

    invoke-direct {v1, v0}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    .line 1294
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Landroid/widget/EdgeEffect;->semSetHostView(Landroid/view/View;Z)V

    .line 1295
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v1, p0, v2}, Landroid/widget/EdgeEffect;->semSetHostView(Landroid/view/View;Z)V

    .line 1297
    .end local v0    # "context":Landroid/content/Context;
    goto :goto_0

    .line 1299
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    .line 1300
    iput-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    .line 1302
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->setOverScrollMode(I)V

    .line 1303
    return-void
.end method

.method public whitelist setRecyclerListener(Landroid/widget/SemHorizontalAbsListView$RecyclerListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/widget/SemHorizontalAbsListView$RecyclerListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 9272
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mRecycler:Landroid/widget/SemHorizontalAbsListView$RecycleBin;

    invoke-static {v0, p1}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->-$$Nest$fputmRecyclerListener(Landroid/widget/SemHorizontalAbsListView$RecycleBin;Landroid/widget/SemHorizontalAbsListView$RecyclerListener;)V

    .line 9273
    return-void
.end method

.method public whitelist setRemoteViewsAdapter(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 9155
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/widget/SemHorizontalAbsListView;->setRemoteViewsAdapter(Landroid/content/Intent;Z)V

    .line 9156
    return-void
.end method

.method public blacklist setRemoteViewsAdapter(Landroid/content/Intent;Z)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "isAsync"    # Z

    .line 9166
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    if-eqz v0, :cond_0

    .line 9167
    new-instance v0, Landroid/content/Intent$FilterComparison;

    invoke-direct {v0, p1}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    .line 9168
    .local v0, "fcNew":Landroid/content/Intent$FilterComparison;
    new-instance v1, Landroid/content/Intent$FilterComparison;

    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    .line 9169
    invoke-virtual {v2}, Landroid/widget/RemoteViewsAdapter;->getRemoteViewsServiceIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    .line 9170
    .local v1, "fcOld":Landroid/content/Intent$FilterComparison;
    invoke-virtual {v0, v1}, Landroid/content/Intent$FilterComparison;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 9171
    return-void

    .line 9174
    .end local v0    # "fcNew":Landroid/content/Intent$FilterComparison;
    .end local v1    # "fcOld":Landroid/content/Intent$FilterComparison;
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mDeferNotifyDataSetChanged:Z

    .line 9176
    new-instance v0, Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1, p0, p2}, Landroid/widget/RemoteViewsAdapter;-><init>(Landroid/content/Context;Landroid/content/Intent;Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;Z)V

    iput-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    .line 9177
    invoke-virtual {v0}, Landroid/widget/RemoteViewsAdapter;->isDataReady()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9178
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {p0, v0}, Landroid/widget/SemHorizontalAbsListView;->setAdapter(Landroid/widget/Adapter;)V

    .line 9180
    :cond_1
    return-void
.end method

.method public blacklist setRemoteViewsAdapterAsync(Landroid/content/Intent;)Ljava/lang/Runnable;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .line 9159
    new-instance v0, Landroid/widget/RemoteViewsAdapter$AsyncRemoteAdapterAction;

    invoke-direct {v0, p0, p1}, Landroid/widget/RemoteViewsAdapter$AsyncRemoteAdapterAction;-><init>(Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;Landroid/content/Intent;)V

    return-object v0
.end method

.method public blacklist setRemoteViewsInteractionHandler(Landroid/widget/RemoteViews$InteractionHandler;)V
    .locals 1
    .param p1, "handler"    # Landroid/widget/RemoteViews$InteractionHandler;

    .line 9192
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    if-eqz v0, :cond_0

    .line 9193
    invoke-virtual {v0, p1}, Landroid/widget/RemoteViewsAdapter;->setRemoteViewsInteractionHandler(Landroid/widget/RemoteViews$InteractionHandler;)V

    .line 9195
    :cond_0
    return-void
.end method

.method public whitelist setScrollBarStyle(I)V
    .locals 1
    .param p1, "style"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1942
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->setScrollBarStyle(I)V

    .line 1943
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScroll:Lcom/samsung/android/widget/SemHorizontalFastScroller;

    if-eqz v0, :cond_0

    .line 1944
    invoke-virtual {v0, p1}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->setScrollBarStyle(I)V

    .line 1946
    :cond_0
    return-void
.end method

.method public whitelist setScrollIndicators(Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .param p1, "left"    # Landroid/view/View;
    .param p2, "right"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3916
    iput-object p1, p0, Landroid/widget/SemHorizontalAbsListView;->mScrollLeft:Landroid/view/View;

    .line 3917
    iput-object p2, p0, Landroid/widget/SemHorizontalAbsListView;->mScrollRight:Landroid/view/View;

    .line 3918
    return-void
.end method

.method public whitelist setScrollingCacheEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2237
    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mScrollingCacheEnabled:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 2238
    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->clearScrollingCache()V

    .line 2240
    :cond_0
    iput-boolean p1, p0, Landroid/widget/SemHorizontalAbsListView;->mScrollingCacheEnabled:Z

    .line 2241
    return-void
.end method

.method public blacklist setSelectionFromStart(II)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "x"    # I

    .line 10097
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_0

    .line 10098
    return-void

    .line 10101
    :cond_0
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 10102
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/widget/SemHorizontalAbsListView;->lookForSelectablePosition(IZ)I

    move-result p1

    .line 10103
    if-ltz p1, :cond_2

    .line 10104
    invoke-virtual {p0, p1}, Landroid/widget/SemHorizontalAbsListView;->setNextSelectedPositionInt(I)V

    goto :goto_0

    .line 10107
    :cond_1
    iput p1, p0, Landroid/widget/SemHorizontalAbsListView;->mResurrectToPosition:I

    .line 10110
    :cond_2
    :goto_0
    if-ltz p1, :cond_6

    .line 10111
    const/4 v0, 0x4

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mLayoutMode:I

    .line 10112
    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getWidth()I

    move-result v0

    sub-int/2addr v0, p2

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSpecificTop:I

    goto :goto_1

    .line 10113
    :cond_3
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, p2

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSpecificTop:I

    .line 10115
    :goto_1
    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mNeedSync:Z

    if-eqz v0, :cond_4

    .line 10116
    iput p1, p0, Landroid/widget/SemHorizontalAbsListView;->mSyncPosition:I

    .line 10117
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSyncRowId:J

    .line 10120
    :cond_4
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPositionScroller:Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;

    if-eqz v0, :cond_5

    .line 10121
    invoke-virtual {v0}, Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;->stop()V

    .line 10123
    :cond_5
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->requestLayout()V

    .line 10125
    :cond_6
    return-void
.end method

.method abstract blacklist setSelectionInt(I)V
.end method

.method public whitelist setSelector(I)V
    .locals 1
    .param p1, "resID"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3822
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/SemHorizontalAbsListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 3823
    return-void
.end method

.method public whitelist setSelector(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "sel"    # Landroid/graphics/drawable/Drawable;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3834
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 3835
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 3836
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Landroid/widget/SemHorizontalAbsListView;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3838
    :cond_0
    iput-object p1, p0, Landroid/widget/SemHorizontalAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 3839
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 3840
    .local v0, "padding":Landroid/graphics/Rect;
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 3841
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectionLeftPadding:I

    .line 3842
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectionTopPadding:I

    .line 3843
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectionRightPadding:I

    .line 3844
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectionBottomPadding:I

    .line 3845
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 3846
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->updateSelectorState()V

    .line 3847
    return-void
.end method

.method public whitelist setSmoothScrollbarEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1987
    iput-boolean p1, p0, Landroid/widget/SemHorizontalAbsListView;->mSmoothScrollbarEnabled:Z

    .line 1988
    return-void
.end method

.method public whitelist setStackFromBottom(Z)V
    .locals 1
    .param p1, "stackFromBottom"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2334
    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mStackFromBottom:Z

    if-eq v0, p1, :cond_0

    .line 2335
    iput-boolean p1, p0, Landroid/widget/SemHorizontalAbsListView;->mStackFromBottom:Z

    .line 2336
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->requestLayoutIfNecessary()V

    .line 2338
    :cond_0
    return-void
.end method

.method public whitelist setTextFilterEnabled(Z)V
    .locals 0
    .param p1, "textFilterEnabled"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2257
    iput-boolean p1, p0, Landroid/widget/SemHorizontalAbsListView;->mTextFilterEnabled:Z

    .line 2258
    return-void
.end method

.method public blacklist setTiltMotionEvent(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .line 1049
    return-void
.end method

.method public blacklist setTouchSlop(I)V
    .locals 0
    .param p1, "value"    # I

    .line 1064
    iput p1, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchSlop:I

    .line 1065
    return-void
.end method

.method public whitelist setTranscriptMode(I)V
    .locals 0
    .param p1, "mode"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 9058
    iput p1, p0, Landroid/widget/SemHorizontalAbsListView;->mTranscriptMode:I

    .line 9059
    return-void
.end method

.method public whitelist setVelocityScale(F)V
    .locals 0
    .param p1, "scale"    # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7305
    iput p1, p0, Landroid/widget/SemHorizontalAbsListView;->mVelocityScale:F

    .line 7306
    return-void
.end method

.method blacklist setVisibleRangeHint(II)V
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 9252
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    if-eqz v0, :cond_0

    .line 9253
    invoke-virtual {v0, p1, p2}, Landroid/widget/RemoteViewsAdapter;->setVisibleRangeHint(II)V

    .line 9255
    :cond_0
    return-void
.end method

.method blacklist shouldShowSelector()Z
    .locals 1

    .line 3760
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->touchModeDrawsInPressedState()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->isPressed()Z

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

.method blacklist shouldShowSelectorDefault()Z
    .locals 1

    .line 3766
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->touchModeDrawsInPressedState()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->isPressed()Z

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

.method public blacklist showContextMenu(FFI)Z
    .locals 5
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "metaState"    # I

    .line 4494
    float-to-int v0, p1

    float-to-int v1, p2

    invoke-virtual {p0, v0, v1}, Landroid/widget/SemHorizontalAbsListView;->pointToPosition(II)I

    move-result v0

    .line 4495
    .local v0, "position":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 4496
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, v0}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v1

    .line 4497
    .local v1, "id":J
    iget v3, p0, Landroid/widget/SemHorizontalAbsListView;->mFirstPosition:I

    sub-int v3, v0, v3

    invoke-virtual {p0, v3}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 4498
    .local v3, "child":Landroid/view/View;
    if-eqz v3, :cond_0

    .line 4499
    invoke-virtual {p0, v3, v0, v1, v2}, Landroid/widget/SemHorizontalAbsListView;->createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v4

    iput-object v4, p0, Landroid/widget/SemHorizontalAbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 4500
    invoke-super {p0, p0}, Landroid/widget/AdapterView;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v4

    return v4

    .line 4502
    .end local v1    # "id":J
    .end local v3    # "child":Landroid/view/View;
    :cond_0
    goto :goto_0

    .line 4503
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 4505
    :goto_0
    invoke-super {p0}, Landroid/widget/AdapterView;->showContextMenu()Z

    move-result v1

    return v1
.end method

.method public whitelist showContextMenuForChild(Landroid/view/View;)Z
    .locals 10
    .param p1, "originalView"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4517
    invoke-virtual {p0, p1}, Landroid/widget/SemHorizontalAbsListView;->getPositionForView(Landroid/view/View;)I

    move-result v6

    .line 4518
    .local v6, "longPressPosition":I
    if-ltz v6, :cond_2

    .line 4519
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, v6}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v7

    .line 4520
    .local v7, "longPressId":J
    const/4 v9, 0x0

    .line 4522
    .local v9, "handled":Z
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    if-eqz v0, :cond_0

    .line 4523
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    move-object v1, p0

    move-object v2, p1

    move v3, v6

    move-wide v4, v7

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemLongClickListener;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result v9

    .line 4526
    :cond_0
    if-nez v9, :cond_1

    .line 4527
    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFirstPosition:I

    sub-int v0, v6, v0

    .line 4528
    invoke-virtual {p0, v0}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 4527
    invoke-virtual {p0, v0, v6, v7, v8}, Landroid/widget/SemHorizontalAbsListView;->createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 4530
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v9

    .line 4533
    :cond_1
    return v9

    .line 4535
    .end local v7    # "longPressId":J
    .end local v9    # "handled":Z
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist smoothScrollBy(II)V
    .locals 1
    .param p1, "distance"    # I
    .param p2, "duration"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7403
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/widget/SemHorizontalAbsListView;->smoothScrollBy(IIZ)V

    .line 7404
    return-void
.end method

.method blacklist smoothScrollBy(IIZ)V
    .locals 8
    .param p1, "distance"    # I
    .param p2, "duration"    # I
    .param p3, "linear"    # Z

    .line 7518
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFlingRunnable:Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    if-nez v0, :cond_0

    .line 7519
    new-instance v0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    invoke-direct {v0, p0}, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;-><init>(Landroid/widget/SemHorizontalAbsListView;)V

    iput-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFlingRunnable:Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    .line 7523
    :cond_0
    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFirstPosition:I

    .line 7524
    .local v0, "firstPos":I
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getChildCount()I

    move-result v1

    .line 7525
    .local v1, "childCount":I
    add-int v2, v0, v1

    .line 7526
    .local v2, "lastPos":I
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getPaddingLeft()I

    move-result v3

    .line 7527
    .local v3, "leftLimit":I
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    .line 7531
    .local v4, "rightLimit":I
    iget-boolean v5, p0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    const/4 v6, 0x0

    if-eqz v5, :cond_1

    .line 7532
    add-int/lit8 v5, v1, -0x1

    invoke-virtual {p0, v5}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 7533
    .local v5, "leftView":Landroid/view/View;
    invoke-virtual {p0, v6}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .local v6, "rightView":Landroid/view/View;
    goto :goto_0

    .line 7535
    .end local v5    # "leftView":Landroid/view/View;
    .end local v6    # "rightView":Landroid/view/View;
    :cond_1
    invoke-virtual {p0, v6}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 7536
    .restart local v5    # "leftView":Landroid/view/View;
    add-int/lit8 v6, v1, -0x1

    invoke-virtual {p0, v6}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 7539
    .restart local v6    # "rightView":Landroid/view/View;
    :goto_0
    if-eqz p1, :cond_6

    iget v7, p0, Landroid/widget/SemHorizontalAbsListView;->mItemCount:I

    if-eqz v7, :cond_6

    if-eqz v1, :cond_6

    iget-boolean v7, p0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    if-nez v7, :cond_2

    if-nez v0, :cond_2

    .line 7540
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v7

    if-ne v7, v3, :cond_2

    if-ltz p1, :cond_6

    :cond_2
    iget-boolean v7, p0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    if-nez v7, :cond_3

    iget v7, p0, Landroid/widget/SemHorizontalAbsListView;->mItemCount:I

    if-ne v2, v7, :cond_3

    .line 7541
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v7

    if-ne v7, v4, :cond_3

    if-gtz p1, :cond_6

    :cond_3
    iget-boolean v7, p0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    if-eqz v7, :cond_4

    if-nez v0, :cond_4

    .line 7542
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v7

    if-ne v7, v4, :cond_4

    if-gtz p1, :cond_6

    :cond_4
    iget-boolean v7, p0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    if-eqz v7, :cond_5

    iget v7, p0, Landroid/widget/SemHorizontalAbsListView;->mItemCount:I

    if-ne v2, v7, :cond_5

    .line 7543
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v7

    if-ne v7, v3, :cond_5

    if-gez p1, :cond_5

    goto :goto_1

    .line 7549
    :cond_5
    const/4 v7, 0x2

    invoke-virtual {p0, v7}, Landroid/widget/SemHorizontalAbsListView;->reportScrollStateChange(I)V

    .line 7550
    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mFlingRunnable:Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    invoke-virtual {v7, p1, p2, p3}, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->startScroll(IIZ)V

    goto :goto_2

    .line 7544
    :cond_6
    :goto_1
    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mFlingRunnable:Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    invoke-virtual {v7}, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->endFling()V

    .line 7545
    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mPositionScroller:Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;

    if-eqz v7, :cond_7

    .line 7546
    invoke-virtual {v7}, Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;->stop()V

    .line 7552
    :cond_7
    :goto_2
    return-void
.end method

.method blacklist smoothScrollByOffset(I)V
    .locals 9
    .param p1, "position"    # I

    .line 7558
    const/4 v0, -0x1

    .line 7559
    .local v0, "index":I
    if-gez p1, :cond_0

    .line 7560
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getFirstVisiblePosition()I

    move-result v0

    goto :goto_0

    .line 7561
    :cond_0
    if-lez p1, :cond_1

    .line 7562
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getLastVisiblePosition()I

    move-result v0

    .line 7565
    :cond_1
    :goto_0
    const/4 v1, -0x1

    if-le v0, v1, :cond_4

    .line 7566
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getFirstVisiblePosition()I

    move-result v1

    sub-int v1, v0, v1

    invoke-virtual {p0, v1}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 7567
    .local v1, "child":Landroid/view/View;
    if-eqz v1, :cond_4

    .line 7568
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 7569
    .local v2, "visibleRect":Landroid/graphics/Rect;
    invoke-virtual {v1, v2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 7571
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v4

    mul-int/2addr v3, v4

    .line 7572
    .local v3, "childRectArea":I
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v5

    mul-int/2addr v4, v5

    .line 7573
    .local v4, "visibleRectArea":I
    int-to-float v5, v4

    int-to-float v6, v3

    div-float/2addr v5, v6

    .line 7574
    .local v5, "visibleArea":F
    const/high16 v6, 0x3f400000    # 0.75f

    .line 7575
    .local v6, "visibleThreshold":F
    const/high16 v7, 0x3f400000    # 0.75f

    if-gez p1, :cond_2

    cmpg-float v8, v5, v7

    if-gez v8, :cond_2

    .line 7578
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 7579
    :cond_2
    if-lez p1, :cond_3

    cmpg-float v7, v5, v7

    if-gez v7, :cond_3

    .line 7582
    add-int/lit8 v0, v0, -0x1

    .line 7585
    .end local v3    # "childRectArea":I
    .end local v4    # "visibleRectArea":I
    .end local v5    # "visibleArea":F
    .end local v6    # "visibleThreshold":F
    :cond_3
    :goto_1
    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getCount()I

    move-result v4

    add-int v5, v0, p1

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/widget/SemHorizontalAbsListView;->smoothScrollToPosition(I)V

    .line 7588
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "visibleRect":Landroid/graphics/Rect;
    :cond_4
    return-void
.end method

.method public whitelist smoothScrollToPosition(I)V
    .locals 1
    .param p1, "position"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7325
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPositionScroller:Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;

    if-nez v0, :cond_0

    .line 7326
    new-instance v0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;

    invoke-direct {v0, p0}, Landroid/widget/SemHorizontalAbsListView$PositionScroller;-><init>(Landroid/widget/SemHorizontalAbsListView;)V

    iput-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPositionScroller:Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;

    .line 7328
    :cond_0
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPositionScroller:Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;

    invoke-virtual {v0, p1}, Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;->start(I)V

    .line 7329
    return-void
.end method

.method public whitelist smoothScrollToPosition(II)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "boundPosition"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7388
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPositionScroller:Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;

    if-nez v0, :cond_0

    .line 7389
    new-instance v0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;

    invoke-direct {v0, p0}, Landroid/widget/SemHorizontalAbsListView$PositionScroller;-><init>(Landroid/widget/SemHorizontalAbsListView;)V

    iput-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPositionScroller:Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;

    .line 7391
    :cond_0
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPositionScroller:Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;

    invoke-virtual {v0, p1, p2}, Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;->start(II)V

    .line 7392
    return-void
.end method

.method public whitelist smoothScrollToPositionFromTop(II)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "offset"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7368
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPositionScroller:Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;

    if-nez v0, :cond_0

    .line 7369
    new-instance v0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;

    invoke-direct {v0, p0}, Landroid/widget/SemHorizontalAbsListView$PositionScroller;-><init>(Landroid/widget/SemHorizontalAbsListView;)V

    iput-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPositionScroller:Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;

    .line 7371
    :cond_0
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPositionScroller:Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;

    invoke-virtual {v0, p1, p2}, Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;->startWithOffset(II)V

    .line 7372
    return-void
.end method

.method public whitelist smoothScrollToPositionFromTop(III)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "offset"    # I
    .param p3, "duration"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7347
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPositionScroller:Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;

    if-nez v0, :cond_0

    .line 7348
    new-instance v0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;

    invoke-direct {v0, p0}, Landroid/widget/SemHorizontalAbsListView$PositionScroller;-><init>(Landroid/widget/SemHorizontalAbsListView;)V

    iput-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPositionScroller:Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;

    .line 7350
    :cond_0
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPositionScroller:Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;

    invoke-virtual {v0, p1, p2, p3}, Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;->startWithOffset(III)V

    .line 7351
    return-void
.end method

.method public whitelist startMultiChoiceMode()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1700
    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mMultiChoiceModeCallback:Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeWrapper;

    if-eqz v0, :cond_0

    .line 1701
    invoke-virtual {p0, v0}, Landroid/widget/SemHorizontalAbsListView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    .line 1703
    :cond_0
    return-void
.end method

.method blacklist touchModeDrawsInPressedState()Z
    .locals 1

    .line 3739
    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    packed-switch v0, :pswitch_data_0

    .line 3744
    const/4 v0, 0x0

    return v0

    .line 3742
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

.method blacklist trackMotionScroll(II)Z
    .locals 29
    .param p1, "deltaX"    # I
    .param p2, "incrementalDeltaX"    # I

    .line 7666
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->getChildCount()I

    move-result v3

    .line 7667
    .local v3, "childCount":I
    const/4 v4, 0x1

    if-nez v3, :cond_0

    .line 7668
    return v4

    .line 7671
    :cond_0
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v6

    .line 7672
    .local v6, "firstLeft":I
    add-int/lit8 v7, v3, -0x1

    invoke-virtual {v0, v7}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v7

    .line 7675
    .local v7, "lastRight":I
    invoke-virtual {v0, v5}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getRight()I

    move-result v8

    .line 7676
    .local v8, "firstRight":I
    add-int/lit8 v9, v3, -0x1

    invoke-virtual {v0, v9}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v9

    .line 7678
    .local v9, "lastLeft":I
    iget-object v10, v0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 7683
    .local v10, "listPadding":Landroid/graphics/Rect;
    const/4 v11, 0x0

    .line 7684
    .local v11, "effectivePaddingLeft":I
    const/4 v12, 0x0

    .line 7685
    .local v12, "effectivePaddingRight":I
    iget v13, v0, Landroid/widget/SemHorizontalAbsListView;->mGroupFlags:I

    const/16 v14, 0x22

    and-int/2addr v13, v14

    if-ne v13, v14, :cond_1

    .line 7686
    iget v11, v10, Landroid/graphics/Rect;->left:I

    .line 7687
    iget v12, v10, Landroid/graphics/Rect;->right:I

    .line 7693
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->getWidth()I

    move-result v13

    sub-int/2addr v13, v12

    .line 7695
    .local v13, "end":I
    iget-boolean v15, v0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    if-eqz v15, :cond_2

    .line 7696
    sub-int v15, v8, v13

    .line 7697
    .local v15, "spaceAbove":I
    sub-int v16, v11, v9

    move/from16 v5, v16

    .local v16, "spaceBelow":I
    goto :goto_0

    .line 7699
    .end local v15    # "spaceAbove":I
    .end local v16    # "spaceBelow":I
    :cond_2
    sub-int v15, v11, v6

    .line 7700
    .restart local v15    # "spaceAbove":I
    sub-int v16, v7, v13

    move/from16 v5, v16

    .line 7703
    .local v5, "spaceBelow":I
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->getWidth()I

    move-result v17

    iget v4, v0, Landroid/widget/SemHorizontalAbsListView;->mPaddingRight:I

    sub-int v17, v17, v4

    iget v4, v0, Landroid/widget/SemHorizontalAbsListView;->mPaddingLeft:I

    sub-int v17, v17, v4

    .line 7704
    .local v17, "width":I
    if-gez v1, :cond_3

    .line 7705
    add-int/lit8 v4, v17, -0x1

    neg-int v4, v4

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .end local p1    # "deltaX":I
    .local v1, "deltaX":I
    goto :goto_1

    .line 7707
    .end local v1    # "deltaX":I
    .restart local p1    # "deltaX":I
    :cond_3
    add-int/lit8 v4, v17, -0x1

    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 7710
    .end local p1    # "deltaX":I
    .restart local v1    # "deltaX":I
    :goto_1
    if-gez v2, :cond_4

    .line 7711
    add-int/lit8 v4, v17, -0x1

    neg-int v4, v4

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .end local p2    # "incrementalDeltaX":I
    .local v2, "incrementalDeltaX":I
    goto :goto_2

    .line 7713
    .end local v2    # "incrementalDeltaX":I
    .restart local p2    # "incrementalDeltaX":I
    :cond_4
    add-int/lit8 v4, v17, -0x1

    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 7716
    .end local p2    # "incrementalDeltaX":I
    .restart local v2    # "incrementalDeltaX":I
    :goto_2
    iget v4, v0, Landroid/widget/SemHorizontalAbsListView;->mFirstPosition:I

    .line 7719
    .local v4, "firstPosition":I
    if-nez v4, :cond_6

    .line 7720
    iget-boolean v14, v0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    if-eqz v14, :cond_5

    .line 7721
    iget v14, v10, Landroid/graphics/Rect;->right:I

    add-int/2addr v14, v8

    iput v14, v0, Landroid/widget/SemHorizontalAbsListView;->mFirstPositionDistanceGuess:I

    goto :goto_3

    .line 7723
    :cond_5
    iget v14, v10, Landroid/graphics/Rect;->left:I

    sub-int v14, v6, v14

    iput v14, v0, Landroid/widget/SemHorizontalAbsListView;->mFirstPositionDistanceGuess:I

    goto :goto_3

    .line 7725
    :cond_6
    iget v14, v0, Landroid/widget/SemHorizontalAbsListView;->mFirstPositionDistanceGuess:I

    add-int/2addr v14, v2

    iput v14, v0, Landroid/widget/SemHorizontalAbsListView;->mFirstPositionDistanceGuess:I

    .line 7727
    :goto_3
    add-int v14, v4, v3

    move/from16 v20, v11

    .end local v11    # "effectivePaddingLeft":I
    .local v20, "effectivePaddingLeft":I
    iget v11, v0, Landroid/widget/SemHorizontalAbsListView;->mItemCount:I

    if-ne v14, v11, :cond_8

    .line 7729
    iget-boolean v11, v0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    if-eqz v11, :cond_7

    .line 7730
    iget v11, v10, Landroid/graphics/Rect;->left:I

    add-int/2addr v11, v9

    iput v11, v0, Landroid/widget/SemHorizontalAbsListView;->mFirstPositionDistanceGuess:I

    goto :goto_4

    .line 7732
    :cond_7
    iget v11, v10, Landroid/graphics/Rect;->right:I

    add-int/2addr v11, v7

    iput v11, v0, Landroid/widget/SemHorizontalAbsListView;->mLastPositionDistanceGuess:I

    goto :goto_4

    .line 7734
    :cond_8
    iget v11, v0, Landroid/widget/SemHorizontalAbsListView;->mLastPositionDistanceGuess:I

    add-int/2addr v11, v2

    iput v11, v0, Landroid/widget/SemHorizontalAbsListView;->mLastPositionDistanceGuess:I

    .line 7739
    :goto_4
    iget-boolean v11, v0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    if-eqz v11, :cond_c

    .line 7740
    add-int v11, v4, v3

    iget v14, v0, Landroid/widget/SemHorizontalAbsListView;->mItemCount:I

    if-ne v11, v14, :cond_9

    iget v11, v10, Landroid/graphics/Rect;->left:I

    if-lt v9, v11, :cond_9

    if-ltz v2, :cond_9

    const/4 v11, 0x1

    goto :goto_5

    :cond_9
    const/4 v11, 0x0

    .line 7741
    .local v11, "cannotScrollRight":Z
    :goto_5
    if-nez v4, :cond_a

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->getWidth()I

    move-result v14

    move/from16 v21, v9

    .end local v9    # "lastLeft":I
    .local v21, "lastLeft":I
    iget v9, v10, Landroid/graphics/Rect;->right:I

    sub-int/2addr v14, v9

    if-gt v8, v14, :cond_b

    if-gtz v2, :cond_b

    const/4 v9, 0x1

    goto :goto_6

    .end local v21    # "lastLeft":I
    .restart local v9    # "lastLeft":I
    :cond_a
    move/from16 v21, v9

    .end local v9    # "lastLeft":I
    .restart local v21    # "lastLeft":I
    :cond_b
    const/4 v9, 0x0

    .local v9, "cannotScrollLeft":Z
    :goto_6
    goto :goto_8

    .line 7743
    .end local v11    # "cannotScrollRight":Z
    .end local v21    # "lastLeft":I
    .local v9, "lastLeft":I
    :cond_c
    move/from16 v21, v9

    .end local v9    # "lastLeft":I
    .restart local v21    # "lastLeft":I
    if-nez v4, :cond_d

    iget v9, v10, Landroid/graphics/Rect;->left:I

    if-lt v6, v9, :cond_d

    if-ltz v2, :cond_d

    const/4 v9, 0x1

    goto :goto_7

    :cond_d
    const/4 v9, 0x0

    :goto_7
    move v11, v9

    .line 7744
    .restart local v11    # "cannotScrollRight":Z
    add-int v9, v4, v3

    iget v14, v0, Landroid/widget/SemHorizontalAbsListView;->mItemCount:I

    if-ne v9, v14, :cond_e

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->getWidth()I

    move-result v9

    iget v14, v10, Landroid/graphics/Rect;->right:I

    sub-int/2addr v9, v14

    if-gt v7, v9, :cond_e

    if-gtz v2, :cond_e

    const/4 v9, 0x1

    goto :goto_8

    :cond_e
    const/4 v9, 0x0

    .line 7747
    .local v9, "cannotScrollLeft":Z
    :goto_8
    if-nez v11, :cond_31

    if-eqz v9, :cond_f

    move/from16 v18, v1

    move/from16 v19, v3

    move/from16 v23, v6

    move/from16 v24, v7

    move/from16 v27, v8

    move/from16 p1, v9

    move/from16 p2, v11

    move/from16 v28, v12

    const/4 v1, 0x0

    const/4 v9, 0x1

    goto/16 :goto_1b

    .line 7750
    :cond_f
    if-gez v2, :cond_10

    const/4 v14, 0x1

    goto :goto_9

    :cond_10
    const/4 v14, 0x0

    .line 7752
    .local v14, "rightSide":Z
    :goto_9
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->isInTouchMode()Z

    move-result v22

    .line 7753
    .local v22, "inTouchMode":Z
    if-eqz v22, :cond_11

    .line 7754
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->hideSelector()V

    .line 7757
    :cond_11
    move/from16 v23, v6

    .end local v6    # "firstLeft":I
    .local v23, "firstLeft":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->getHeaderViewsCount()I

    move-result v6

    .line 7758
    .local v6, "headerViewsCount":I
    move/from16 v24, v7

    .end local v7    # "lastRight":I
    .local v24, "lastRight":I
    iget v7, v0, Landroid/widget/SemHorizontalAbsListView;->mItemCount:I

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->getFooterViewsCount()I

    move-result v25

    sub-int v7, v7, v25

    .line 7760
    .local v7, "footerViewsStart":I
    const/16 v25, 0x0

    .line 7761
    .local v25, "start":I
    const/16 v26, 0x0

    .line 7763
    .local v26, "count":I
    move/from16 v27, v8

    .end local v8    # "firstRight":I
    .local v27, "firstRight":I
    iget-boolean v8, v0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    if-eqz v8, :cond_1b

    .line 7764
    if-eqz v14, :cond_16

    .line 7767
    neg-int v8, v2

    .line 7768
    .local v8, "left":I
    move/from16 p1, v9

    .end local v9    # "cannotScrollLeft":Z
    .local p1, "cannotScrollLeft":Z
    iget v9, v0, Landroid/widget/SemHorizontalAbsListView;->mGroupFlags:I

    move/from16 p2, v11

    const/16 v11, 0x22

    .end local v11    # "cannotScrollRight":Z
    .local p2, "cannotScrollRight":Z
    and-int/2addr v9, v11

    if-ne v9, v11, :cond_12

    .line 7769
    iget v9, v10, Landroid/graphics/Rect;->left:I

    add-int/2addr v8, v9

    .line 7771
    :cond_12
    add-int/lit8 v9, v3, -0x1

    .local v9, "i":I
    :goto_a
    if-ltz v9, :cond_15

    .line 7772
    invoke-virtual {v0, v9}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 7773
    .local v11, "child":Landroid/view/View;
    move/from16 v28, v12

    .end local v12    # "effectivePaddingRight":I
    .local v28, "effectivePaddingRight":I
    invoke-virtual {v11}, Landroid/view/View;->getRight()I

    move-result v12

    if-lt v12, v8, :cond_13

    .line 7775
    goto :goto_c

    .line 7777
    :cond_13
    move/from16 v25, v9

    .line 7778
    add-int/lit8 v26, v26, 0x1

    .line 7779
    add-int v12, v4, v9

    .line 7780
    .local v12, "position":I
    invoke-virtual {v11}, Landroid/view/View;->clearAccessibilityFocus()V

    .line 7781
    if-lt v12, v6, :cond_14

    if-ge v12, v7, :cond_14

    .line 7784
    move/from16 v19, v8

    .end local v8    # "left":I
    .local v19, "left":I
    iget-object v8, v0, Landroid/widget/SemHorizontalAbsListView;->mRecycler:Landroid/widget/SemHorizontalAbsListView$RecycleBin;

    invoke-virtual {v8, v11, v12}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    goto :goto_b

    .line 7781
    .end local v19    # "left":I
    .restart local v8    # "left":I
    :cond_14
    move/from16 v19, v8

    .line 7771
    .end local v8    # "left":I
    .end local v11    # "child":Landroid/view/View;
    .end local v12    # "position":I
    .restart local v19    # "left":I
    :goto_b
    add-int/lit8 v9, v9, -0x1

    move/from16 v8, v19

    move/from16 v12, v28

    goto :goto_a

    .end local v19    # "left":I
    .end local v28    # "effectivePaddingRight":I
    .restart local v8    # "left":I
    .local v12, "effectivePaddingRight":I
    :cond_15
    move/from16 v19, v8

    move/from16 v28, v12

    .line 7789
    .end local v8    # "left":I
    .end local v9    # "i":I
    .end local v12    # "effectivePaddingRight":I
    .restart local v28    # "effectivePaddingRight":I
    :goto_c
    move/from16 v19, v3

    move/from16 v3, v25

    move/from16 v8, v26

    goto/16 :goto_16

    .line 7791
    .end local v28    # "effectivePaddingRight":I
    .end local p1    # "cannotScrollLeft":Z
    .end local p2    # "cannotScrollRight":Z
    .local v9, "cannotScrollLeft":Z
    .local v11, "cannotScrollRight":Z
    .restart local v12    # "effectivePaddingRight":I
    :cond_16
    move/from16 p1, v9

    move/from16 p2, v11

    move/from16 v28, v12

    .end local v9    # "cannotScrollLeft":Z
    .end local v11    # "cannotScrollRight":Z
    .end local v12    # "effectivePaddingRight":I
    .restart local v28    # "effectivePaddingRight":I
    .restart local p1    # "cannotScrollLeft":Z
    .restart local p2    # "cannotScrollRight":Z
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->getWidth()I

    move-result v8

    sub-int/2addr v8, v2

    .line 7792
    .local v8, "right":I
    iget v9, v0, Landroid/widget/SemHorizontalAbsListView;->mGroupFlags:I

    const/16 v11, 0x22

    and-int/2addr v9, v11

    if-ne v9, v11, :cond_17

    .line 7793
    iget v9, v10, Landroid/graphics/Rect;->right:I

    sub-int/2addr v8, v9

    .line 7795
    :cond_17
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_d
    if-ge v9, v3, :cond_1a

    .line 7796
    invoke-virtual {v0, v9}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 7797
    .local v11, "child":Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getLeft()I

    move-result v12

    if-gt v12, v8, :cond_18

    .line 7798
    goto :goto_f

    .line 7801
    :cond_18
    add-int/lit8 v26, v26, 0x1

    .line 7802
    add-int v12, v4, v9

    .line 7803
    .local v12, "position":I
    invoke-virtual {v11}, Landroid/view/View;->clearAccessibilityFocus()V

    .line 7804
    if-lt v12, v6, :cond_19

    if-ge v12, v7, :cond_19

    .line 7808
    move/from16 v19, v8

    .end local v8    # "right":I
    .local v19, "right":I
    iget-object v8, v0, Landroid/widget/SemHorizontalAbsListView;->mRecycler:Landroid/widget/SemHorizontalAbsListView$RecycleBin;

    invoke-virtual {v8, v11, v12}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    goto :goto_e

    .line 7804
    .end local v19    # "right":I
    .restart local v8    # "right":I
    :cond_19
    move/from16 v19, v8

    .line 7795
    .end local v8    # "right":I
    .end local v11    # "child":Landroid/view/View;
    .end local v12    # "position":I
    .restart local v19    # "right":I
    :goto_e
    add-int/lit8 v9, v9, 0x1

    move/from16 v8, v19

    goto :goto_d

    .end local v19    # "right":I
    .restart local v8    # "right":I
    :cond_1a
    move/from16 v19, v8

    .line 7813
    .end local v8    # "right":I
    .end local v9    # "i":I
    :goto_f
    move/from16 v19, v3

    move/from16 v3, v25

    move/from16 v8, v26

    goto/16 :goto_16

    .line 7815
    .end local v28    # "effectivePaddingRight":I
    .end local p1    # "cannotScrollLeft":Z
    .end local p2    # "cannotScrollRight":Z
    .local v9, "cannotScrollLeft":Z
    .local v11, "cannotScrollRight":Z
    .local v12, "effectivePaddingRight":I
    :cond_1b
    move/from16 p1, v9

    move/from16 p2, v11

    move/from16 v28, v12

    .end local v9    # "cannotScrollLeft":Z
    .end local v11    # "cannotScrollRight":Z
    .end local v12    # "effectivePaddingRight":I
    .restart local v28    # "effectivePaddingRight":I
    .restart local p1    # "cannotScrollLeft":Z
    .restart local p2    # "cannotScrollRight":Z
    if-eqz v14, :cond_20

    .line 7817
    neg-int v8, v2

    .line 7818
    .local v8, "left":I
    iget v9, v0, Landroid/widget/SemHorizontalAbsListView;->mGroupFlags:I

    const/16 v11, 0x22

    and-int/2addr v9, v11

    if-ne v9, v11, :cond_1c

    .line 7819
    iget v9, v10, Landroid/graphics/Rect;->left:I

    add-int/2addr v8, v9

    .line 7821
    :cond_1c
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_10
    if-ge v9, v3, :cond_1f

    .line 7822
    invoke-virtual {v0, v9}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 7823
    .local v11, "child":Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getRight()I

    move-result v12

    if-lt v12, v8, :cond_1d

    .line 7824
    goto :goto_12

    .line 7828
    :cond_1d
    add-int/lit8 v26, v26, 0x1

    .line 7829
    add-int v12, v4, v9

    .line 7830
    .local v12, "position":I
    invoke-virtual {v11}, Landroid/view/View;->clearAccessibilityFocus()V

    .line 7831
    if-lt v12, v6, :cond_1e

    if-ge v12, v7, :cond_1e

    .line 7835
    move/from16 v19, v8

    .end local v8    # "left":I
    .local v19, "left":I
    iget-object v8, v0, Landroid/widget/SemHorizontalAbsListView;->mRecycler:Landroid/widget/SemHorizontalAbsListView$RecycleBin;

    invoke-virtual {v8, v11, v12}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    goto :goto_11

    .line 7831
    .end local v19    # "left":I
    .restart local v8    # "left":I
    :cond_1e
    move/from16 v19, v8

    .line 7821
    .end local v8    # "left":I
    .end local v11    # "child":Landroid/view/View;
    .end local v12    # "position":I
    .restart local v19    # "left":I
    :goto_11
    add-int/lit8 v9, v9, 0x1

    move/from16 v8, v19

    goto :goto_10

    .end local v19    # "left":I
    .restart local v8    # "left":I
    :cond_1f
    move/from16 v19, v8

    .line 7839
    .end local v8    # "left":I
    .end local v9    # "i":I
    :goto_12
    move/from16 v19, v3

    move/from16 v3, v25

    move/from16 v8, v26

    goto :goto_16

    .line 7841
    :cond_20
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->getWidth()I

    move-result v8

    sub-int/2addr v8, v2

    .line 7842
    .local v8, "right":I
    iget v9, v0, Landroid/widget/SemHorizontalAbsListView;->mGroupFlags:I

    const/16 v11, 0x22

    and-int/2addr v9, v11

    if-ne v9, v11, :cond_21

    .line 7843
    iget v9, v10, Landroid/graphics/Rect;->right:I

    sub-int/2addr v8, v9

    .line 7845
    :cond_21
    add-int/lit8 v9, v3, -0x1

    .restart local v9    # "i":I
    :goto_13
    if-ltz v9, :cond_24

    .line 7846
    invoke-virtual {v0, v9}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 7847
    .restart local v11    # "child":Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getLeft()I

    move-result v12

    if-gt v12, v8, :cond_22

    .line 7848
    move/from16 v19, v3

    goto :goto_15

    .line 7850
    :cond_22
    move/from16 v25, v9

    .line 7851
    add-int/lit8 v26, v26, 0x1

    .line 7852
    add-int v12, v4, v9

    .line 7853
    .restart local v12    # "position":I
    invoke-virtual {v11}, Landroid/view/View;->clearAccessibilityFocus()V

    .line 7854
    if-lt v12, v6, :cond_23

    if-ge v12, v7, :cond_23

    .line 7857
    move/from16 v19, v3

    .end local v3    # "childCount":I
    .local v19, "childCount":I
    iget-object v3, v0, Landroid/widget/SemHorizontalAbsListView;->mRecycler:Landroid/widget/SemHorizontalAbsListView$RecycleBin;

    invoke-virtual {v3, v11, v12}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    goto :goto_14

    .line 7854
    .end local v19    # "childCount":I
    .restart local v3    # "childCount":I
    :cond_23
    move/from16 v19, v3

    .line 7845
    .end local v3    # "childCount":I
    .end local v11    # "child":Landroid/view/View;
    .end local v12    # "position":I
    .restart local v19    # "childCount":I
    :goto_14
    add-int/lit8 v9, v9, -0x1

    move/from16 v3, v19

    goto :goto_13

    .end local v19    # "childCount":I
    .restart local v3    # "childCount":I
    :cond_24
    move/from16 v19, v3

    .line 7863
    .end local v3    # "childCount":I
    .end local v8    # "right":I
    .end local v9    # "i":I
    .restart local v19    # "childCount":I
    :goto_15
    move/from16 v3, v25

    move/from16 v8, v26

    .end local v25    # "start":I
    .end local v26    # "count":I
    .local v3, "start":I
    .local v8, "count":I
    :goto_16
    iget v9, v0, Landroid/widget/SemHorizontalAbsListView;->mMotionViewOriginalLeft:I

    add-int/2addr v9, v1

    iput v9, v0, Landroid/widget/SemHorizontalAbsListView;->mMotionViewNewLeft:I

    .line 7865
    const/4 v9, 0x1

    iput-boolean v9, v0, Landroid/widget/SemHorizontalAbsListView;->mBlockLayoutRequests:Z

    .line 7867
    if-lez v8, :cond_25

    .line 7868
    invoke-virtual {v0, v3, v8}, Landroid/widget/SemHorizontalAbsListView;->detachViewsFromParent(II)V

    .line 7869
    iget-object v9, v0, Landroid/widget/SemHorizontalAbsListView;->mRecycler:Landroid/widget/SemHorizontalAbsListView$RecycleBin;

    invoke-virtual {v9}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->removeSkippedScrap()V

    .line 7874
    :cond_25
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->awakenScrollBars()Z

    move-result v9

    if-nez v9, :cond_26

    .line 7875
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->invalidate()V

    .line 7878
    :cond_26
    invoke-virtual {v0, v2}, Landroid/widget/SemHorizontalAbsListView;->semOffsetChildrenLeftAndRight(I)V

    .line 7880
    iget-boolean v9, v0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    if-eqz v9, :cond_27

    if-nez v14, :cond_27

    .line 7881
    iget v9, v0, Landroid/widget/SemHorizontalAbsListView;->mFirstPosition:I

    add-int/2addr v9, v8

    iput v9, v0, Landroid/widget/SemHorizontalAbsListView;->mFirstPosition:I

    goto :goto_17

    .line 7882
    :cond_27
    if-nez v9, :cond_28

    if-eqz v14, :cond_28

    .line 7883
    iget v9, v0, Landroid/widget/SemHorizontalAbsListView;->mFirstPosition:I

    add-int/2addr v9, v8

    iput v9, v0, Landroid/widget/SemHorizontalAbsListView;->mFirstPosition:I

    .line 7885
    :cond_28
    :goto_17
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v9

    .line 7886
    .local v9, "absIncrementalDeltaX":I
    iget-boolean v11, v0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    if-eqz v11, :cond_2a

    .line 7887
    if-lt v15, v9, :cond_29

    if-ge v5, v9, :cond_2c

    .line 7888
    :cond_29
    invoke-virtual {v0, v14}, Landroid/widget/SemHorizontalAbsListView;->fillGapRTL(Z)V

    goto :goto_18

    .line 7891
    :cond_2a
    if-lt v15, v9, :cond_2b

    if-ge v5, v9, :cond_2c

    .line 7892
    :cond_2b
    invoke-virtual {v0, v14}, Landroid/widget/SemHorizontalAbsListView;->fillGap(Z)V

    .line 7897
    :cond_2c
    :goto_18
    const/4 v11, -0x1

    if-nez v22, :cond_2e

    iget v12, v0, Landroid/widget/SemHorizontalAbsListView;->mSelectedPosition:I

    if-eq v12, v11, :cond_2e

    .line 7898
    iget v11, v0, Landroid/widget/SemHorizontalAbsListView;->mSelectedPosition:I

    iget v12, v0, Landroid/widget/SemHorizontalAbsListView;->mFirstPosition:I

    sub-int/2addr v11, v12

    .line 7899
    .local v11, "childIndex":I
    if-ltz v11, :cond_2d

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->getChildCount()I

    move-result v12

    if-ge v11, v12, :cond_2d

    .line 7900
    iget v12, v0, Landroid/widget/SemHorizontalAbsListView;->mSelectedPosition:I

    move/from16 v18, v1

    .end local v1    # "deltaX":I
    .local v18, "deltaX":I
    invoke-virtual {v0, v11}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v12, v1}, Landroid/widget/SemHorizontalAbsListView;->positionSelector(ILandroid/view/View;)V

    goto :goto_19

    .line 7899
    .end local v18    # "deltaX":I
    .restart local v1    # "deltaX":I
    :cond_2d
    move/from16 v18, v1

    .line 7902
    .end local v1    # "deltaX":I
    .end local v11    # "childIndex":I
    .restart local v18    # "deltaX":I
    :goto_19
    goto :goto_1a

    .line 7897
    .end local v18    # "deltaX":I
    .restart local v1    # "deltaX":I
    :cond_2e
    move/from16 v18, v1

    .line 7902
    .end local v1    # "deltaX":I
    .restart local v18    # "deltaX":I
    iget v1, v0, Landroid/widget/SemHorizontalAbsListView;->mSelectorPosition:I

    if-eq v1, v11, :cond_30

    .line 7903
    iget v12, v0, Landroid/widget/SemHorizontalAbsListView;->mFirstPosition:I

    sub-int/2addr v1, v12

    .line 7904
    .local v1, "childIndex":I
    if-ltz v1, :cond_2f

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->getChildCount()I

    move-result v12

    if-ge v1, v12, :cond_2f

    .line 7905
    invoke-virtual {v0, v1}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    invoke-virtual {v0, v11, v12}, Landroid/widget/SemHorizontalAbsListView;->positionSelector(ILandroid/view/View;)V

    .line 7907
    .end local v1    # "childIndex":I
    :cond_2f
    goto :goto_1a

    .line 7908
    :cond_30
    iget-object v1, v0, Landroid/widget/SemHorizontalAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    .line 7911
    :goto_1a
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/widget/SemHorizontalAbsListView;->mBlockLayoutRequests:Z

    .line 7913
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->invokeOnItemScrollListener()V

    .line 7915
    return v1

    .line 7747
    .end local v14    # "rightSide":Z
    .end local v18    # "deltaX":I
    .end local v19    # "childCount":I
    .end local v22    # "inTouchMode":Z
    .end local v23    # "firstLeft":I
    .end local v24    # "lastRight":I
    .end local v27    # "firstRight":I
    .end local v28    # "effectivePaddingRight":I
    .end local p1    # "cannotScrollLeft":Z
    .end local p2    # "cannotScrollRight":Z
    .local v1, "deltaX":I
    .local v3, "childCount":I
    .local v6, "firstLeft":I
    .local v7, "lastRight":I
    .local v8, "firstRight":I
    .local v9, "cannotScrollLeft":Z
    .local v11, "cannotScrollRight":Z
    .local v12, "effectivePaddingRight":I
    :cond_31
    move/from16 v18, v1

    move/from16 v19, v3

    move/from16 v23, v6

    move/from16 v24, v7

    move/from16 v27, v8

    move/from16 p1, v9

    move/from16 p2, v11

    move/from16 v28, v12

    const/4 v1, 0x0

    const/4 v9, 0x1

    .line 7748
    .end local v1    # "deltaX":I
    .end local v3    # "childCount":I
    .end local v6    # "firstLeft":I
    .end local v7    # "lastRight":I
    .end local v8    # "firstRight":I
    .end local v9    # "cannotScrollLeft":Z
    .end local v11    # "cannotScrollRight":Z
    .end local v12    # "effectivePaddingRight":I
    .restart local v18    # "deltaX":I
    .restart local v19    # "childCount":I
    .restart local v23    # "firstLeft":I
    .restart local v24    # "lastRight":I
    .restart local v27    # "firstRight":I
    .restart local v28    # "effectivePaddingRight":I
    .restart local p1    # "cannotScrollLeft":Z
    .restart local p2    # "cannotScrollRight":Z
    :goto_1b
    if-eqz v2, :cond_32

    move v1, v9

    :cond_32
    return v1
.end method

.method blacklist triggerDoubleFling(I)V
    .locals 4
    .param p1, "initialVelocity"    # I

    .line 6416
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 6417
    .local v0, "adapterCount":I
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getChildCount()I

    move-result v1

    .line 6419
    .local v1, "visibleItemsCount":I
    if-lez p1, :cond_1

    .line 6420
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getLastVisiblePosition()I

    move-result v2

    mul-int/lit8 v3, v1, 0x2

    if-le v2, v3, :cond_0

    .line 6421
    mul-int/lit8 v2, v1, 0x2

    invoke-virtual {p0, v2}, Landroid/widget/SemHorizontalAbsListView;->setSelection(I)V

    .line 6423
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/widget/SemHorizontalAbsListView;->smoothScrollToPosition(I)V

    goto :goto_0

    .line 6424
    :cond_1
    if-gez p1, :cond_3

    .line 6425
    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getFirstVisiblePosition()I

    move-result v3

    sub-int/2addr v2, v3

    mul-int/lit8 v3, v1, 0x3

    if-le v2, v3, :cond_2

    .line 6426
    add-int/lit8 v2, v0, -0x1

    mul-int/lit8 v3, v1, 0x3

    sub-int/2addr v2, v3

    invoke-virtual {p0, v2}, Landroid/widget/SemHorizontalAbsListView;->setSelection(I)V

    .line 6428
    :cond_2
    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p0, v2}, Landroid/widget/SemHorizontalAbsListView;->smoothScrollToPosition(I)V

    .line 6430
    :cond_3
    :goto_0
    return-void
.end method

.method blacklist triggerJumpScrollToTop()V
    .locals 1

    .line 6393
    sget v0, Landroid/widget/SemHorizontalAbsListView;->JUMP_SCROLL_TO_TOP_INITIATED:I

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mJumpScrollToTopState:I

    .line 6394
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/SemHorizontalAbsListView;->triggerDoubleFling(I)V

    .line 6395
    return-void
.end method

.method public blacklist updateCustomEdgeGlow(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "edgeeffectCustomEdge"    # Landroid/graphics/drawable/Drawable;
    .param p2, "edgeeffectCustomGlow"    # Landroid/graphics/drawable/Drawable;

    .line 1082
    return-void
.end method

.method blacklist updateScrollIndicators()V
    .locals 9

    .line 3129
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mScrollLeft:Landroid/view/View;

    const/4 v1, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_6

    .line 3131
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getChildCount()I

    move-result v0

    .line 3133
    .local v0, "count":I
    iget-boolean v4, p0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    if-eqz v4, :cond_0

    iget v4, p0, Landroid/widget/SemHorizontalAbsListView;->mFirstPosition:I

    add-int/2addr v4, v0

    iget v5, p0, Landroid/widget/SemHorizontalAbsListView;->mItemCount:I

    if-ge v4, v5, :cond_1

    goto :goto_0

    :cond_0
    iget v4, p0, Landroid/widget/SemHorizontalAbsListView;->mFirstPosition:I

    if-lez v4, :cond_1

    :goto_0
    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v3

    .line 3137
    .local v4, "canScrollLeft":Z
    :goto_1
    if-nez v4, :cond_4

    if-lez v0, :cond_4

    .line 3138
    iget-boolean v5, p0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    if-eqz v5, :cond_2

    add-int/lit8 v5, v0, -0x1

    invoke-virtual {p0, v5}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    goto :goto_2

    :cond_2
    invoke-virtual {p0, v3}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 3140
    .local v5, "child":Landroid/view/View;
    :goto_2
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v6

    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    if-ge v6, v7, :cond_3

    move v6, v2

    goto :goto_3

    :cond_3
    move v6, v3

    :goto_3
    move v4, v6

    .line 3143
    .end local v5    # "child":Landroid/view/View;
    :cond_4
    iget-object v5, p0, Landroid/widget/SemHorizontalAbsListView;->mScrollLeft:Landroid/view/View;

    if-eqz v4, :cond_5

    move v6, v3

    goto :goto_4

    :cond_5
    move v6, v1

    :goto_4
    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 3146
    .end local v0    # "count":I
    .end local v4    # "canScrollLeft":Z
    :cond_6
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mScrollRight:Landroid/view/View;

    if-eqz v0, :cond_d

    .line 3148
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getChildCount()I

    move-result v0

    .line 3151
    .restart local v0    # "count":I
    iget-boolean v4, p0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    if-eqz v4, :cond_7

    iget v4, p0, Landroid/widget/SemHorizontalAbsListView;->mFirstPosition:I

    if-lez v4, :cond_8

    goto :goto_5

    :cond_7
    iget v4, p0, Landroid/widget/SemHorizontalAbsListView;->mFirstPosition:I

    add-int/2addr v4, v0

    iget v5, p0, Landroid/widget/SemHorizontalAbsListView;->mItemCount:I

    if-ge v4, v5, :cond_8

    :goto_5
    move v4, v2

    goto :goto_6

    :cond_8
    move v4, v3

    .line 3154
    .local v4, "canScrollRight":Z
    :goto_6
    if-nez v4, :cond_b

    if-lez v0, :cond_b

    .line 3155
    iget-boolean v5, p0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    if-eqz v5, :cond_9

    invoke-virtual {p0, v3}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    goto :goto_7

    :cond_9
    add-int/lit8 v5, v0, -0x1

    invoke-virtual {p0, v5}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 3156
    .restart local v5    # "child":Landroid/view/View;
    :goto_7
    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v6

    iget v7, p0, Landroid/widget/SemHorizontalAbsListView;->mRight:I

    iget-object v8, p0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    sub-int/2addr v7, v8

    if-le v6, v7, :cond_a

    goto :goto_8

    :cond_a
    move v2, v3

    :goto_8
    move v4, v2

    .line 3159
    .end local v5    # "child":Landroid/view/View;
    :cond_b
    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mScrollRight:Landroid/view/View;

    if-eqz v4, :cond_c

    move v1, v3

    :cond_c
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3161
    .end local v0    # "count":I
    .end local v4    # "canScrollRight":Z
    :cond_d
    return-void
.end method

.method blacklist updateSelectorState()V
    .locals 3

    .line 3921
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    .line 3922
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->shouldShowSelector()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3923
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->isHovered()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mIsHoveredByMouse:Z

    if-nez v0, :cond_1

    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectorPosition:I

    iget v1, p0, Landroid/widget/SemHorizontalAbsListView;->mFirstPosition:I

    if-lt v0, v1, :cond_1

    .line 3924
    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectorPosition:I

    iget v1, p0, Landroid/widget/SemHorizontalAbsListView;->mFirstPosition:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3925
    .local v0, "child":Landroid/view/View;
    iget-boolean v1, p0, Landroid/widget/SemHorizontalAbsListView;->mIsPenHovered:Z

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3926
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    sget-object v2, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 3927
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_0

    .line 3929
    :cond_0
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getDrawableState()[I

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 3931
    .end local v0    # "child":Landroid/view/View;
    :goto_0
    goto :goto_1

    .line 3932
    :cond_1
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_1

    .line 3935
    :cond_2
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    sget-object v1, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 3938
    :cond_3
    :goto_1
    return-void
.end method

.method public whitelist verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "dr"    # Landroid/graphics/drawable/Drawable;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4035
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_1

    invoke-super {p0, p1}, Landroid/widget/AdapterView;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

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
