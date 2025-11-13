.class public Landroidx/recyclerview/widget/RecyclerView;
.super Landroid/view/ViewGroup;
.source "RecyclerView.java"

# interfaces
.implements Landroidx/core/view/NestedScrollingChild2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/RecyclerView$SeslLongPressMultiSelectionListener;,
        Landroidx/recyclerview/widget/RecyclerView$IndexTip;,
        Landroidx/recyclerview/widget/RecyclerView$SeslOnGoToTopClickListener;,
        Landroidx/recyclerview/widget/RecyclerView$ChildDrawingOrderCallback;,
        Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;,
        Landroidx/recyclerview/widget/RecyclerView$ItemAnimatorRestoreListener;,
        Landroidx/recyclerview/widget/RecyclerView$OnFlingListener;,
        Landroidx/recyclerview/widget/RecyclerView$State;,
        Landroidx/recyclerview/widget/RecyclerView$SavedState;,
        Landroidx/recyclerview/widget/RecyclerView$AdapterDataObservable;,
        Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;,
        Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;,
        Landroidx/recyclerview/widget/RecyclerView$LayoutParams;,
        Landroidx/recyclerview/widget/RecyclerView$ViewHolder;,
        Landroidx/recyclerview/widget/RecyclerView$OnChildAttachStateChangeListener;,
        Landroidx/recyclerview/widget/RecyclerView$RecyclerListener;,
        Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;,
        Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;,
        Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;,
        Landroidx/recyclerview/widget/RecyclerView$LayoutManager;,
        Landroidx/recyclerview/widget/RecyclerView$Adapter;,
        Landroidx/recyclerview/widget/RecyclerView$ViewCacheExtension;,
        Landroidx/recyclerview/widget/RecyclerView$Recycler;,
        Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;,
        Landroidx/recyclerview/widget/RecyclerView$StretchEdgeEffectFactory;,
        Landroidx/recyclerview/widget/RecyclerView$EdgeEffectFactory;,
        Landroidx/recyclerview/widget/RecyclerView$RecyclerViewDataObserver;,
        Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;,
        Landroidx/recyclerview/widget/RecyclerView$ScrollArrowDirection;
    }
.end annotation


# static fields
.field static final ALLOW_SIZE_IN_UNSPECIFIED_SPEC:Z

.field static final ALLOW_THREAD_GAP_WORK:Z

.field private static final FORCE_ABS_FOCUS_SEARCH_DIRECTION:Z

.field static final FORCE_INVALIDATE_DISPLAY_LIST:Z

.field private static HOVERSCROLL_SPEED:F

.field private static final IGNORE_DETACHED_FOCUSED_CHILD:Z

.field private static final LAYOUT_MANAGER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final LINEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final NESTED_SCROLLING_ATTRS:[I

.field static final POST_UPDATES_ON_ANIMATION:Z

.field static final sDefaultEdgeEffectFactory:Landroidx/recyclerview/widget/RecyclerView$StretchEdgeEffectFactory;

.field static final sQuinticInterpolator:Landroid/view/animation/Interpolator;


# instance fields
.field private final ON_ABSORB_VELOCITY:I

.field mAccessibilityDelegate:Landroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate;

.field private final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

.field mAdapterHelper:Landroidx/recyclerview/widget/AdapterHelper;

.field mAdapterUpdateDuringMeasure:Z

.field private mAnimListener:Landroid/animation/Animator$AnimatorListener;

.field private mAnimatedBlackTop:I

.field private final mAutoHide:Ljava/lang/Runnable;

.field mBlackTop:I

.field private mBottomGlow:Landroid/widget/EdgeEffect;

.field mChildBound:Landroid/graphics/Rect;

.field private mChildDrawingOrderCallback:Landroidx/recyclerview/widget/RecyclerView$ChildDrawingOrderCallback;

.field mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

.field mClipToPadding:Z

.field private mCloseChildByBottom:Landroid/view/View;

.field private mCloseChildByTop:Landroid/view/View;

.field private mCloseChildPositionByBottom:I

.field private mCloseChildPositionByTop:I

.field private mContext:Landroid/content/Context;

.field mDataSetHasChangedAfterLayout:Z

.field mDispatchItemsChangedEvent:Z

.field private mDispatchScrollCounter:I

.field private mDistanceFromCloseChildBottom:I

.field private mDistanceFromCloseChildTop:I

.field private mDrawLastRoundedCorner:Z

.field private mDrawRect:Z

.field private mDrawReverse:Z

.field private mEatenAccessibilityChangeFlags:I

.field private mEdgeEffectByDragging:Z

.field private mEdgeEffectFactory:Landroidx/recyclerview/widget/RecyclerView$EdgeEffectFactory;

.field private mEnableGoToTop:Z

.field private mExtraPaddingInBottomHoverArea:I

.field private mExtraPaddingInTopHoverArea:I

.field private mFastScroller:Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;

.field mFirstLayoutComplete:Z

.field private mFrameLatency:F

.field mGapWorker:Landroidx/recyclerview/widget/GapWorker;

.field private final mGoToToFadeInRunnable:Ljava/lang/Runnable;

.field private final mGoToToFadeOutRunnable:Ljava/lang/Runnable;

.field private mGoToTopBottomPadding:I

.field private final mGoToTopEdgeEffectRunnable:Ljava/lang/Runnable;

.field private mGoToTopElevation:I

.field private mGoToTopFadeInAnimator:Landroid/animation/ValueAnimator;

.field private mGoToTopFadeOutAnimator:Landroid/animation/ValueAnimator;

.field private mGoToTopImage:Landroid/graphics/drawable/Drawable;

.field private mGoToTopImmersiveBottomPadding:I

.field private mGoToTopLastState:I

.field private mGoToTopRect:Landroid/graphics/Rect;

.field private mGoToTopSize:I

.field private mGoToTopState:I

.field private mGoToTopView:Landroid/widget/ImageView;

.field private mGoToToping:Z

.field mHasFixedSize:Z

.field private mHasNestedScrollRange:Z

.field private mHoverAreaEnter:Z

.field private mHoverBottomAreaHeight:I

.field private mHoverHandler:Landroid/os/Handler;

.field private mHoverRecognitionCurrentTime:J

.field private mHoverRecognitionDurationTime:J

.field private mHoverRecognitionStartTime:J

.field mHoverScrollArrows:[I

.field private mHoverScrollDirection:I

.field private mHoverScrollEnable:Z

.field private mHoverScrollSpeed:I

.field private mHoverScrollStartTime:J

.field private mHoverScrollStateChanged:Z

.field private mHoverScrollStateForListener:I

.field private mHoverScrollTimeInterval:J

.field private mHoverTopAreaHeight:I

.field private mIgnoreMotionEventTillDown:Z

.field private mIndexTipEnabled:Z

.field private mInitialTopOffsetOfScreen:I

.field private mInitialTouchX:I

.field private mInitialTouchY:I

.field private mInterceptRequestLayoutDepth:I

.field private mInterceptingOnItemTouchListener:Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;

.field private mIsArrowKeyPressed:Z

.field mIsAttached:Z

.field private mIsCloseChildSetted:Z

.field private mIsCtrlKeyPressed:Z

.field private mIsCtrlMultiSelection:Z

.field private mIsEnabledPaddingInHoverScroll:Z

.field private mIsFirstMultiSelectionMove:Z

.field private mIsFirstPenMoveEvent:Z

.field private mIsHoverOverscrolled:Z

.field private mIsLongPressMultiSelection:Z

.field private mIsNeedCheckLatency:Z

.field private mIsNeedPenSelectIconSet:Z

.field private mIsNeedPenSelection:Z

.field private mIsPenDragBlockEnabled:Z

.field private mIsPenHovered:Z

.field private mIsPenPressed:Z

.field private mIsPenSelectPointerSetted:Z

.field private mIsPenSelectionEnabled:Z

.field private mIsSendHoverScrollState:Z

.field private mIsSetOnlyAddAnim:Z

.field private mIsSetOnlyRemoveAnim:Z

.field private mIsSkipMoveEvent:Z

.field mItemAnimator:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

.field private mItemAnimatorListener:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;

.field private mItemAnimatorRunner:Ljava/lang/Runnable;

.field final mItemDecorations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;",
            ">;"
        }
    .end annotation
.end field

.field mItemsAddedOrRemoved:Z

.field mItemsChanged:Z

.field private mLastAutoMeasureNonExactMeasuredHeight:I

.field private mLastAutoMeasureNonExactMeasuredWidth:I

.field private mLastAutoMeasureSkippedDueToExact:Z

.field private mLastBlackTop:I

.field private mLastItemAddRemoveAnim:Landroid/animation/ValueAnimator;

.field private mLastItemAnimTop:I

.field private mLastTouchX:I

.field private mLastTouchY:I

.field mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

.field private mLayoutOrScrollCounter:I

.field mLayoutSuppressed:Z

.field mLayoutWasDefered:Z

.field private mLeftGlow:Landroid/widget/EdgeEffect;

.field mListPadding:Landroid/graphics/Rect;

.field private mLongPressMultiSelectionListener:Landroidx/recyclerview/widget/RecyclerView$SeslLongPressMultiSelectionListener;

.field private mMaxFlingVelocity:I

.field private mMinFlingVelocity:I

.field private final mMinMaxLayoutPositions:[I

.field private final mMotionEventUpPendingFlag:I

.field private mNeedsHoverScroll:Z

.field private final mNestedOffsets:[I

.field private mNestedScrollRange:I

.field private mNewTextViewHoverState:Z

.field private final mObserver:Landroidx/recyclerview/widget/RecyclerView$RecyclerViewDataObserver;

.field private mOldHoverScrollDirection:I

.field private mOldTextViewHoverState:Z

.field private mOnChildAttachStateListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/recyclerview/widget/RecyclerView$OnChildAttachStateChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mOnFlingListener:Landroidx/recyclerview/widget/RecyclerView$OnFlingListener;

.field private mOnGoToTopClickListener:Landroidx/recyclerview/widget/RecyclerView$SeslOnGoToTopClickListener;

.field private final mOnItemTouchListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPagingTouchSlop:I

.field private mPenDistanceFromTrackedChildTop:I

.field private mPenDragBlockBottom:I

.field private mPenDragBlockImage:Landroid/graphics/drawable/Drawable;

.field private mPenDragBlockLeft:I

.field private mPenDragBlockRect:Landroid/graphics/Rect;

.field private mPenDragBlockRight:I

.field private mPenDragBlockTop:I

.field private mPenDragEndX:I

.field private mPenDragEndY:I

.field private mPenDragScrollTimeInterval:J

.field private mPenDragSelectedItemArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPenDragSelectedViewPosition:I

.field private mPenDragStartX:I

.field private mPenDragStartY:I

.field private mPenTrackedChild:Landroid/view/View;

.field private mPenTrackedChildPosition:I

.field final mPendingAccessibilityImportanceChange:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field mPendingSavedState:Landroidx/recyclerview/widget/RecyclerView$SavedState;

.field mPostedAnimatorRunner:Z

.field mPrefetchRegistry:Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;

.field private mPreserveFocusAfterLayout:Z

.field private mPreventFirstGlow:Z

.field private mRectColor:I

.field private mRectPaint:Landroid/graphics/Paint;

.field final mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

.field mRecyclerListener:Landroidx/recyclerview/widget/RecyclerView$RecyclerListener;

.field final mRecyclerListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/recyclerview/widget/RecyclerView$RecyclerListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mRecyclerViewOffsets:[I

.field private mRemainNestedScrollRange:I

.field final mReusableIntPair:[I

.field private mRightGlow:Landroid/widget/EdgeEffect;

.field private mRootViewCheckForDialog:Landroid/view/View;

.field private mRoundedCorner:Landroidx/appcompat/util/SeslSubheaderRoundedCorner;

.field private mScaledHorizontalScrollFactor:F

.field private mScaledVerticalScrollFactor:F

.field private mScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

.field private mScrollListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mScrollOffset:[I

.field private mScrollPointerId:I

.field private mScrollState:I

.field private mScrollingChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

.field mSelectorRect:Landroid/graphics/Rect;

.field private mShowFadeOutGTP:I

.field private mSizeChnage:Z

.field final mState:Landroidx/recyclerview/widget/RecyclerView$State;

.field final mTempRect:Landroid/graphics/Rect;

.field private final mTempRect2:Landroid/graphics/Rect;

.field final mTempRectF:Landroid/graphics/RectF;

.field private mTopGlow:Landroid/widget/EdgeEffect;

.field private mTouchSlop:I

.field private mTouchSlop2:I

.field final mUpdateChildViewsRunnable:Ljava/lang/Runnable;

.field private mUsePagingTouchSlopForStylus:Z

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field final mViewFlinger:Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;

.field private final mViewInfoProcessCallback:Landroidx/recyclerview/widget/ViewInfoStore$ProcessCallback;

.field final mViewInfoStore:Landroidx/recyclerview/widget/ViewInfoStore;

.field private final mWindowOffsets:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    const v2, 0x1010436

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 254
    sput-object v1, Landroidx/recyclerview/widget/RecyclerView;->NESTED_SCROLLING_ATTRS:[I

    .line 264
    sput-boolean v3, Landroidx/recyclerview/widget/RecyclerView;->FORCE_INVALIDATE_DISPLAY_LIST:Z

    .line 271
    sput-boolean v0, Landroidx/recyclerview/widget/RecyclerView;->ALLOW_SIZE_IN_UNSPECIFIED_SPEC:Z

    .line 273
    sput-boolean v0, Landroidx/recyclerview/widget/RecyclerView;->POST_UPDATES_ON_ANIMATION:Z

    .line 279
    sput-boolean v0, Landroidx/recyclerview/widget/RecyclerView;->ALLOW_THREAD_GAP_WORK:Z

    .line 285
    sput-boolean v3, Landroidx/recyclerview/widget/RecyclerView;->FORCE_ABS_FOCUS_SEARCH_DIRECTION:Z

    .line 295
    sput-boolean v3, Landroidx/recyclerview/widget/RecyclerView;->IGNORE_DETACHED_FOCUSED_CHILD:Z

    const/high16 v1, 0x41200000    # 10.0f

    .line 340
    sput v1, Landroidx/recyclerview/widget/RecyclerView;->HOVERSCROLL_SPEED:F

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Class;

    .line 442
    const-class v2, Landroid/content/Context;

    aput-object v2, v1, v3

    const-class v2, Landroid/util/AttributeSet;

    aput-object v2, v1, v0

    const/4 v0, 0x2

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, v0

    const/4 v0, 0x3

    aput-object v2, v1, v0

    sput-object v1, Landroidx/recyclerview/widget/RecyclerView;->LAYOUT_MANAGER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    .line 773
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Landroidx/recyclerview/widget/RecyclerView;->LINEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 1107
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$8;

    invoke-direct {v0}, Landroidx/recyclerview/widget/RecyclerView$8;-><init>()V

    sput-object v0, Landroidx/recyclerview/widget/RecyclerView;->sQuinticInterpolator:Landroid/view/animation/Interpolator;

    .line 1115
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$StretchEdgeEffectFactory;

    invoke-direct {v0}, Landroidx/recyclerview/widget/RecyclerView$StretchEdgeEffectFactory;-><init>()V

    sput-object v0, Landroidx/recyclerview/widget/RecyclerView;->sDefaultEdgeEffectFactory:Landroidx/recyclerview/widget/RecyclerView$StretchEdgeEffectFactory;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1182
    invoke-direct {p0, p1, v0}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 1186
    sget v0, Landroidx/recyclerview/R$attr;->recyclerViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 15

    move-object v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move/from16 v10, p3

    .line 1190
    invoke-direct/range {p0 .. p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 445
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$RecyclerViewDataObserver;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/RecyclerView$RecyclerViewDataObserver;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    iput-object v0, v7, Landroidx/recyclerview/widget/RecyclerView;->mObserver:Landroidx/recyclerview/widget/RecyclerView$RecyclerViewDataObserver;

    .line 447
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$Recycler;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/RecyclerView$Recycler;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    iput-object v0, v7, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    .line 464
    new-instance v0, Landroidx/recyclerview/widget/ViewInfoStore;

    invoke-direct {v0}, Landroidx/recyclerview/widget/ViewInfoStore;-><init>()V

    iput-object v0, v7, Landroidx/recyclerview/widget/RecyclerView;->mViewInfoStore:Landroidx/recyclerview/widget/ViewInfoStore;

    .line 478
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$1;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/RecyclerView$1;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    iput-object v0, v7, Landroidx/recyclerview/widget/RecyclerView;->mUpdateChildViewsRunnable:Ljava/lang/Runnable;

    .line 498
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, v7, Landroidx/recyclerview/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    .line 499
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, v7, Landroidx/recyclerview/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    .line 500
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, v7, Landroidx/recyclerview/widget/RecyclerView;->mTempRectF:Landroid/graphics/RectF;

    .line 507
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v7, Landroidx/recyclerview/widget/RecyclerView;->mRecyclerListeners:Ljava/util/List;

    .line 508
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v7, Landroidx/recyclerview/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    .line 509
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v7, Landroidx/recyclerview/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    const/4 v11, 0x0

    .line 524
    iput v11, v7, Landroidx/recyclerview/widget/RecyclerView;->mInterceptRequestLayoutDepth:I

    .line 554
    iput-boolean v11, v7, Landroidx/recyclerview/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    .line 563
    iput-boolean v11, v7, Landroidx/recyclerview/widget/RecyclerView;->mDispatchItemsChangedEvent:Z

    .line 573
    iput v11, v7, Landroidx/recyclerview/widget/RecyclerView;->mLayoutOrScrollCounter:I

    .line 582
    iput v11, v7, Landroidx/recyclerview/widget/RecyclerView;->mDispatchScrollCounter:I

    .line 584
    sget-object v0, Landroidx/recyclerview/widget/RecyclerView;->sDefaultEdgeEffectFactory:Landroidx/recyclerview/widget/RecyclerView$StretchEdgeEffectFactory;

    iput-object v0, v7, Landroidx/recyclerview/widget/RecyclerView;->mEdgeEffectFactory:Landroidx/recyclerview/widget/RecyclerView$EdgeEffectFactory;

    .line 588
    new-instance v0, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-direct {v0}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    iput-object v0, v7, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    .line 618
    iput v11, v7, Landroidx/recyclerview/widget/RecyclerView;->mScrollState:I

    const/4 v12, -0x1

    .line 619
    iput v12, v7, Landroidx/recyclerview/widget/RecyclerView;->mScrollPointerId:I

    const/4 v0, 0x1

    .line 631
    iput v0, v7, Landroidx/recyclerview/widget/RecyclerView;->mScaledHorizontalScrollFactor:F

    .line 632
    iput v0, v7, Landroidx/recyclerview/widget/RecyclerView;->mScaledVerticalScrollFactor:F

    const/4 v13, 0x1

    .line 634
    iput-boolean v13, v7, Landroidx/recyclerview/widget/RecyclerView;->mPreserveFocusAfterLayout:Z

    .line 636
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    iput-object v0, v7, Landroidx/recyclerview/widget/RecyclerView;->mViewFlinger:Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;

    .line 640
    sget-boolean v0, Landroidx/recyclerview/widget/RecyclerView;->ALLOW_THREAD_GAP_WORK:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v0, Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;

    invoke-direct {v0}, Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;-><init>()V

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iput-object v0, v7, Landroidx/recyclerview/widget/RecyclerView;->mPrefetchRegistry:Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;

    .line 642
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$State;

    invoke-direct {v0}, Landroidx/recyclerview/widget/RecyclerView$State;-><init>()V

    iput-object v0, v7, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    .line 648
    iput-boolean v11, v7, Landroidx/recyclerview/widget/RecyclerView;->mItemsAddedOrRemoved:Z

    .line 649
    iput-boolean v11, v7, Landroidx/recyclerview/widget/RecyclerView;->mItemsChanged:Z

    .line 650
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$ItemAnimatorRestoreListener;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimatorRestoreListener;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    iput-object v0, v7, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimatorListener:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;

    .line 652
    iput-boolean v11, v7, Landroidx/recyclerview/widget/RecyclerView;->mPostedAnimatorRunner:Z

    const/4 v0, 0x2

    new-array v2, v0, [I

    .line 658
    iput-object v2, v7, Landroidx/recyclerview/widget/RecyclerView;->mMinMaxLayoutPositions:[I

    new-array v2, v0, [I

    .line 661
    iput-object v2, v7, Landroidx/recyclerview/widget/RecyclerView;->mScrollOffset:[I

    new-array v2, v0, [I

    .line 662
    iput-object v2, v7, Landroidx/recyclerview/widget/RecyclerView;->mNestedOffsets:[I

    new-array v2, v0, [I

    .line 664
    iput-object v2, v7, Landroidx/recyclerview/widget/RecyclerView;->mWindowOffsets:[I

    .line 668
    iput-boolean v11, v7, Landroidx/recyclerview/widget/RecyclerView;->mEdgeEffectByDragging:Z

    const/16 v2, 0x2710

    .line 670
    iput v2, v7, Landroidx/recyclerview/widget/RecyclerView;->ON_ABSORB_VELOCITY:I

    .line 676
    iput-boolean v11, v7, Landroidx/recyclerview/widget/RecyclerView;->mIndexTipEnabled:Z

    new-array v2, v0, [I

    .line 677
    iput-object v2, v7, Landroidx/recyclerview/widget/RecyclerView;->mRecyclerViewOffsets:[I

    const/high16 v2, 0x2000000

    .line 683
    iput v2, v7, Landroidx/recyclerview/widget/RecyclerView;->mMotionEventUpPendingFlag:I

    .line 684
    iput-boolean v11, v7, Landroidx/recyclerview/widget/RecyclerView;->mIsSkipMoveEvent:Z

    const v2, 0x418547ae    # 16.66f

    .line 686
    iput v2, v7, Landroidx/recyclerview/widget/RecyclerView;->mFrameLatency:F

    .line 687
    iput-boolean v13, v7, Landroidx/recyclerview/widget/RecyclerView;->mIsNeedCheckLatency:Z

    .line 689
    iput-object v1, v7, Landroidx/recyclerview/widget/RecyclerView;->mLastItemAddRemoveAnim:Landroid/animation/ValueAnimator;

    .line 690
    iput-boolean v11, v7, Landroidx/recyclerview/widget/RecyclerView;->mIsSetOnlyAddAnim:Z

    .line 691
    iput-boolean v11, v7, Landroidx/recyclerview/widget/RecyclerView;->mIsSetOnlyRemoveAnim:Z

    .line 692
    iput v12, v7, Landroidx/recyclerview/widget/RecyclerView;->mLastItemAnimTop:I

    .line 694
    iput-boolean v11, v7, Landroidx/recyclerview/widget/RecyclerView;->mPreventFirstGlow:Z

    .line 696
    new-instance v2, Landroidx/recyclerview/widget/RecyclerView$2;

    invoke-direct {v2, p0}, Landroidx/recyclerview/widget/RecyclerView$2;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    iput-object v2, v7, Landroidx/recyclerview/widget/RecyclerView;->mAnimListener:Landroid/animation/Animator$AnimatorListener;

    new-array v2, v0, [I

    .line 724
    iput-object v2, v7, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    .line 727
    iput v11, v7, Landroidx/recyclerview/widget/RecyclerView;->mTouchSlop2:I

    .line 728
    iput v11, v7, Landroidx/recyclerview/widget/RecyclerView;->mPagingTouchSlop:I

    .line 729
    iput-boolean v11, v7, Landroidx/recyclerview/widget/RecyclerView;->mUsePagingTouchSlopForStylus:Z

    .line 733
    iput-object v1, v7, Landroidx/recyclerview/widget/RecyclerView;->mOnGoToTopClickListener:Landroidx/recyclerview/widget/RecyclerView$SeslOnGoToTopClickListener;

    .line 735
    new-instance v2, Landroidx/recyclerview/widget/RecyclerView$3;

    invoke-direct {v2, p0}, Landroidx/recyclerview/widget/RecyclerView$3;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    iput-object v2, v7, Landroidx/recyclerview/widget/RecyclerView;->mGoToToFadeOutRunnable:Ljava/lang/Runnable;

    .line 742
    new-instance v2, Landroidx/recyclerview/widget/RecyclerView$4;

    invoke-direct {v2, p0}, Landroidx/recyclerview/widget/RecyclerView$4;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    iput-object v2, v7, Landroidx/recyclerview/widget/RecyclerView;->mGoToToFadeInRunnable:Ljava/lang/Runnable;

    .line 749
    new-instance v2, Landroidx/recyclerview/widget/RecyclerView$5;

    invoke-direct {v2, p0}, Landroidx/recyclerview/widget/RecyclerView$5;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    iput-object v2, v7, Landroidx/recyclerview/widget/RecyclerView;->mAutoHide:Ljava/lang/Runnable;

    .line 756
    iput-boolean v11, v7, Landroidx/recyclerview/widget/RecyclerView;->mEnableGoToTop:Z

    .line 757
    iput-boolean v11, v7, Landroidx/recyclerview/widget/RecyclerView;->mSizeChnage:Z

    .line 758
    iput-boolean v11, v7, Landroidx/recyclerview/widget/RecyclerView;->mGoToToping:Z

    .line 762
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, v7, Landroidx/recyclerview/widget/RecyclerView;->mGoToTopRect:Landroid/graphics/Rect;

    .line 763
    iput v11, v7, Landroidx/recyclerview/widget/RecyclerView;->mGoToTopState:I

    .line 764
    iput v11, v7, Landroidx/recyclerview/widget/RecyclerView;->mGoToTopLastState:I

    .line 765
    iput v11, v7, Landroidx/recyclerview/widget/RecyclerView;->mShowFadeOutGTP:I

    .line 777
    iput-boolean v13, v7, Landroidx/recyclerview/widget/RecyclerView;->mIsPenSelectionEnabled:Z

    .line 778
    iput-boolean v11, v7, Landroidx/recyclerview/widget/RecyclerView;->mIsPenPressed:Z

    .line 779
    iput-boolean v13, v7, Landroidx/recyclerview/widget/RecyclerView;->mIsFirstPenMoveEvent:Z

    .line 780
    iput-boolean v11, v7, Landroidx/recyclerview/widget/RecyclerView;->mIsNeedPenSelection:Z

    .line 782
    iput v12, v7, Landroidx/recyclerview/widget/RecyclerView;->mPenDragSelectedViewPosition:I

    .line 786
    iput-boolean v13, v7, Landroidx/recyclerview/widget/RecyclerView;->mIsPenDragBlockEnabled:Z

    .line 787
    iput v11, v7, Landroidx/recyclerview/widget/RecyclerView;->mPenDragStartX:I

    .line 788
    iput v11, v7, Landroidx/recyclerview/widget/RecyclerView;->mPenDragStartY:I

    .line 789
    iput v11, v7, Landroidx/recyclerview/widget/RecyclerView;->mPenDragEndX:I

    .line 790
    iput v11, v7, Landroidx/recyclerview/widget/RecyclerView;->mPenDragEndY:I

    .line 792
    iput v11, v7, Landroidx/recyclerview/widget/RecyclerView;->mPenDragBlockLeft:I

    .line 793
    iput v11, v7, Landroidx/recyclerview/widget/RecyclerView;->mPenDragBlockTop:I

    .line 794
    iput v11, v7, Landroidx/recyclerview/widget/RecyclerView;->mPenDragBlockRight:I

    .line 795
    iput v11, v7, Landroidx/recyclerview/widget/RecyclerView;->mPenDragBlockBottom:I

    .line 797
    iput-object v1, v7, Landroidx/recyclerview/widget/RecyclerView;->mPenTrackedChild:Landroid/view/View;

    .line 798
    iput v12, v7, Landroidx/recyclerview/widget/RecyclerView;->mPenTrackedChildPosition:I

    .line 799
    iput v11, v7, Landroidx/recyclerview/widget/RecyclerView;->mPenDistanceFromTrackedChildTop:I

    .line 802
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, v7, Landroidx/recyclerview/widget/RecyclerView;->mPenDragBlockRect:Landroid/graphics/Rect;

    .line 804
    iput v11, v7, Landroidx/recyclerview/widget/RecyclerView;->mInitialTopOffsetOfScreen:I

    .line 805
    iput v11, v7, Landroidx/recyclerview/widget/RecyclerView;->mRemainNestedScrollRange:I

    .line 806
    iput v11, v7, Landroidx/recyclerview/widget/RecyclerView;->mNestedScrollRange:I

    .line 807
    iput-boolean v11, v7, Landroidx/recyclerview/widget/RecyclerView;->mHasNestedScrollRange:Z

    .line 809
    iput-boolean v11, v7, Landroidx/recyclerview/widget/RecyclerView;->mIsCtrlKeyPressed:Z

    .line 811
    iput-boolean v11, v7, Landroidx/recyclerview/widget/RecyclerView;->mIsLongPressMultiSelection:Z

    .line 812
    iput-boolean v13, v7, Landroidx/recyclerview/widget/RecyclerView;->mIsFirstMultiSelectionMove:Z

    .line 813
    iput-boolean v11, v7, Landroidx/recyclerview/widget/RecyclerView;->mIsCtrlMultiSelection:Z

    .line 822
    iput-boolean v11, v7, Landroidx/recyclerview/widget/RecyclerView;->mDrawRect:Z

    .line 823
    iput-boolean v13, v7, Landroidx/recyclerview/widget/RecyclerView;->mDrawLastRoundedCorner:Z

    .line 824
    iput-boolean v11, v7, Landroidx/recyclerview/widget/RecyclerView;->mDrawReverse:Z

    .line 825
    iput v12, v7, Landroidx/recyclerview/widget/RecyclerView;->mBlackTop:I

    .line 826
    iput v12, v7, Landroidx/recyclerview/widget/RecyclerView;->mLastBlackTop:I

    .line 827
    iput v12, v7, Landroidx/recyclerview/widget/RecyclerView;->mAnimatedBlackTop:I

    .line 828
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, v7, Landroidx/recyclerview/widget/RecyclerView;->mRectPaint:Landroid/graphics/Paint;

    .line 834
    iput-boolean v11, v7, Landroidx/recyclerview/widget/RecyclerView;->mIsPenHovered:Z

    .line 836
    iput-object v1, v7, Landroidx/recyclerview/widget/RecyclerView;->mRootViewCheckForDialog:Landroid/view/View;

    .line 838
    iput-boolean v11, v7, Landroidx/recyclerview/widget/RecyclerView;->mIsPenSelectPointerSetted:Z

    .line 839
    iput-boolean v11, v7, Landroidx/recyclerview/widget/RecyclerView;->mIsNeedPenSelectIconSet:Z

    .line 840
    iput-boolean v11, v7, Landroidx/recyclerview/widget/RecyclerView;->mOldTextViewHoverState:Z

    .line 841
    iput-boolean v11, v7, Landroidx/recyclerview/widget/RecyclerView;->mNewTextViewHoverState:Z

    .line 843
    iput v11, v7, Landroidx/recyclerview/widget/RecyclerView;->mHoverScrollSpeed:I

    const/4 v2, 0x4

    new-array v2, v2, [I

    .line 852
    invoke-static {}, Landroidx/reflect/view/SeslPointerIconReflector;->getField_SEM_TYPE_STYLUS_SCROLL_UP()I

    move-result v3

    aput v3, v2, v11

    .line 853
    invoke-static {}, Landroidx/reflect/view/SeslPointerIconReflector;->getField_SEM_TYPE_STYLUS_SCROLL_RIGHT()I

    move-result v3

    aput v3, v2, v13

    .line 854
    invoke-static {}, Landroidx/reflect/view/SeslPointerIconReflector;->getField_SEM_TYPE_STYLUS_SCROLL_DOWN()I

    move-result v3

    aput v3, v2, v0

    const/4 v3, 0x3

    .line 855
    invoke-static {}, Landroidx/reflect/view/SeslPointerIconReflector;->getField_SEM_TYPE_STYLUS_SCROLL_LEFT()I

    move-result v4

    aput v4, v2, v3

    iput-object v2, v7, Landroidx/recyclerview/widget/RecyclerView;->mHoverScrollArrows:[I

    const-wide/16 v2, 0x0

    .line 861
    iput-wide v2, v7, Landroidx/recyclerview/widget/RecyclerView;->mHoverRecognitionDurationTime:J

    .line 862
    iput-wide v2, v7, Landroidx/recyclerview/widget/RecyclerView;->mHoverRecognitionCurrentTime:J

    .line 863
    iput-wide v2, v7, Landroidx/recyclerview/widget/RecyclerView;->mHoverRecognitionStartTime:J

    const-wide/16 v4, 0x12c

    .line 864
    iput-wide v4, v7, Landroidx/recyclerview/widget/RecyclerView;->mHoverScrollTimeInterval:J

    const-wide/16 v4, 0x1f4

    .line 865
    iput-wide v4, v7, Landroidx/recyclerview/widget/RecyclerView;->mPenDragScrollTimeInterval:J

    .line 867
    iput-wide v2, v7, Landroidx/recyclerview/widget/RecyclerView;->mHoverScrollStartTime:J

    .line 868
    iput v12, v7, Landroidx/recyclerview/widget/RecyclerView;->mHoverScrollDirection:I

    .line 873
    iput-boolean v11, v7, Landroidx/recyclerview/widget/RecyclerView;->mIsHoverOverscrolled:Z

    .line 874
    iput-boolean v11, v7, Landroidx/recyclerview/widget/RecyclerView;->mIsSendHoverScrollState:Z

    .line 876
    iput v11, v7, Landroidx/recyclerview/widget/RecyclerView;->mHoverScrollStateForListener:I

    .line 878
    iput-boolean v11, v7, Landroidx/recyclerview/widget/RecyclerView;->mIsEnabledPaddingInHoverScroll:Z

    .line 883
    iput-boolean v11, v7, Landroidx/recyclerview/widget/RecyclerView;->mHoverAreaEnter:Z

    .line 893
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, v7, Landroidx/recyclerview/widget/RecyclerView;->mSelectorRect:Landroid/graphics/Rect;

    .line 898
    iput-boolean v13, v7, Landroidx/recyclerview/widget/RecyclerView;->mHoverScrollEnable:Z

    .line 899
    iput-boolean v11, v7, Landroidx/recyclerview/widget/RecyclerView;->mHoverScrollStateChanged:Z

    .line 901
    iput-boolean v11, v7, Landroidx/recyclerview/widget/RecyclerView;->mNeedsHoverScroll:Z

    .line 903
    iput v11, v7, Landroidx/recyclerview/widget/RecyclerView;->mHoverTopAreaHeight:I

    .line 904
    iput v11, v7, Landroidx/recyclerview/widget/RecyclerView;->mHoverBottomAreaHeight:I

    .line 907
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, v7, Landroidx/recyclerview/widget/RecyclerView;->mListPadding:Landroid/graphics/Rect;

    .line 910
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, v7, Landroidx/recyclerview/widget/RecyclerView;->mChildBound:Landroid/graphics/Rect;

    .line 912
    iput v11, v7, Landroidx/recyclerview/widget/RecyclerView;->mExtraPaddingInTopHoverArea:I

    .line 913
    iput v11, v7, Landroidx/recyclerview/widget/RecyclerView;->mExtraPaddingInBottomHoverArea:I

    .line 915
    iput-boolean v11, v7, Landroidx/recyclerview/widget/RecyclerView;->mIsCloseChildSetted:Z

    .line 916
    iput v12, v7, Landroidx/recyclerview/widget/RecyclerView;->mOldHoverScrollDirection:I

    .line 917
    iput-object v1, v7, Landroidx/recyclerview/widget/RecyclerView;->mCloseChildByTop:Landroid/view/View;

    .line 918
    iput v12, v7, Landroidx/recyclerview/widget/RecyclerView;->mCloseChildPositionByTop:I

    .line 919
    iput v11, v7, Landroidx/recyclerview/widget/RecyclerView;->mDistanceFromCloseChildTop:I

    .line 920
    iput-object v1, v7, Landroidx/recyclerview/widget/RecyclerView;->mCloseChildByBottom:Landroid/view/View;

    .line 921
    iput v12, v7, Landroidx/recyclerview/widget/RecyclerView;->mCloseChildPositionByBottom:I

    .line 922
    iput v11, v7, Landroidx/recyclerview/widget/RecyclerView;->mDistanceFromCloseChildBottom:I

    .line 930
    new-instance v1, Landroidx/recyclerview/widget/RecyclerView$6;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Landroidx/recyclerview/widget/RecyclerView$6;-><init>(Landroidx/recyclerview/widget/RecyclerView;Landroid/os/Looper;)V

    iput-object v1, v7, Landroidx/recyclerview/widget/RecyclerView;->mHoverHandler:Landroid/os/Handler;

    .line 1094
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v7, Landroidx/recyclerview/widget/RecyclerView;->mPendingAccessibilityImportanceChange:Ljava/util/List;

    .line 1097
    new-instance v1, Landroidx/recyclerview/widget/RecyclerView$7;

    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/RecyclerView$7;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    iput-object v1, v7, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimatorRunner:Ljava/lang/Runnable;

    .line 1137
    iput v11, v7, Landroidx/recyclerview/widget/RecyclerView;->mLastAutoMeasureNonExactMeasuredWidth:I

    .line 1138
    iput v11, v7, Landroidx/recyclerview/widget/RecyclerView;->mLastAutoMeasureNonExactMeasuredHeight:I

    .line 1143
    new-instance v1, Landroidx/recyclerview/widget/RecyclerView$9;

    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/RecyclerView$9;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    iput-object v1, v7, Landroidx/recyclerview/widget/RecyclerView;->mViewInfoProcessCallback:Landroidx/recyclerview/widget/ViewInfoStore$ProcessCallback;

    .line 15954
    new-instance v1, Landroidx/recyclerview/widget/RecyclerView$18;

    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/RecyclerView$18;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    iput-object v1, v7, Landroidx/recyclerview/widget/RecyclerView;->mGoToTopEdgeEffectRunnable:Ljava/lang/Runnable;

    .line 1191
    invoke-virtual {p0, v13}, Landroid/view/ViewGroup;->setScrollContainer(Z)V

    .line 1192
    invoke-virtual {p0, v13}, Landroid/view/ViewGroup;->setFocusableInTouchMode(Z)V

    .line 1195
    iput-object v8, v7, Landroidx/recyclerview/widget/RecyclerView;->mContext:Landroid/content/Context;

    .line 1196
    invoke-virtual/range {p0 .. p1}, Landroidx/recyclerview/widget/RecyclerView;->seslInitConfigurations(Landroid/content/Context;)V

    .line 1198
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getOverScrollMode()I

    move-result v1

    if-ne v1, v0, :cond_1

    move v0, v13

    goto :goto_1

    :cond_1
    move v0, v11

    :goto_1
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setWillNotDraw(Z)V

    .line 1200
    iget-object v0, v7, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    iget-object v1, v7, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimatorListener:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setListener(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;)V

    .line 1201
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->initAdapterManager()V

    .line 1202
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->initChildrenHelper()V

    .line 1203
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->initAutofill()V

    .line 1205
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getImportantForAccessibility(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_2

    .line 1207
    invoke-static {p0, v13}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 1210
    :cond_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    .line 1211
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, v7, Landroidx/recyclerview/widget/RecyclerView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 1212
    new-instance v0, Landroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAccessibilityDelegateCompat(Landroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate;)V

    .line 1214
    sget-object v2, Landroidx/recyclerview/R$styleable;->RecyclerView:[I

    invoke-virtual {v8, v9, v2, v10, v11}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v14

    const/4 v6, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    move-object v4, v14

    move/from16 v5, p3

    .line 1217
    invoke-static/range {v0 .. v6}, Landroidx/core/view/ViewCompat;->saveAttributeDataForStyleable(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    .line 1219
    sget v0, Landroidx/recyclerview/R$styleable;->RecyclerView_layoutManager:I

    invoke-virtual {v14, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1220
    sget v0, Landroidx/recyclerview/R$styleable;->RecyclerView_android_descendantFocusability:I

    invoke-virtual {v14, v0, v12}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    if-ne v0, v12, :cond_3

    const/high16 v0, 0x40000

    .line 1223
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 1225
    :cond_3
    sget v0, Landroidx/recyclerview/R$styleable;->RecyclerView_android_clipToPadding:I

    invoke-virtual {v14, v0, v13}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, v7, Landroidx/recyclerview/widget/RecyclerView;->mClipToPadding:Z

    .line 1226
    sget v0, Landroidx/recyclerview/R$styleable;->RecyclerView_fastScrollEnabled:I

    invoke-virtual {v14, v0, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1228
    sget v0, Landroidx/recyclerview/R$styleable;->RecyclerView_fastScrollVerticalThumbDrawable:I

    .line 1229
    invoke-virtual {v14, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/StateListDrawable;

    .line 1230
    sget v1, Landroidx/recyclerview/R$styleable;->RecyclerView_fastScrollVerticalTrackDrawable:I

    .line 1231
    invoke-virtual {v14, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1232
    sget v3, Landroidx/recyclerview/R$styleable;->RecyclerView_fastScrollHorizontalThumbDrawable:I

    .line 1233
    invoke-virtual {v14, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/StateListDrawable;

    .line 1234
    sget v4, Landroidx/recyclerview/R$styleable;->RecyclerView_fastScrollHorizontalTrackDrawable:I

    .line 1235
    invoke-virtual {v14, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 1236
    invoke-virtual {p0, v0, v1, v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->initFastScroller(Landroid/graphics/drawable/StateListDrawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/StateListDrawable;Landroid/graphics/drawable/Drawable;)V

    .line 1239
    :cond_4
    invoke-virtual {v14}, Landroid/content/res/TypedArray;->recycle()V

    const/4 v5, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    .line 1242
    invoke-direct/range {v0 .. v5}, Landroidx/recyclerview/widget/RecyclerView;->createLayoutManager(Landroid/content/Context;Ljava/lang/String;Landroid/util/AttributeSet;II)V

    .line 1246
    sget-object v2, Landroidx/recyclerview/widget/RecyclerView;->NESTED_SCROLLING_ATTRS:[I

    invoke-virtual {v8, v9, v2, v10, v11}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v12

    const/4 v6, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    move-object v4, v12

    move/from16 v5, p3

    .line 1248
    invoke-static/range {v0 .. v6}, Landroidx/core/view/ViewCompat;->saveAttributeDataForStyleable(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    .line 1250
    invoke-virtual {v12, v11, v13}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    .line 1251
    invoke-virtual {v12}, Landroid/content/res/TypedArray;->recycle()V

    .line 1254
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1255
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 1256
    sget v3, Landroidx/recyclerview/R$drawable;->sesl_pen_block_selection:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, v7, Landroidx/recyclerview/widget/RecyclerView;->mPenDragBlockImage:Landroid/graphics/drawable/Drawable;

    .line 1260
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    sget v4, Landroidx/recyclerview/R$attr;->roundedCornerColor:I

    invoke-virtual {v3, v4, v2, v13}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 1261
    iget v2, v2, Landroid/util/TypedValue;->resourceId:I

    if-lez v2, :cond_5

    .line 1262
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, v7, Landroidx/recyclerview/widget/RecyclerView;->mRectColor:I

    .line 1264
    :cond_5
    iget-object v1, v7, Landroidx/recyclerview/widget/RecyclerView;->mRectPaint:Landroid/graphics/Paint;

    iget v2, v7, Landroidx/recyclerview/widget/RecyclerView;->mRectColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1265
    iget-object v1, v7, Landroidx/recyclerview/widget/RecyclerView;->mRectPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1267
    iget-object v1, v7, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    invoke-virtual {v1, p0}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setHostView(Landroid/view/View;)V

    .line 1268
    new-instance v1, Landroidx/appcompat/util/SeslSubheaderRoundedCorner;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/appcompat/util/SeslSubheaderRoundedCorner;-><init>(Landroid/content/Context;)V

    iput-object v1, v7, Landroidx/recyclerview/widget/RecyclerView;->mRoundedCorner:Landroidx/appcompat/util/SeslSubheaderRoundedCorner;

    const/16 v2, 0xc

    .line 1269
    invoke-virtual {v1, v2}, Landroidx/appcompat/util/SeslRoundedCorner;->setRoundedCorners(I)V

    .line 1273
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    return-void
.end method

.method static synthetic access$002(Landroidx/recyclerview/widget/RecyclerView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 245
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mLastItemAddRemoveAnim:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$1000(Landroidx/recyclerview/widget/RecyclerView;)J
    .locals 2

    .line 245
    iget-wide v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mHoverScrollStartTime:J

    return-wide v0
.end method

.method static synthetic access$102(Landroidx/recyclerview/widget/RecyclerView;Z)Z
    .locals 0

    .line 245
    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mIsSetOnlyAddAnim:Z

    return p1
.end method

.method static synthetic access$1100(Landroidx/recyclerview/widget/RecyclerView;)J
    .locals 2

    .line 245
    iget-wide v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mHoverScrollTimeInterval:J

    return-wide v0
.end method

.method static synthetic access$1200(Landroidx/recyclerview/widget/RecyclerView;)Z
    .locals 0

    .line 245
    iget-boolean p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mIsPenPressed:Z

    return p0
.end method

.method static synthetic access$1300(Landroidx/recyclerview/widget/RecyclerView;)J
    .locals 2

    .line 245
    iget-wide v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenDragScrollTimeInterval:J

    return-wide v0
.end method

.method static synthetic access$1400(Landroidx/recyclerview/widget/RecyclerView;)Z
    .locals 0

    .line 245
    iget-boolean p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mIsSendHoverScrollState:Z

    return p0
.end method

.method static synthetic access$1402(Landroidx/recyclerview/widget/RecyclerView;Z)Z
    .locals 0

    .line 245
    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mIsSendHoverScrollState:Z

    return p1
.end method

.method static synthetic access$1500(Landroidx/recyclerview/widget/RecyclerView;)Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
    .locals 0

    .line 245
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    return-object p0
.end method

.method static synthetic access$1602(Landroidx/recyclerview/widget/RecyclerView;I)I
    .locals 0

    .line 245
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mHoverScrollStateForListener:I

    return p1
.end method

.method static synthetic access$1700(Landroidx/recyclerview/widget/RecyclerView;)Z
    .locals 0

    .line 245
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->canScrollDown()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1800(Landroidx/recyclerview/widget/RecyclerView;)Z
    .locals 0

    .line 245
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->canScrollUp()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1900(Landroidx/recyclerview/widget/RecyclerView;)I
    .locals 0

    .line 245
    iget p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mHoverScrollSpeed:I

    return p0
.end method

.method static synthetic access$1902(Landroidx/recyclerview/widget/RecyclerView;I)I
    .locals 0

    .line 245
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mHoverScrollSpeed:I

    return p1
.end method

.method static synthetic access$2000()F
    .locals 1

    .line 245
    sget v0, Landroidx/recyclerview/widget/RecyclerView;->HOVERSCROLL_SPEED:F

    return v0
.end method

.method static synthetic access$202(Landroidx/recyclerview/widget/RecyclerView;Z)Z
    .locals 0

    .line 245
    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mIsSetOnlyRemoveAnim:Z

    return p1
.end method

.method static synthetic access$2100(Landroidx/recyclerview/widget/RecyclerView;)Landroid/content/Context;
    .locals 0

    .line 245
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$2200(Landroidx/recyclerview/widget/RecyclerView;)I
    .locals 0

    .line 245
    iget p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mHoverScrollDirection:I

    return p0
.end method

.method static synthetic access$2300(Landroidx/recyclerview/widget/RecyclerView;)Landroid/view/View;
    .locals 0

    .line 245
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenTrackedChild:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$2302(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .line 245
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenTrackedChild:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$2400(Landroidx/recyclerview/widget/RecyclerView;)Landroid/view/View;
    .locals 0

    .line 245
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mCloseChildByBottom:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$2500(Landroidx/recyclerview/widget/RecyclerView;)I
    .locals 0

    .line 245
    iget p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mOldHoverScrollDirection:I

    return p0
.end method

.method static synthetic access$2502(Landroidx/recyclerview/widget/RecyclerView;I)I
    .locals 0

    .line 245
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mOldHoverScrollDirection:I

    return p1
.end method

.method static synthetic access$2600(Landroidx/recyclerview/widget/RecyclerView;)Z
    .locals 0

    .line 245
    iget-boolean p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mIsCloseChildSetted:Z

    return p0
.end method

.method static synthetic access$2602(Landroidx/recyclerview/widget/RecyclerView;Z)Z
    .locals 0

    .line 245
    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mIsCloseChildSetted:Z

    return p1
.end method

.method static synthetic access$2702(Landroidx/recyclerview/widget/RecyclerView;I)I
    .locals 0

    .line 245
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenDistanceFromTrackedChildTop:I

    return p1
.end method

.method static synthetic access$2800(Landroidx/recyclerview/widget/RecyclerView;)I
    .locals 0

    .line 245
    iget p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mDistanceFromCloseChildBottom:I

    return p0
.end method

.method static synthetic access$2902(Landroidx/recyclerview/widget/RecyclerView;I)I
    .locals 0

    .line 245
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenTrackedChildPosition:I

    return p1
.end method

.method static synthetic access$300(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 245
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->playGotoToFadeOut()V

    return-void
.end method

.method static synthetic access$3000(Landroidx/recyclerview/widget/RecyclerView;)I
    .locals 0

    .line 245
    iget p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mCloseChildPositionByBottom:I

    return p0
.end method

.method static synthetic access$3100(Landroidx/recyclerview/widget/RecyclerView;)Landroid/view/View;
    .locals 0

    .line 245
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mCloseChildByTop:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$3200(Landroidx/recyclerview/widget/RecyclerView;)I
    .locals 0

    .line 245
    iget p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mDistanceFromCloseChildTop:I

    return p0
.end method

.method static synthetic access$3300(Landroidx/recyclerview/widget/RecyclerView;)I
    .locals 0

    .line 245
    iget p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mCloseChildPositionByTop:I

    return p0
.end method

.method static synthetic access$3400(Landroidx/recyclerview/widget/RecyclerView;)Z
    .locals 0

    .line 245
    iget-boolean p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mIsLongPressMultiSelection:Z

    return p0
.end method

.method static synthetic access$3500(Landroidx/recyclerview/widget/RecyclerView;)I
    .locals 0

    .line 245
    iget p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenDragEndX:I

    return p0
.end method

.method static synthetic access$3600(Landroidx/recyclerview/widget/RecyclerView;)I
    .locals 0

    .line 245
    iget p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenDragEndY:I

    return p0
.end method

.method static synthetic access$3700(Landroidx/recyclerview/widget/RecyclerView;IIZ)V
    .locals 0

    .line 245
    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->updateLongPressMultiSelection(IIZ)V

    return-void
.end method

.method static synthetic access$3800(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 0

    .line 245
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->adjustNestedScrollRangeBy(I)V

    return-void
.end method

.method static synthetic access$3900(Landroidx/recyclerview/widget/RecyclerView;)Landroid/os/Handler;
    .locals 0

    .line 245
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mHoverHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$400(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 245
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->playGotoToFadeIn()V

    return-void
.end method

.method static synthetic access$4000(Landroidx/recyclerview/widget/RecyclerView;)Z
    .locals 0

    .line 245
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->contentFits()Z

    move-result p0

    return p0
.end method

.method static synthetic access$4100(Landroidx/recyclerview/widget/RecyclerView;)Z
    .locals 0

    .line 245
    iget-boolean p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mIsHoverOverscrolled:Z

    return p0
.end method

.method static synthetic access$4102(Landroidx/recyclerview/widget/RecyclerView;Z)Z
    .locals 0

    .line 245
    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mIsHoverOverscrolled:Z

    return p1
.end method

.method static synthetic access$4200(Landroidx/recyclerview/widget/RecyclerView;)Landroid/widget/EdgeEffect;
    .locals 0

    .line 245
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    return-object p0
.end method

.method static synthetic access$4300(Landroidx/recyclerview/widget/RecyclerView;)Landroid/widget/EdgeEffect;
    .locals 0

    .line 245
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    return-object p0
.end method

.method static synthetic access$4400(Landroidx/recyclerview/widget/RecyclerView;)Landroid/widget/EdgeEffect;
    .locals 0

    .line 245
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    return-object p0
.end method

.method static synthetic access$4500(Landroidx/recyclerview/widget/RecyclerView;)Landroid/widget/EdgeEffect;
    .locals 0

    .line 245
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    return-object p0
.end method

.method static synthetic access$4600(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 0

    .line 245
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->autoHide(I)V

    return-void
.end method

.method static synthetic access$4700(Landroidx/recyclerview/widget/RecyclerView;)I
    .locals 0

    .line 245
    iget p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mScrollState:I

    return p0
.end method

.method static synthetic access$4800(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 245
    invoke-virtual {p0, p1, p2, p3}, Landroid/view/ViewGroup;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic access$4900(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 0

    .line 245
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->detachViewFromParent(I)V

    return-void
.end method

.method static synthetic access$500(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 0

    .line 245
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setupGoToTop(I)V

    return-void
.end method

.method static synthetic access$5400(Landroidx/recyclerview/widget/RecyclerView;IIII[II[I)Z
    .locals 0

    .line 245
    invoke-direct/range {p0 .. p7}, Landroidx/recyclerview/widget/RecyclerView;->seslDispatchNestedScroll(IIII[II[I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$5500(Landroidx/recyclerview/widget/RecyclerView;)[I
    .locals 0

    .line 245
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mScrollOffset:[I

    return-object p0
.end method

.method static synthetic access$5600(Landroidx/recyclerview/widget/RecyclerView;)Z
    .locals 0

    .line 245
    invoke-virtual {p0}, Landroid/view/ViewGroup;->awakenScrollBars()Z

    move-result p0

    return p0
.end method

.method static synthetic access$5700(Landroidx/recyclerview/widget/RecyclerView;)Z
    .locals 0

    .line 245
    iget-boolean p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mEdgeEffectByDragging:Z

    return p0
.end method

.method static synthetic access$5800(Landroidx/recyclerview/widget/RecyclerView;)Z
    .locals 0

    .line 245
    iget-boolean p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mIsSkipMoveEvent:Z

    return p0
.end method

.method static synthetic access$5900(Landroidx/recyclerview/widget/RecyclerView;)F
    .locals 0

    .line 245
    iget p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mFrameLatency:F

    return p0
.end method

.method static synthetic access$600(Landroidx/recyclerview/widget/RecyclerView;)J
    .locals 2

    .line 245
    iget-wide v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mHoverRecognitionCurrentTime:J

    return-wide v0
.end method

.method static synthetic access$6000(Landroidx/recyclerview/widget/RecyclerView;)Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;
    .locals 0

    .line 245
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mFastScroller:Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;

    return-object p0
.end method

.method static synthetic access$602(Landroidx/recyclerview/widget/RecyclerView;J)J
    .locals 0

    .line 245
    iput-wide p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mHoverRecognitionCurrentTime:J

    return-wide p1
.end method

.method static synthetic access$6100(Landroidx/recyclerview/widget/RecyclerView;)Landroidx/recyclerview/widget/RecyclerView$IndexTip;
    .locals 0

    .line 245
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic access$6300(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    .line 245
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    return-void
.end method

.method static synthetic access$6402(Landroidx/recyclerview/widget/RecyclerView;I)I
    .locals 0

    .line 245
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mAnimatedBlackTop:I

    return p1
.end method

.method static synthetic access$6500(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 245
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToTop()V

    return-void
.end method

.method static synthetic access$6600(Landroidx/recyclerview/widget/RecyclerView;)Landroid/widget/ImageView;
    .locals 0

    .line 245
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mGoToTopView:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$6702(Landroidx/recyclerview/widget/RecyclerView;I)I
    .locals 0

    .line 245
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mShowFadeOutGTP:I

    return p1
.end method

.method static synthetic access$700(Landroidx/recyclerview/widget/RecyclerView;)J
    .locals 2

    .line 245
    iget-wide v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mHoverRecognitionDurationTime:J

    return-wide v0
.end method

.method static synthetic access$702(Landroidx/recyclerview/widget/RecyclerView;J)J
    .locals 0

    .line 245
    iput-wide p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mHoverRecognitionDurationTime:J

    return-wide p1
.end method

.method static synthetic access$800(Landroidx/recyclerview/widget/RecyclerView;)J
    .locals 2

    .line 245
    iget-wide v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mHoverRecognitionStartTime:J

    return-wide v0
.end method

.method static synthetic access$900(Landroidx/recyclerview/widget/RecyclerView;)Z
    .locals 0

    .line 245
    iget-boolean p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mIsPenHovered:Z

    return p0
.end method

.method private addAnimatingView(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 5

    .line 2063
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 2064
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    const/4 v2, 0x1

    if-ne v1, p0, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 2065
    :goto_0
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->unscrapView(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 2066
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isTmpDetached()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2068
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    const/4 p1, -0x1

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, p1, v1, v2}, Landroidx/recyclerview/widget/ChildHelper;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    goto :goto_1

    :cond_1
    if-nez v1, :cond_2

    .line 2070
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    invoke-virtual {p0, v0, v2}, Landroidx/recyclerview/widget/ChildHelper;->addView(Landroid/view/View;Z)V

    goto :goto_1

    .line 2072
    :cond_2
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/ChildHelper;->hide(Landroid/view/View;)V

    :goto_1
    return-void
.end method

.method private adjustNestedScrollRange()V
    .locals 4

    .line 15252
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mWindowOffsets:[I

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getLocationInWindow([I)V

    .line 15253
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mNestedScrollRange:I

    iget v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mInitialTopOffsetOfScreen:I

    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mWindowOffsets:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    sub-int v3, v1, v2

    sub-int/2addr v0, v3

    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mRemainNestedScrollRange:I

    sub-int/2addr v1, v2

    if-gez v1, :cond_0

    .line 15255
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mNestedScrollRange:I

    .line 15256
    iput v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mInitialTopOffsetOfScreen:I

    :cond_0
    return-void
.end method

.method private adjustNestedScrollRangeBy(I)V
    .locals 1

    .line 15261
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mHasNestedScrollRange:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->canScrollUp()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mRemainNestedScrollRange:I

    if-eqz v0, :cond_2

    .line 15262
    :cond_0
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mRemainNestedScrollRange:I

    sub-int/2addr v0, p1

    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mRemainNestedScrollRange:I

    if-gez v0, :cond_1

    const/4 p1, 0x0

    .line 15264
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mRemainNestedScrollRange:I

    goto :goto_0

    .line 15265
    :cond_1
    iget p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mNestedScrollRange:I

    if-le v0, p1, :cond_2

    .line 15266
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mRemainNestedScrollRange:I

    :cond_2
    :goto_0
    return-void
.end method

.method private animateChange(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;ZZ)V
    .locals 1

    const/4 v0, 0x0

    .line 5535
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    if-eqz p5, :cond_0

    .line 5537
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->addAnimatingView(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    :cond_0
    if-eq p1, p2, :cond_2

    if-eqz p6, :cond_1

    .line 5541
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView;->addAnimatingView(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 5543
    :cond_1
    iput-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mShadowedHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 5545
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->addAnimatingView(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 5546
    iget-object p5, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    invoke-virtual {p5, p1}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->unscrapView(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 5547
    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    .line 5548
    iput-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mShadowingHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 5550
    :cond_2
    iget-object p5, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    invoke-virtual {p5, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->animateChange(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 5551
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->postAnimationRunner()V

    :cond_3
    return-void
.end method

.method private autoHide(I)V
    .locals 3

    .line 15789
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mEnableGoToTop:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-wide/16 v0, 0x5dc

    if-nez p1, :cond_1

    .line 15794
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->seslIsFastScrollerEnabled()Z

    move-result p1

    if-nez p1, :cond_2

    .line 15795
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mAutoHide:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 15796
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mAutoHide:Ljava/lang/Runnable;

    invoke-virtual {p0, p1, v0, v1}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    if-ne p1, v2, :cond_2

    .line 15799
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mAutoHide:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 15800
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mAutoHide:Ljava/lang/Runnable;

    invoke-virtual {p0, p1, v0, v1}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    :goto_0
    return-void
.end method

.method private canScrollDown()Z
    .locals 8

    .line 17040
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 17044
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 17045
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v1

    .line 17046
    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getLayoutDirection()I

    move-result v4

    if-ne v4, v2, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    goto :goto_0

    :cond_1
    move v1, v3

    move v4, v1

    .line 17050
    :goto_0
    iget-object v5, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    instance-of v6, v5, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v6, :cond_2

    .line 17051
    check-cast v5, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v5}, Landroidx/recyclerview/widget/LinearLayoutManager;->getReverseLayout()Z

    move-result v5

    goto :goto_1

    :cond_2
    move v5, v3

    .line 17056
    :goto_1
    iget-object v6, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-nez v6, :cond_3

    const-string p0, "SeslRecyclerView"

    const-string v0, "No adapter attached; skipping canScrollDown"

    .line 17057
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_3
    if-eqz v5, :cond_5

    .line 17063
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->findFirstChildPosition()I

    move-result v6

    if-lez v6, :cond_4

    :goto_2
    move v6, v2

    goto :goto_3

    :cond_4
    move v6, v3

    goto :goto_3

    .line 17065
    :cond_5
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->findFirstChildPosition()I

    move-result v6

    add-int/2addr v6, v0

    iget-object v7, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v7}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v7

    if-ge v6, v7, :cond_4

    goto :goto_2

    :goto_3
    if-nez v6, :cond_b

    if-lez v0, :cond_b

    if-eqz v5, :cond_6

    move v0, v3

    goto :goto_4

    :cond_6
    sub-int/2addr v0, v2

    .line 17070
    :goto_4
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v5, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildBound:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v5}, Landroidx/recyclerview/widget/RecyclerView;->getDecoratedBoundsWithMargins(Landroid/view/View;Landroid/graphics/Rect;)V

    if-eqz v1, :cond_8

    if-eqz v4, :cond_7

    .line 17071
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildBound:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mListPadding:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->left:I

    if-ge v0, p0, :cond_9

    goto :goto_5

    .line 17073
    :cond_7
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildBound:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    .line 17072
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getRight()I

    move-result v1

    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v4

    if-gt v0, v1, :cond_a

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildBound:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    .line 17073
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mListPadding:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, p0

    if-le v0, v1, :cond_9

    goto :goto_5

    .line 17075
    :cond_8
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildBound:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    .line 17074
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getBottom()I

    move-result v1

    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v4

    if-gt v0, v1, :cond_a

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildBound:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    .line 17075
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mListPadding:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, p0

    if-le v0, v1, :cond_9

    goto :goto_5

    :cond_9
    move v2, v3

    :cond_a
    :goto_5
    move v6, v2

    :cond_b
    return v6
.end method

.method private canScrollUp()Z
    .locals 8

    .line 17002
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 17006
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 17007
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v1

    .line 17008
    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getLayoutDirection()I

    move-result v4

    if-ne v4, v2, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    goto :goto_0

    :cond_1
    move v1, v3

    move v4, v1

    .line 17012
    :goto_0
    iget-object v5, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    instance-of v6, v5, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v6, :cond_2

    .line 17013
    check-cast v5, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v5}, Landroidx/recyclerview/widget/LinearLayoutManager;->getReverseLayout()Z

    move-result v5

    goto :goto_1

    :cond_2
    move v5, v3

    :goto_1
    if-eqz v5, :cond_4

    .line 17020
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->findFirstChildPosition()I

    move-result v6

    add-int/2addr v6, v0

    iget-object v7, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v7}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v7

    if-ge v6, v7, :cond_3

    :goto_2
    move v6, v2

    goto :goto_3

    :cond_3
    move v6, v3

    goto :goto_3

    .line 17022
    :cond_4
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->findFirstChildPosition()I

    move-result v6

    if-lez v6, :cond_3

    goto :goto_2

    :goto_3
    if-nez v6, :cond_a

    if-lez v0, :cond_a

    if-eqz v5, :cond_5

    sub-int/2addr v0, v2

    goto :goto_4

    :cond_5
    move v0, v3

    .line 17028
    :goto_4
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v5, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildBound:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v5}, Landroidx/recyclerview/widget/RecyclerView;->getDecoratedBoundsWithMargins(Landroid/view/View;Landroid/graphics/Rect;)V

    if-eqz v1, :cond_7

    if-eqz v4, :cond_6

    .line 17030
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildBound:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    .line 17029
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getRight()I

    move-result v1

    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v4

    if-gt v0, v1, :cond_9

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildBound:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    .line 17030
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mListPadding:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, p0

    if-le v0, v1, :cond_8

    goto :goto_5

    :cond_6
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildBound:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mListPadding:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->left:I

    if-ge v0, p0, :cond_8

    goto :goto_5

    .line 17031
    :cond_7
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildBound:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mListPadding:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->top:I

    if-ge v0, p0, :cond_8

    goto :goto_5

    :cond_8
    move v2, v3

    :cond_9
    :goto_5
    move v6, v2

    :cond_a
    return v6
.end method

.method private cancelScroll()V
    .locals 1

    .line 4525
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->resetScroll()V

    const/4 v0, 0x0

    .line 4526
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    return-void
.end method

.method static clearNestedRecyclerViewIfNotNested(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 3

    .line 7205
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mNestedRecyclerView:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_3

    .line 7206
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 7208
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    if-ne v0, v2, :cond_0

    return-void

    .line 7212
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 7213
    instance-of v2, v0, Landroid/view/View;

    if-eqz v2, :cond_1

    .line 7214
    check-cast v0, Landroid/view/View;

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_0

    .line 7219
    :cond_2
    iput-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mNestedRecyclerView:Ljava/lang/ref/WeakReference;

    :cond_3
    return-void
.end method

.method private contentFits()Z
    .locals 5

    .line 16986
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 16988
    :cond_0
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v2

    const/4 v3, 0x0

    if-eq v0, v2, :cond_1

    return v3

    .line 16990
    :cond_1
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    if-lt v2, v4, :cond_2

    sub-int/2addr v0, v1

    .line 16991
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mListPadding:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, p0

    if-gt v0, v2, :cond_2

    goto :goto_0

    :cond_2
    move v1, v3

    :goto_0
    return v1
.end method

.method private createLayoutManager(Landroid/content/Context;Ljava/lang/String;Landroid/util/AttributeSet;II)V
    .locals 7

    const-string v0, ": Could not instantiate the LayoutManager: "

    if-eqz p2, :cond_1

    .line 1364
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 1365
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1366
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->getFullClassName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1369
    :try_start_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isInEditMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1371
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    goto :goto_0

    .line 1373
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    :goto_0
    const/4 v2, 0x0

    .line 1376
    invoke-static {p2, v2, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    const-class v3, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 1377
    invoke-virtual {v1, v3}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 1381
    :try_start_1
    sget-object v5, Landroidx/recyclerview/widget/RecyclerView;->LAYOUT_MANAGER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    .line 1382
    invoke-virtual {v1, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v2

    aput-object p3, v6, v4

    const/4 p1, 0x2

    .line 1383
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    aput-object p4, v6, p1

    const/4 p1, 0x3

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    aput-object p4, v6, p1
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_2

    move-object v3, v6

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_2
    new-array p4, v2, [Ljava/lang/Class;

    .line 1386
    invoke-virtual {v1, p4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1393
    :goto_1
    :try_start_3
    invoke-virtual {v5, v4}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 1394
    invoke-virtual {v5, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    goto/16 :goto_2

    :catch_1
    move-exception p0

    .line 1388
    invoke-virtual {p0, p1}, Ljava/lang/NoSuchMethodException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 1389
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, ": Error creating LayoutManager "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-direct {p1, p4, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/InstantiationException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_2

    :catch_2
    move-exception p0

    .line 1408
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ": Class is not a LayoutManager "

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_3
    move-exception p0

    .line 1405
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ": Cannot access non-public constructor "

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_4
    move-exception p0

    .line 1402
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_5
    move-exception p0

    .line 1399
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_6
    move-exception p0

    .line 1396
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ": Unable to find LayoutManager "

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_1
    :goto_2
    return-void
.end method

.method private didChildRangeChange(II)Z
    .locals 3

    .line 5481
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mMinMaxLayoutPositions:[I

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->findMinMaxChildLayoutPositions([I)V

    .line 5482
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mMinMaxLayoutPositions:[I

    const/4 v0, 0x0

    aget v1, p0, v0

    const/4 v2, 0x1

    if-ne v1, p1, :cond_0

    aget p0, p0, v2

    if-eq p0, p2, :cond_1

    :cond_0
    move v0, v2

    :cond_1
    return v0
.end method

.method private dispatchContentChangedIfNecessary()V
    .locals 3

    .line 4782
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mEatenAccessibilityChangeFlags:I

    const/4 v1, 0x0

    .line 4783
    iput v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mEatenAccessibilityChangeFlags:I

    if-eqz v0, :cond_0

    .line 4784
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->isAccessibilityEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4785
    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    const/16 v2, 0x800

    .line 4786
    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setEventType(I)V

    .line 4787
    invoke-static {v1, v0}, Landroidx/core/view/accessibility/AccessibilityEventCompat;->setContentChangeTypes(Landroid/view/accessibility/AccessibilityEvent;I)V

    .line 4788
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_0
    return-void
.end method

.method private dispatchLayoutStep1()V
    .locals 8

    .line 5161
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$State;->assertLayoutStep(I)V

    .line 5162
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->fillRemainingScrollValues(Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 5163
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    const/4 v2, 0x0

    iput-boolean v2, v0, Landroidx/recyclerview/widget/RecyclerView$State;->mIsMeasuring:Z

    .line 5164
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->startInterceptRequestLayout()V

    .line 5165
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mViewInfoStore:Landroidx/recyclerview/widget/ViewInfoStore;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/ViewInfoStore;->clear()V

    .line 5166
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->onEnterLayoutOrScroll()V

    .line 5167
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->processAdapterUpdatesAndSetAnimationFlags()V

    .line 5168
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->saveFocusInfo()V

    .line 5169
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    iget-boolean v3, v0, Landroidx/recyclerview/widget/RecyclerView$State;->mRunSimpleAnimations:Z

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemsChanged:Z

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iput-boolean v1, v0, Landroidx/recyclerview/widget/RecyclerView$State;->mTrackOldChangeHolders:Z

    .line 5170
    iput-boolean v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemsChanged:Z

    iput-boolean v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemsAddedOrRemoved:Z

    .line 5171
    iget-boolean v1, v0, Landroidx/recyclerview/widget/RecyclerView$State;->mRunPredictiveAnimations:Z

    iput-boolean v1, v0, Landroidx/recyclerview/widget/RecyclerView$State;->mInPreLayout:Z

    .line 5172
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    iput v1, v0, Landroidx/recyclerview/widget/RecyclerView$State;->mItemCount:I

    .line 5173
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mMinMaxLayoutPositions:[I

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->findMinMaxChildLayoutPositions([I)V

    .line 5175
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    iget-boolean v0, v0, Landroidx/recyclerview/widget/RecyclerView$State;->mRunSimpleAnimations:Z

    if-eqz v0, :cond_3

    .line 5177
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/ChildHelper;->getChildCount()I

    move-result v0

    move v1, v2

    :goto_1
    if-ge v1, v0, :cond_3

    .line 5179
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    invoke-virtual {v3, v1}, Landroidx/recyclerview/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v3

    .line 5180
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isInvalid()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_2

    .line 5183
    :cond_1
    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    iget-object v5, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    .line 5185
    invoke-static {v3}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->buildAdapterChangeFlagsForAnimations(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I

    move-result v6

    .line 5186
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getUnmodifiedPayloads()Ljava/util/List;

    move-result-object v7

    .line 5184
    invoke-virtual {v4, v5, v3, v6, v7}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->recordPreLayoutInformation(Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/util/List;)Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    move-result-object v4

    .line 5187
    iget-object v5, p0, Landroidx/recyclerview/widget/RecyclerView;->mViewInfoStore:Landroidx/recyclerview/widget/ViewInfoStore;

    invoke-virtual {v5, v3, v4}, Landroidx/recyclerview/widget/ViewInfoStore;->addToPreLayout(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    .line 5188
    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    iget-boolean v4, v4, Landroidx/recyclerview/widget/RecyclerView$State;->mTrackOldChangeHolders:Z

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isUpdated()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v4

    if-nez v4, :cond_2

    .line 5189
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isInvalid()Z

    move-result v4

    if-nez v4, :cond_2

    .line 5190
    invoke-virtual {p0, v3}, Landroidx/recyclerview/widget/RecyclerView;->getChangedHolderKey(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)J

    move-result-wide v4

    .line 5198
    iget-object v6, p0, Landroidx/recyclerview/widget/RecyclerView;->mViewInfoStore:Landroidx/recyclerview/widget/ViewInfoStore;

    invoke-virtual {v6, v4, v5, v3}, Landroidx/recyclerview/widget/ViewInfoStore;->addToOldChangeHolders(JLandroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 5202
    :cond_3
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    iget-boolean v0, v0, Landroidx/recyclerview/widget/RecyclerView$State;->mRunPredictiveAnimations:Z

    if-eqz v0, :cond_9

    .line 5209
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->saveOldPositions()V

    .line 5210
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    iget-boolean v1, v0, Landroidx/recyclerview/widget/RecyclerView$State;->mStructureChanged:Z

    .line 5211
    iput-boolean v2, v0, Landroidx/recyclerview/widget/RecyclerView$State;->mStructureChanged:Z

    .line 5213
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    invoke-virtual {v3, v4, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 5214
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    iput-boolean v1, v0, Landroidx/recyclerview/widget/RecyclerView$State;->mStructureChanged:Z

    move v0, v2

    .line 5216
    :goto_3
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/ChildHelper;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_8

    .line 5217
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 5218
    invoke-static {v1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v1

    .line 5219
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_4

    .line 5222
    :cond_4
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mViewInfoStore:Landroidx/recyclerview/widget/ViewInfoStore;

    invoke-virtual {v3, v1}, Landroidx/recyclerview/widget/ViewInfoStore;->isInPreLayout(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 5223
    invoke-static {v1}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->buildAdapterChangeFlagsForAnimations(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I

    move-result v3

    const/16 v4, 0x2000

    .line 5225
    invoke-virtual {v1, v4}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->hasAnyOfTheFlags(I)Z

    move-result v4

    if-nez v4, :cond_5

    or-int/lit16 v3, v3, 0x1000

    .line 5229
    :cond_5
    iget-object v5, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    iget-object v6, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    .line 5230
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getUnmodifiedPayloads()Ljava/util/List;

    move-result-object v7

    .line 5229
    invoke-virtual {v5, v6, v1, v3, v7}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->recordPreLayoutInformation(Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/util/List;)Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    move-result-object v3

    if-eqz v4, :cond_6

    .line 5232
    invoke-virtual {p0, v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->recordAnimationInfoIfBouncedHiddenView(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    goto :goto_4

    .line 5234
    :cond_6
    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mViewInfoStore:Landroidx/recyclerview/widget/ViewInfoStore;

    invoke-virtual {v4, v1, v3}, Landroidx/recyclerview/widget/ViewInfoStore;->addToAppearedInPreLayoutHolders(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    :cond_7
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 5239
    :cond_8
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->clearOldPositions()V

    goto :goto_5

    .line 5241
    :cond_9
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->clearOldPositions()V

    .line 5243
    :goto_5
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->onExitLayoutOrScroll()V

    .line 5244
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView;->stopInterceptRequestLayout(Z)V

    .line 5245
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    const/4 v0, 0x2

    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$State;->mLayoutStep:I

    return-void
.end method

.method private dispatchLayoutStep2()V
    .locals 4

    .line 5253
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->startInterceptRequestLayout()V

    .line 5254
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->onEnterLayoutOrScroll()V

    .line 5255
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$State;->assertLayoutStep(I)V

    .line 5256
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapterHelper:Landroidx/recyclerview/widget/AdapterHelper;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/AdapterHelper;->consumeUpdatesInOnePass()V

    .line 5257
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    iput v1, v0, Landroidx/recyclerview/widget/RecyclerView$State;->mItemCount:I

    .line 5258
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    const/4 v1, 0x0

    iput v1, v0, Landroidx/recyclerview/widget/RecyclerView$State;->mDeletedInvisibleItemCountSincePreviousLayout:I

    .line 5259
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mPendingSavedState:Landroidx/recyclerview/widget/RecyclerView$SavedState;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->canRestoreState()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5260
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mPendingSavedState:Landroidx/recyclerview/widget/RecyclerView$SavedState;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$SavedState;->mLayoutState:Landroid/os/Parcelable;

    if-eqz v0, :cond_0

    .line 5261
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    :cond_0
    const/4 v0, 0x0

    .line 5263
    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mPendingSavedState:Landroidx/recyclerview/widget/RecyclerView$SavedState;

    .line 5266
    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    iput-boolean v1, v0, Landroidx/recyclerview/widget/RecyclerView$State;->mInPreLayout:Z

    .line 5267
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    invoke-virtual {v2, v3, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 5269
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    iput-boolean v1, v0, Landroidx/recyclerview/widget/RecyclerView$State;->mStructureChanged:Z

    .line 5272
    iget-boolean v2, v0, Landroidx/recyclerview/widget/RecyclerView$State;->mRunSimpleAnimations:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    move v2, v1

    :goto_0
    iput-boolean v2, v0, Landroidx/recyclerview/widget/RecyclerView$State;->mRunSimpleAnimations:Z

    const/4 v2, 0x4

    .line 5273
    iput v2, v0, Landroidx/recyclerview/widget/RecyclerView$State;->mLayoutStep:I

    .line 5274
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->onExitLayoutOrScroll()V

    .line 5275
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView;->stopInterceptRequestLayout(Z)V

    return-void
.end method

.method private dispatchLayoutStep3()V
    .locals 11

    .line 5283
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$State;->assertLayoutStep(I)V

    .line 5284
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->startInterceptRequestLayout()V

    .line 5285
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->onEnterLayoutOrScroll()V

    .line 5286
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    const/4 v1, 0x1

    iput v1, v0, Landroidx/recyclerview/widget/RecyclerView$State;->mLayoutStep:I

    .line 5287
    iget-boolean v0, v0, Landroidx/recyclerview/widget/RecyclerView$State;->mRunSimpleAnimations:Z

    if-eqz v0, :cond_5

    .line 5291
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/ChildHelper;->getChildCount()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_4

    .line 5292
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v5

    .line 5293
    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 5296
    :cond_0
    invoke-virtual {p0, v5}, Landroidx/recyclerview/widget/RecyclerView;->getChangedHolderKey(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)J

    move-result-wide v2

    .line 5297
    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    iget-object v6, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    .line 5298
    invoke-virtual {v4, v6, v5}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->recordPostLayoutInformation(Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    move-result-object v4

    .line 5299
    iget-object v6, p0, Landroidx/recyclerview/widget/RecyclerView;->mViewInfoStore:Landroidx/recyclerview/widget/ViewInfoStore;

    invoke-virtual {v6, v2, v3}, Landroidx/recyclerview/widget/ViewInfoStore;->getFromOldChangeHolders(J)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 5300
    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v7

    if-nez v7, :cond_3

    .line 5311
    iget-object v7, p0, Landroidx/recyclerview/widget/RecyclerView;->mViewInfoStore:Landroidx/recyclerview/widget/ViewInfoStore;

    invoke-virtual {v7, v6}, Landroidx/recyclerview/widget/ViewInfoStore;->isDisappearing(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

    move-result v8

    .line 5313
    iget-object v7, p0, Landroidx/recyclerview/widget/RecyclerView;->mViewInfoStore:Landroidx/recyclerview/widget/ViewInfoStore;

    invoke-virtual {v7, v5}, Landroidx/recyclerview/widget/ViewInfoStore;->isDisappearing(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

    move-result v9

    if-eqz v8, :cond_1

    if-ne v6, v5, :cond_1

    .line 5316
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mViewInfoStore:Landroidx/recyclerview/widget/ViewInfoStore;

    invoke-virtual {v2, v5, v4}, Landroidx/recyclerview/widget/ViewInfoStore;->addToPostLayout(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    goto :goto_1

    .line 5318
    :cond_1
    iget-object v7, p0, Landroidx/recyclerview/widget/RecyclerView;->mViewInfoStore:Landroidx/recyclerview/widget/ViewInfoStore;

    invoke-virtual {v7, v6}, Landroidx/recyclerview/widget/ViewInfoStore;->popFromPreLayout(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    move-result-object v7

    .line 5321
    iget-object v10, p0, Landroidx/recyclerview/widget/RecyclerView;->mViewInfoStore:Landroidx/recyclerview/widget/ViewInfoStore;

    invoke-virtual {v10, v5, v4}, Landroidx/recyclerview/widget/ViewInfoStore;->addToPostLayout(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    .line 5322
    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mViewInfoStore:Landroidx/recyclerview/widget/ViewInfoStore;

    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/ViewInfoStore;->popFromPostLayout(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    move-result-object v10

    if-nez v7, :cond_2

    .line 5324
    invoke-direct {p0, v2, v3, v5, v6}, Landroidx/recyclerview/widget/RecyclerView;->handleMissingPreInfoForChangeError(JLandroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    goto :goto_1

    :cond_2
    move-object v3, p0

    move-object v4, v6

    move-object v6, v7

    move-object v7, v10

    .line 5326
    invoke-direct/range {v3 .. v9}, Landroidx/recyclerview/widget/RecyclerView;->animateChange(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;ZZ)V

    goto :goto_1

    .line 5331
    :cond_3
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mViewInfoStore:Landroidx/recyclerview/widget/ViewInfoStore;

    invoke-virtual {v2, v5, v4}, Landroidx/recyclerview/widget/ViewInfoStore;->addToPostLayout(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 5336
    :cond_4
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mViewInfoStore:Landroidx/recyclerview/widget/ViewInfoStore;

    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mViewInfoProcessCallback:Landroidx/recyclerview/widget/ViewInfoStore$ProcessCallback;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/ViewInfoStore;->process(Landroidx/recyclerview/widget/ViewInfoStore$ProcessCallback;)V

    .line 5339
    :cond_5
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mBlackTop:I

    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLastBlackTop:I

    const/4 v0, -0x1

    .line 5340
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mBlackTop:I

    .line 5341
    iget-boolean v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mDrawRect:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_9

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->canScrollVertically(I)Z

    move-result v2

    if-nez v2, :cond_9

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->canScrollVertically(I)Z

    move-result v2

    if-nez v2, :cond_9

    .line 5342
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v2

    sub-int/2addr v2, v1

    .line 5343
    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    check-cast v4, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 5344
    iget-boolean v5, v4, Landroidx/recyclerview/widget/LinearLayoutManager;->mReverseLayout:Z

    if-eqz v5, :cond_6

    iget-boolean v6, v4, Landroidx/recyclerview/widget/LinearLayoutManager;->mStackFromEnd:Z

    if-eqz v6, :cond_6

    .line 5345
    iput-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mDrawReverse:Z

    move v0, v3

    goto :goto_3

    :cond_6
    if-nez v5, :cond_8

    .line 5347
    iget-boolean v4, v4, Landroidx/recyclerview/widget/LinearLayoutManager;->mStackFromEnd:Z

    if-eqz v4, :cond_7

    goto :goto_2

    :cond_7
    move v0, v2

    goto :goto_3

    .line 5348
    :cond_8
    :goto_2
    iput-boolean v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mDrawRect:Z

    :goto_3
    if-ltz v0, :cond_9

    .line 5352
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->findLastVisibleItemPosition()I

    move-result v2

    if-gt v0, v2, :cond_9

    .line 5353
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 5355
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mBlackTop:I

    .line 5361
    :cond_9
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->removeAndRecycleScrapInt(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    .line 5362
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    iget v2, v0, Landroidx/recyclerview/widget/RecyclerView$State;->mItemCount:I

    iput v2, v0, Landroidx/recyclerview/widget/RecyclerView$State;->mPreviousLayoutItemCount:I

    .line 5363
    iput-boolean v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    .line 5364
    iput-boolean v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mDispatchItemsChangedEvent:Z

    .line 5365
    iput-boolean v3, v0, Landroidx/recyclerview/widget/RecyclerView$State;->mRunSimpleAnimations:Z

    .line 5367
    iput-boolean v3, v0, Landroidx/recyclerview/widget/RecyclerView$State;->mRunPredictiveAnimations:Z

    .line 5368
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    iput-boolean v3, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRequestedSimpleAnimations:Z

    .line 5369
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    if-eqz v0, :cond_a

    .line 5370
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 5372
    :cond_a
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    iget-boolean v2, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mPrefetchMaxObservedInInitialPrefetch:Z

    if-eqz v2, :cond_b

    .line 5375
    iput v3, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mPrefetchMaxCountObserved:I

    .line 5376
    iput-boolean v3, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mPrefetchMaxObservedInInitialPrefetch:Z

    .line 5377
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->updateViewCacheSize()V

    .line 5380
    :cond_b
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onLayoutCompleted(Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 5381
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->onExitLayoutOrScroll()V

    .line 5382
    invoke-virtual {p0, v3}, Landroidx/recyclerview/widget/RecyclerView;->stopInterceptRequestLayout(Z)V

    .line 5383
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mViewInfoStore:Landroidx/recyclerview/widget/ViewInfoStore;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/ViewInfoStore;->clear()V

    .line 5384
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mMinMaxLayoutPositions:[I

    aget v2, v0, v3

    aget v0, v0, v1

    invoke-direct {p0, v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->didChildRangeChange(II)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 5385
    invoke-virtual {p0, v3, v3}, Landroidx/recyclerview/widget/RecyclerView;->dispatchOnScrolled(II)V

    .line 5387
    :cond_c
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->recoverFocusFromState()V

    .line 5388
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->resetFocusInfo()V

    return-void
.end method

.method private dispatchToOnItemTouchListeners(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 4030
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mInterceptingOnItemTouchListener:Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;

    if-nez v0, :cond_1

    .line 4031
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 4034
    :cond_0
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->findInterceptingOnItemTouchListener(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    .line 4036
    :cond_1
    invoke-interface {v0, p0, p1}, Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;->onTouchEvent(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)V

    .line 4037
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x3

    const/4 v1, 0x1

    if-eq p1, v0, :cond_2

    if-ne p1, v1, :cond_3

    :cond_2
    const/4 p1, 0x0

    .line 4039
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mInterceptingOnItemTouchListener:Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;

    :cond_3
    return v1
.end method

.method private drawGoToTop()V
    .locals 2

    .line 15879
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v0

    .line 15880
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mGoToTopView:Landroid/widget/ImageView;

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 15881
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mGoToTopState:I

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->canScrollUp()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 15882
    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setupGoToTop(I)V

    :cond_0
    return-void
.end method

.method private findFirstChildPosition()I
    .locals 3

    .line 17083
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    instance-of v1, v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 17084
    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result p0

    goto :goto_1

    .line 17085
    :cond_0
    instance-of v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    if-eqz v1, :cond_2

    .line 17086
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    check-cast v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 17087
    invoke-virtual {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getSpanCount()I

    move-result v0

    sub-int/2addr v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 17088
    :goto_0
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    check-cast p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    const/4 v1, 0x0

    .line 17089
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->findFirstVisibleItemPositions([I)[I

    move-result-object p0

    aget p0, p0, v0

    goto :goto_1

    :cond_2
    move p0, v2

    :goto_1
    const/4 v0, -0x1

    if-ne p0, v0, :cond_3

    goto :goto_2

    :cond_3
    move v2, p0

    :goto_2
    return v2
.end method

.method private findInterceptingOnItemTouchListener(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 4059
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 4060
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    .line 4062
    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;

    .line 4063
    invoke-interface {v4, p0, p1}, Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;->onInterceptTouchEvent(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x3

    if-eq v0, v5, :cond_0

    .line 4064
    iput-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mInterceptingOnItemTouchListener:Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method private findMinMaxChildLayoutPositions([I)V
    .locals 8

    .line 5455
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/ChildHelper;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 p0, -0x1

    .line 5457
    aput p0, p1, v2

    .line 5458
    aput p0, p1, v1

    return-void

    :cond_0
    const v3, 0x7fffffff

    const/high16 v4, -0x80000000

    move v5, v2

    :goto_0
    if-ge v5, v0, :cond_4

    .line 5464
    iget-object v6, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    invoke-virtual {v6, v5}, Landroidx/recyclerview/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-static {v6}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v6

    .line 5465
    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_1

    .line 5468
    :cond_1
    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v6

    if-ge v6, v3, :cond_2

    move v3, v6

    :cond_2
    if-le v6, v4, :cond_3

    move v4, v6

    :cond_3
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 5476
    :cond_4
    aput v3, p1, v2

    .line 5477
    aput v4, p1, v1

    return-void
.end method

.method static findNestedRecyclerView(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 4

    .line 7183
    instance-of v0, p0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 7186
    :cond_0
    instance-of v0, p0, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_1

    .line 7187
    check-cast p0, Landroidx/recyclerview/widget/RecyclerView;

    return-object p0

    .line 7189
    :cond_1
    check-cast p0, Landroid/view/ViewGroup;

    .line 7190
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    .line 7192
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 7193
    invoke-static {v3}, Landroidx/recyclerview/widget/RecyclerView;->findNestedRecyclerView(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v3

    if-eqz v3, :cond_2

    return-object v3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method private findNextViewToFocus()Landroid/view/View;
    .locals 5

    .line 5030
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    iget v1, v0, Landroidx/recyclerview/widget/RecyclerView$State;->mFocusedItemPosition:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 5033
    :goto_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    move v2, v1

    :goto_1
    if-ge v2, v0, :cond_3

    .line 5035
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_2

    .line 5039
    :cond_1
    iget-object v4, v3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->hasFocusable()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 5040
    iget-object p0, v3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    return-object p0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 5043
    :cond_3
    :goto_2
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_3
    const/4 v1, 0x0

    if-ltz v0, :cond_6

    .line 5045
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v2

    if-nez v2, :cond_4

    return-object v1

    .line 5049
    :cond_4
    iget-object v1, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 5050
    iget-object p0, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    return-object p0

    :cond_5
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    :cond_6
    return-object v1
.end method

.method private findSuperClass(Landroid/view/ViewParent;Ljava/lang/String;)Z
    .locals 0

    .line 15241
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_1

    .line 15243
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p0, 0x1

    return p0

    .line 15246
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method static getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 6067
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->mViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    return-object p0
.end method

.method static getDecoratedBoundsWithMarginsInt(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 6

    .line 6348
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 6349
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    .line 6350
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v2

    iget v3, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int/2addr v2, v3

    .line 6351
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v3

    iget v4, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v3, v4

    .line 6352
    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v4

    iget v5, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v4, v5

    .line 6353
    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result p0

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p0, v1

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr p0, v0

    .line 6350
    invoke-virtual {p1, v2, v3, v4, p0}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method private getDeepestFocusedViewWithId(Landroid/view/View;)I
    .locals 2

    .line 5131
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p0

    .line 5132
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-nez v0, :cond_1

    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5133
    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object p1

    .line 5134
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 5136
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p0

    goto :goto_0

    :cond_1
    return p0
.end method

.method private getFullClassName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 p0, 0x0

    .line 1416
    invoke-virtual {p2, p0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const/16 v0, 0x2e

    if-ne p0, v0, :cond_0

    .line 1417
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "."

    .line 1419
    invoke-virtual {p2, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    return-object p2

    .line 1422
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-class p1, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getPendingAnimFlag()I
    .locals 1

    .line 15231
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object p0

    .line 15232
    instance-of v0, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;

    if-eqz v0, :cond_0

    .line 15233
    check-cast p0, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/DefaultItemAnimator;->getPendingAnimFlag()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private getRecyclerViewScreenLocationY()I
    .locals 1

    .line 16078
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecyclerViewOffsets:[I

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    .line 16079
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecyclerViewOffsets:[I

    const/4 v0, 0x1

    aget p0, p0, v0

    return p0
.end method

.method private getRotatedArrowPointerIcon(ZZ)I
    .locals 3

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 17505
    sget-object p1, Landroidx/recyclerview/widget/RecyclerView$ScrollArrowDirection;->RIGHT:Landroidx/recyclerview/widget/RecyclerView$ScrollArrowDirection;

    goto :goto_0

    .line 17507
    :cond_0
    sget-object p1, Landroidx/recyclerview/widget/RecyclerView$ScrollArrowDirection;->DOWN:Landroidx/recyclerview/widget/RecyclerView$ScrollArrowDirection;

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    .line 17511
    sget-object p1, Landroidx/recyclerview/widget/RecyclerView$ScrollArrowDirection;->LEFT:Landroidx/recyclerview/widget/RecyclerView$ScrollArrowDirection;

    goto :goto_0

    .line 17513
    :cond_2
    sget-object p1, Landroidx/recyclerview/widget/RecyclerView$ScrollArrowDirection;->UP:Landroidx/recyclerview/widget/RecyclerView$ScrollArrowDirection;

    .line 17517
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getRotation()F

    move-result p2

    const/4 v0, 0x0

    cmpl-float v1, p2, v0

    if-nez v1, :cond_3

    .line 17519
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mHoverScrollArrows:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    return p0

    :cond_3
    cmpg-float v0, p2, v0

    const/4 v1, 0x1

    if-gez v0, :cond_4

    move v0, v1

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_5

    const/16 v2, -0x2d

    goto :goto_2

    :cond_5
    const/16 v2, 0x2d

    :goto_2
    int-to-float v2, v2

    add-float/2addr p2, v2

    const/high16 v2, 0x42b40000    # 90.0f

    div-float/2addr p2, v2

    float-to-int p2, p2

    if-eqz v0, :cond_6

    const/4 v1, -0x1

    .line 17525
    :cond_6
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    mul-int/2addr v1, p1

    add-int/2addr v1, p2

    .line 17526
    rem-int/lit8 v1, v1, 0x4

    if-nez v1, :cond_7

    .line 17529
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mHoverScrollArrows:[I

    aget p0, p0, v1

    return p0

    .line 17531
    :cond_7
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mHoverScrollArrows:[I

    if-eqz v0, :cond_8

    add-int/lit8 v1, v1, 0x4

    :cond_8
    aget p0, p0, v1

    return p0
.end method

.method private getScrollingChildHelper()Landroidx/core/view/NestedScrollingChildHelper;
    .locals 1

    .line 15184
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mScrollingChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    if-nez v0, :cond_0

    .line 15185
    new-instance v0, Landroidx/core/view/NestedScrollingChildHelper;

    invoke-direct {v0, p0}, Landroidx/core/view/NestedScrollingChildHelper;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mScrollingChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    .line 15187
    :cond_0
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mScrollingChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    return-object p0
.end method

.method private handleMissingPreInfoForChangeError(JLandroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 5

    .line 5409
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/ChildHelper;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    .line 5411
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 5412
    invoke-static {v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v2

    if-ne v2, p3, :cond_0

    goto :goto_1

    .line 5416
    :cond_0
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView;->getChangedHolderKey(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)J

    move-result-wide v3

    cmp-long v3, v3, p1

    if-nez v3, :cond_2

    .line 5418
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    const-string p2, " \n View Holder 2:"

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5419
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Two different ViewHolders have the same stable ID. Stable IDs in your adapter MUST BE unique and SHOULD NOT change.\n ViewHolder 1:"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 5422
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5424
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Two different ViewHolders have the same change ID. This might happen due to inconsistent Adapter update events or if the LayoutManager lays out the same View multiple times.\n ViewHolder 1:"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 5428
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5433
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Problem while matching changed view holders with the newones. The pre-layout information for the change holder "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " cannot be found but it is necessary for "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 5435
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SeslRecyclerView"

    .line 5433
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private hasUpdatedView()Z
    .locals 5

    .line 2654
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/ChildHelper;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    .line 2656
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 2657
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    .line 2660
    :cond_0
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isUpdated()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method private initAutofill()V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .line 1326
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getImportantForAutofill(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x8

    .line 1327
    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->setImportantForAutofill(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method private initChildrenHelper()V
    .locals 2

    .line 1426
    new-instance v0, Landroidx/recyclerview/widget/ChildHelper;

    new-instance v1, Landroidx/recyclerview/widget/RecyclerView$10;

    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/RecyclerView$10;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/ChildHelper;-><init>(Landroidx/recyclerview/widget/ChildHelper$Callback;)V

    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    return-void
.end method

.method private initGoToTop(ZZ)V
    .locals 3

    .line 15669
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz p2, :cond_0

    .line 15670
    sget v1, Landroidx/recyclerview/R$drawable;->sesl_list_go_to_top_light:I

    goto :goto_0

    .line 15671
    :cond_0
    sget v1, Landroidx/recyclerview/R$drawable;->sesl_list_go_to_top_dark:I

    .line 15669
    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mGoToTopImage:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_5

    .line 15674
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mGoToTopView:Landroid/widget/ImageView;

    if-nez v0, :cond_1

    .line 15675
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mGoToTopView:Landroid/widget/ImageView;

    .line 15678
    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mGoToTopView:Landroid/widget/ImageView;

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mContext:Landroid/content/Context;

    .line 15679
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz p2, :cond_2

    .line 15680
    sget p2, Landroidx/recyclerview/R$drawable;->sesl_go_to_top_background_light:I

    goto :goto_1

    .line 15681
    :cond_2
    sget p2, Landroidx/recyclerview/R$drawable;->sesl_go_to_top_background_dark:I

    :goto_1
    const/4 v2, 0x0

    .line 15679
    invoke-virtual {v1, p2, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 15678
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 15682
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView;->mGoToTopView:Landroid/widget/ImageView;

    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mGoToTopElevation:I

    int-to-float v0, v0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setElevation(F)V

    .line 15684
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView;->mGoToTopView:Landroid/widget/ImageView;

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mGoToTopImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eqz p1, :cond_3

    .line 15687
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView;->mGoToTopView:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 15688
    iget-boolean p2, p0, Landroidx/recyclerview/widget/RecyclerView;->mEnableGoToTop:Z

    if-nez p2, :cond_4

    .line 15689
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object p2

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mGoToTopView:Landroid/widget/ImageView;

    invoke-virtual {p2, v0}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    goto :goto_2

    .line 15692
    :cond_3
    iget-boolean p2, p0, Landroidx/recyclerview/widget/RecyclerView;->mEnableGoToTop:Z

    if-eqz p2, :cond_4

    .line 15693
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object p2

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mGoToTopView:Landroid/widget/ImageView;

    invoke-virtual {p2, v0}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    .line 15696
    :cond_4
    :goto_2
    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mEnableGoToTop:Z

    const/4 p1, 0x2

    new-array p2, p1, [F

    .line 15697
    fill-array-data p2, :array_0

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    iput-object p2, p0, Landroidx/recyclerview/widget/RecyclerView;->mGoToTopFadeInAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x14d

    .line 15698
    invoke-virtual {p2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 15699
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView;->mGoToTopFadeInAnimator:Landroid/animation/ValueAnimator;

    sget-object v0, Landroidx/appcompat/animation/SeslAnimationUtils;->SINE_IN_OUT_70:Landroid/view/animation/Interpolator;

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 15700
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView;->mGoToTopFadeInAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$14;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/RecyclerView$14;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array p1, p1, [F

    .line 15710
    fill-array-data p1, :array_1

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mGoToTopFadeOutAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x96

    .line 15711
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 15712
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mGoToTopFadeOutAnimator:Landroid/animation/ValueAnimator;

    sget-object p2, Landroidx/recyclerview/widget/RecyclerView;->LINEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 15713
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mGoToTopFadeOutAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Landroidx/recyclerview/widget/RecyclerView$15;

    invoke-direct {p2, p0}, Landroidx/recyclerview/widget/RecyclerView$15;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 15723
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mGoToTopFadeOutAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Landroidx/recyclerview/widget/RecyclerView$16;

    invoke-direct {p2, p0}, Landroidx/recyclerview/widget/RecyclerView$16;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_5
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private isLockScreenMode()Z
    .locals 1

    .line 17100
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mContext:Landroid/content/Context;

    const-string v0, "keyguard"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/KeyguardManager;

    .line 17101
    invoke-virtual {p0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method private isPreferredNextFocus(Landroid/view/View;Landroid/view/View;I)Z
    .locals 9

    const/4 v0, 0x0

    if-eqz p2, :cond_1a

    if-eq p2, p0, :cond_1a

    if-ne p2, p1, :cond_0

    goto/16 :goto_3

    .line 3728
    :cond_0
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView;->findContainingItemView(Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_1

    return v0

    :cond_1
    const/4 v1, 0x1

    if-nez p1, :cond_2

    return v1

    .line 3735
    :cond_2
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->findContainingItemView(Landroid/view/View;)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_3

    return v1

    .line 3739
    :cond_3
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {v2, v0, v0, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 3740
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {v2, v0, v0, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 3741
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v2}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 3742
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    invoke-virtual {p0, p2, p1}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 3743
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getLayoutDirection()I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, v1, :cond_4

    move p1, p2

    goto :goto_0

    :cond_4
    move p1, v1

    .line 3745
    :goto_0
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    iget v5, v4, Landroid/graphics/Rect;->left:I

    if-lt v3, v5, :cond_5

    iget v6, v2, Landroid/graphics/Rect;->right:I

    if-gt v6, v5, :cond_6

    :cond_5
    iget v6, v2, Landroid/graphics/Rect;->right:I

    iget v7, v4, Landroid/graphics/Rect;->right:I

    if-ge v6, v7, :cond_6

    move v3, v1

    goto :goto_1

    .line 3749
    :cond_6
    iget v6, v2, Landroid/graphics/Rect;->right:I

    iget v7, v4, Landroid/graphics/Rect;->right:I

    if-gt v6, v7, :cond_7

    if-lt v3, v7, :cond_8

    :cond_7
    if-le v3, v5, :cond_8

    move v3, p2

    goto :goto_1

    :cond_8
    move v3, v0

    .line 3755
    :goto_1
    iget v5, v2, Landroid/graphics/Rect;->top:I

    iget v6, v4, Landroid/graphics/Rect;->top:I

    if-lt v5, v6, :cond_9

    iget v7, v2, Landroid/graphics/Rect;->bottom:I

    if-gt v7, v6, :cond_a

    :cond_9
    iget v7, v2, Landroid/graphics/Rect;->bottom:I

    iget v8, v4, Landroid/graphics/Rect;->bottom:I

    if-ge v7, v8, :cond_a

    move p2, v1

    goto :goto_2

    .line 3759
    :cond_a
    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    if-gt v2, v4, :cond_b

    if-lt v5, v4, :cond_c

    :cond_b
    if-le v5, v6, :cond_c

    goto :goto_2

    :cond_c
    move p2, v0

    :goto_2
    if-eq p3, v1, :cond_18

    const/4 v2, 0x2

    if-eq p3, v2, :cond_15

    const/16 p1, 0x11

    if-eq p3, p1, :cond_13

    const/16 p1, 0x21

    if-eq p3, p1, :cond_11

    const/16 p1, 0x42

    if-eq p3, p1, :cond_f

    const/16 p1, 0x82

    if-ne p3, p1, :cond_e

    if-lez p2, :cond_d

    move v0, v1

    :cond_d
    return v0

    .line 3778
    :cond_e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid direction: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_f
    if-lez v3, :cond_10

    move v0, v1

    :cond_10
    return v0

    :cond_11
    if-gez p2, :cond_12

    move v0, v1

    :cond_12
    return v0

    :cond_13
    if-gez v3, :cond_14

    move v0, v1

    :cond_14
    return v0

    :cond_15
    if-gtz p2, :cond_16

    if-nez p2, :cond_17

    mul-int/2addr v3, p1

    if-lez v3, :cond_17

    :cond_16
    move v0, v1

    :cond_17
    return v0

    :cond_18
    if-ltz p2, :cond_19

    if-nez p2, :cond_1a

    mul-int/2addr v3, p1

    if-gez v3, :cond_1a

    :cond_19
    move v0, v1

    :cond_1a
    :goto_3
    return v0
.end method

.method private isSupportGotoTop()Z
    .locals 1

    .line 15763
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->isTalkBackIsRunning()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mEnableGoToTop:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isTalkBackIsRunning()Z
    .locals 2

    .line 15278
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    if-eqz v0, :cond_1

    .line 15279
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 15280
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "enabled_accessibility_services"

    invoke-static {p0, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    const-string v0, "(?i).*com.samsung.accessibility/com.samsung.android.app.talkback.TalkBackService.*"

    .line 15283
    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "(?i).*com.samsung.android.accessibility.talkback/com.samsung.android.marvin.talkback.TalkBackService.*"

    .line 15284
    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "(?i).*com.google.android.marvin.talkback.TalkBackService.*"

    .line 15285
    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "(?i).*com.samsung.accessibility/com.samsung.accessibility.universalswitch.UniversalSwitchService.*"

    .line 15286
    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private multiSelection(IIIIZ)V
    .locals 5

    .line 16607
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mIsNeedPenSelection:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_9

    .line 16608
    iget-boolean p5, p0, Landroidx/recyclerview/widget/RecyclerView;->mIsFirstPenMoveEvent:Z

    if-eqz p5, :cond_1

    .line 16609
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenDragStartX:I

    .line 16610
    iput p2, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenDragStartY:I

    .line 16611
    iput-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mIsPenPressed:Z

    int-to-float p5, p1

    int-to-float v0, p2

    .line 16613
    invoke-virtual {p0, p5, v0}, Landroidx/recyclerview/widget/RecyclerView;->findChildViewUnder(FF)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenTrackedChild:Landroid/view/View;

    if-nez v3, :cond_0

    .line 16615
    invoke-virtual {p0, p5, v0}, Landroidx/recyclerview/widget/RecyclerView;->seslFindNearChildViewUnder(FF)Landroid/view/View;

    move-result-object p5

    iput-object p5, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenTrackedChild:Landroid/view/View;

    if-nez p5, :cond_0

    const-string p1, "SeslRecyclerView"

    const-string p2, "multiSelection, mPenTrackedChild is NULL"

    .line 16617
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 16618
    iput-boolean v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mIsPenPressed:Z

    .line 16619
    iput-boolean v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mIsFirstPenMoveEvent:Z

    return-void

    .line 16628
    :cond_0
    iget-object p5, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenTrackedChild:Landroid/view/View;

    invoke-virtual {p0, p5}, Landroidx/recyclerview/widget/RecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    move-result p5

    iput p5, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenTrackedChildPosition:I

    .line 16629
    iget p5, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenDragStartY:I

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenTrackedChild:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    sub-int/2addr p5, v0

    iput p5, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenDistanceFromTrackedChildTop:I

    .line 16630
    iput-boolean v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mIsFirstPenMoveEvent:Z

    .line 16633
    :cond_1
    iget p5, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenDragStartX:I

    if-nez p5, :cond_2

    iget p5, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenDragStartY:I

    if-nez p5, :cond_2

    .line 16634
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenDragStartX:I

    .line 16635
    iput p2, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenDragStartY:I

    .line 16639
    iput-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mIsPenPressed:Z

    .line 16642
    :cond_2
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenDragEndX:I

    .line 16643
    iput p2, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenDragEndY:I

    if-gez p2, :cond_3

    .line 16646
    iput v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenDragEndY:I

    goto :goto_0

    :cond_3
    if-le p2, p4, :cond_4

    .line 16648
    iput p4, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenDragEndY:I

    .line 16651
    :cond_4
    :goto_0
    iget p5, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenDragStartX:I

    if-ge p5, p1, :cond_5

    move v0, p5

    goto :goto_1

    :cond_5
    move v0, p1

    :goto_1
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenDragBlockLeft:I

    .line 16652
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenDragStartY:I

    iget v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenDragEndY:I

    if-ge v0, v3, :cond_6

    move v4, v0

    goto :goto_2

    :cond_6
    move v4, v3

    :goto_2
    iput v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenDragBlockTop:I

    if-le p1, p5, :cond_7

    goto :goto_3

    :cond_7
    move p1, p5

    .line 16653
    :goto_3
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenDragBlockRight:I

    if-le v3, v0, :cond_8

    move v0, v3

    .line 16654
    :cond_8
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenDragBlockBottom:I

    move p5, v1

    :cond_9
    if-eqz p5, :cond_11

    .line 16658
    iget p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mHoverTopAreaHeight:I

    add-int/2addr p3, p1

    if-gt p2, p3, :cond_b

    .line 16659
    iget-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mHoverAreaEnter:Z

    if-nez p1, :cond_a

    .line 16660
    iput-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mHoverAreaEnter:Z

    .line 16661
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mHoverScrollStartTime:J

    .line 16663
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    if-eqz p1, :cond_a

    .line 16664
    invoke-virtual {p1, p0, v1}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 16668
    :cond_a
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mHoverHandler:Landroid/os/Handler;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_10

    .line 16669
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mHoverRecognitionStartTime:J

    const/4 p1, 0x2

    .line 16670
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mHoverScrollDirection:I

    .line 16671
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mHoverHandler:Landroid/os/Handler;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_4

    .line 16673
    :cond_b
    iget p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mHoverBottomAreaHeight:I

    sub-int/2addr p4, p1

    iget p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mRemainNestedScrollRange:I

    sub-int/2addr p4, p1

    if-lt p2, p4, :cond_d

    .line 16674
    iget-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mHoverAreaEnter:Z

    if-nez p1, :cond_c

    .line 16675
    iput-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mHoverAreaEnter:Z

    .line 16676
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mHoverScrollStartTime:J

    .line 16678
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    if-eqz p1, :cond_c

    .line 16679
    invoke-virtual {p1, p0, v1}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 16683
    :cond_c
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mHoverHandler:Landroid/os/Handler;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_10

    .line 16684
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mHoverRecognitionStartTime:J

    .line 16685
    iput v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mHoverScrollDirection:I

    .line 16686
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mHoverHandler:Landroid/os/Handler;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_4

    .line 16689
    :cond_d
    iget-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mHoverAreaEnter:Z

    if-eqz p1, :cond_e

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    if-eqz p1, :cond_e

    .line 16690
    invoke-virtual {p1, p0, v2}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    :cond_e
    const-wide/16 p1, 0x0

    .line 16693
    iput-wide p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mHoverScrollStartTime:J

    .line 16694
    iput-wide p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mHoverRecognitionStartTime:J

    .line 16695
    iput-boolean v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mHoverAreaEnter:Z

    .line 16698
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mHoverHandler:Landroid/os/Handler;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 16699
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mHoverHandler:Landroid/os/Handler;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 16700
    iget p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mScrollState:I

    if-ne p1, v1, :cond_f

    .line 16701
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    .line 16705
    :cond_f
    iput-boolean v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mIsHoverOverscrolled:Z

    .line 16708
    :cond_10
    :goto_4
    iget-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mIsPenDragBlockEnabled:Z

    if-eqz p1, :cond_11

    .line 16709
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    :cond_11
    return-void
.end method

.method private multiSelectionEnd(II)V
    .locals 0

    .line 16715
    iget-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mIsPenPressed:Z

    const/4 p1, 0x0

    .line 16718
    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mIsPenPressed:Z

    const/4 p2, 0x1

    .line 16719
    iput-boolean p2, p0, Landroidx/recyclerview/widget/RecyclerView;->mIsFirstPenMoveEvent:Z

    const/4 p2, -0x1

    .line 16720
    iput p2, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenDragSelectedViewPosition:I

    .line 16721
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenDragSelectedItemArray:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 16723
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenDragStartX:I

    .line 16724
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenDragStartY:I

    .line 16725
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenDragEndX:I

    .line 16726
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenDragEndY:I

    .line 16728
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenDragBlockLeft:I

    .line 16729
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenDragBlockTop:I

    .line 16730
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenDragBlockRight:I

    .line 16731
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenDragBlockBottom:I

    const/4 p2, 0x0

    .line 16733
    iput-object p2, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenTrackedChild:Landroid/view/View;

    .line 16734
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenDistanceFromTrackedChildTop:I

    .line 16736
    iget-boolean p2, p0, Landroidx/recyclerview/widget/RecyclerView;->mIsPenDragBlockEnabled:Z

    if-eqz p2, :cond_0

    .line 16737
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    .line 16741
    :cond_0
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView;->mHoverHandler:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 16742
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mHoverHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    return-void
.end method

.method private nestedScrollByInternal(IILandroid/view/MotionEvent;I)V
    .locals 11

    .line 2512
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    if-nez v0, :cond_0

    const-string p0, "SeslRecyclerView"

    const-string p1, "Cannot scroll without a LayoutManager set. Call setLayoutManager with a non-null argument."

    .line 2513
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2517
    :cond_0
    iget-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayoutSuppressed:Z

    if-eqz v1, :cond_1

    return-void

    .line 2520
    :cond_1
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    const/4 v2, 0x0

    aput v2, v1, v2

    const/4 v3, 0x1

    .line 2521
    aput v2, v1, v3

    .line 2522
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v0

    .line 2523
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v1

    if-eqz v1, :cond_2

    or-int/lit8 v4, v0, 0x2

    goto :goto_0

    :cond_2
    move v4, v0

    :goto_0
    const/high16 v5, 0x40000000    # 2.0f

    if-nez p3, :cond_3

    .line 2534
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v5

    goto :goto_1

    :cond_3
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    :goto_1
    if-nez p3, :cond_4

    .line 2535
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v5

    goto :goto_2

    :cond_4
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    .line 2536
    :goto_2
    invoke-direct {p0, p1, v6}, Landroidx/recyclerview/widget/RecyclerView;->releaseHorizontalGlow(IF)I

    move-result v5

    sub-int/2addr p1, v5

    .line 2537
    invoke-direct {p0, p2, v7}, Landroidx/recyclerview/widget/RecyclerView;->releaseVerticalGlow(IF)I

    move-result v5

    sub-int/2addr p2, v5

    .line 2538
    invoke-virtual {p0, v4, p4}, Landroidx/recyclerview/widget/RecyclerView;->startNestedScroll(II)Z

    if-eqz v0, :cond_5

    move v6, p1

    goto :goto_3

    :cond_5
    move v6, v2

    :goto_3
    if-eqz v1, :cond_6

    move v7, p2

    goto :goto_4

    :cond_6
    move v7, v2

    .line 2541
    :goto_4
    iget-object v8, p0, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    iget-object v9, p0, Landroidx/recyclerview/widget/RecyclerView;->mScrollOffset:[I

    move-object v5, p0

    move v10, p4

    .line 2539
    invoke-virtual/range {v5 .. v10}, Landroidx/recyclerview/widget/RecyclerView;->dispatchNestedPreScroll(II[I[II)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 2544
    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    aget v5, v4, v2

    sub-int/2addr p1, v5

    .line 2545
    aget v3, v4, v3

    sub-int/2addr p2, v3

    :cond_7
    if-eqz v0, :cond_8

    move v0, p1

    goto :goto_5

    :cond_8
    move v0, v2

    :goto_5
    if-eqz v1, :cond_9

    move v2, p2

    .line 2548
    :cond_9
    invoke-virtual {p0, v0, v2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView;->scrollByInternal(IILandroid/view/MotionEvent;I)Z

    .line 2552
    iget-object p3, p0, Landroidx/recyclerview/widget/RecyclerView;->mGapWorker:Landroidx/recyclerview/widget/GapWorker;

    if-eqz p3, :cond_b

    if-nez p1, :cond_a

    if-eqz p2, :cond_b

    .line 2553
    :cond_a
    invoke-virtual {p3, p0, p1, p2}, Landroidx/recyclerview/widget/GapWorker;->postFromTraversal(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 2555
    :cond_b
    invoke-virtual {p0, p4}, Landroidx/recyclerview/widget/RecyclerView;->stopNestedScroll(I)V

    return-void
.end method

.method private onPointerUp(Landroid/view/MotionEvent;)V
    .locals 3

    .line 4530
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 4531
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iget v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mScrollPointerId:I

    if-ne v1, v2, :cond_1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4534
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mScrollPointerId:I

    .line 4535
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mLastTouchX:I

    iput v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mInitialTouchX:I

    .line 4536
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    add-float/2addr p1, v2

    float-to-int p1, p1

    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mLastTouchY:I

    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mInitialTouchY:I

    :cond_1
    return-void
.end method

.method private pageScroll(I)Z
    .locals 4

    .line 17141
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p0, "SeslRecyclerView"

    const-string p1, "No adapter attached; skipping pageScroll"

    .line 17142
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 17145
    :cond_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    if-gtz v0, :cond_1

    return v1

    :cond_1
    const/4 v2, 0x1

    if-eqz p1, :cond_5

    if-eq p1, v2, :cond_4

    const/4 v3, 0x2

    if-eq p1, v3, :cond_3

    const/4 v3, 0x3

    if-eq p1, v3, :cond_2

    return v1

    :cond_2
    add-int/lit8 p1, v0, -0x1

    goto :goto_0

    :cond_3
    move p1, v1

    goto :goto_0

    .line 17156
    :cond_4
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->findLastVisibleItemPosition()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    add-int/2addr p1, v3

    goto :goto_0

    .line 17153
    :cond_5
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->findFirstVisibleItemPosition()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    sub-int/2addr p1, v3

    :goto_0
    sub-int/2addr v0, v2

    if-le p1, v0, :cond_6

    move v1, v0

    goto :goto_1

    :cond_6
    if-gez p1, :cond_7

    goto :goto_1

    :cond_7
    move v1, p1

    .line 17174
    :goto_1
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 17175
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$19;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/RecyclerView$19;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    return v2
.end method

.method private playGotoToFadeIn()V
    .locals 4

    .line 15778
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mGoToTopFadeInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 15781
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mGoToTopFadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 15782
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mGoToTopFadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 15784
    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mGoToTopFadeInAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mGoToTopView:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getAlpha()F

    move-result v3

    aput v3, v1, v2

    const/4 v2, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 15785
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mGoToTopFadeInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private playGotoToFadeOut()V
    .locals 4

    .line 15767
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mGoToTopFadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 15770
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mGoToTopFadeInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 15771
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mGoToTopFadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 15773
    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mGoToTopFadeOutAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mGoToTopView:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getAlpha()F

    move-result v3

    aput v3, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 15774
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mGoToTopFadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private predictiveItemAnimationsEnabled()Z
    .locals 1

    .line 4878
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->supportsPredictiveItemAnimations()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private processAdapterUpdatesAndSetAnimationFlags()V
    .locals 6

    .line 4888
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-eqz v0, :cond_0

    .line 4891
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapterHelper:Landroidx/recyclerview/widget/AdapterHelper;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/AdapterHelper;->reset()V

    .line 4892
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mDispatchItemsChangedEvent:Z

    if-eqz v0, :cond_0

    .line 4893
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onItemsChanged(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 4899
    :cond_0
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->predictiveItemAnimationsEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4900
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapterHelper:Landroidx/recyclerview/widget/AdapterHelper;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/AdapterHelper;->preProcess()V

    goto :goto_0

    .line 4902
    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapterHelper:Landroidx/recyclerview/widget/AdapterHelper;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/AdapterHelper;->consumeUpdatesInOnePass()V

    .line 4904
    :goto_0
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemsAddedOrRemoved:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_3

    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemsChanged:Z

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_2

    :cond_3
    :goto_1
    move v0, v2

    .line 4905
    :goto_2
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    iget-boolean v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mFirstLayoutComplete:Z

    if-eqz v4, :cond_6

    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    if-eqz v4, :cond_6

    iget-boolean v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-nez v4, :cond_4

    if-nez v0, :cond_4

    iget-object v5, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    iget-boolean v5, v5, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRequestedSimpleAnimations:Z

    if-eqz v5, :cond_6

    :cond_4
    if-eqz v4, :cond_5

    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 4911
    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_5
    move v4, v2

    goto :goto_3

    :cond_6
    move v4, v1

    :goto_3
    iput-boolean v4, v3, Landroidx/recyclerview/widget/RecyclerView$State;->mRunSimpleAnimations:Z

    .line 4912
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    iget-boolean v4, v3, Landroidx/recyclerview/widget/RecyclerView$State;->mRunSimpleAnimations:Z

    if-eqz v4, :cond_7

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-nez v0, :cond_7

    .line 4915
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->predictiveItemAnimationsEnabled()Z

    move-result p0

    if-eqz p0, :cond_7

    move v1, v2

    :cond_7
    iput-boolean v1, v3, Landroidx/recyclerview/widget/RecyclerView$State;->mRunPredictiveAnimations:Z

    return-void
.end method

.method private pullGlows(FFFF)V
    .locals 6

    const/4 v0, 0x0

    cmpg-float v1, p2, v0

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x1

    if-gez v1, :cond_0

    .line 3399
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->ensureLeftGlow()V

    .line 3400
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    neg-float v4, p2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    .line 3401
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr p3, v5

    sub-float p3, v2, p3

    .line 3400
    invoke-static {v1, v4, p3}, Landroidx/core/widget/EdgeEffectCompat;->onPullDistance(Landroid/widget/EdgeEffect;FF)F

    :goto_0
    move p3, v3

    goto :goto_1

    :cond_0
    cmpl-float v1, p2, v0

    if-lez v1, :cond_1

    .line 3404
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->ensureRightGlow()V

    .line 3405
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float v4, p2, v4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr p3, v5

    invoke-static {v1, v4, p3}, Landroidx/core/widget/EdgeEffectCompat;->onPullDistance(Landroid/widget/EdgeEffect;FF)F

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    :goto_1
    cmpg-float v1, p4, v0

    if-gez v1, :cond_2

    .line 3410
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->ensureTopGlow()V

    .line 3411
    iget-object p3, p0, Landroidx/recyclerview/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    neg-float v1, p4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr p1, v2

    invoke-static {p3, v1, p1}, Landroidx/core/widget/EdgeEffectCompat;->onPullDistance(Landroid/widget/EdgeEffect;FF)F

    goto :goto_2

    :cond_2
    cmpl-float v1, p4, v0

    if-lez v1, :cond_3

    .line 3414
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->ensureBottomGlow()V

    .line 3415
    iget-object p3, p0, Landroidx/recyclerview/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float v1, p4, v1

    .line 3416
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr p1, v4

    sub-float/2addr v2, p1

    .line 3415
    invoke-static {p3, v1, v2}, Landroidx/core/widget/EdgeEffectCompat;->onPullDistance(Landroid/widget/EdgeEffect;FF)F

    goto :goto_2

    :cond_3
    move v3, p3

    .line 3420
    :goto_2
    iput-boolean v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mEdgeEffectByDragging:Z

    if-nez v3, :cond_4

    cmpl-float p1, p2, v0

    if-nez p1, :cond_4

    cmpl-float p1, p4, v0

    if-eqz p1, :cond_5

    .line 3424
    :cond_4
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_5
    return-void
.end method

.method private recoverFocusFromState()V
    .locals 6

    .line 5057
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mPreserveFocusAfterLayout:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Landroid/view/ViewGroup;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 5058
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v0

    const/high16 v1, 0x60000

    if-eq v0, v1, :cond_9

    .line 5059
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v0

    const/high16 v1, 0x20000

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 5067
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isFocused()Z

    move-result v0

    if-nez v0, :cond_3

    .line 5068
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    .line 5069
    sget-boolean v1, Landroidx/recyclerview/widget/RecyclerView;->IGNORE_DETACHED_FOCUSED_CHILD:Z

    if-eqz v1, :cond_2

    .line 5070
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_2

    .line 5082
    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/ChildHelper;->getChildCount()I

    move-result v0

    if-nez v0, :cond_3

    .line 5085
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestFocus()Z

    return-void

    .line 5088
    :cond_2
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/ChildHelper;->isHidden(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_3

    return-void

    .line 5098
    :cond_3
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    iget-wide v0, v0, Landroidx/recyclerview/widget/RecyclerView$State;->mFocusedItemId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 5099
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    iget-wide v4, v0, Landroidx/recyclerview/widget/RecyclerView$State;->mFocusedItemId:J

    invoke-virtual {p0, v4, v5}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForItemId(J)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    goto :goto_0

    :cond_4
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_6

    .line 5102
    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    iget-object v5, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/ChildHelper;->isHidden(Landroid/view/View;)Z

    move-result v4

    if-nez v4, :cond_6

    iget-object v4, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 5103
    invoke-virtual {v4}, Landroid/view/View;->hasFocusable()Z

    move-result v4

    if-nez v4, :cond_5

    goto :goto_1

    .line 5116
    :cond_5
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    goto :goto_2

    .line 5104
    :cond_6
    :goto_1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/ChildHelper;->getChildCount()I

    move-result v0

    if-lez v0, :cond_7

    .line 5111
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->findNextViewToFocus()Landroid/view/View;

    move-result-object v1

    :cond_7
    :goto_2
    if-eqz v1, :cond_9

    .line 5120
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    iget p0, p0, Landroidx/recyclerview/widget/RecyclerView$State;->mFocusedSubChildId:I

    int-to-long v4, p0

    cmp-long v0, v4, v2

    if-eqz v0, :cond_8

    .line 5121
    invoke-virtual {v1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_8

    .line 5122
    invoke-virtual {p0}, Landroid/view/View;->isFocusable()Z

    move-result v0

    if-eqz v0, :cond_8

    move-object v1, p0

    .line 5126
    :cond_8
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    :cond_9
    :goto_3
    return-void
.end method

.method private releaseGlows()V
    .locals 2

    .line 3430
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_0

    .line 3431
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 3432
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3434
    :goto_0
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    if-eqz v1, :cond_1

    .line 3435
    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 3436
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    or-int/2addr v0, v1

    .line 3438
    :cond_1
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    if-eqz v1, :cond_2

    .line 3439
    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 3440
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    or-int/2addr v0, v1

    .line 3442
    :cond_2
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    if-eqz v1, :cond_3

    .line 3443
    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 3444
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    or-int/2addr v0, v1

    :cond_3
    if-eqz v0, :cond_4

    .line 3447
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_4
    return-void
.end method

.method private releaseHorizontalGlow(IF)I
    .locals 3

    .line 2750
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p2, v0

    int-to-float p1, p1

    .line 2751
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    .line 2752
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-static {v0}, Landroidx/core/widget/EdgeEffectCompat;->getDistance(Landroid/widget/EdgeEffect;)F

    move-result v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2

    const/4 v0, -0x1

    .line 2753
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2754
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->onRelease()V

    goto :goto_0

    .line 2756
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    neg-float p1, p1

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, p2

    invoke-static {v0, p1, v2}, Landroidx/core/widget/EdgeEffectCompat;->onPullDistance(Landroid/widget/EdgeEffect;FF)F

    move-result p1

    neg-float p1, p1

    .line 2758
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    invoke-static {p2}, Landroidx/core/widget/EdgeEffectCompat;->getDistance(Landroid/widget/EdgeEffect;)F

    move-result p2

    cmpl-float p2, p2, v1

    if-nez p2, :cond_1

    .line 2759
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p2}, Landroid/widget/EdgeEffect;->onRelease()V

    :cond_1
    move v1, p1

    .line 2762
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    goto :goto_2

    .line 2763
    :cond_2
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_5

    invoke-static {v0}, Landroidx/core/widget/EdgeEffectCompat;->getDistance(Landroid/widget/EdgeEffect;)F

    move-result v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    .line 2764
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2765
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->onRelease()V

    goto :goto_1

    .line 2767
    :cond_3
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    invoke-static {v0, p1, p2}, Landroidx/core/widget/EdgeEffectCompat;->onPullDistance(Landroid/widget/EdgeEffect;FF)F

    move-result p1

    .line 2768
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    invoke-static {p2}, Landroidx/core/widget/EdgeEffectCompat;->getDistance(Landroid/widget/EdgeEffect;)F

    move-result p2

    cmpl-float p2, p2, v1

    if-nez p2, :cond_4

    .line 2769
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p2}, Landroid/widget/EdgeEffect;->onRelease()V

    :cond_4
    move v1, p1

    .line 2772
    :goto_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    .line 2774
    :cond_5
    :goto_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr v1, p0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method private releaseVerticalGlow(IF)I
    .locals 3

    .line 2790
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p2, v0

    int-to-float p1, p1

    .line 2791
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    .line 2792
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-static {v0}, Landroidx/core/widget/EdgeEffectCompat;->getDistance(Landroid/widget/EdgeEffect;)F

    move-result v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2

    const/4 v0, -0x1

    .line 2793
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->canScrollVertically(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2794
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->onRelease()V

    goto :goto_0

    .line 2796
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    neg-float p1, p1

    invoke-static {v0, p1, p2}, Landroidx/core/widget/EdgeEffectCompat;->onPullDistance(Landroid/widget/EdgeEffect;FF)F

    move-result p1

    neg-float p1, p1

    .line 2797
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    invoke-static {p2}, Landroidx/core/widget/EdgeEffectCompat;->getDistance(Landroid/widget/EdgeEffect;)F

    move-result p2

    cmpl-float p2, p2, v1

    if-nez p2, :cond_1

    .line 2798
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p2}, Landroid/widget/EdgeEffect;->onRelease()V

    :cond_1
    move v1, p1

    .line 2801
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    goto :goto_2

    .line 2802
    :cond_2
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_5

    invoke-static {v0}, Landroidx/core/widget/EdgeEffectCompat;->getDistance(Landroid/widget/EdgeEffect;)F

    move-result v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    .line 2803
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->canScrollVertically(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2804
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->onRelease()V

    goto :goto_1

    .line 2806
    :cond_3
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, p2

    invoke-static {v0, p1, v2}, Landroidx/core/widget/EdgeEffectCompat;->onPullDistance(Landroid/widget/EdgeEffect;FF)F

    move-result p1

    .line 2808
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-static {p2}, Landroidx/core/widget/EdgeEffectCompat;->getDistance(Landroid/widget/EdgeEffect;)F

    move-result p2

    cmpl-float p2, p2, v1

    if-nez p2, :cond_4

    .line 2809
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p2}, Landroid/widget/EdgeEffect;->onRelease()V

    :cond_4
    move v1, p1

    .line 2812
    :goto_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    .line 2814
    :cond_5
    :goto_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr v1, p0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method private requestChildOnScreen(Landroid/view/View;Landroid/view/View;)V
    .locals 11

    if-eqz p2, :cond_0

    move-object v0, p2

    goto :goto_0

    :cond_0
    move-object v0, p1

    .line 3801
    :goto_0
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 3806
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 3807
    instance-of v1, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    if-eqz v1, :cond_1

    .line 3809
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 3810
    iget-boolean v1, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->mInsetsDirty:Z

    if-nez v1, :cond_1

    .line 3811
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    .line 3812
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 3813
    iget v2, v1, Landroid/graphics/Rect;->right:I

    iget v3, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 3814
    iget v2, v1, Landroid/graphics/Rect;->top:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 3815
    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v0

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    :cond_1
    if-eqz p2, :cond_2

    .line 3820
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p2, v0}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 3821
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 3823
    :cond_2
    iget-object v5, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    iget-object v8, p0, Landroidx/recyclerview/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mFirstLayoutComplete:Z

    const/4 v1, 0x1

    xor-int/lit8 v9, v0, 0x1

    if-nez p2, :cond_3

    move v10, v1

    goto :goto_1

    :cond_3
    move v10, v4

    :goto_1
    move-object v6, p0

    move-object v7, p1

    invoke-virtual/range {v5 .. v10}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->requestChildRectangleOnScreen(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;Landroid/graphics/Rect;ZZ)Z

    return-void
.end method

.method private resetFocusInfo()V
    .locals 2

    .line 5014
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroidx/recyclerview/widget/RecyclerView$State;->mFocusedItemId:J

    const/4 v0, -0x1

    .line 5015
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$State;->mFocusedItemPosition:I

    .line 5016
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$State;->mFocusedSubChildId:I

    return-void
.end method

.method private resetScroll()V
    .locals 1

    .line 4517
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 4518
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    :cond_0
    const/4 v0, 0x0

    .line 4520
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->stopNestedScroll(I)V

    .line 4521
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->releaseGlows()V

    return-void
.end method

.method private runLastItemAddDeleteAnim(Landroid/view/View;)V
    .locals 4

    .line 15207
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLastItemAddRemoveAnim:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_3

    .line 15208
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    .line 15209
    instance-of v1, v0, Landroidx/recyclerview/widget/DefaultItemAnimator;

    if-eqz v1, :cond_0

    iget v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mLastItemAnimTop:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 15210
    check-cast v0, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/DefaultItemAnimator;->getLastItemBottom()I

    move-result v0

    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLastItemAnimTop:I

    .line 15212
    :cond_0
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mIsSetOnlyAddAnim:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz v0, :cond_1

    new-array v0, v3, [I

    .line 15213
    iget v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mLastItemAnimTop:I

    aput v3, v0, v2

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    add-int/2addr v2, p1

    aput v2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mLastItemAddRemoveAnim:Landroid/animation/ValueAnimator;

    goto :goto_0

    .line 15214
    :cond_1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mIsSetOnlyRemoveAnim:Z

    if-eqz v0, :cond_2

    new-array v0, v3, [I

    .line 15215
    iget v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mLastItemAnimTop:I

    aput v3, v0, v2

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    aput p1, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mLastItemAddRemoveAnim:Landroid/animation/ValueAnimator;

    .line 15217
    :cond_2
    :goto_0
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mLastItemAddRemoveAnim:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x14a

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 15218
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mLastItemAddRemoveAnim:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mAnimListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 15219
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mLastItemAddRemoveAnim:Landroid/animation/ValueAnimator;

    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$12;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/RecyclerView$12;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 15225
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLastItemAddRemoveAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :cond_3
    return-void
.end method

.method private saveFocusInfo()V
    .locals 4

    .line 4994
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mPreserveFocusAfterLayout:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_0

    .line 4995
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    .line 4998
    :cond_1
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->findContainingViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v1

    :goto_1
    if-nez v1, :cond_2

    .line 5000
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->resetFocusInfo()V

    goto :goto_4

    .line 5002
    :cond_2
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v2

    goto :goto_2

    :cond_3
    const-wide/16 v2, -0x1

    :goto_2
    iput-wide v2, v0, Landroidx/recyclerview/widget/RecyclerView$State;->mFocusedItemId:J

    .line 5006
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    iget-boolean v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-eqz v2, :cond_4

    const/4 v2, -0x1

    goto :goto_3

    .line 5007
    :cond_4
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v2

    if-eqz v2, :cond_5

    iget v2, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mOldPosition:I

    goto :goto_3

    .line 5008
    :cond_5
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAbsoluteAdapterPosition()I

    move-result v2

    :goto_3
    iput v2, v0, Landroidx/recyclerview/widget/RecyclerView$State;->mFocusedItemPosition:I

    .line 5009
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-direct {p0, v1}, Landroidx/recyclerview/widget/RecyclerView;->getDeepestFocusedViewWithId(Landroid/view/View;)I

    move-result p0

    iput p0, v0, Landroidx/recyclerview/widget/RecyclerView$State;->mFocusedSubChildId:I

    :goto_4
    return-void
.end method

.method private seslDispatchNestedScroll(IIII[II[I)Z
    .locals 8

    .line 13197
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollingChildHelper()Landroidx/core/view/NestedScrollingChildHelper;

    move-result-object v0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Landroidx/core/view/NestedScrollingChildHelper;->seslDispatchNestedScroll(IIII[II[I)Z

    move-result p0

    return p0
.end method

.method private setAdapterInternal(Landroidx/recyclerview/widget/RecyclerView$Adapter;ZZ)V
    .locals 2

    .line 1786
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_0

    .line 1787
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mObserver:Landroidx/recyclerview/widget/RecyclerView$RecyclerViewDataObserver;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->unregisterAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    .line 1788
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    :cond_0
    if-eqz p2, :cond_1

    if-eqz p3, :cond_2

    .line 1791
    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->removeAndRecycleViews()V

    .line 1793
    :cond_2
    iget-object p3, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapterHelper:Landroidx/recyclerview/widget/AdapterHelper;

    invoke-virtual {p3}, Landroidx/recyclerview/widget/AdapterHelper;->reset()V

    .line 1794
    iget-object p3, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 1795
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-eqz p1, :cond_3

    .line 1797
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mObserver:Landroidx/recyclerview/widget/RecyclerView$RecyclerViewDataObserver;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    .line 1798
    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 1800
    :cond_3
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    if-eqz p1, :cond_4

    .line 1801
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {p1, p3, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onAdapterChanged(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 1803
    :cond_4
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {p1, p3, v0, p2}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->onAdapterChanged(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroidx/recyclerview/widget/RecyclerView$Adapter;Z)V

    .line 1804
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView$State;->mStructureChanged:Z

    return-void
.end method

.method private setupGoToTop(I)V
    .locals 11

    .line 15805
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->isTalkBackIsRunning()Z

    move-result v0

    if-nez v0, :cond_10

    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mEnableGoToTop:Z

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 15809
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mAutoHide:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_1

    .line 15815
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->canScrollUp()Z

    move-result v2

    if-nez v2, :cond_1

    move p1, v1

    :cond_1
    const/4 v2, -0x1

    if-ne p1, v2, :cond_3

    .line 15819
    iget-boolean v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mSizeChnage:Z

    if-eqz v3, :cond_3

    .line 15820
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->canScrollUp()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->canScrollDown()Z

    move-result p1

    if-nez p1, :cond_2

    move p1, v1

    goto :goto_0

    .line 15823
    :cond_2
    iget p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mGoToTopLastState:I

    goto :goto_0

    :cond_3
    if-ne p1, v2, :cond_5

    .line 15825
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->canScrollUp()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->canScrollDown()Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    move p1, v0

    :cond_5
    :goto_0
    if-eqz p1, :cond_6

    .line 15830
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mGoToToFadeOutRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_6
    if-eq p1, v0, :cond_7

    .line 15832
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mGoToToFadeInRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 15835
    :cond_7
    :goto_1
    iget v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mShowFadeOutGTP:I

    if-nez v2, :cond_8

    if-nez p1, :cond_8

    iget v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mGoToTopLastState:I

    if-eqz v2, :cond_8

    .line 15837
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mGoToToFadeOutRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    :cond_8
    const/4 v2, 0x2

    if-eq p1, v2, :cond_9

    .line 15841
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mGoToTopView:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setPressed(Z)V

    .line 15844
    :cond_9
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mGoToTopState:I

    .line 15846
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    .line 15847
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v4

    div-int/2addr v3, v2

    add-int/2addr v4, v3

    if-eqz p1, :cond_b

    if-eq p1, v0, :cond_a

    if-eq p1, v2, :cond_a

    goto :goto_2

    .line 15855
    :cond_a
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mGoToToFadeOutRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 15856
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v3

    .line 15857
    iget-object v5, p0, Landroidx/recyclerview/widget/RecyclerView;->mGoToTopRect:Landroid/graphics/Rect;

    iget v6, p0, Landroidx/recyclerview/widget/RecyclerView;->mGoToTopSize:I

    div-int/lit8 v7, v6, 0x2

    sub-int v7, v4, v7

    sub-int v8, v3, v6

    iget v9, p0, Landroidx/recyclerview/widget/RecyclerView;->mGoToTopBottomPadding:I

    sub-int/2addr v8, v9

    iget v10, p0, Landroidx/recyclerview/widget/RecyclerView;->mGoToTopImmersiveBottomPadding:I

    sub-int/2addr v8, v10

    div-int/2addr v6, v2

    add-int/2addr v4, v6

    sub-int/2addr v3, v9

    sub-int/2addr v3, v10

    invoke-virtual {v5, v7, v8, v4, v3}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_2

    .line 15850
    :cond_b
    iget v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mShowFadeOutGTP:I

    if-ne v3, v2, :cond_c

    .line 15851
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mGoToTopRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v1, v1, v1, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 15865
    :cond_c
    :goto_2
    iget v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mShowFadeOutGTP:I

    if-ne v3, v2, :cond_d

    .line 15866
    iput v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mShowFadeOutGTP:I

    .line 15868
    :cond_d
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mGoToTopView:Landroid/widget/ImageView;

    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mGoToTopRect:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->left:I

    iget v5, v3, Landroid/graphics/Rect;->top:I

    iget v6, v3, Landroid/graphics/Rect;->right:I

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v2, v4, v5, v6, v3}, Landroid/widget/ImageView;->layout(IIII)V

    if-ne p1, v0, :cond_f

    .line 15869
    iget p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mGoToTopLastState:I

    if-eqz p1, :cond_e

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mGoToTopView:Landroid/widget/ImageView;

    .line 15870
    invoke-virtual {p1}, Landroid/widget/ImageView;->getAlpha()F

    move-result p1

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_e

    iget-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mSizeChnage:Z

    if-eqz p1, :cond_f

    .line 15871
    :cond_e
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mGoToToFadeInRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 15874
    :cond_f
    iput-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mSizeChnage:Z

    .line 15875
    iget p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mGoToTopState:I

    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mGoToTopLastState:I

    :cond_10
    :goto_3
    return-void
.end method

.method private smoothScrollToTop()V
    .locals 3

    .line 2450
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayoutSuppressed:Z

    if-eqz v0, :cond_0

    return-void

    .line 2453
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    if-nez v0, :cond_1

    const-string p0, "SeslRecyclerView"

    const-string v0, "Cannot smooth scroll without a LayoutManager set. Call setLayoutManager with a non-null argument."

    .line 2454
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2458
    :cond_1
    instance-of v1, v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v1, :cond_2

    .line 2459
    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    invoke-virtual {v0, p0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->smoothScrollToTop(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V

    goto :goto_0

    .line 2461
    :cond_2
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->smoothScrollToPosition(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;I)V

    :goto_0
    return-void
.end method

.method private stopGlowAnimations(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 4280
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroidx/core/widget/EdgeEffectCompat;->getDistance(Landroid/widget/EdgeEffect;)F

    move-result v0

    cmpl-float v0, v0, v4

    if-eqz v0, :cond_0

    .line 4281
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->canScrollHorizontally(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4282
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    sub-float v5, v1, v5

    invoke-static {v0, v4, v5}, Landroidx/core/widget/EdgeEffectCompat;->onPullDistance(Landroid/widget/EdgeEffect;FF)F

    move v0, v3

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4285
    :goto_0
    iget-object v5, p0, Landroidx/recyclerview/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    if-eqz v5, :cond_1

    invoke-static {v5}, Landroidx/core/widget/EdgeEffectCompat;->getDistance(Landroid/widget/EdgeEffect;)F

    move-result v5

    cmpl-float v5, v5, v4

    if-eqz v5, :cond_1

    .line 4286
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->canScrollHorizontally(I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 4287
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-static {v0, v4, v5}, Landroidx/core/widget/EdgeEffectCompat;->onPullDistance(Landroid/widget/EdgeEffect;FF)F

    move v0, v3

    .line 4290
    :cond_1
    iget-object v5, p0, Landroidx/recyclerview/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    if-eqz v5, :cond_2

    invoke-static {v5}, Landroidx/core/widget/EdgeEffectCompat;->getDistance(Landroid/widget/EdgeEffect;)F

    move-result v5

    cmpl-float v5, v5, v4

    if-eqz v5, :cond_2

    .line 4291
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->canScrollVertically(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 4292
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v2, v5

    invoke-static {v0, v4, v2}, Landroidx/core/widget/EdgeEffectCompat;->onPullDistance(Landroid/widget/EdgeEffect;FF)F

    move v0, v3

    .line 4295
    :cond_2
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    if-eqz v2, :cond_3

    invoke-static {v2}, Landroidx/core/widget/EdgeEffectCompat;->getDistance(Landroid/widget/EdgeEffect;)F

    move-result v2

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_3

    .line 4296
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->canScrollVertically(I)Z

    move-result v2

    if-nez v2, :cond_3

    .line 4297
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p1, p0

    sub-float/2addr v1, p1

    invoke-static {v0, v4, v1}, Landroidx/core/widget/EdgeEffectCompat;->onPullDistance(Landroid/widget/EdgeEffect;FF)F

    goto :goto_1

    :cond_3
    move v3, v0

    :goto_1
    return v3
.end method

.method private stopScrollersInternal()V
    .locals 1

    .line 3368
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mViewFlinger:Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->stop()V

    .line 3369
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    if-eqz p0, :cond_0

    .line 3370
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->stopSmoothScroller()V

    :cond_0
    return-void
.end method

.method private updateLongPressMultiSelection(IIZ)V
    .locals 16

    move-object/from16 v6, p0

    move/from16 v0, p1

    move/from16 v7, p2

    .line 16440
    iget-object v1, v6, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/ChildHelper;->getChildCount()I

    move-result v8

    .line 16441
    iget-boolean v1, v6, Landroidx/recyclerview/widget/RecyclerView;->mIsFirstMultiSelectionMove:Z

    const-string v2, "SeslRecyclerView"

    const/4 v9, 0x0

    if-eqz v1, :cond_2

    .line 16442
    iput v0, v6, Landroidx/recyclerview/widget/RecyclerView;->mPenDragStartX:I

    .line 16443
    iput v7, v6, Landroidx/recyclerview/widget/RecyclerView;->mPenDragStartY:I

    int-to-float v1, v0

    int-to-float v3, v7

    .line 16444
    invoke-virtual {v6, v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->findChildViewUnder(FF)Landroid/view/View;

    move-result-object v4

    iput-object v4, v6, Landroidx/recyclerview/widget/RecyclerView;->mPenTrackedChild:Landroid/view/View;

    if-nez v4, :cond_0

    .line 16446
    invoke-virtual {v6, v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->seslFindNearChildViewUnder(FF)Landroid/view/View;

    move-result-object v1

    iput-object v1, v6, Landroidx/recyclerview/widget/RecyclerView;->mPenTrackedChild:Landroid/view/View;

    if-nez v1, :cond_0

    const-string/jumbo v0, "updateLongPressMultiSelection, mPenTrackedChild is NULL"

    .line 16448
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 16449
    iput-boolean v9, v6, Landroidx/recyclerview/widget/RecyclerView;->mIsFirstMultiSelectionMove:Z

    return-void

    .line 16454
    :cond_0
    iget-object v1, v6, Landroidx/recyclerview/widget/RecyclerView;->mLongPressMultiSelectionListener:Landroidx/recyclerview/widget/RecyclerView$SeslLongPressMultiSelectionListener;

    if-eqz v1, :cond_1

    .line 16455
    invoke-interface {v1, v0, v7}, Landroidx/recyclerview/widget/RecyclerView$SeslLongPressMultiSelectionListener;->onLongPressMultiSelectionStarted(II)V

    .line 16458
    :cond_1
    iget-object v1, v6, Landroidx/recyclerview/widget/RecyclerView;->mPenTrackedChild:Landroid/view/View;

    invoke-virtual {v6, v1}, Landroidx/recyclerview/widget/RecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    move-result v1

    iput v1, v6, Landroidx/recyclerview/widget/RecyclerView;->mPenTrackedChildPosition:I

    .line 16459
    iput v1, v6, Landroidx/recyclerview/widget/RecyclerView;->mPenDragSelectedViewPosition:I

    .line 16460
    iget v1, v6, Landroidx/recyclerview/widget/RecyclerView;->mPenDragStartY:I

    iget-object v3, v6, Landroidx/recyclerview/widget/RecyclerView;->mPenTrackedChild:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int/2addr v1, v3

    iput v1, v6, Landroidx/recyclerview/widget/RecyclerView;->mPenDistanceFromTrackedChildTop:I

    .line 16462
    iput-boolean v9, v6, Landroidx/recyclerview/widget/RecyclerView;->mIsFirstMultiSelectionMove:Z

    .line 16467
    :cond_2
    iget-boolean v1, v6, Landroidx/recyclerview/widget/RecyclerView;->mIsEnabledPaddingInHoverScroll:Z

    if-eqz v1, :cond_3

    .line 16468
    iget-object v1, v6, Landroidx/recyclerview/widget/RecyclerView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    .line 16469
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v3

    iget-object v4, v6, Landroidx/recyclerview/widget/RecyclerView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    move v10, v1

    move v11, v3

    goto :goto_0

    .line 16472
    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v3

    move v11, v3

    move v10, v9

    .line 16475
    :goto_0
    iput v0, v6, Landroidx/recyclerview/widget/RecyclerView;->mPenDragEndX:I

    .line 16476
    iput v7, v6, Landroidx/recyclerview/widget/RecyclerView;->mPenDragEndY:I

    if-gez v7, :cond_4

    .line 16479
    iput v9, v6, Landroidx/recyclerview/widget/RecyclerView;->mPenDragEndY:I

    goto :goto_1

    :cond_4
    if-le v7, v11, :cond_5

    .line 16481
    iput v11, v6, Landroidx/recyclerview/widget/RecyclerView;->mPenDragEndY:I

    :cond_5
    :goto_1
    int-to-float v0, v0

    .line 16484
    iget v1, v6, Landroidx/recyclerview/widget/RecyclerView;->mPenDragEndY:I

    int-to-float v1, v1

    invoke-virtual {v6, v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->findChildViewUnder(FF)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_6

    .line 16486
    iget v0, v6, Landroidx/recyclerview/widget/RecyclerView;->mPenDragEndX:I

    int-to-float v0, v0

    iget v1, v6, Landroidx/recyclerview/widget/RecyclerView;->mPenDragEndY:I

    int-to-float v1, v1

    invoke-virtual {v6, v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->seslFindNearChildViewUnder(FF)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_6

    const-string/jumbo v0, "updateLongPressMultiSelection, touchedView is NULL"

    .line 16488
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 16492
    :cond_6
    invoke-virtual {v6, v0}, Landroidx/recyclerview/widget/RecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    move-result v0

    const/4 v12, -0x1

    if-eq v0, v12, :cond_17

    .line 16494
    iput v0, v6, Landroidx/recyclerview/widget/RecyclerView;->mPenDragSelectedViewPosition:I

    .line 16502
    iget v1, v6, Landroidx/recyclerview/widget/RecyclerView;->mPenTrackedChildPosition:I

    if-ge v1, v0, :cond_7

    move v14, v0

    move v13, v1

    goto :goto_2

    :cond_7
    move v13, v0

    move v14, v1

    .line 16510
    :goto_2
    iget v0, v6, Landroidx/recyclerview/widget/RecyclerView;->mPenDragStartX:I

    iget v1, v6, Landroidx/recyclerview/widget/RecyclerView;->mPenDragEndX:I

    if-ge v0, v1, :cond_8

    move v2, v0

    goto :goto_3

    :cond_8
    move v2, v1

    :goto_3
    iput v2, v6, Landroidx/recyclerview/widget/RecyclerView;->mPenDragBlockLeft:I

    .line 16511
    iget v2, v6, Landroidx/recyclerview/widget/RecyclerView;->mPenDragStartY:I

    iget v3, v6, Landroidx/recyclerview/widget/RecyclerView;->mPenDragEndY:I

    if-ge v2, v3, :cond_9

    move v4, v2

    goto :goto_4

    :cond_9
    move v4, v3

    :goto_4
    iput v4, v6, Landroidx/recyclerview/widget/RecyclerView;->mPenDragBlockTop:I

    if-le v1, v0, :cond_a

    move v0, v1

    .line 16512
    :cond_a
    iput v0, v6, Landroidx/recyclerview/widget/RecyclerView;->mPenDragBlockRight:I

    if-le v3, v2, :cond_b

    move v2, v3

    .line 16513
    :cond_b
    iput v2, v6, Landroidx/recyclerview/widget/RecyclerView;->mPenDragBlockBottom:I

    move v15, v9

    :goto_5
    const/4 v0, 0x1

    if-ge v15, v8, :cond_f

    .line 16516
    invoke-virtual {v6, v15}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_e

    .line 16518
    invoke-virtual {v6, v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    move-result v1

    iput v1, v6, Landroidx/recyclerview/widget/RecyclerView;->mPenDragSelectedViewPosition:I

    .line 16520
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_e

    .line 16522
    iget v1, v6, Landroidx/recyclerview/widget/RecyclerView;->mPenDragSelectedViewPosition:I

    if-gt v13, v1, :cond_c

    if-gt v1, v14, :cond_c

    iget v3, v6, Landroidx/recyclerview/widget/RecyclerView;->mPenTrackedChildPosition:I

    if-eq v1, v3, :cond_c

    goto :goto_6

    :cond_c
    move v0, v9

    :goto_6
    if-eqz v0, :cond_d

    if-eq v1, v12, :cond_e

    .line 16528
    iget-object v0, v6, Landroidx/recyclerview/widget/RecyclerView;->mPenDragSelectedItemArray:Ljava/util/ArrayList;

    .line 16529
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 16530
    iget-object v0, v6, Landroidx/recyclerview/widget/RecyclerView;->mPenDragSelectedItemArray:Ljava/util/ArrayList;

    iget v1, v6, Landroidx/recyclerview/widget/RecyclerView;->mPenDragSelectedViewPosition:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16531
    iget-object v0, v6, Landroidx/recyclerview/widget/RecyclerView;->mLongPressMultiSelectionListener:Landroidx/recyclerview/widget/RecyclerView$SeslLongPressMultiSelectionListener;

    if-eqz v0, :cond_e

    .line 16532
    iget v3, v6, Landroidx/recyclerview/widget/RecyclerView;->mPenDragSelectedViewPosition:I

    .line 16533
    invoke-virtual {v6, v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildItemId(Landroid/view/View;)J

    move-result-wide v4

    move-object/from16 v1, p0

    .line 16532
    invoke-interface/range {v0 .. v5}, Landroidx/recyclerview/widget/RecyclerView$SeslLongPressMultiSelectionListener;->onItemSelected(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;IJ)V

    goto :goto_7

    :cond_d
    if-eq v1, v12, :cond_e

    .line 16537
    iget-object v0, v6, Landroidx/recyclerview/widget/RecyclerView;->mPenDragSelectedItemArray:Ljava/util/ArrayList;

    .line 16538
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 16539
    iget-object v0, v6, Landroidx/recyclerview/widget/RecyclerView;->mPenDragSelectedItemArray:Ljava/util/ArrayList;

    iget v1, v6, Landroidx/recyclerview/widget/RecyclerView;->mPenDragSelectedViewPosition:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 16540
    iget-object v0, v6, Landroidx/recyclerview/widget/RecyclerView;->mLongPressMultiSelectionListener:Landroidx/recyclerview/widget/RecyclerView$SeslLongPressMultiSelectionListener;

    if-eqz v0, :cond_e

    .line 16541
    iget v3, v6, Landroidx/recyclerview/widget/RecyclerView;->mPenDragSelectedViewPosition:I

    .line 16542
    invoke-virtual {v6, v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildItemId(Landroid/view/View;)J

    move-result-wide v4

    move-object/from16 v1, p0

    .line 16541
    invoke-interface/range {v0 .. v5}, Landroidx/recyclerview/widget/RecyclerView$SeslLongPressMultiSelectionListener;->onItemSelected(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;IJ)V

    :cond_e
    :goto_7
    add-int/lit8 v15, v15, 0x1

    goto :goto_5

    .line 16550
    :cond_f
    iget v1, v6, Landroidx/recyclerview/widget/RecyclerView;->mLastTouchY:I

    sub-int/2addr v1, v7

    if-eqz p3, :cond_16

    .line 16551
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v3, v6, Landroidx/recyclerview/widget/RecyclerView;->mTouchSlop:I

    if-lt v2, v3, :cond_16

    .line 16552
    iget v2, v6, Landroidx/recyclerview/widget/RecyclerView;->mHoverTopAreaHeight:I

    add-int/2addr v10, v2

    if-gt v7, v10, :cond_11

    if-lez v1, :cond_11

    .line 16553
    iget-boolean v1, v6, Landroidx/recyclerview/widget/RecyclerView;->mHoverAreaEnter:Z

    if-nez v1, :cond_10

    .line 16554
    iput-boolean v0, v6, Landroidx/recyclerview/widget/RecyclerView;->mHoverAreaEnter:Z

    .line 16555
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v6, Landroidx/recyclerview/widget/RecyclerView;->mHoverScrollStartTime:J

    .line 16557
    iget-object v1, v6, Landroidx/recyclerview/widget/RecyclerView;->mScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    if-eqz v1, :cond_10

    .line 16558
    invoke-virtual {v1, v6, v0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 16563
    :cond_10
    iget-object v0, v6, Landroidx/recyclerview/widget/RecyclerView;->mHoverHandler:Landroid/os/Handler;

    invoke-virtual {v0, v9}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_16

    .line 16564
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, v6, Landroidx/recyclerview/widget/RecyclerView;->mHoverRecognitionStartTime:J

    const/4 v0, 0x2

    .line 16565
    iput v0, v6, Landroidx/recyclerview/widget/RecyclerView;->mHoverScrollDirection:I

    .line 16566
    iget-object v0, v6, Landroidx/recyclerview/widget/RecyclerView;->mHoverHandler:Landroid/os/Handler;

    invoke-virtual {v0, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_8

    .line 16568
    :cond_11
    iget v2, v6, Landroidx/recyclerview/widget/RecyclerView;->mHoverBottomAreaHeight:I

    sub-int/2addr v11, v2

    iget v2, v6, Landroidx/recyclerview/widget/RecyclerView;->mRemainNestedScrollRange:I

    sub-int/2addr v11, v2

    if-lt v7, v11, :cond_13

    if-gez v1, :cond_13

    .line 16569
    iget-boolean v1, v6, Landroidx/recyclerview/widget/RecyclerView;->mHoverAreaEnter:Z

    if-nez v1, :cond_12

    .line 16570
    iput-boolean v0, v6, Landroidx/recyclerview/widget/RecyclerView;->mHoverAreaEnter:Z

    .line 16571
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v6, Landroidx/recyclerview/widget/RecyclerView;->mHoverScrollStartTime:J

    .line 16573
    iget-object v1, v6, Landroidx/recyclerview/widget/RecyclerView;->mScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    if-eqz v1, :cond_12

    .line 16574
    invoke-virtual {v1, v6, v0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 16578
    :cond_12
    iget-object v1, v6, Landroidx/recyclerview/widget/RecyclerView;->mHoverHandler:Landroid/os/Handler;

    invoke-virtual {v1, v9}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_16

    .line 16579
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v6, Landroidx/recyclerview/widget/RecyclerView;->mHoverRecognitionStartTime:J

    .line 16580
    iput v0, v6, Landroidx/recyclerview/widget/RecyclerView;->mHoverScrollDirection:I

    .line 16581
    iget-object v0, v6, Landroidx/recyclerview/widget/RecyclerView;->mHoverHandler:Landroid/os/Handler;

    invoke-virtual {v0, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_8

    .line 16584
    :cond_13
    iget-boolean v1, v6, Landroidx/recyclerview/widget/RecyclerView;->mHoverAreaEnter:Z

    if-eqz v1, :cond_14

    iget-object v1, v6, Landroidx/recyclerview/widget/RecyclerView;->mScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    if-eqz v1, :cond_14

    .line 16585
    invoke-virtual {v1, v6, v9}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    :cond_14
    const-wide/16 v1, 0x0

    .line 16588
    iput-wide v1, v6, Landroidx/recyclerview/widget/RecyclerView;->mHoverScrollStartTime:J

    .line 16589
    iput-wide v1, v6, Landroidx/recyclerview/widget/RecyclerView;->mHoverRecognitionStartTime:J

    .line 16590
    iput-boolean v9, v6, Landroidx/recyclerview/widget/RecyclerView;->mHoverAreaEnter:Z

    .line 16593
    iget-object v1, v6, Landroidx/recyclerview/widget/RecyclerView;->mHoverHandler:Landroid/os/Handler;

    invoke-virtual {v1, v9}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 16594
    iget-object v1, v6, Landroidx/recyclerview/widget/RecyclerView;->mHoverHandler:Landroid/os/Handler;

    invoke-virtual {v1, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 16595
    iget v1, v6, Landroidx/recyclerview/widget/RecyclerView;->mScrollState:I

    if-ne v1, v0, :cond_15

    .line 16596
    invoke-virtual {v6, v9}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    .line 16600
    :cond_15
    iput-boolean v9, v6, Landroidx/recyclerview/widget/RecyclerView;->mIsHoverOverscrolled:Z

    .line 16603
    :cond_16
    :goto_8
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void

    :cond_17
    const-string/jumbo v0, "touchedPosition is NO_POSITION"

    .line 16496
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method absorbGlows(II)V
    .locals 2

    if-gez p1, :cond_0

    .line 3476
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->ensureLeftGlow()V

    .line 3477
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3478
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    neg-int v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    goto :goto_0

    :cond_0
    if-lez p1, :cond_1

    .line 3481
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->ensureRightGlow()V

    .line 3482
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3483
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v0, p1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    :cond_1
    :goto_0
    if-gez p2, :cond_2

    .line 3488
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->ensureTopGlow()V

    .line 3489
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3490
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    neg-int v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    goto :goto_1

    :cond_2
    if-lez p2, :cond_3

    .line 3493
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->ensureBottomGlow()V

    .line 3494
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3495
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v0, p2}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    :cond_3
    :goto_1
    if-nez p1, :cond_4

    if-eqz p2, :cond_5

    .line 3500
    :cond_4
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_5
    return-void
.end method

.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    .line 3834
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onAddFocusables(Landroidx/recyclerview/widget/RecyclerView;Ljava/util/ArrayList;II)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3835
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addFocusables(Ljava/util/ArrayList;II)V

    :cond_1
    return-void
.end method

.method public addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V
    .locals 1

    const/4 v0, -0x1

    .line 2246
    invoke-virtual {p0, p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;I)V

    return-void
.end method

.method public addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;I)V
    .locals 2

    .line 2217
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_0

    const-string v1, "Cannot add item decoration during a scroll  or layout"

    .line 2218
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 2221
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 2222
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setWillNotDraw(Z)V

    :cond_1
    if-gez p2, :cond_2

    .line 2225
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2227
    :cond_2
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2229
    :goto_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->markItemDecorInsetsDirty()V

    .line 2230
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    return-void
.end method

.method public addOnChildAttachStateChangeListener(Landroidx/recyclerview/widget/RecyclerView$OnChildAttachStateChangeListener;)V
    .locals 1

    .line 1890
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1891
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    .line 1893
    :cond_0
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addOnItemTouchListener(Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;)V
    .locals 0

    .line 3990
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V
    .locals 1

    .line 2354
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2355
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    .line 2357
    :cond_0
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method animateAppearance(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V
    .locals 1

    const/4 v0, 0x0

    .line 5517
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    .line 5518
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->animateAppearance(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5519
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->postAnimationRunner()V

    :cond_0
    return-void
.end method

.method animateDisappearance(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V
    .locals 1

    .line 5525
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->addAnimatingView(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    const/4 v0, 0x0

    .line 5526
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    .line 5527
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->animateDisappearance(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5528
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->postAnimationRunner()V

    :cond_0
    return-void
.end method

.method assertNotInLayoutOrScroll(Ljava/lang/String;)V
    .locals 2

    .line 3959
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->isComputingLayout()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    .line 3961
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot call this method while RecyclerView is computing a layout or scrolling"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3962
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3964
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3966
    :cond_1
    iget p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mDispatchScrollCounter:I

    if-lez p1, :cond_2

    .line 3967
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3972
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    const-string p0, "SeslRecyclerView"

    const-string v0, "Cannot call this method in a scroll callback. Scroll callbacks mightbe run during a measure & layout pass where you cannot change theRecyclerView data. Any method call that might change the structureof the RecyclerView or the adapter contents should be postponed tothe next frame."

    .line 3967
    invoke-static {p0, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    return-void
.end method

.method canReuseUpdatedViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 1

    .line 5926
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    if-eqz p0, :cond_1

    .line 5927
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getUnmodifiedPayloads()Ljava/util/List;

    move-result-object v0

    .line 5926
    invoke-virtual {p0, p1, v0}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->canReuseUpdatedViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Ljava/util/List;)Z

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

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    .line 5752
    instance-of v0, p1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->checkLayoutParams(Landroidx/recyclerview/widget/RecyclerView$LayoutParams;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method clearOldPositions()V
    .locals 4

    .line 5806
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 5808
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v2

    .line 5809
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v3

    if-nez v3, :cond_0

    .line 5810
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->clearOldPosition()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5813
    :cond_1
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->clearOldPositions()V

    return-void
.end method

.method public clearOnChildAttachStateChangeListeners()V
    .locals 0

    .line 1914
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    if-eqz p0, :cond_0

    .line 1915
    invoke-interface {p0}, Ljava/util/List;->clear()V

    :cond_0
    return-void
.end method

.method public computeHorizontalScrollExtent()I
    .locals 2

    .line 2862
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2865
    :cond_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->computeHorizontalScrollExtent(Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result v1

    :cond_1
    return v1
.end method

.method public computeHorizontalScrollOffset()I
    .locals 2

    .line 2837
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2840
    :cond_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->computeHorizontalScrollOffset(Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result v1

    :cond_1
    return v1
.end method

.method public computeHorizontalScrollRange()I
    .locals 2

    .line 2885
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2888
    :cond_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->computeHorizontalScrollRange(Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result v1

    :cond_1
    return v1
.end method

.method public computeVerticalScrollExtent()I
    .locals 2

    .line 2934
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2937
    :cond_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->computeVerticalScrollExtent(Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result v1

    :cond_1
    return v1
.end method

.method public computeVerticalScrollOffset()I
    .locals 2

    .line 2910
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2913
    :cond_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->computeVerticalScrollOffset(Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result v1

    :cond_1
    return v1
.end method

.method public computeVerticalScrollRange()I
    .locals 2

    .line 2957
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2960
    :cond_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->computeVerticalScrollRange(Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result v1

    :cond_1
    return v1
.end method

.method considerReleasingGlowsOnScroll(II)V
    .locals 2

    .line 3453
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    if-lez p1, :cond_0

    .line 3454
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 3455
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3457
    :goto_0
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    if-nez v1, :cond_1

    if-gez p1, :cond_1

    .line 3458
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 3459
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result p1

    or-int/2addr v0, p1

    .line 3461
    :cond_1
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result p1

    if-nez p1, :cond_2

    if-lez p2, :cond_2

    .line 3462
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 3463
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result p1

    or-int/2addr v0, p1

    .line 3465
    :cond_2
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result p1

    if-nez p1, :cond_3

    if-gez p2, :cond_3

    .line 3466
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 3467
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result p1

    or-int/2addr v0, p1

    :cond_3
    if-eqz v0, :cond_4

    .line 3470
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_4
    return-void
.end method

.method consumePendingUpdateOperations()V
    .locals 3

    .line 2613
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mFirstLayoutComplete:Z

    const-string v1, "RV FullInvalidate"

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-eqz v0, :cond_0

    goto :goto_2

    .line 2619
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapterHelper:Landroidx/recyclerview/widget/AdapterHelper;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/AdapterHelper;->hasPendingUpdates()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 2625
    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapterHelper:Landroidx/recyclerview/widget/AdapterHelper;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/AdapterHelper;->hasAnyUpdateTypes(I)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapterHelper:Landroidx/recyclerview/widget/AdapterHelper;

    const/16 v2, 0xb

    .line 2626
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/AdapterHelper;->hasAnyUpdateTypes(I)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "RV PartialInvalidate"

    .line 2628
    invoke-static {v0}, Landroidx/core/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    .line 2629
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->startInterceptRequestLayout()V

    .line 2630
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->onEnterLayoutOrScroll()V

    .line 2631
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapterHelper:Landroidx/recyclerview/widget/AdapterHelper;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/AdapterHelper;->preProcess()V

    .line 2632
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayoutWasDefered:Z

    if-nez v0, :cond_3

    .line 2633
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->hasUpdatedView()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2634
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->dispatchLayout()V

    goto :goto_0

    .line 2637
    :cond_2
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapterHelper:Landroidx/recyclerview/widget/AdapterHelper;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/AdapterHelper;->consumePostponedUpdates()V

    :cond_3
    :goto_0
    const/4 v0, 0x1

    .line 2640
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->stopInterceptRequestLayout(Z)V

    .line 2641
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->onExitLayoutOrScroll()V

    .line 2642
    invoke-static {}, Landroidx/core/os/TraceCompat;->endSection()V

    goto :goto_1

    .line 2643
    :cond_4
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapterHelper:Landroidx/recyclerview/widget/AdapterHelper;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/AdapterHelper;->hasPendingUpdates()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2644
    invoke-static {v1}, Landroidx/core/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    .line 2645
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->dispatchLayout()V

    .line 2646
    invoke-static {}, Landroidx/core/os/TraceCompat;->endSection()V

    :cond_5
    :goto_1
    return-void

    .line 2614
    :cond_6
    :goto_2
    invoke-static {v1}, Landroidx/core/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    .line 2615
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->dispatchLayout()V

    .line 2616
    invoke-static {}, Landroidx/core/os/TraceCompat;->endSection()V

    return-void
.end method

.method defaultOnMeasure(II)V
    .locals 2

    .line 4706
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    .line 4707
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getMinimumWidth(Landroid/view/View;)I

    move-result v1

    .line 4705
    invoke-static {p1, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->chooseSize(III)I

    move-result p1

    .line 4709
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    .line 4710
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v1

    .line 4708
    invoke-static {p2, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->chooseSize(III)I

    move-result p2

    .line 4712
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    return-void
.end method

.method dispatchChildAttached(Landroid/view/View;)V
    .locals 2

    .line 9059
    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 9060
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onChildAttachedToWindow(Landroid/view/View;)V

    .line 9061
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 9062
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 9064
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 9065
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 9067
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$OnChildAttachStateChangeListener;

    invoke-interface {v1, p1}, Landroidx/recyclerview/widget/RecyclerView$OnChildAttachStateChangeListener;->onChildViewAttachedToWindow(Landroid/view/View;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method dispatchChildDetached(Landroid/view/View;)V
    .locals 2

    .line 9044
    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 9045
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onChildDetachedFromWindow(Landroid/view/View;)V

    .line 9046
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 9047
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 9049
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 9050
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 9052
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$OnChildAttachStateChangeListener;

    invoke-interface {v1, p1}, Landroidx/recyclerview/widget/RecyclerView$OnChildAttachStateChangeListener;->onChildViewDetachedFromWindow(Landroid/view/View;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 15500
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 15503
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    .line 15505
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    invoke-virtual {v3, p1, p0, v4}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;->seslOnDispatchDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 15508
    :cond_0
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mDrawRect:Z

    if-eqz v0, :cond_f

    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mBlackTop:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLastBlackTop:I

    if-eq v0, v2, :cond_f

    :cond_1
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->canScrollVertically(I)Z

    move-result v0

    if-nez v0, :cond_f

    const/4 v0, 0x1

    .line 15509
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->canScrollVertically(I)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->isAnimating()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 15510
    :cond_2
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mLastItemAddRemoveAnim:Landroid/animation/ValueAnimator;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v3

    if-nez v3, :cond_4

    .line 15511
    :cond_3
    iget v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mBlackTop:I

    iput v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mAnimatedBlackTop:I

    .line 15514
    :cond_4
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->isAnimating()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 15516
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->getPendingAnimFlag()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_5

    .line 15519
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mIsSetOnlyAddAnim:Z

    goto :goto_1

    :cond_5
    if-ne v3, v0, :cond_6

    .line 15521
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mIsSetOnlyRemoveAnim:Z

    .line 15524
    :cond_6
    :goto_1
    iget-boolean v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mDrawReverse:Z

    if-eqz v3, :cond_8

    .line 15525
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mBlackTop:I

    if-eq v0, v2, :cond_7

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_2

    :cond_7
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_2

    .line 15527
    :cond_8
    iget v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mBlackTop:I

    if-eq v1, v2, :cond_9

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/ChildHelper;->getChildCount()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_2

    .line 15528
    :cond_9
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    :goto_2
    if-eqz v0, :cond_c

    .line 15531
    iget-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mIsSetOnlyAddAnim:Z

    if-nez v1, :cond_b

    iget-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mIsSetOnlyRemoveAnim:Z

    if-eqz v1, :cond_a

    goto :goto_3

    .line 15534
    :cond_a
    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    add-int/2addr v1, v0

    iput v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mAnimatedBlackTop:I

    goto :goto_4

    .line 15532
    :cond_b
    :goto_3
    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->runLastItemAddDeleteAnim(Landroid/view/View;)V

    .line 15537
    :cond_c
    :goto_4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    .line 15540
    :cond_d
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mBlackTop:I

    if-ne v0, v2, :cond_e

    iget v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mAnimatedBlackTop:I

    if-ne v1, v0, :cond_e

    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mIsSetOnlyAddAnim:Z

    if-eqz v0, :cond_f

    :cond_e
    const/4 v2, 0x0

    .line 15541
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mAnimatedBlackTop:I

    int-to-float v3, v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getBottom()I

    move-result v0

    int-to-float v5, v0

    iget-object v6, p0, Landroidx/recyclerview/widget/RecyclerView;->mRectPaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 15542
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mDrawLastRoundedCorner:Z

    if-eqz v0, :cond_f

    .line 15543
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mRoundedCorner:Landroidx/appcompat/util/SeslSubheaderRoundedCorner;

    const/4 v2, 0x0

    iget v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mAnimatedBlackTop:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getBottom()I

    move-result v5

    move-object v6, p1

    invoke-virtual/range {v1 .. v6}, Landroidx/appcompat/util/SeslSubheaderRoundedCorner;->drawRoundedCorner(IIIILandroid/graphics/Canvas;)V

    .line 15547
    :cond_f
    iget p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mBlackTop:I

    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mLastItemAnimTop:I

    return-void
.end method

.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 17189
    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    const-string v3, "SeslRecyclerView"

    if-nez v2, :cond_0

    const-string v2, "No adapter attached; skipping hover scroll"

    .line 17190
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17191
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 17194
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v4, 0x0

    .line 17195
    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v5

    const/16 v6, 0x9

    const/4 v7, 0x7

    const/16 v8, 0xa

    const/4 v9, 0x2

    const/4 v10, 0x1

    if-eq v2, v7, :cond_1

    if-ne v2, v6, :cond_2

    :cond_1
    if-ne v5, v9, :cond_2

    .line 17199
    iput-boolean v10, v0, Landroidx/recyclerview/widget/RecyclerView;->mIsPenHovered:Z

    goto :goto_0

    :cond_2
    if-ne v2, v8, :cond_3

    .line 17201
    iput-boolean v4, v0, Landroidx/recyclerview/widget/RecyclerView;->mIsPenHovered:Z

    .line 17204
    :cond_3
    :goto_0
    invoke-static {}, Landroidx/reflect/widget/SeslTextViewReflector;->semIsTextViewHovered()Z

    move-result v11

    iput-boolean v11, v0, Landroidx/recyclerview/widget/RecyclerView;->mNewTextViewHoverState:Z

    const/16 v12, 0x20

    if-nez v11, :cond_5

    .line 17205
    iget-boolean v11, v0, Landroidx/recyclerview/widget/RecyclerView;->mOldTextViewHoverState:Z

    if-eqz v11, :cond_5

    iget-boolean v11, v0, Landroidx/recyclerview/widget/RecyclerView;->mIsPenDragBlockEnabled:Z

    if-eqz v11, :cond_5

    .line 17206
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v11

    if-eq v11, v12, :cond_4

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v11

    if-ne v11, v9, :cond_5

    .line 17207
    :cond_4
    iput-boolean v10, v0, Landroidx/recyclerview/widget/RecyclerView;->mIsNeedPenSelectIconSet:Z

    goto :goto_1

    .line 17209
    :cond_5
    iput-boolean v4, v0, Landroidx/recyclerview/widget/RecyclerView;->mIsNeedPenSelectIconSet:Z

    .line 17212
    :goto_1
    iget-boolean v11, v0, Landroidx/recyclerview/widget/RecyclerView;->mNewTextViewHoverState:Z

    iput-boolean v11, v0, Landroidx/recyclerview/widget/RecyclerView;->mOldTextViewHoverState:Z

    if-eq v2, v6, :cond_b

    .line 17215
    iget-boolean v11, v0, Landroidx/recyclerview/widget/RecyclerView;->mHoverScrollStateChanged:Z

    if-eqz v11, :cond_6

    goto :goto_2

    :cond_6
    if-ne v2, v7, :cond_a

    .line 17257
    iget-boolean v3, v0, Landroidx/recyclerview/widget/RecyclerView;->mIsPenDragBlockEnabled:Z

    if-eqz v3, :cond_7

    iget-boolean v3, v0, Landroidx/recyclerview/widget/RecyclerView;->mIsPenSelectPointerSetted:Z

    if-nez v3, :cond_7

    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v3

    if-ne v3, v9, :cond_7

    .line 17258
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v3

    if-eq v3, v12, :cond_8

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v3

    if-eq v3, v9, :cond_8

    :cond_7
    iget-boolean v3, v0, Landroidx/recyclerview/widget/RecyclerView;->mIsNeedPenSelectIconSet:Z

    if-eqz v3, :cond_9

    .line 17259
    :cond_8
    invoke-static {}, Landroidx/reflect/view/SeslPointerIconReflector;->getField_SEM_TYPE_STYLUS_PEN_SELECT()I

    move-result v3

    invoke-virtual {v0, v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->showPointerIcon(Landroid/view/MotionEvent;I)Z

    .line 17260
    iput-boolean v10, v0, Landroidx/recyclerview/widget/RecyclerView;->mIsPenSelectPointerSetted:Z

    goto/16 :goto_5

    .line 17261
    :cond_9
    iget-boolean v3, v0, Landroidx/recyclerview/widget/RecyclerView;->mIsPenDragBlockEnabled:Z

    if-eqz v3, :cond_14

    iget-boolean v3, v0, Landroidx/recyclerview/widget/RecyclerView;->mIsPenSelectPointerSetted:Z

    if-eqz v3, :cond_14

    .line 17262
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v3

    if-eq v3, v12, :cond_14

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v3

    if-eq v3, v9, :cond_14

    .line 17263
    invoke-static {}, Landroidx/reflect/view/SeslPointerIconReflector;->getField_SEM_TYPE_STYLUS_DEFAULT()I

    move-result v3

    invoke-virtual {v0, v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->showPointerIcon(Landroid/view/MotionEvent;I)Z

    .line 17264
    iput-boolean v4, v0, Landroidx/recyclerview/widget/RecyclerView;->mIsPenSelectPointerSetted:Z

    goto/16 :goto_5

    :cond_a
    if-ne v2, v8, :cond_14

    .line 17267
    iget-boolean v3, v0, Landroidx/recyclerview/widget/RecyclerView;->mIsPenSelectPointerSetted:Z

    if-eqz v3, :cond_14

    .line 17268
    invoke-static {}, Landroidx/reflect/view/SeslPointerIconReflector;->getField_SEM_TYPE_STYLUS_DEFAULT()I

    move-result v3

    invoke-virtual {v0, v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->showPointerIcon(Landroid/view/MotionEvent;I)Z

    .line 17269
    iput-boolean v4, v0, Landroidx/recyclerview/widget/RecyclerView;->mIsPenSelectPointerSetted:Z

    goto/16 :goto_5

    .line 17217
    :cond_b
    :goto_2
    iput-boolean v10, v0, Landroidx/recyclerview/widget/RecyclerView;->mNeedsHoverScroll:Z

    .line 17218
    iput-boolean v4, v0, Landroidx/recyclerview/widget/RecyclerView;->mHoverScrollStateChanged:Z

    .line 17220
    iget-boolean v11, v0, Landroidx/recyclerview/widget/RecyclerView;->mHasNestedScrollRange:Z

    if-eqz v11, :cond_c

    .line 17221
    invoke-direct/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView;->adjustNestedScrollRange()V

    .line 17225
    :cond_c
    iget-boolean v11, v0, Landroidx/recyclerview/widget/RecyclerView;->mHoverScrollEnable:Z

    if-nez v11, :cond_d

    .line 17226
    iput-boolean v4, v0, Landroidx/recyclerview/widget/RecyclerView;->mNeedsHoverScroll:Z

    .line 17230
    :cond_d
    iget-boolean v11, v0, Landroidx/recyclerview/widget/RecyclerView;->mNeedsHoverScroll:Z

    if-eqz v11, :cond_13

    if-ne v5, v9, :cond_13

    .line 17231
    invoke-static {}, Landroidx/reflect/provider/SeslSettingsReflector$SeslSystemReflector;->getField_SEM_PEN_HOVERING()Ljava/lang/String;

    move-result-object v11

    .line 17232
    iget-object v13, v0, Landroidx/recyclerview/widget/RecyclerView;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    invoke-static {v13, v11, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    if-ne v11, v10, :cond_e

    move v11, v10

    goto :goto_3

    :cond_e
    move v11, v4

    .line 17236
    :goto_3
    :try_start_0
    iget-object v13, v0, Landroidx/recyclerview/widget/RecyclerView;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "car_mode_on"

    invoke-static {v13, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v3, v10, :cond_f

    move v3, v10

    goto :goto_4

    :catch_0
    const-string v13, "dispatchHoverEvent car_mode_on SettingNotFoundException"

    .line 17238
    invoke-static {v3, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    move v3, v4

    :goto_4
    if-eqz v11, :cond_10

    if-eqz v3, :cond_11

    .line 17242
    :cond_10
    iput-boolean v4, v0, Landroidx/recyclerview/widget/RecyclerView;->mNeedsHoverScroll:Z

    :cond_11
    if-eqz v11, :cond_13

    .line 17245
    iget-boolean v3, v0, Landroidx/recyclerview/widget/RecyclerView;->mIsPenDragBlockEnabled:Z

    if-eqz v3, :cond_13

    iget-boolean v3, v0, Landroidx/recyclerview/widget/RecyclerView;->mIsPenSelectPointerSetted:Z

    if-nez v3, :cond_13

    .line 17246
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v3

    if-eq v3, v12, :cond_12

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v3

    if-ne v3, v9, :cond_13

    .line 17247
    :cond_12
    invoke-static {}, Landroidx/reflect/view/SeslPointerIconReflector;->getField_SEM_TYPE_STYLUS_PEN_SELECT()I

    move-result v3

    invoke-virtual {v0, v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->showPointerIcon(Landroid/view/MotionEvent;I)Z

    .line 17248
    iput-boolean v10, v0, Landroidx/recyclerview/widget/RecyclerView;->mIsPenSelectPointerSetted:Z

    .line 17253
    :cond_13
    iget-boolean v3, v0, Landroidx/recyclerview/widget/RecyclerView;->mNeedsHoverScroll:Z

    if-eqz v3, :cond_14

    const/4 v3, 0x3

    if-ne v5, v3, :cond_14

    .line 17254
    iput-boolean v4, v0, Landroidx/recyclerview/widget/RecyclerView;->mNeedsHoverScroll:Z

    .line 17274
    :cond_14
    :goto_5
    iget-boolean v3, v0, Landroidx/recyclerview/widget/RecyclerView;->mNeedsHoverScroll:Z

    if-nez v3, :cond_15

    .line 17275
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 17279
    :cond_15
    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v3

    if-eqz v3, :cond_16

    .line 17281
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    goto :goto_6

    :cond_16
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    :goto_6
    float-to-int v5, v5

    if-eqz v3, :cond_17

    .line 17282
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v11

    goto :goto_7

    :cond_17
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    :goto_7
    float-to-int v11, v11

    .line 17286
    iget-boolean v13, v0, Landroidx/recyclerview/widget/RecyclerView;->mIsEnabledPaddingInHoverScroll:Z

    if-eqz v13, :cond_18

    .line 17287
    iget-object v13, v0, Landroidx/recyclerview/widget/RecyclerView;->mListPadding:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->top:I

    .line 17288
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v14

    iget-object v15, v0, Landroidx/recyclerview/widget/RecyclerView;->mListPadding:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v14, v15

    goto :goto_8

    .line 17290
    :cond_18
    iget v13, v0, Landroidx/recyclerview/widget/RecyclerView;->mExtraPaddingInTopHoverArea:I

    if-eqz v3, :cond_19

    .line 17291
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v14

    goto :goto_8

    :cond_19
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v14

    .line 17294
    :goto_8
    invoke-direct/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView;->canScrollDown()Z

    move-result v15

    .line 17295
    invoke-direct/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView;->canScrollUp()Z

    move-result v16

    .line 17297
    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v10

    if-ne v10, v9, :cond_1a

    const/4 v10, 0x1

    goto :goto_9

    :cond_1a
    move v10, v4

    .line 17299
    :goto_9
    iget v4, v0, Landroidx/recyclerview/widget/RecyclerView;->mHoverTopAreaHeight:I

    add-int/2addr v4, v13

    if-le v11, v4, :cond_1b

    iget v4, v0, Landroidx/recyclerview/widget/RecyclerView;->mHoverBottomAreaHeight:I

    sub-int v4, v14, v4

    iget v6, v0, Landroidx/recyclerview/widget/RecyclerView;->mRemainNestedScrollRange:I

    sub-int/2addr v4, v6

    if-lt v11, v4, :cond_34

    :cond_1b
    if-lez v5, :cond_34

    if-eqz v3, :cond_1c

    .line 17300
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getBottom()I

    move-result v4

    goto :goto_a

    :cond_1c
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getRight()I

    move-result v4

    :goto_a
    if-gt v5, v4, :cond_34

    if-nez v16, :cond_1d

    if-eqz v15, :cond_34

    :cond_1d
    if-lt v11, v13, :cond_1e

    iget v4, v0, Landroidx/recyclerview/widget/RecyclerView;->mHoverTopAreaHeight:I

    add-int/2addr v4, v13

    if-gt v11, v4, :cond_1e

    if-nez v16, :cond_1e

    iget-boolean v4, v0, Landroidx/recyclerview/widget/RecyclerView;->mIsHoverOverscrolled:Z

    if-nez v4, :cond_34

    :cond_1e
    iget v4, v0, Landroidx/recyclerview/widget/RecyclerView;->mHoverBottomAreaHeight:I

    sub-int v4, v14, v4

    iget v6, v0, Landroidx/recyclerview/widget/RecyclerView;->mRemainNestedScrollRange:I

    sub-int/2addr v4, v6

    if-lt v11, v4, :cond_1f

    sub-int v4, v14, v6

    if-gt v11, v4, :cond_1f

    if-nez v15, :cond_1f

    iget-boolean v4, v0, Landroidx/recyclerview/widget/RecyclerView;->mIsHoverOverscrolled:Z

    if-nez v4, :cond_34

    :cond_1f
    if-eqz v10, :cond_20

    .line 17304
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v4

    if-eq v4, v12, :cond_34

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v4

    if-eq v4, v9, :cond_34

    :cond_20
    if-eqz v10, :cond_34

    .line 17305
    invoke-direct/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView;->isLockScreenMode()Z

    move-result v4

    if-eqz v4, :cond_21

    goto/16 :goto_f

    .line 17347
    :cond_21
    iget-boolean v4, v0, Landroidx/recyclerview/widget/RecyclerView;->mHasNestedScrollRange:Z

    if-eqz v4, :cond_22

    iget v4, v0, Landroidx/recyclerview/widget/RecyclerView;->mRemainNestedScrollRange:I

    if-lez v4, :cond_22

    iget v5, v0, Landroidx/recyclerview/widget/RecyclerView;->mNestedScrollRange:I

    if-eq v4, v5, :cond_22

    .line 17348
    invoke-direct/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView;->adjustNestedScrollRange()V

    .line 17351
    :cond_22
    iget-boolean v4, v0, Landroidx/recyclerview/widget/RecyclerView;->mHoverAreaEnter:Z

    if-nez v4, :cond_23

    .line 17352
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v0, Landroidx/recyclerview/widget/RecyclerView;->mHoverScrollStartTime:J

    :cond_23
    const/4 v4, 0x7

    if-eq v2, v4, :cond_2b

    const/16 v4, 0x9

    if-eq v2, v4, :cond_29

    if-eq v2, v8, :cond_25

    :cond_24
    :goto_b
    const/4 v0, 0x1

    goto/16 :goto_e

    .line 17438
    :cond_25
    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView;->mHoverHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 17439
    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView;->mHoverHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 17442
    :cond_26
    iget v2, v0, Landroidx/recyclerview/widget/RecyclerView;->mScrollState:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_27

    .line 17443
    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    .line 17446
    :cond_27
    invoke-static {}, Landroidx/reflect/view/SeslPointerIconReflector;->getField_SEM_TYPE_STYLUS_DEFAULT()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->showPointerIcon(Landroid/view/MotionEvent;I)Z

    const-wide/16 v4, 0x0

    .line 17448
    iput-wide v4, v0, Landroidx/recyclerview/widget/RecyclerView;->mHoverRecognitionStartTime:J

    .line 17449
    iput-wide v4, v0, Landroidx/recyclerview/widget/RecyclerView;->mHoverScrollStartTime:J

    .line 17450
    iput-boolean v3, v0, Landroidx/recyclerview/widget/RecyclerView;->mIsHoverOverscrolled:Z

    .line 17451
    iput-boolean v3, v0, Landroidx/recyclerview/widget/RecyclerView;->mHoverAreaEnter:Z

    .line 17452
    iput-boolean v3, v0, Landroidx/recyclerview/widget/RecyclerView;->mIsSendHoverScrollState:Z

    .line 17454
    iget v2, v0, Landroidx/recyclerview/widget/RecyclerView;->mHoverScrollStateForListener:I

    if-eqz v2, :cond_28

    .line 17455
    iput v3, v0, Landroidx/recyclerview/widget/RecyclerView;->mHoverScrollStateForListener:I

    .line 17456
    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView;->mScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    if-eqz v2, :cond_28

    .line 17457
    invoke-virtual {v2, v0, v3}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 17460
    :cond_28
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :cond_29
    const/4 v2, 0x1

    .line 17357
    iput-boolean v2, v0, Landroidx/recyclerview/widget/RecyclerView;->mHoverAreaEnter:Z

    if-lt v11, v13, :cond_2a

    .line 17359
    iget v2, v0, Landroidx/recyclerview/widget/RecyclerView;->mHoverTopAreaHeight:I

    add-int/2addr v13, v2

    if-gt v11, v13, :cond_2a

    .line 17361
    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView;->mHoverHandler:Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_24

    .line 17362
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, v0, Landroidx/recyclerview/widget/RecyclerView;->mHoverRecognitionStartTime:J

    .line 17364
    invoke-direct {v0, v4, v3}, Landroidx/recyclerview/widget/RecyclerView;->getRotatedArrowPointerIcon(ZZ)I

    move-result v2

    .line 17363
    invoke-virtual {v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->showPointerIcon(Landroid/view/MotionEvent;I)Z

    .line 17366
    iput v9, v0, Landroidx/recyclerview/widget/RecyclerView;->mHoverScrollDirection:I

    .line 17367
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mHoverHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_b

    .line 17369
    :cond_2a
    iget v2, v0, Landroidx/recyclerview/widget/RecyclerView;->mHoverBottomAreaHeight:I

    sub-int v2, v14, v2

    iget v4, v0, Landroidx/recyclerview/widget/RecyclerView;->mRemainNestedScrollRange:I

    sub-int/2addr v2, v4

    if-lt v11, v2, :cond_24

    sub-int/2addr v14, v4

    if-gt v11, v14, :cond_24

    .line 17372
    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView;->mHoverHandler:Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_24

    .line 17373
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, v0, Landroidx/recyclerview/widget/RecyclerView;->mHoverRecognitionStartTime:J

    const/4 v2, 0x1

    .line 17375
    invoke-direct {v0, v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->getRotatedArrowPointerIcon(ZZ)I

    move-result v3

    .line 17374
    invoke-virtual {v0, v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->showPointerIcon(Landroid/view/MotionEvent;I)Z

    .line 17377
    iput v2, v0, Landroidx/recyclerview/widget/RecyclerView;->mHoverScrollDirection:I

    .line 17378
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mHoverHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    move v0, v2

    goto/16 :goto_e

    :cond_2b
    const/4 v2, 0x1

    .line 17384
    iget-boolean v4, v0, Landroidx/recyclerview/widget/RecyclerView;->mHoverAreaEnter:Z

    if-nez v4, :cond_2c

    .line 17385
    iput-boolean v2, v0, Landroidx/recyclerview/widget/RecyclerView;->mHoverAreaEnter:Z

    .line 17386
    invoke-virtual {v1, v8}, Landroid/view/MotionEvent;->setAction(I)V

    .line 17387
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :cond_2c
    if-lt v11, v13, :cond_2f

    .line 17390
    iget v2, v0, Landroidx/recyclerview/widget/RecyclerView;->mHoverTopAreaHeight:I

    add-int/2addr v13, v2

    if-gt v11, v13, :cond_2f

    .line 17392
    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView;->mHoverHandler:Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_24

    .line 17393
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, v0, Landroidx/recyclerview/widget/RecyclerView;->mHoverRecognitionStartTime:J

    .line 17396
    iget-boolean v2, v0, Landroidx/recyclerview/widget/RecyclerView;->mIsHoverOverscrolled:Z

    if-eqz v2, :cond_2d

    iget v2, v0, Landroidx/recyclerview/widget/RecyclerView;->mHoverScrollDirection:I

    const/4 v5, 0x1

    if-ne v2, v5, :cond_2e

    .line 17398
    :cond_2d
    invoke-direct {v0, v4, v3}, Landroidx/recyclerview/widget/RecyclerView;->getRotatedArrowPointerIcon(ZZ)I

    move-result v2

    .line 17397
    invoke-virtual {v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->showPointerIcon(Landroid/view/MotionEvent;I)Z

    .line 17400
    :cond_2e
    iput v9, v0, Landroidx/recyclerview/widget/RecyclerView;->mHoverScrollDirection:I

    .line 17401
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mHoverHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_b

    .line 17403
    :cond_2f
    iget v2, v0, Landroidx/recyclerview/widget/RecyclerView;->mHoverBottomAreaHeight:I

    sub-int v2, v14, v2

    iget v4, v0, Landroidx/recyclerview/widget/RecyclerView;->mRemainNestedScrollRange:I

    sub-int/2addr v2, v4

    if-lt v11, v2, :cond_32

    sub-int/2addr v14, v4

    if-gt v11, v14, :cond_32

    .line 17406
    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView;->mHoverHandler:Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_24

    .line 17407
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v0, Landroidx/recyclerview/widget/RecyclerView;->mHoverRecognitionStartTime:J

    .line 17410
    iget-boolean v2, v0, Landroidx/recyclerview/widget/RecyclerView;->mIsHoverOverscrolled:Z

    if-eqz v2, :cond_31

    iget v2, v0, Landroidx/recyclerview/widget/RecyclerView;->mHoverScrollDirection:I

    if-ne v2, v9, :cond_30

    goto :goto_c

    :cond_30
    const/4 v2, 0x1

    goto :goto_d

    :cond_31
    :goto_c
    const/4 v2, 0x1

    .line 17412
    invoke-direct {v0, v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->getRotatedArrowPointerIcon(ZZ)I

    move-result v3

    .line 17411
    invoke-virtual {v0, v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->showPointerIcon(Landroid/view/MotionEvent;I)Z

    .line 17415
    :goto_d
    iput v2, v0, Landroidx/recyclerview/widget/RecyclerView;->mHoverScrollDirection:I

    .line 17416
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mHoverHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_b

    :cond_32
    const/4 v2, 0x0

    .line 17420
    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView;->mHoverHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v3

    if-eqz v3, :cond_33

    .line 17421
    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView;->mHoverHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 17422
    iget v3, v0, Landroidx/recyclerview/widget/RecyclerView;->mScrollState:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_33

    .line 17423
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    .line 17426
    :cond_33
    invoke-static {}, Landroidx/reflect/view/SeslPointerIconReflector;->getField_SEM_TYPE_STYLUS_DEFAULT()I

    move-result v3

    invoke-virtual {v0, v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->showPointerIcon(Landroid/view/MotionEvent;I)Z

    const-wide/16 v3, 0x0

    .line 17428
    iput-wide v3, v0, Landroidx/recyclerview/widget/RecyclerView;->mHoverRecognitionStartTime:J

    .line 17429
    iput-wide v3, v0, Landroidx/recyclerview/widget/RecyclerView;->mHoverScrollStartTime:J

    .line 17430
    iput-boolean v2, v0, Landroidx/recyclerview/widget/RecyclerView;->mIsHoverOverscrolled:Z

    .line 17431
    iput-boolean v2, v0, Landroidx/recyclerview/widget/RecyclerView;->mHoverAreaEnter:Z

    .line 17432
    iput-boolean v2, v0, Landroidx/recyclerview/widget/RecyclerView;->mIsSendHoverScrollState:Z

    goto/16 :goto_b

    :goto_e
    return v0

    .line 17306
    :cond_34
    :goto_f
    iget-boolean v4, v0, Landroidx/recyclerview/widget/RecyclerView;->mHasNestedScrollRange:Z

    if-eqz v4, :cond_35

    iget v4, v0, Landroidx/recyclerview/widget/RecyclerView;->mRemainNestedScrollRange:I

    if-lez v4, :cond_35

    iget v6, v0, Landroidx/recyclerview/widget/RecyclerView;->mNestedScrollRange:I

    if-eq v4, v6, :cond_35

    .line 17307
    invoke-direct/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView;->adjustNestedScrollRange()V

    .line 17310
    :cond_35
    iget-object v4, v0, Landroidx/recyclerview/widget/RecyclerView;->mHoverHandler:Landroid/os/Handler;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v4

    if-eqz v4, :cond_36

    .line 17311
    iget-object v4, v0, Landroidx/recyclerview/widget/RecyclerView;->mHoverHandler:Landroid/os/Handler;

    invoke-virtual {v4, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 17312
    invoke-static {}, Landroidx/reflect/view/SeslPointerIconReflector;->getField_SEM_TYPE_STYLUS_DEFAULT()I

    move-result v4

    invoke-virtual {v0, v1, v4}, Landroidx/recyclerview/widget/RecyclerView;->showPointerIcon(Landroid/view/MotionEvent;I)Z

    .line 17313
    iget v4, v0, Landroidx/recyclerview/widget/RecyclerView;->mScrollState:I

    const/4 v7, 0x1

    if-ne v4, v7, :cond_36

    .line 17314
    invoke-virtual {v0, v6}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    .line 17318
    :cond_36
    iget v4, v0, Landroidx/recyclerview/widget/RecyclerView;->mHoverTopAreaHeight:I

    add-int/2addr v13, v4

    if-le v11, v13, :cond_37

    iget v4, v0, Landroidx/recyclerview/widget/RecyclerView;->mHoverBottomAreaHeight:I

    sub-int/2addr v14, v4

    iget v4, v0, Landroidx/recyclerview/widget/RecyclerView;->mRemainNestedScrollRange:I

    sub-int/2addr v14, v4

    if-lt v11, v14, :cond_39

    :cond_37
    if-lez v5, :cond_39

    if-eqz v3, :cond_38

    .line 17319
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getBottom()I

    move-result v3

    goto :goto_10

    :cond_38
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getRight()I

    move-result v3

    :goto_10
    if-le v5, v3, :cond_3a

    :cond_39
    const/4 v3, 0x0

    .line 17320
    iput-boolean v3, v0, Landroidx/recyclerview/widget/RecyclerView;->mIsHoverOverscrolled:Z

    .line 17323
    :cond_3a
    iget-boolean v3, v0, Landroidx/recyclerview/widget/RecyclerView;->mHoverAreaEnter:Z

    if-nez v3, :cond_3b

    iget-wide v3, v0, Landroidx/recyclerview/widget/RecyclerView;->mHoverScrollStartTime:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_3c

    goto :goto_11

    :cond_3b
    const-wide/16 v5, 0x0

    .line 17324
    :goto_11
    invoke-static {}, Landroidx/reflect/view/SeslPointerIconReflector;->getField_SEM_TYPE_STYLUS_DEFAULT()I

    move-result v3

    invoke-virtual {v0, v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->showPointerIcon(Landroid/view/MotionEvent;I)Z

    .line 17327
    :cond_3c
    iput-wide v5, v0, Landroidx/recyclerview/widget/RecyclerView;->mHoverRecognitionStartTime:J

    .line 17328
    iput-wide v5, v0, Landroidx/recyclerview/widget/RecyclerView;->mHoverScrollStartTime:J

    const/4 v3, 0x0

    .line 17329
    iput-boolean v3, v0, Landroidx/recyclerview/widget/RecyclerView;->mHoverAreaEnter:Z

    .line 17330
    iput-boolean v3, v0, Landroidx/recyclerview/widget/RecyclerView;->mIsSendHoverScrollState:Z

    if-ne v2, v8, :cond_3e

    .line 17333
    iget v2, v0, Landroidx/recyclerview/widget/RecyclerView;->mHoverScrollStateForListener:I

    if-eqz v2, :cond_3d

    .line 17334
    iput v3, v0, Landroidx/recyclerview/widget/RecyclerView;->mHoverScrollStateForListener:I

    .line 17336
    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView;->mScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    if-eqz v2, :cond_3e

    .line 17337
    invoke-virtual {v2, v0, v3}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    goto :goto_12

    .line 17340
    :cond_3d
    iput-boolean v3, v0, Landroidx/recyclerview/widget/RecyclerView;->mIsHoverOverscrolled:Z

    .line 17344
    :cond_3e
    :goto_12
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    .line 15296
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x13

    if-eq v0, v1, :cond_0

    const/16 v1, 0x14

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 15299
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 15300
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mIsArrowKeyPressed:Z

    .line 15305
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method dispatchLayout()V
    .locals 4

    .line 4944
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    const-string v1, "SeslRecyclerView"

    if-nez v0, :cond_0

    const-string p0, "No adapter attached; skipping layout"

    .line 4945
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4949
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    if-nez v0, :cond_1

    const-string p0, "No layout manager attached; skipping layout"

    .line 4950
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4954
    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroidx/recyclerview/widget/RecyclerView$State;->mIsMeasuring:Z

    .line 4960
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLastAutoMeasureSkippedDueToExact:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLastAutoMeasureNonExactMeasuredWidth:I

    .line 4961
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v3

    if-ne v0, v3, :cond_2

    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLastAutoMeasureNonExactMeasuredHeight:I

    .line 4962
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v3

    if-eq v0, v3, :cond_3

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    move v0, v1

    .line 4963
    :goto_0
    iput v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mLastAutoMeasureNonExactMeasuredWidth:I

    .line 4964
    iput v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mLastAutoMeasureNonExactMeasuredHeight:I

    .line 4965
    iput-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mLastAutoMeasureSkippedDueToExact:Z

    .line 4967
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    iget v1, v1, Landroidx/recyclerview/widget/RecyclerView$State;->mLayoutStep:I

    if-ne v1, v2, :cond_4

    .line 4968
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->dispatchLayoutStep1()V

    .line 4969
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->setExactMeasureSpecsFrom(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 4970
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->dispatchLayoutStep2()V

    goto :goto_2

    .line 4971
    :cond_4
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapterHelper:Landroidx/recyclerview/widget/AdapterHelper;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/AdapterHelper;->hasUpdates()Z

    move-result v1

    if-nez v1, :cond_6

    if-nez v0, :cond_6

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 4973
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 4974
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    if-eq v0, v1, :cond_5

    goto :goto_1

    .line 4987
    :cond_5
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->setExactMeasureSpecsFrom(Landroidx/recyclerview/widget/RecyclerView;)V

    goto :goto_2

    .line 4983
    :cond_6
    :goto_1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->setExactMeasureSpecsFrom(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 4984
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->dispatchLayoutStep2()V

    .line 4989
    :goto_2
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->dispatchLayoutStep3()V

    return-void
.end method

.method public dispatchNestedFling(FFZ)Z
    .locals 0

    .line 13216
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollingChildHelper()Landroidx/core/view/NestedScrollingChildHelper;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedFling(FFZ)Z

    move-result p0

    return p0
.end method

.method public dispatchNestedPreFling(FF)Z
    .locals 0

    .line 13221
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollingChildHelper()Landroidx/core/view/NestedScrollingChildHelper;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedPreFling(FF)Z

    move-result p0

    return p0
.end method

.method public dispatchNestedPreScroll(II[I[I)Z
    .locals 0

    .line 13204
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollingChildHelper()Landroidx/core/view/NestedScrollingChildHelper;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedPreScroll(II[I[I)Z

    move-result p0

    return p0
.end method

.method public dispatchNestedPreScroll(II[I[II)Z
    .locals 6

    .line 13210
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollingChildHelper()Landroidx/core/view/NestedScrollingChildHelper;

    move-result-object v0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedPreScroll(II[I[II)Z

    move-result p0

    return p0
.end method

.method public final dispatchNestedScroll(IIII[II[I)V
    .locals 8

    .line 13190
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollingChildHelper()Landroidx/core/view/NestedScrollingChildHelper;

    move-result-object v0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedScroll(IIII[II[I)V

    return-void
.end method

.method public dispatchNestedScroll(IIII[I)Z
    .locals 6

    .line 13176
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollingChildHelper()Landroidx/core/view/NestedScrollingChildHelper;

    move-result-object v0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedScroll(IIII[I)Z

    move-result p0

    return p0
.end method

.method dispatchOnScrollStateChanged(I)V
    .locals 2

    .line 6461
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_0

    .line 6462
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onScrollStateChanged(I)V

    .line 6467
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onScrollStateChanged(I)V

    .line 6470
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    if-eqz v0, :cond_1

    .line 6471
    invoke-virtual {v0, p0, p1}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 6473
    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 6474
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    .line 6475
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v1, p0, p1}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method dispatchOnScrolled(II)V
    .locals 4

    .line 6406
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mDispatchScrollCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mDispatchScrollCounter:I

    .line 6411
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v0

    .line 6412
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v1

    sub-int v2, v0, p1

    sub-int v3, v1, p2

    .line 6413
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/view/ViewGroup;->onScrollChanged(IIII)V

    .line 6416
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->onScrolled(II)V

    .line 6419
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mFastScroller:Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-eqz v1, :cond_1

    if-nez p1, :cond_0

    if-eqz p2, :cond_1

    .line 6420
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->findFirstVisibleItemPosition()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->onScroll(III)V

    .line 6423
    :cond_1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mIndexTipEnabled:Z

    .line 6433
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    if-eqz v0, :cond_2

    .line 6434
    invoke-virtual {v0, p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 6436
    :cond_2
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 6437
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_3

    .line 6438
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v1, p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 6441
    :cond_3
    iget p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mDispatchScrollCounter:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mDispatchScrollCounter:I

    return-void
.end method

.method dispatchPendingImportantForAccessibilityChanges()V
    .locals 5

    .line 13087
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mPendingAccessibilityImportanceChange:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    .line 13088
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mPendingAccessibilityImportanceChange:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 13089
    iget-object v2, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-ne v2, p0, :cond_1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 13092
    :cond_0
    iget v2, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPendingAccessibilityState:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 13095
    iget-object v4, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v4, v2}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 13096
    iput v3, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPendingAccessibilityState:I

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 13100
    :cond_2
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mPendingAccessibilityImportanceChange:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 0

    .line 4848
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const/4 p0, 0x1

    return p0
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .line 2050
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    return-void
.end method

.method protected dispatchSaveInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .line 2042
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->dispatchFreezeSelfOnly(Landroid/util/SparseArray;)V

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11

    .line 15310
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    const-string v1, "SeslRecyclerView"

    if-nez v0, :cond_0

    const-string v0, "No layout manager attached; skipping gototop & multiselection"

    .line 15311
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15312
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    .line 15316
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 15318
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    float-to-int v5, v2

    .line 15319
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    add-float/2addr v2, v3

    float-to-int v6, v2

    const/4 v9, 0x0

    .line 15325
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenDragSelectedItemArray:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    .line 15326
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenDragSelectedItemArray:Ljava/util/ArrayList;

    .line 15329
    :cond_1
    iget-boolean v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mIsEnabledPaddingInHoverScroll:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 15330
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    .line 15331
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v4

    iget-object v7, p0, Landroidx/recyclerview/widget/RecyclerView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v7

    move v7, v2

    move v8, v4

    goto :goto_0

    .line 15334
    :cond_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    move v8, v2

    move v7, v3

    .line 15337
    :goto_0
    iget-boolean v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mIsPenSelectionEnabled:Z

    const/4 v10, 0x1

    if-eqz v2, :cond_3

    invoke-static {}, Landroidx/reflect/widget/SeslTextViewReflector;->semIsTextSelectionProgressing()Z

    move-result v2

    if-nez v2, :cond_3

    move v2, v10

    goto :goto_1

    :cond_3
    move v2, v3

    :goto_1
    iput-boolean v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mIsNeedPenSelection:Z

    const/4 v2, 0x3

    const/4 v4, 0x2

    if-eqz v0, :cond_16

    if-eq v0, v10, :cond_a

    if-eq v0, v4, :cond_6

    if-eq v0, v2, :cond_4

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_5

    :pswitch_0
    const/4 v9, 0x0

    move-object v4, p0

    .line 15392
    invoke-direct/range {v4 .. v9}, Landroidx/recyclerview/widget/RecyclerView;->multiSelection(IIIIZ)V

    goto/16 :goto_5

    .line 15364
    :pswitch_1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenDragSelectedItemArray:Ljava/util/ArrayList;

    if-nez v0, :cond_1a

    .line 15365
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenDragSelectedItemArray:Ljava/util/ArrayList;

    goto/16 :goto_5

    .line 15397
    :cond_4
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->isSupportGotoTop()Z

    move-result v0

    if-eqz v0, :cond_a

    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mGoToTopState:I

    if-eqz v0, :cond_a

    if-ne v0, v4, :cond_5

    .line 15398
    iput v10, p0, Landroidx/recyclerview/widget/RecyclerView;->mGoToTopState:I

    .line 15400
    :cond_5
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mGoToTopView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setPressed(Z)V

    goto :goto_2

    .line 15371
    :cond_6
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mIsCtrlMultiSelection:Z

    if-eqz v0, :cond_7

    const/4 v9, 0x0

    move-object v4, p0

    .line 15372
    invoke-direct/range {v4 .. v9}, Landroidx/recyclerview/widget/RecyclerView;->multiSelection(IIIIZ)V

    return v10

    .line 15375
    :cond_7
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mIsLongPressMultiSelection:Z

    if-eqz v0, :cond_8

    .line 15376
    invoke-direct {p0, v5, v6, v10}, Landroidx/recyclerview/widget/RecyclerView;->updateLongPressMultiSelection(IIZ)V

    return v10

    .line 15380
    :cond_8
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->isSupportGotoTop()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mGoToTopState:I

    if-ne v0, v4, :cond_1a

    .line 15381
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mGoToTopRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    if-nez p1, :cond_9

    .line 15382
    iput v10, p0, Landroidx/recyclerview/widget/RecyclerView;->mGoToTopState:I

    .line 15383
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mGoToTopView:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setPressed(Z)V

    .line 15384
    invoke-direct {p0, v10}, Landroidx/recyclerview/widget/RecyclerView;->autoHide(I)V

    :cond_9
    return v10

    .line 15406
    :cond_a
    :goto_2
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mIsCtrlMultiSelection:Z

    if-eqz v0, :cond_b

    .line 15407
    invoke-direct {p0, v5, v6}, Landroidx/recyclerview/widget/RecyclerView;->multiSelectionEnd(II)V

    .line 15408
    iput-boolean v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mIsCtrlMultiSelection:Z

    return v10

    .line 15411
    :cond_b
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mIsLongPressMultiSelection:Z

    if-eqz v0, :cond_e

    .line 15412
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLongPressMultiSelectionListener:Landroidx/recyclerview/widget/RecyclerView$SeslLongPressMultiSelectionListener;

    if-eqz v0, :cond_c

    .line 15413
    invoke-interface {v0, v5, v6}, Landroidx/recyclerview/widget/RecyclerView$SeslLongPressMultiSelectionListener;->onLongPressMultiSelectionEnded(II)V

    .line 15416
    :cond_c
    iput-boolean v10, p0, Landroidx/recyclerview/widget/RecyclerView;->mIsFirstMultiSelectionMove:Z

    const/4 v0, -0x1

    .line 15417
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenDragSelectedViewPosition:I

    .line 15419
    iput v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenDragStartX:I

    .line 15420
    iput v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenDragStartY:I

    .line 15421
    iput v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenDragEndX:I

    .line 15422
    iput v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenDragEndY:I

    .line 15424
    iput v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenDragBlockLeft:I

    .line 15425
    iput v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenDragBlockTop:I

    .line 15426
    iput v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenDragBlockRight:I

    .line 15427
    iput v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenDragBlockBottom:I

    .line 15429
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenDragSelectedItemArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    .line 15430
    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenTrackedChild:Landroid/view/View;

    .line 15431
    iput v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenDistanceFromTrackedChildTop:I

    .line 15434
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mHoverHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 15435
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mHoverHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 15436
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mScrollState:I

    if-ne v0, v10, :cond_d

    .line 15437
    invoke-virtual {p0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    .line 15440
    :cond_d
    iput-boolean v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mIsHoverOverscrolled:Z

    .line 15442
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    .line 15443
    iput-boolean v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mIsLongPressMultiSelection:Z

    .line 15449
    :cond_e
    :pswitch_2
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->isSupportGotoTop()Z

    move-result v0

    if-eqz v0, :cond_15

    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mGoToTopState:I

    if-ne v0, v4, :cond_15

    .line 15450
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->canScrollUp()Z

    move-result p1

    if-eqz p1, :cond_14

    .line 15451
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mOnGoToTopClickListener:Landroidx/recyclerview/widget/RecyclerView$SeslOnGoToTopClickListener;

    if-eqz p1, :cond_f

    invoke-interface {p1, p0}, Landroidx/recyclerview/widget/RecyclerView$SeslOnGoToTopClickListener;->onGoToTopClick(Landroidx/recyclerview/widget/RecyclerView;)Z

    move-result p1

    if-eqz p1, :cond_f

    return v10

    :cond_f
    const-string p1, " can scroll top "

    .line 15454
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15455
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    mul-int/2addr p1, v4

    .line 15456
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result v0

    if-eqz v0, :cond_14

    .line 15457
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->stopScroll()V

    .line 15458
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    instance-of v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    if-eqz v1, :cond_10

    .line 15459
    check-cast v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    invoke-virtual {v0, v3, v3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->scrollToPositionWithOffset(II)V

    goto :goto_4

    .line 15461
    :cond_10
    iput-boolean v10, p0, Landroidx/recyclerview/widget/RecyclerView;->mGoToToping:Z

    if-lez p1, :cond_13

    .line 15462
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->findFirstVisibleItemPosition()I

    move-result v0

    if-ge p1, v0, :cond_13

    .line 15463
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    instance-of v1, v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v1, :cond_12

    .line 15464
    instance-of v1, v0, Landroidx/recyclerview/widget/GridLayoutManager;

    if-eqz v1, :cond_11

    .line 15465
    check-cast v0, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result v0

    if-ge p1, v0, :cond_11

    move p1, v0

    .line 15470
    :cond_11
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0, p1, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    goto :goto_3

    .line 15472
    :cond_12
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 15475
    :cond_13
    :goto_3
    new-instance p1, Landroidx/recyclerview/widget/RecyclerView$13;

    invoke-direct {p1, p0}, Landroidx/recyclerview/widget/RecyclerView$13;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 15484
    :cond_14
    :goto_4
    invoke-direct {p0, v3}, Landroidx/recyclerview/widget/RecyclerView;->autoHide(I)V

    .line 15485
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->playSoundEffect(I)V

    return v10

    .line 15489
    :cond_15
    invoke-direct {p0, v5, v6}, Landroidx/recyclerview/widget/RecyclerView;->multiSelectionEnd(II)V

    goto :goto_5

    .line 15341
    :cond_16
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->isSupportGotoTop()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 15342
    iput-boolean v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mGoToToping:Z

    .line 15345
    :cond_17
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->isSupportGotoTop()Z

    move-result v0

    if-eqz v0, :cond_18

    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mGoToTopState:I

    if-eq v0, v4, :cond_18

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mGoToTopRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v5, v6}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 15346
    invoke-direct {p0, v4}, Landroidx/recyclerview/widget/RecyclerView;->setupGoToTop(I)V

    .line 15347
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mGoToTopView:Landroid/widget/ImageView;

    invoke-virtual {p0, v10}, Landroid/widget/ImageView;->setPressed(Z)V

    return v10

    .line 15351
    :cond_18
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mIsCtrlKeyPressed:Z

    if-eqz v0, :cond_19

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v0

    if-ne v0, v2, :cond_19

    .line 15352
    iput-boolean v10, p0, Landroidx/recyclerview/widget/RecyclerView;->mIsCtrlMultiSelection:Z

    .line 15353
    iput-boolean v10, p0, Landroidx/recyclerview/widget/RecyclerView;->mIsNeedPenSelection:Z

    move-object v4, p0

    .line 15354
    invoke-direct/range {v4 .. v9}, Landroidx/recyclerview/widget/RecyclerView;->multiSelection(IIIIZ)V

    return v10

    .line 15357
    :cond_19
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mIsLongPressMultiSelection:Z

    if-eqz v0, :cond_1a

    .line 15358
    iput-boolean v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mIsLongPressMultiSelection:Z

    .line 15495
    :cond_1a
    :goto_5
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0xd3
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 5632
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 5634
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    .line 5636
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    invoke-virtual {v3, p1, p0, v4}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;->onDrawOver(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5641
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_3

    .line 5642
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 5643
    iget-boolean v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mClipToPadding:Z

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v4

    goto :goto_1

    :cond_1
    move v4, v1

    :goto_1
    const/high16 v5, 0x43870000    # 270.0f

    .line 5644
    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->rotate(F)V

    .line 5645
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v5

    neg-int v5, v5

    add-int/2addr v5, v4

    int-to-float v4, v5

    invoke-virtual {p1, v4, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 5646
    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    if-eqz v4, :cond_2

    invoke-virtual {v4, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v4, v3

    goto :goto_2

    :cond_2
    move v4, v1

    .line 5647
    :goto_2
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_3

    :cond_3
    move v4, v1

    .line 5649
    :goto_3
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_6

    .line 5650
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 5651
    iget-boolean v5, p0, Landroidx/recyclerview/widget/RecyclerView;->mClipToPadding:Z

    if-eqz v5, :cond_4

    .line 5652
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 5654
    :cond_4
    iget-object v5, p0, Landroidx/recyclerview/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    if-eqz v5, :cond_5

    invoke-virtual {v5, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v5

    if-eqz v5, :cond_5

    move v5, v3

    goto :goto_4

    :cond_5
    move v5, v1

    :goto_4
    or-int/2addr v4, v5

    .line 5655
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 5657
    :cond_6
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_9

    .line 5658
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 5659
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v5

    .line 5660
    iget-boolean v6, p0, Landroidx/recyclerview/widget/RecyclerView;->mClipToPadding:Z

    if-eqz v6, :cond_7

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v6

    goto :goto_5

    :cond_7
    move v6, v1

    :goto_5
    const/high16 v7, 0x42b40000    # 90.0f

    .line 5661
    invoke-virtual {p1, v7}, Landroid/graphics/Canvas;->rotate(F)V

    int-to-float v6, v6

    neg-int v5, v5

    int-to-float v5, v5

    .line 5662
    invoke-virtual {p1, v6, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 5663
    iget-object v5, p0, Landroidx/recyclerview/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    if-eqz v5, :cond_8

    invoke-virtual {v5, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v5

    if-eqz v5, :cond_8

    move v5, v3

    goto :goto_6

    :cond_8
    move v5, v1

    :goto_6
    or-int/2addr v4, v5

    .line 5664
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 5666
    :cond_9
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_c

    .line 5667
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    const/high16 v5, 0x43340000    # 180.0f

    .line 5668
    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->rotate(F)V

    .line 5669
    iget-boolean v5, p0, Landroidx/recyclerview/widget/RecyclerView;->mClipToPadding:Z

    if-eqz v5, :cond_a

    .line 5670
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v5

    neg-int v5, v5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v6

    neg-int v6, v6

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v7

    add-int/2addr v6, v7

    int-to-float v6, v6

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_7

    .line 5672
    :cond_a
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v6

    neg-int v6, v6

    int-to-float v6, v6

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 5674
    :goto_7
    iget-object v5, p0, Landroidx/recyclerview/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    if-eqz v5, :cond_b

    invoke-virtual {v5, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v5

    if-eqz v5, :cond_b

    move v5, v3

    goto :goto_8

    :cond_b
    move v5, v1

    :goto_8
    or-int/2addr v4, v5

    .line 5675
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_c
    if-nez v4, :cond_d

    .line 5681
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    if-eqz v0, :cond_d

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_d

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    .line 5682
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_9

    :cond_d
    move v3, v4

    :goto_9
    if-eqz v3, :cond_e

    .line 5687
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 5691
    :cond_e
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mEnableGoToTop:Z

    if-eqz v0, :cond_f

    .line 5692
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->drawGoToTop()V

    .line 5694
    :cond_f
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->isTalkBackIsRunning()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mGoToTopView:Landroid/widget/ImageView;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Landroid/widget/ImageView;->getAlpha()F

    move-result v0

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_10

    .line 5695
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mGoToTopView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 5700
    :cond_10
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mIsPenDragBlockEnabled:Z

    if-eqz v0, :cond_16

    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mIsLongPressMultiSelection:Z

    if-nez v0, :cond_16

    .line 5701
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_16

    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenDragBlockLeft:I

    if-nez v0, :cond_11

    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenDragBlockTop:I

    if-nez v0, :cond_11

    goto :goto_b

    .line 5705
    :cond_11
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->findFirstVisibleItemPosition()I

    move-result v0

    .line 5706
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->findLastVisibleItemPosition()I

    move-result v2

    .line 5708
    iget v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenTrackedChildPosition:I

    if-lt v3, v0, :cond_13

    if-gt v3, v2, :cond_13

    .line 5710
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenTrackedChild:Landroid/view/View;

    if-eqz v0, :cond_12

    .line 5713
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    .line 5715
    :cond_12
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenDistanceFromTrackedChildTop:I

    add-int/2addr v1, v0

    iput v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenDragStartY:I

    .line 5718
    :cond_13
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenDragStartY:I

    iget v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenDragEndY:I

    if-ge v0, v1, :cond_14

    move v2, v0

    goto :goto_a

    :cond_14
    move v2, v1

    :goto_a
    iput v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenDragBlockTop:I

    if-le v1, v0, :cond_15

    move v0, v1

    .line 5719
    :cond_15
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenDragBlockBottom:I

    .line 5721
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenDragBlockRect:Landroid/graphics/Rect;

    iget v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenDragBlockLeft:I

    iget v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenDragBlockRight:I

    invoke-virtual {v1, v3, v2, v4, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 5722
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenDragBlockImage:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenDragBlockRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 5723
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenDragBlockImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    nop

    :cond_16
    :goto_b
    return-void
.end method

.method public drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 0

    .line 6282
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p0

    return p0
.end method

.method ensureBottomGlow()V
    .locals 4

    .line 3545
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_0

    return-void

    .line 3548
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mEdgeEffectFactory:Landroidx/recyclerview/widget/RecyclerView$EdgeEffectFactory;

    const/4 v1, 0x3

    invoke-virtual {v0, p0, v1}, Landroidx/recyclerview/widget/RecyclerView$EdgeEffectFactory;->createEdgeEffect(Landroidx/recyclerview/widget/RecyclerView;I)Landroid/widget/EdgeEffect;

    move-result-object v0

    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    .line 3549
    iget-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mClipToPadding:Z

    if-eqz v1, :cond_1

    .line 3550
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 3551
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result p0

    sub-int/2addr v2, p0

    .line 3550
    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    goto :goto_0

    .line 3553
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result p0

    invoke-virtual {v0, v1, p0}, Landroid/widget/EdgeEffect;->setSize(II)V

    :goto_0
    return-void
.end method

.method ensureLeftGlow()V
    .locals 4

    .line 3505
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_0

    return-void

    .line 3508
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mEdgeEffectFactory:Landroidx/recyclerview/widget/RecyclerView$EdgeEffectFactory;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroidx/recyclerview/widget/RecyclerView$EdgeEffectFactory;->createEdgeEffect(Landroidx/recyclerview/widget/RecyclerView;I)Landroid/widget/EdgeEffect;

    move-result-object v0

    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    .line 3509
    iget-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mClipToPadding:Z

    if-eqz v1, :cond_1

    .line 3510
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    .line 3511
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result p0

    sub-int/2addr v2, p0

    .line 3510
    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    goto :goto_0

    .line 3513
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result p0

    invoke-virtual {v0, v1, p0}, Landroid/widget/EdgeEffect;->setSize(II)V

    :goto_0
    return-void
.end method

.method ensureRightGlow()V
    .locals 4

    .line 3518
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_0

    return-void

    .line 3521
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mEdgeEffectFactory:Landroidx/recyclerview/widget/RecyclerView$EdgeEffectFactory;

    const/4 v1, 0x2

    invoke-virtual {v0, p0, v1}, Landroidx/recyclerview/widget/RecyclerView$EdgeEffectFactory;->createEdgeEffect(Landroidx/recyclerview/widget/RecyclerView;I)Landroid/widget/EdgeEffect;

    move-result-object v0

    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    .line 3522
    iget-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mClipToPadding:Z

    if-eqz v1, :cond_1

    .line 3523
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    .line 3524
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result p0

    sub-int/2addr v2, p0

    .line 3523
    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    goto :goto_0

    .line 3526
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result p0

    invoke-virtual {v0, v1, p0}, Landroid/widget/EdgeEffect;->setSize(II)V

    :goto_0
    return-void
.end method

.method ensureTopGlow()V
    .locals 4

    .line 3531
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_0

    return-void

    .line 3534
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mEdgeEffectFactory:Landroidx/recyclerview/widget/RecyclerView$EdgeEffectFactory;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Landroidx/recyclerview/widget/RecyclerView$EdgeEffectFactory;->createEdgeEffect(Landroidx/recyclerview/widget/RecyclerView;I)Landroid/widget/EdgeEffect;

    move-result-object v0

    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    .line 3535
    iget-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mClipToPadding:Z

    if-eqz v1, :cond_1

    .line 3536
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 3537
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result p0

    sub-int/2addr v2, p0

    .line 3536
    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    goto :goto_0

    .line 3539
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result p0

    invoke-virtual {v0, v1, p0}, Landroid/widget/EdgeEffect;->setSize(II)V

    :goto_0
    return-void
.end method

.method exceptionLabel()Ljava/lang/String;
    .locals 2

    .line 1312
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Landroid/view/ViewGroup;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", adapter:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", layout:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", context:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1315
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method final fillRemainingScrollValues(Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 2

    .line 5143
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 5144
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mViewFlinger:Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->mOverScroller:Landroid/widget/OverScroller;

    .line 5145
    invoke-virtual {p0}, Landroid/widget/OverScroller;->getFinalX()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p1, Landroidx/recyclerview/widget/RecyclerView$State;->mRemainingScrollHorizontal:I

    .line 5146
    invoke-virtual {p0}, Landroid/widget/OverScroller;->getFinalY()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/OverScroller;->getCurrY()I

    move-result p0

    sub-int/2addr v0, p0

    iput v0, p1, Landroidx/recyclerview/widget/RecyclerView$State;->mRemainingScrollVertical:I

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 5148
    iput p0, p1, Landroidx/recyclerview/widget/RecyclerView$State;->mRemainingScrollHorizontal:I

    .line 5149
    iput p0, p1, Landroidx/recyclerview/widget/RecyclerView$State;->mRemainingScrollVertical:I

    :goto_0
    return-void
.end method

.method public findChildViewUnder(FF)Landroid/view/View;
    .locals 5

    .line 6265
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/ChildHelper;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 6267
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 6268
    invoke-virtual {v1}, Landroid/view/View;->getTranslationX()F

    move-result v2

    .line 6269
    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v3

    .line 6270
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, v2

    cmpl-float v4, p1, v4

    if-ltz v4, :cond_0

    .line 6271
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, v2

    cmpg-float v2, p1, v4

    if-gtz v2, :cond_0

    .line 6272
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v3

    cmpl-float v2, p2, v2

    if-ltz v2, :cond_0

    .line 6273
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v3

    cmpg-float v2, p2, v2

    if-gtz v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public findContainingItemView(Landroid/view/View;)Landroid/view/View;
    .locals 2

    .line 6041
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    if-eq v0, p0, :cond_0

    .line 6042
    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_0

    .line 6043
    move-object p1, v0

    check-cast p1, Landroid/view/View;

    .line 6044
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    :cond_0
    if-ne v0, p0, :cond_1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method

.method public findContainingViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 6058
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->findContainingItemView(Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 6059
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method findFirstVisibleItemPosition()I
    .locals 1

    .line 17121
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    instance-of v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v0, :cond_0

    .line 17122
    check-cast p0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result p0

    return p0

    .line 17123
    :cond_0
    instance-of v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    if-eqz v0, :cond_1

    .line 17124
    check-cast p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->findFirstVisibleItemPositions([I)[I

    move-result-object p0

    const/4 v0, 0x0

    aget p0, p0, v0

    return p0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method findLastVisibleItemPosition()I
    .locals 1

    .line 17131
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    instance-of v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v0, :cond_0

    .line 17132
    check-cast p0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result p0

    return p0

    .line 17133
    :cond_0
    instance-of v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    if-eqz v0, :cond_1

    .line 17134
    check-cast p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->findLastVisibleItemPositions([I)[I

    move-result-object p0

    const/4 v0, 0x0

    aget p0, p0, v0

    return p0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 5

    .line 6176
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 6179
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    .line 6183
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 6184
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v4

    if-nez v4, :cond_2

    .line 6185
    invoke-virtual {p0, v3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapterPositionInRecyclerView(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I

    move-result v4

    if-ne v4, p1, :cond_2

    .line 6186
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    iget-object v4, v3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroidx/recyclerview/widget/ChildHelper;->isHidden(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, v3

    goto :goto_1

    :cond_1
    return-object v3

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method public findViewHolderForItemId(J)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 6

    .line 6238
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 6241
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    .line 6244
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 6245
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v4

    cmp-long v4, v4, p1

    if-nez v4, :cond_2

    .line 6246
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    iget-object v4, v3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroidx/recyclerview/widget/ChildHelper;->isHidden(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, v3

    goto :goto_1

    :cond_1
    return-object v3

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    return-object v1
.end method

.method public findViewHolderForLayoutPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1

    const/4 v0, 0x0

    .line 6154
    invoke-virtual {p0, p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForPosition(IZ)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p0

    return-object p0
.end method

.method findViewHolderForPosition(IZ)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 5

    .line 6198
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_4

    .line 6201
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 6202
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v4

    if-nez v4, :cond_3

    if-eqz p2, :cond_0

    .line 6204
    iget v4, v3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    if-eq v4, p1, :cond_1

    goto :goto_1

    .line 6207
    :cond_0
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v4

    if-eq v4, p1, :cond_1

    goto :goto_1

    .line 6210
    :cond_1
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    iget-object v4, v3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroidx/recyclerview/widget/ChildHelper;->isHidden(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v1, v3

    goto :goto_1

    :cond_2
    return-object v3

    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-object v1
.end method

.method public fling(II)Z
    .locals 7

    .line 3281
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p0, "SeslRecyclerView"

    const-string p1, "Cannot fling without a LayoutManager set. Call setLayoutManager with a non-null argument."

    .line 3282
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 3286
    :cond_0
    iget-boolean v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayoutSuppressed:Z

    if-eqz v2, :cond_1

    return v1

    .line 3290
    :cond_1
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v0

    .line 3291
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v2

    if-eqz v0, :cond_2

    .line 3293
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mMinFlingVelocity:I

    if-ge v3, v4, :cond_3

    :cond_2
    move p1, v1

    :cond_3
    if-eqz v2, :cond_4

    .line 3296
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mMinFlingVelocity:I

    if-ge v3, v4, :cond_5

    :cond_4
    move p2, v1

    :cond_5
    if-nez p1, :cond_6

    if-nez p2, :cond_6

    return v1

    :cond_6
    const/4 v3, 0x0

    if-eqz p1, :cond_8

    .line 3307
    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    if-eqz v4, :cond_7

    invoke-static {v4}, Landroidx/core/widget/EdgeEffectCompat;->getDistance(Landroid/widget/EdgeEffect;)F

    move-result v4

    cmpl-float v4, v4, v3

    if-eqz v4, :cond_7

    .line 3308
    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    neg-int p1, p1

    invoke-virtual {v4, p1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    :goto_0
    move p1, v1

    goto :goto_1

    .line 3310
    :cond_7
    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    if-eqz v4, :cond_8

    invoke-static {v4}, Landroidx/core/widget/EdgeEffectCompat;->getDistance(Landroid/widget/EdgeEffect;)F

    move-result v4

    cmpl-float v4, v4, v3

    if-eqz v4, :cond_8

    .line 3311
    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v4, p1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    goto :goto_0

    :cond_8
    :goto_1
    if-eqz p2, :cond_a

    .line 3316
    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    if-eqz v4, :cond_9

    invoke-static {v4}, Landroidx/core/widget/EdgeEffectCompat;->getDistance(Landroid/widget/EdgeEffect;)F

    move-result v4

    cmpl-float v4, v4, v3

    if-eqz v4, :cond_9

    .line 3317
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    neg-int p2, p2

    invoke-virtual {v3, p2}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    :goto_2
    move p2, v1

    goto :goto_3

    .line 3319
    :cond_9
    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    if-eqz v4, :cond_a

    invoke-static {v4}, Landroidx/core/widget/EdgeEffectCompat;->getDistance(Landroid/widget/EdgeEffect;)F

    move-result v4

    cmpl-float v3, v4, v3

    if-eqz v3, :cond_a

    .line 3320
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v3, p2}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    goto :goto_2

    :cond_a
    :goto_3
    if-nez p1, :cond_b

    if-nez p2, :cond_b

    return v1

    :cond_b
    int-to-float v3, p1

    int-to-float v4, p2

    .line 3328
    invoke-virtual {p0, v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->dispatchNestedPreFling(FF)Z

    move-result v5

    if-nez v5, :cond_10

    const/4 v5, 0x1

    if-nez v0, :cond_d

    if-eqz v2, :cond_c

    goto :goto_4

    :cond_c
    move v6, v1

    goto :goto_5

    :cond_d
    :goto_4
    move v6, v5

    .line 3330
    :goto_5
    invoke-virtual {p0, v3, v4, v6}, Landroidx/recyclerview/widget/RecyclerView;->dispatchNestedFling(FFZ)Z

    .line 3332
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mOnFlingListener:Landroidx/recyclerview/widget/RecyclerView$OnFlingListener;

    if-eqz v3, :cond_e

    invoke-virtual {v3, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$OnFlingListener;->onFling(II)Z

    move-result v3

    if-eqz v3, :cond_e

    return v5

    :cond_e
    if-eqz v6, :cond_10

    if-eqz v2, :cond_f

    or-int/lit8 v0, v0, 0x2

    .line 3344
    :cond_f
    invoke-virtual {p0, v0, v5}, Landroidx/recyclerview/widget/RecyclerView;->startNestedScroll(II)Z

    .line 3346
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mMaxFlingVelocity:I

    neg-int v1, v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 3347
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mMaxFlingVelocity:I

    neg-int v1, v0

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 3348
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mViewFlinger:Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->fling(II)V

    return v5

    :cond_10
    return v1
.end method

.method public focusSearch(Landroid/view/View;I)Landroid/view/View;
    .locals 10

    .line 3620
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onInterceptFocusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 3624
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_1

    .line 3625
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->isComputingLayout()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayoutSuppressed:Z

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 3627
    :goto_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v3

    const/16 v4, 0x82

    const/16 v5, 0x21

    const/4 v6, 0x0

    if-eqz v0, :cond_f

    const/4 v7, 0x2

    if-eq p2, v7, :cond_2

    if-ne p2, v1, :cond_f

    .line 3633
    :cond_2
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v0

    if-eqz v0, :cond_5

    if-ne p2, v7, :cond_3

    move v0, v4

    goto :goto_1

    :cond_3
    move v0, v5

    .line 3636
    :goto_1
    invoke-virtual {v3, p0, p1, v0}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v8

    if-nez v8, :cond_4

    move v8, v1

    goto :goto_2

    :cond_4
    move v8, v2

    .line 3638
    :goto_2
    sget-boolean v9, Landroidx/recyclerview/widget/RecyclerView;->FORCE_ABS_FOCUS_SEARCH_DIRECTION:Z

    if-eqz v9, :cond_6

    move p2, v0

    goto :goto_3

    :cond_5
    move v8, v2

    :cond_6
    :goto_3
    if-nez v8, :cond_c

    .line 3643
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 3644
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getLayoutDirection()I

    move-result v0

    if-ne v0, v1, :cond_7

    move v0, v1

    goto :goto_4

    :cond_7
    move v0, v2

    :goto_4
    if-ne p2, v7, :cond_8

    move v7, v1

    goto :goto_5

    :cond_8
    move v7, v2

    :goto_5
    xor-int/2addr v0, v7

    if-eqz v0, :cond_9

    const/16 v0, 0x42

    goto :goto_6

    :cond_9
    const/16 v0, 0x11

    .line 3647
    :goto_6
    invoke-virtual {v3, p0, p1, v0}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v7

    if-nez v7, :cond_a

    goto :goto_7

    :cond_a
    move v1, v2

    .line 3649
    :goto_7
    sget-boolean v7, Landroidx/recyclerview/widget/RecyclerView;->FORCE_ABS_FOCUS_SEARCH_DIRECTION:Z

    if-eqz v7, :cond_b

    move p2, v0

    :cond_b
    move v8, v1

    :cond_c
    if-eqz v8, :cond_e

    .line 3655
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->consumePendingUpdateOperations()V

    .line 3656
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->findContainingItemView(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_d

    return-object v6

    .line 3661
    :cond_d
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->startInterceptRequestLayout()V

    .line 3662
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    iget-object v7, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    invoke-virtual {v0, p1, p2, v1, v7}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onFocusSearchFailed(Landroid/view/View;ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)Landroid/view/View;

    .line 3663
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView;->stopInterceptRequestLayout(Z)V

    .line 3665
    :cond_e
    invoke-virtual {v3, p0, p1, p2}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    goto :goto_8

    .line 3667
    :cond_f
    invoke-virtual {v3, p0, p1, p2}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_11

    if-eqz v0, :cond_11

    .line 3669
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->consumePendingUpdateOperations()V

    .line 3670
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->findContainingItemView(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_10

    return-object v6

    .line 3675
    :cond_10
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->startInterceptRequestLayout()V

    .line 3676
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    invoke-virtual {v0, p1, p2, v1, v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onFocusSearchFailed(Landroid/view/View;ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)Landroid/view/View;

    move-result-object v0

    .line 3677
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView;->stopInterceptRequestLayout(Z)V

    goto :goto_8

    :cond_11
    move-object v0, v1

    :goto_8
    if-eqz v0, :cond_14

    .line 3680
    invoke-virtual {v0}, Landroid/view/View;->hasFocusable()Z

    move-result v1

    if-nez v1, :cond_14

    .line 3681
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_13

    if-ne p2, v5, :cond_12

    if-eqz p1, :cond_12

    .line 3682
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v2

    if-ge v1, v2, :cond_12

    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->canScrollVertically(I)Z

    move-result v1

    if-nez v1, :cond_12

    goto :goto_9

    .line 3691
    :cond_12
    invoke-direct {p0, v0, v6}, Landroidx/recyclerview/widget/RecyclerView;->requestChildOnScreen(Landroid/view/View;Landroid/view/View;)V

    return-object p1

    .line 3685
    :cond_13
    :goto_9
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object p0

    return-object p0

    .line 3695
    :cond_14
    invoke-direct {p0, p1, v0, p2}, Landroidx/recyclerview/widget/RecyclerView;->isPreferredNextFocus(Landroid/view/View;Landroid/view/View;I)Z

    move-result v1

    if-nez v1, :cond_15

    .line 3696
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 3699
    :cond_15
    iget-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mIsArrowKeyPressed:Z

    if-eqz p1, :cond_18

    if-nez v0, :cond_18

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    instance-of p1, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    if-eqz p1, :cond_18

    if-ne p2, v4, :cond_16

    .line 3703
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getBottom()I

    move-result p2

    :goto_a
    sub-int/2addr p1, p2

    goto :goto_b

    :cond_16
    if-ne p2, v5, :cond_17

    .line 3705
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getTop()I

    move-result p2

    goto :goto_a

    :cond_17
    move p1, v2

    .line 3707
    :goto_b
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    check-cast p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    invoke-virtual {p2, p1, v1, v3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->scrollBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    .line 3708
    iput-boolean v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mIsArrowKeyPressed:Z

    :cond_18
    return-object v0
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 3

    .line 5757
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_0

    .line 5760
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->generateDefaultLayoutParams()Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    move-result-object p0

    return-object p0

    .line 5758
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RecyclerView has no LayoutManager"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 5765
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_0

    .line 5768
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->generateLayoutParams(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    move-result-object p0

    return-object p0

    .line 5766
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RecyclerView has no LayoutManager"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 5773
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_0

    .line 5776
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    move-result-object p0

    return-object p0

    .line 5774
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RecyclerView has no LayoutManager"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 0

    const-string p0, "androidx.recyclerview.widget.RecyclerView"

    return-object p0
.end method

.method public getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .locals 0

    .line 1815
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    return-object p0
.end method

.method getAdapterPositionInRecyclerView(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I
    .locals 1

    const/16 v0, 0x20c

    .line 13104
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->hasAnyOfTheFlags(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 13106
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isBound()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 13109
    :cond_0
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapterHelper:Landroidx/recyclerview/widget/AdapterHelper;

    iget p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/AdapterHelper;->applyPendingUpdatesToPosition(I)I

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, -0x1

    return p0
.end method

.method public getBaseline()I
    .locals 1

    .line 1870
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_0

    .line 1871
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getBaseline()I

    move-result p0

    return p0

    .line 1873
    :cond_0
    invoke-super {p0}, Landroid/view/ViewGroup;->getBaseline()I

    move-result p0

    return p0
.end method

.method getChangedHolderKey(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)J
    .locals 0

    .line 5512
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide p0

    goto :goto_0

    :cond_0
    iget p0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    int-to-long p0, p0

    :goto_0
    return-wide p0
.end method

.method public getChildAdapterPosition(Landroid/view/View;)I
    .locals 0

    .line 6086
    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 6087
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAbsoluteAdapterPosition()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method protected getChildDrawingOrder(II)I
    .locals 1

    .line 15155
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildDrawingOrderCallback:Landroidx/recyclerview/widget/RecyclerView$ChildDrawingOrderCallback;

    if-nez v0, :cond_0

    .line 15156
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->getChildDrawingOrder(II)I

    move-result p0

    return p0

    .line 15158
    :cond_0
    invoke-interface {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$ChildDrawingOrderCallback;->onGetChildDrawingOrder(II)I

    move-result p0

    return p0
.end method

.method public getChildItemId(Landroid/view/View;)J
    .locals 2

    .line 6112
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    const-wide/16 v0, -0x1

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    .line 6115
    :cond_0
    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 6116
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v0

    :cond_1
    :goto_0
    return-wide v0
.end method

.method public getChildLayoutPosition(Landroid/view/View;)I
    .locals 0

    .line 6101
    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 6102
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 3

    .line 6020
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    if-ne v0, p0, :cond_0

    goto :goto_0

    .line 6022
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "View "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not a direct child of "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6025
    :cond_1
    :goto_0
    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public getClipToPadding()Z
    .locals 0

    .line 1679
    iget-boolean p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mClipToPadding:Z

    return p0
.end method

.method public getCompatAccessibilityDelegate()Landroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate;
    .locals 0

    .line 1339
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mAccessibilityDelegate:Landroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate;

    return-object p0
.end method

.method public getDecoratedBoundsWithMargins(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 0

    .line 6344
    invoke-static {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->getDecoratedBoundsWithMarginsInt(Landroid/view/View;Landroid/graphics/Rect;)V

    return-void
.end method

.method public getEdgeEffectFactory()Landroidx/recyclerview/widget/RecyclerView$EdgeEffectFactory;
    .locals 0

    .line 3585
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mEdgeEffectFactory:Landroidx/recyclerview/widget/RecyclerView$EdgeEffectFactory;

    return-object p0
.end method

.method public getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;
    .locals 0

    .line 4863
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    return-object p0
.end method

.method getItemDecorInsetsForChild(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 8

    .line 6357
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 6358
    iget-boolean v1, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->mInsetsDirty:Z

    if-nez v1, :cond_0

    .line 6359
    iget-object p0, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    return-object p0

    .line 6362
    :cond_0
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$State;->isPreLayout()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->isItemChanged()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->isViewInvalid()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6364
    :cond_1
    iget-object p0, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    return-object p0

    .line 6366
    :cond_2
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    const/4 v2, 0x0

    .line 6367
    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 6368
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_3

    .line 6370
    iget-object v5, p0, Landroidx/recyclerview/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v5, v2, v2, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 6371
    iget-object v5, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    iget-object v6, p0, Landroidx/recyclerview/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget-object v7, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    invoke-virtual {v5, v6, p1, p0, v7}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 6372
    iget v5, v1, Landroid/graphics/Rect;->left:I

    iget-object v6, p0, Landroidx/recyclerview/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v7, v6, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v7

    iput v5, v1, Landroid/graphics/Rect;->left:I

    .line 6373
    iget v5, v1, Landroid/graphics/Rect;->top:I

    iget v7, v6, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v7

    iput v5, v1, Landroid/graphics/Rect;->top:I

    .line 6374
    iget v5, v1, Landroid/graphics/Rect;->right:I

    iget v7, v6, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v7

    iput v5, v1, Landroid/graphics/Rect;->right:I

    .line 6375
    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v6

    iput v5, v1, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 6377
    :cond_3
    iput-boolean v2, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->mInsetsDirty:Z

    return-object v1
.end method

.method public getItemDecorationAt(I)Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
    .locals 2

    .line 2258
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getItemDecorationCount()I

    move-result v0

    if-ltz p1, :cond_0

    if-ge p1, v0, :cond_0

    .line 2263
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    return-object p0

    .line 2260
    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is an invalid index for size "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getItemDecorationCount()I
    .locals 0

    .line 2272
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    .locals 0

    .line 2107
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    return-object p0
.end method

.method public final getLongPressMultiSelectionListener()Landroidx/recyclerview/widget/RecyclerView$SeslLongPressMultiSelectionListener;
    .locals 0

    .line 16948
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLongPressMultiSelectionListener:Landroidx/recyclerview/widget/RecyclerView$SeslLongPressMultiSelectionListener;

    return-object p0
.end method

.method public getMaxFlingVelocity()I
    .locals 0

    .line 3390
    iget p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mMaxFlingVelocity:I

    return p0
.end method

.method public getMinFlingVelocity()I
    .locals 0

    .line 3380
    iget p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mMinFlingVelocity:I

    return p0
.end method

.method getNanoTime()J
    .locals 2

    .line 7230
    sget-boolean p0, Landroidx/recyclerview/widget/RecyclerView;->ALLOW_THREAD_GAP_WORK:Z

    if-eqz p0, :cond_0

    .line 7231
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getOnFlingListener()Landroidx/recyclerview/widget/RecyclerView$OnFlingListener;
    .locals 0

    .line 1997
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mOnFlingListener:Landroidx/recyclerview/widget/RecyclerView$OnFlingListener;

    return-object p0
.end method

.method public getPreserveFocusAfterLayout()Z
    .locals 0

    .line 5993
    iget-boolean p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mPreserveFocusAfterLayout:Z

    return p0
.end method

.method public getRecycledViewPool()Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;
    .locals 0

    .line 2120
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->getRecycledViewPool()Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    move-result-object p0

    return-object p0
.end method

.method public getScrollState()I
    .locals 0

    .line 2167
    iget p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mScrollState:I

    return p0
.end method

.method public hasNestedScrollingParent()Z
    .locals 0

    .line 13165
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollingChildHelper()Landroidx/core/view/NestedScrollingChildHelper;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/core/view/NestedScrollingChildHelper;->hasNestedScrollingParent()Z

    move-result p0

    return p0
.end method

.method public hasPendingAdapterUpdates()Z
    .locals 1

    .line 6494
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mFirstLayoutComplete:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-nez v0, :cond_1

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapterHelper:Landroidx/recyclerview/widget/AdapterHelper;

    .line 6495
    invoke-virtual {p0}, Landroidx/recyclerview/widget/AdapterHelper;->hasPendingUpdates()Z

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

.method initAdapterManager()V
    .locals 2

    .line 1549
    new-instance v0, Landroidx/recyclerview/widget/AdapterHelper;

    new-instance v1, Landroidx/recyclerview/widget/RecyclerView$11;

    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/RecyclerView$11;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/AdapterHelper;-><init>(Landroidx/recyclerview/widget/AdapterHelper$Callback;)V

    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapterHelper:Landroidx/recyclerview/widget/AdapterHelper;

    return-void
.end method

.method initFastScroller(Landroid/graphics/drawable/StateListDrawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/StateListDrawable;Landroid/graphics/drawable/Drawable;)V
    .locals 10

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    .line 13123
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 13124
    new-instance v1, Landroidx/recyclerview/widget/FastScroller;

    sget v2, Landroidx/recyclerview/R$dimen;->fastscroll_default_thickness:I

    .line 13126
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    sget v2, Landroidx/recyclerview/R$dimen;->fastscroll_minimum_range:I

    .line 13127
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    sget v2, Landroidx/recyclerview/R$dimen;->fastscroll_margin:I

    .line 13128
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v9

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v9}, Landroidx/recyclerview/widget/FastScroller;-><init>(Landroidx/recyclerview/widget/RecyclerView;Landroid/graphics/drawable/StateListDrawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/StateListDrawable;Landroid/graphics/drawable/Drawable;III)V

    return-void

    .line 13118
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Trying to set fast scroller without both required drawables."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13120
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method invalidateGlows()V
    .locals 1

    const/4 v0, 0x0

    .line 3558
    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    return-void
.end method

.method public invalidateItemDecorations()V
    .locals 2

    .line 5971
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 5974
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_1

    const-string v1, "Cannot invalidate item decorations during a scroll or layout"

    .line 5975
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 5978
    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->markItemDecorInsetsDirty()V

    .line 5979
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    return-void
.end method

.method isAccessibilityEnabled()Z
    .locals 0

    .line 4778
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isAnimating()Z
    .locals 0

    .line 5788
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->isRunning()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isAttachedToWindow()Z
    .locals 0

    .line 3930
    iget-boolean p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mIsAttached:Z

    return p0
.end method

.method public isComputingLayout()Z
    .locals 0

    .line 4812
    iget p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayoutOrScrollCounter:I

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isLayoutSuppressed()Z
    .locals 0

    .line 3080
    iget-boolean p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayoutSuppressed:Z

    return p0
.end method

.method public isNestedScrollingEnabled()Z
    .locals 0

    .line 13140
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollingChildHelper()Landroidx/core/view/NestedScrollingChildHelper;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/core/view/NestedScrollingChildHelper;->isNestedScrollingEnabled()Z

    move-result p0

    return p0
.end method

.method public isVerticalScrollBarEnabled()Z
    .locals 1

    .line 15616
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mFastScroller:Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;

    if-eqz v0, :cond_1

    .line 15617
    invoke-virtual {v0}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/view/ViewGroup;->isVerticalScrollBarEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    .line 15619
    :cond_1
    invoke-super {p0}, Landroid/view/ViewGroup;->isVerticalScrollBarEnabled()Z

    move-result p0

    return p0
.end method

.method jumpToPositionForSmoothScroller(I)V
    .locals 1

    .line 2410
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    .line 2416
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    .line 2417
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->scrollToPosition(I)V

    .line 2418
    invoke-virtual {p0}, Landroid/view/ViewGroup;->awakenScrollBars()Z

    return-void
.end method

.method markItemDecorInsetsDirty()V
    .locals 4

    .line 5622
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 5624
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 5625
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->mInsetsDirty:Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5627
    :cond_0
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->markItemDecorInsetsDirty()V

    return-void
.end method

.method markKnownViewsInvalid()V
    .locals 4

    .line 5955
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 5957
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 5958
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x6

    .line 5959
    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->addFlags(I)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5962
    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->markItemDecorInsetsDirty()V

    .line 5963
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->markKnownViewsInvalid()V

    return-void
.end method

.method public offsetChildrenHorizontal(I)V
    .locals 3

    .line 6330
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/ChildHelper;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 6332
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public offsetChildrenVertical(I)V
    .locals 3

    .line 6292
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/ChildHelper;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 6294
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method offsetPositionRecordsForInsert(II)V
    .locals 5

    .line 5851
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 5853
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 5854
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v4

    if-nez v4, :cond_0

    iget v4, v3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    if-lt v4, p1, :cond_0

    .line 5859
    invoke-virtual {v3, p2, v1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->offsetPosition(IZ)V

    .line 5860
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    const/4 v4, 0x1

    iput-boolean v4, v3, Landroidx/recyclerview/widget/RecyclerView$State;->mStructureChanged:Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5863
    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->offsetPositionRecordsForInsert(II)V

    .line 5864
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    return-void
.end method

.method offsetPositionRecordsForMove(II)V
    .locals 9

    .line 5817
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-ge p1, p2, :cond_0

    const/4 v2, -0x1

    move v3, p1

    move v4, p2

    goto :goto_0

    :cond_0
    move v4, p1

    move v3, p2

    move v2, v1

    :goto_0
    const/4 v5, 0x0

    move v6, v5

    :goto_1
    if-ge v6, v0, :cond_4

    .line 5830
    iget-object v7, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    invoke-virtual {v7, v6}, Landroidx/recyclerview/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-static {v7}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 5831
    iget v8, v7, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    if-lt v8, v3, :cond_3

    if-le v8, v4, :cond_1

    goto :goto_3

    :cond_1
    if-ne v8, p1, :cond_2

    sub-int v8, p2, p1

    .line 5839
    invoke-virtual {v7, v8, v5}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->offsetPosition(IZ)V

    goto :goto_2

    .line 5841
    :cond_2
    invoke-virtual {v7, v2, v5}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->offsetPosition(IZ)V

    .line 5844
    :goto_2
    iget-object v7, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    iput-boolean v1, v7, Landroidx/recyclerview/widget/RecyclerView$State;->mStructureChanged:Z

    :cond_3
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 5846
    :cond_4
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->offsetPositionRecordsForMove(II)V

    .line 5847
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    return-void
.end method

.method offsetPositionRecordsForRemove(IIZ)V
    .locals 7

    add-int v0, p1, p2

    .line 5870
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 5872
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 5873
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v4

    if-nez v4, :cond_1

    .line 5874
    iget v4, v3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    const/4 v5, 0x1

    if-lt v4, v0, :cond_0

    neg-int v4, p2

    .line 5880
    invoke-virtual {v3, v4, p3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->offsetPosition(IZ)V

    .line 5881
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    iput-boolean v5, v3, Landroidx/recyclerview/widget/RecyclerView$State;->mStructureChanged:Z

    goto :goto_1

    :cond_0
    if-lt v4, p1, :cond_1

    add-int/lit8 v4, p1, -0x1

    neg-int v6, p2

    .line 5887
    invoke-virtual {v3, v4, v6, p3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->flagRemovedAndOffsetPosition(IIZ)V

    .line 5889
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    iput-boolean v5, v3, Landroidx/recyclerview/widget/RecyclerView$State;->mStructureChanged:Z

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5893
    :cond_2
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->offsetPositionRecordsForRemove(IIZ)V

    .line 5894
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 6

    .line 3851
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    const/4 v0, 0x0

    .line 3852
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayoutOrScrollCounter:I

    const/4 v1, 0x1

    .line 3853
    iput-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mIsAttached:Z

    .line 3854
    iget-boolean v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mFirstLayoutComplete:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->isLayoutRequested()Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    iput-boolean v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mFirstLayoutComplete:Z

    .line 3855
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    if-eqz v2, :cond_1

    .line 3856
    invoke-virtual {v2, p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->dispatchAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 3858
    :cond_1
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mPostedAnimatorRunner:Z

    .line 3860
    sget-boolean v2, Landroidx/recyclerview/widget/RecyclerView;->ALLOW_THREAD_GAP_WORK:Z

    if-eqz v2, :cond_5

    .line 3862
    sget-object v2, Landroidx/recyclerview/widget/GapWorker;->sGapWorker:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/GapWorker;

    iput-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mGapWorker:Landroidx/recyclerview/widget/GapWorker;

    if-nez v3, :cond_4

    .line 3864
    new-instance v3, Landroidx/recyclerview/widget/GapWorker;

    invoke-direct {v3}, Landroidx/recyclerview/widget/GapWorker;-><init>()V

    iput-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mGapWorker:Landroidx/recyclerview/widget/GapWorker;

    .line 3868
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getDisplay(Landroid/view/View;)Landroid/view/Display;

    move-result-object v3

    const/high16 v4, 0x42700000    # 60.0f

    .line 3870
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isInEditMode()Z

    move-result v5

    if-nez v5, :cond_3

    if-eqz v3, :cond_3

    .line 3871
    invoke-virtual {v3}, Landroid/view/Display;->getRefreshRate()F

    move-result v3

    const/high16 v5, 0x41f00000    # 30.0f

    cmpl-float v5, v3, v5

    if-ltz v5, :cond_2

    move v4, v3

    .line 3876
    :cond_2
    iget-boolean v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mIsNeedCheckLatency:Z

    if-eqz v3, :cond_3

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float/2addr v3, v4

    .line 3877
    iput v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mFrameLatency:F

    .line 3878
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mIsNeedCheckLatency:Z

    .line 3882
    :cond_3
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mGapWorker:Landroidx/recyclerview/widget/GapWorker;

    const v3, 0x4e6e6b28    # 1.0E9f

    div-float/2addr v3, v4

    float-to-long v3, v3

    iput-wide v3, v0, Landroidx/recyclerview/widget/GapWorker;->mFrameIntervalNs:J

    .line 3883
    invoke-virtual {v2, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 3885
    :cond_4
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mGapWorker:Landroidx/recyclerview/widget/GapWorker;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/GapWorker;->add(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 3888
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getLayoutDirection()I

    move-result v0

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mFastScroller:Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;

    if-eqz v0, :cond_5

    .line 3889
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getVerticalScrollbarPosition()I

    move-result p0

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->setScrollbarPosition(I)V

    :cond_5
    return-void
.end method

.method public onChildAttachedToWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onChildDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 3897
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 3898
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    if-eqz v0, :cond_0

    .line 3899
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->endAnimations()V

    .line 3901
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->stopScroll()V

    const/4 v0, 0x0

    .line 3902
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mIsAttached:Z

    .line 3903
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_1

    .line 3904
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    invoke-virtual {v0, p0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->dispatchDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    .line 3906
    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mPendingAccessibilityImportanceChange:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3907
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimatorRunner:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3908
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mViewInfoStore:Landroidx/recyclerview/widget/ViewInfoStore;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/ViewInfoStore;->onDetach()V

    .line 3910
    sget-boolean v0, Landroidx/recyclerview/widget/RecyclerView;->ALLOW_THREAD_GAP_WORK:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mGapWorker:Landroidx/recyclerview/widget/GapWorker;

    if-eqz v0, :cond_2

    .line 3912
    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/GapWorker;->remove(Landroidx/recyclerview/widget/RecyclerView;)V

    const/4 v0, 0x0

    .line 3913
    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mGapWorker:Landroidx/recyclerview/widget/GapWorker;

    .line 3917
    :cond_2
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mIndexTipEnabled:Z

    const/4 v0, 0x1

    .line 3921
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mIsNeedCheckLatency:Z

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 5730
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 5732
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    .line 5734
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    invoke-virtual {v3, p1, p0, v4}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;->onDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5738
    :cond_0
    iget-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mIsNeedCheckLatency:Z

    if-eqz p1, :cond_2

    .line 5739
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getDisplay(Landroid/view/View;)Landroid/view/Display;

    move-result-object p1

    if-eqz p1, :cond_1

    const/high16 v0, 0x447a0000    # 1000.0f

    .line 5741
    invoke-virtual {p1}, Landroid/view/Display;->getRefreshRate()F

    move-result p1

    div-float/2addr v0, p1

    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mFrameLatency:F

    goto :goto_1

    :cond_1
    const p1, 0x418547ae    # 16.66f

    .line 5743
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mFrameLatency:F

    .line 5745
    :goto_1
    iput-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mIsNeedCheckLatency:Z

    :cond_2
    return-void
.end method

.method onEnterLayoutOrScroll()V
    .locals 1

    .line 4755
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayoutOrScrollCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayoutOrScrollCounter:I

    return-void
.end method

.method onExitLayoutOrScroll()V
    .locals 1

    const/4 v0, 0x1

    .line 4759
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->onExitLayoutOrScroll(Z)V

    return-void
.end method

.method onExitLayoutOrScroll(Z)V
    .locals 2

    .line 4763
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayoutOrScrollCounter:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayoutOrScrollCounter:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    .line 4769
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayoutOrScrollCounter:I

    if-eqz p1, :cond_0

    .line 4771
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->dispatchContentChangedIfNecessary()V

    .line 4772
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->dispatchPendingImportantForAccessibilityChanges()V

    :cond_0
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 11

    .line 4542
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 4545
    :cond_0
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayoutSuppressed:Z

    if-eqz v0, :cond_1

    return v1

    .line 4548
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v2, 0x8

    if-ne v0, v2, :cond_9

    .line 4550
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    const/4 v2, 0x2

    and-int/2addr v0, v2

    const/4 v3, 0x0

    if-eqz v0, :cond_4

    .line 4551
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x9

    .line 4554
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    neg-float v0, v0

    goto :goto_0

    :cond_2
    move v0, v3

    .line 4558
    :goto_0
    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v4

    if-eqz v4, :cond_3

    const/16 v4, 0xa

    .line 4559
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v4

    goto :goto_2

    :cond_3
    :goto_1
    move v4, v3

    goto :goto_2

    .line 4563
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    const/high16 v4, 0x400000

    and-int/2addr v0, v4

    if-eqz v0, :cond_6

    const/16 v0, 0x1a

    .line 4564
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    .line 4565
    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v4

    if-eqz v4, :cond_5

    neg-float v0, v0

    goto :goto_1

    .line 4570
    :cond_5
    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v4

    if-eqz v4, :cond_6

    move v4, v0

    move v0, v3

    goto :goto_2

    :cond_6
    move v0, v3

    move v4, v0

    :goto_2
    cmpl-float v5, v0, v3

    if-nez v5, :cond_7

    cmpl-float v3, v4, v3

    if-eqz v3, :cond_9

    :cond_7
    const/4 v3, 0x1

    if-eqz v5, :cond_8

    goto :goto_3

    :cond_8
    move v2, v3

    .line 4585
    :goto_3
    invoke-virtual {p0, v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->startNestedScroll(II)Z

    .line 4587
    iget v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mScaledHorizontalScrollFactor:F

    mul-float/2addr v2, v4

    float-to-int v6, v2

    iget v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mScaledVerticalScrollFactor:F

    mul-float/2addr v2, v0

    float-to-int v7, v2

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object v5, p0

    invoke-virtual/range {v5 .. v10}, Landroidx/recyclerview/widget/RecyclerView;->dispatchNestedPreScroll(II[I[II)Z

    move-result v2

    if-nez v2, :cond_9

    .line 4589
    iget v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mScaledHorizontalScrollFactor:F

    mul-float/2addr v4, v2

    float-to-int v2, v4

    iget v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mScaledVerticalScrollFactor:F

    mul-float/2addr v0, v4

    float-to-int v0, v0

    invoke-direct {p0, v2, v0, p1, v3}, Landroidx/recyclerview/widget/RecyclerView;->nestedScrollByInternal(IILandroid/view/MotionEvent;I)V

    :cond_9
    return v1
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11

    .line 4073
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayoutSuppressed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    .line 4081
    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mInterceptingOnItemTouchListener:Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;

    .line 4082
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->findInterceptingOnItemTouchListener(Landroid/view/MotionEvent;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 4083
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->cancelScroll()V

    return v2

    .line 4087
    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    if-nez v0, :cond_2

    return v1

    .line 4091
    :cond_2
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v0

    .line 4092
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v3

    .line 4094
    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v4, :cond_3

    .line 4095
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v4

    iput-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 4097
    :cond_3
    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v4, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 4099
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    .line 4100
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v5

    .line 4103
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v6

    .line 4105
    iget-object v7, p0, Landroidx/recyclerview/widget/RecyclerView;->mFastScroller:Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;

    if-eqz v7, :cond_4

    invoke-virtual {v7, p1}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    if-eqz v7, :cond_4

    return v2

    :cond_4
    const/4 v7, 0x2

    const/high16 v8, 0x3f000000    # 0.5f

    if-eqz v4, :cond_16

    if-eq v4, v2, :cond_15

    if-eq v4, v7, :cond_9

    const/4 v0, 0x3

    if-eq v4, v0, :cond_8

    const/4 v0, 0x5

    if-eq v4, v0, :cond_7

    const/4 v0, 0x6

    if-eq v4, v0, :cond_6

    const/16 p1, 0xd3

    if-eq v4, p1, :cond_5

    goto/16 :goto_6

    .line 4177
    :cond_5
    iget-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mIgnoreMotionEventTillDown:Z

    if-eqz p1, :cond_1e

    .line 4178
    iput-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mIgnoreMotionEventTillDown:Z

    goto/16 :goto_6

    .line 4250
    :cond_6
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_6

    .line 4164
    :cond_7
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mScrollPointerId:I

    .line 4165
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    add-float/2addr v0, v8

    float-to-int v0, v0

    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLastTouchX:I

    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mInitialTouchX:I

    .line 4166
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    add-float/2addr p1, v8

    float-to-int p1, p1

    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mLastTouchY:I

    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mInitialTouchY:I

    goto/16 :goto_6

    .line 4261
    :cond_8
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->cancelScroll()V

    goto/16 :goto_6

    .line 4184
    :cond_9
    iget v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mScrollPointerId:I

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v4

    if-gez v4, :cond_a

    .line 4186
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error processing scroll; pointer index for id "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mScrollPointerId:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " not found. Did any MotionEvents get skipped?"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SeslRecyclerView"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 4191
    :cond_a
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    add-float/2addr v5, v8

    float-to-int v5, v5

    .line 4192
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    add-float/2addr p1, v8

    float-to-int p1, p1

    .line 4194
    iget v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mLastTouchX:I

    sub-int/2addr v4, v5

    .line 4195
    iget v7, p0, Landroidx/recyclerview/widget/RecyclerView;->mLastTouchY:I

    sub-int/2addr v7, p1

    .line 4200
    iget v8, p0, Landroidx/recyclerview/widget/RecyclerView;->mScrollState:I

    if-eq v8, v2, :cond_f

    if-eqz v0, :cond_c

    .line 4202
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v8

    iget v9, p0, Landroidx/recyclerview/widget/RecyclerView;->mTouchSlop:I

    if-le v8, v9, :cond_c

    if-lez v4, :cond_b

    sub-int/2addr v4, v9

    goto :goto_0

    :cond_b
    add-int/2addr v4, v9

    .line 4210
    :goto_0
    iput v5, p0, Landroidx/recyclerview/widget/RecyclerView;->mLastTouchX:I

    move v8, v2

    goto :goto_1

    :cond_c
    move v8, v1

    :goto_1
    if-eqz v3, :cond_e

    .line 4213
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v9

    iget v10, p0, Landroidx/recyclerview/widget/RecyclerView;->mTouchSlop:I

    if-le v9, v10, :cond_e

    if-lez v7, :cond_d

    sub-int/2addr v7, v10

    goto :goto_2

    :cond_d
    add-int/2addr v7, v10

    .line 4220
    :goto_2
    iput-boolean v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mPreventFirstGlow:Z

    .line 4222
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mLastTouchY:I

    move v8, v2

    :cond_e
    if-eqz v8, :cond_f

    .line 4226
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    .line 4230
    :cond_f
    iget v8, p0, Landroidx/recyclerview/widget/RecyclerView;->mScrollState:I

    if-ne v8, v2, :cond_14

    .line 4231
    iget-object v8, p0, Landroidx/recyclerview/widget/RecyclerView;->mScrollOffset:[I

    aget v9, v8, v1

    sub-int/2addr v5, v9

    iput v5, p0, Landroidx/recyclerview/widget/RecyclerView;->mLastTouchX:I

    .line 4232
    aget v5, v8, v2

    sub-int/2addr p1, v5

    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mLastTouchY:I

    if-eqz v0, :cond_10

    move p1, v4

    goto :goto_3

    :cond_10
    move p1, v1

    :goto_3
    if-eqz v3, :cond_11

    move v0, v7

    goto :goto_4

    :cond_11
    move v0, v1

    .line 4234
    :goto_4
    invoke-virtual {p0, p1, v0, v6, v1}, Landroidx/recyclerview/widget/RecyclerView;->scrollByInternal(IILandroid/view/MotionEvent;I)Z

    move-result p1

    if-eqz p1, :cond_12

    .line 4238
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 4240
    :cond_12
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mGapWorker:Landroidx/recyclerview/widget/GapWorker;

    if-eqz p1, :cond_14

    if-nez v4, :cond_13

    if-eqz v7, :cond_14

    .line 4241
    :cond_13
    invoke-virtual {p1, p0, v4, v7}, Landroidx/recyclerview/widget/GapWorker;->postFromTraversal(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 4244
    :cond_14
    invoke-direct {p0, v7}, Landroidx/recyclerview/widget/RecyclerView;->adjustNestedScrollRangeBy(I)V

    goto :goto_6

    .line 4255
    :cond_15
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->clear()V

    .line 4256
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView;->stopNestedScroll(I)V

    goto :goto_6

    .line 4112
    :cond_16
    iget-boolean v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mIgnoreMotionEventTillDown:Z

    if-eqz v4, :cond_17

    .line 4113
    iput-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mIgnoreMotionEventTillDown:Z

    .line 4115
    :cond_17
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    iput v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mScrollPointerId:I

    .line 4116
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    add-float/2addr v4, v8

    float-to-int v4, v4

    iput v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mLastTouchX:I

    iput v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mInitialTouchX:I

    .line 4117
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    add-float/2addr v4, v8

    float-to-int v4, v4

    iput v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mLastTouchY:I

    iput v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mInitialTouchY:I

    .line 4120
    iget-boolean v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mUsePagingTouchSlopForStylus:Z

    if-eqz v4, :cond_19

    const/16 v4, 0x4002

    .line 4121
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 4122
    iget v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mPagingTouchSlop:I

    iput v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mTouchSlop:I

    goto :goto_5

    .line 4124
    :cond_18
    iget v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mTouchSlop2:I

    iput v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mTouchSlop:I

    .line 4134
    :cond_19
    :goto_5
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->stopGlowAnimations(Landroid/view/MotionEvent;)Z

    move-result p1

    if-nez p1, :cond_1a

    iget p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mScrollState:I

    if-ne p1, v7, :cond_1b

    .line 4135
    :cond_1a
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 4136
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    .line 4137
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView;->stopNestedScroll(I)V

    .line 4141
    :cond_1b
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mNestedOffsets:[I

    aput v1, p1, v2

    aput v1, p1, v1

    .line 4144
    iget-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mHasNestedScrollRange:Z

    if-eqz p1, :cond_1c

    .line 4145
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->adjustNestedScrollRange()V

    .line 4147
    :cond_1c
    iput-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mPreventFirstGlow:Z

    if-eqz v3, :cond_1d

    or-int/lit8 v0, v0, 0x2

    .line 4157
    :cond_1d
    invoke-virtual {p0, v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->startNestedScroll(II)Z

    .line 4159
    iput-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mIsSkipMoveEvent:Z

    .line 4264
    :cond_1e
    :goto_6
    iget p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mScrollState:I

    if-ne p0, v2, :cond_1f

    move v1, v2

    :cond_1f
    return v1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/16 v0, 0x5c

    if-eq p1, v0, :cond_4

    const/16 v0, 0x5d

    const/4 v1, 0x1

    if-eq p1, v0, :cond_3

    const/16 v0, 0x71

    if-eq p1, v0, :cond_2

    const/16 v0, 0x72

    if-eq p1, v0, :cond_2

    const/16 v0, 0x7a

    if-eq p1, v0, :cond_1

    const/16 v0, 0x7b

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 16853
    :cond_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x3

    .line 16854
    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->pageScroll(I)Z

    goto :goto_0

    .line 16848
    :cond_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x2

    .line 16849
    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->pageScroll(I)Z

    goto :goto_0

    .line 16835
    :cond_2
    iput-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mIsCtrlKeyPressed:Z

    goto :goto_0

    .line 16843
    :cond_3
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 16844
    invoke-direct {p0, v1}, Landroidx/recyclerview/widget/RecyclerView;->pageScroll(I)Z

    goto :goto_0

    .line 16838
    :cond_4
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    .line 16839
    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->pageScroll(I)Z

    .line 16858
    :cond_5
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/16 v0, 0x71

    if-eq p1, v0, :cond_0

    const/16 v0, 0x72

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 16871
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mIsCtrlKeyPressed:Z

    .line 16874
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    const-string p2, "RV OnLayout"

    .line 5557
    invoke-static {p2}, Landroidx/core/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    .line 5558
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->dispatchLayout()V

    .line 5559
    invoke-static {}, Landroidx/core/os/TraceCompat;->endSection()V

    const/4 p2, 0x1

    .line 5560
    iput-boolean p2, p0, Landroidx/recyclerview/widget/RecyclerView;->mFirstLayoutComplete:Z

    .line 5563
    iget-object p3, p0, Landroidx/recyclerview/widget/RecyclerView;->mFastScroller:Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;

    if-eqz p3, :cond_0

    iget-object p4, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-eqz p4, :cond_0

    .line 5564
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p4

    iget-object p5, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {p5}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p5

    invoke-virtual {p3, p4, p5}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->onItemCountChanged(II)V

    :cond_0
    if-eqz p1, :cond_4

    .line 5568
    iput-boolean p2, p0, Landroidx/recyclerview/widget/RecyclerView;->mSizeChnage:Z

    const/4 p1, 0x0

    .line 5569
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->seslSetImmersiveScrollBottomPadding(I)V

    const/4 p3, -0x1

    .line 5570
    invoke-direct {p0, p3}, Landroidx/recyclerview/widget/RecyclerView;->setupGoToTop(I)V

    .line 5571
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView;->autoHide(I)V

    .line 5573
    iget-object p3, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    if-eqz p3, :cond_4

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result p3

    if-nez p3, :cond_4

    .line 5574
    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mHasNestedScrollRange:Z

    .line 5575
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p3

    :goto_0
    if-eqz p3, :cond_3

    .line 5576
    instance-of p4, p3, Landroid/view/ViewGroup;

    if-eqz p4, :cond_3

    .line 5577
    instance-of p4, p3, Landroidx/core/view/NestedScrollingParent2;

    if-eqz p4, :cond_2

    const-string p4, "CoordinatorLayout"

    invoke-direct {p0, p3, p4}, Landroidx/recyclerview/widget/RecyclerView;->findSuperClass(Landroid/view/ViewParent;Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_2

    .line 5580
    check-cast p3, Landroid/view/ViewGroup;

    iget-object p4, p0, Landroidx/recyclerview/widget/RecyclerView;->mWindowOffsets:[I

    invoke-virtual {p3, p4}, Landroid/view/ViewGroup;->getLocationInWindow([I)V

    .line 5581
    iget-object p4, p0, Landroidx/recyclerview/widget/RecyclerView;->mWindowOffsets:[I

    aget p4, p4, p2

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getHeight()I

    move-result p3

    add-int/2addr p4, p3

    .line 5584
    iget-object p3, p0, Landroidx/recyclerview/widget/RecyclerView;->mWindowOffsets:[I

    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->getLocationInWindow([I)V

    .line 5585
    iget-object p3, p0, Landroidx/recyclerview/widget/RecyclerView;->mWindowOffsets:[I

    aget p3, p3, p2

    iput p3, p0, Landroidx/recyclerview/widget/RecyclerView;->mInitialTopOffsetOfScreen:I

    .line 5587
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result p3

    iget p5, p0, Landroidx/recyclerview/widget/RecyclerView;->mInitialTopOffsetOfScreen:I

    sub-int/2addr p4, p5

    sub-int/2addr p3, p4

    iput p3, p0, Landroidx/recyclerview/widget/RecyclerView;->mRemainNestedScrollRange:I

    if-gez p3, :cond_1

    .line 5590
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mRemainNestedScrollRange:I

    .line 5592
    :cond_1
    iget p3, p0, Landroidx/recyclerview/widget/RecyclerView;->mRemainNestedScrollRange:I

    iput p3, p0, Landroidx/recyclerview/widget/RecyclerView;->mNestedScrollRange:I

    .line 5593
    iput-boolean p2, p0, Landroidx/recyclerview/widget/RecyclerView;->mHasNestedScrollRange:Z

    goto :goto_1

    .line 5596
    :cond_2
    invoke-interface {p3}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p3

    goto :goto_0

    .line 5599
    :cond_3
    :goto_1
    iget-boolean p2, p0, Landroidx/recyclerview/widget/RecyclerView;->mHasNestedScrollRange:Z

    if-nez p2, :cond_4

    .line 5600
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mInitialTopOffsetOfScreen:I

    .line 5601
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mRemainNestedScrollRange:I

    .line 5602
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mNestedScrollRange:I

    :cond_4
    return-void
.end method

.method protected onMeasure(II)V
    .locals 7

    .line 4599
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    if-nez v0, :cond_0

    .line 4600
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->defaultOnMeasure(II)V

    return-void

    .line 4605
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mListPadding:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 4608
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->isAutoMeasureEnabled()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_6

    .line 4609
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 4610
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 4619
    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    iget-object v5, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    iget-object v6, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    invoke-virtual {v4, v5, v6, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onMeasure(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;II)V

    const/high16 v4, 0x40000000    # 2.0f

    if-ne v0, v4, :cond_1

    if-ne v3, v4, :cond_1

    move v2, v1

    .line 4623
    :cond_1
    iput-boolean v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mLastAutoMeasureSkippedDueToExact:Z

    if-nez v2, :cond_5

    .line 4625
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-nez v0, :cond_2

    goto :goto_0

    .line 4629
    :cond_2
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    iget v0, v0, Landroidx/recyclerview/widget/RecyclerView$State;->mLayoutStep:I

    if-ne v0, v1, :cond_3

    .line 4630
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->dispatchLayoutStep1()V

    .line 4634
    :cond_3
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->setMeasureSpecs(II)V

    .line 4635
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    iput-boolean v1, v0, Landroidx/recyclerview/widget/RecyclerView$State;->mIsMeasuring:Z

    .line 4636
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->dispatchLayoutStep2()V

    .line 4639
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->setMeasuredDimensionFromChildren(II)V

    .line 4643
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->shouldMeasureTwice()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4644
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 4645
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v2

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 4646
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v3

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 4644
    invoke-virtual {v0, v2, v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->setMeasureSpecs(II)V

    .line 4647
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    iput-boolean v1, v0, Landroidx/recyclerview/widget/RecyclerView$State;->mIsMeasuring:Z

    .line 4648
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->dispatchLayoutStep2()V

    .line 4650
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->setMeasuredDimensionFromChildren(II)V

    .line 4653
    :cond_4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result p1

    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mLastAutoMeasureNonExactMeasuredWidth:I

    .line 4654
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result p1

    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mLastAutoMeasureNonExactMeasuredHeight:I

    goto :goto_4

    :cond_5
    :goto_0
    return-void

    .line 4656
    :cond_6
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mHasFixedSize:Z

    if-eqz v0, :cond_7

    .line 4657
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    invoke-virtual {v0, v1, p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onMeasure(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;II)V

    return-void

    .line 4661
    :cond_7
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapterUpdateDuringMeasure:Z

    if-eqz v0, :cond_9

    .line 4662
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->startInterceptRequestLayout()V

    .line 4663
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->onEnterLayoutOrScroll()V

    .line 4664
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->processAdapterUpdatesAndSetAnimationFlags()V

    .line 4665
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->onExitLayoutOrScroll()V

    .line 4667
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    iget-boolean v3, v0, Landroidx/recyclerview/widget/RecyclerView$State;->mRunPredictiveAnimations:Z

    if-eqz v3, :cond_8

    .line 4668
    iput-boolean v1, v0, Landroidx/recyclerview/widget/RecyclerView$State;->mInPreLayout:Z

    goto :goto_1

    .line 4671
    :cond_8
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapterHelper:Landroidx/recyclerview/widget/AdapterHelper;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/AdapterHelper;->consumeUpdatesInOnePass()V

    .line 4672
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    iput-boolean v2, v0, Landroidx/recyclerview/widget/RecyclerView$State;->mInPreLayout:Z

    .line 4674
    :goto_1
    iput-boolean v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapterUpdateDuringMeasure:Z

    .line 4675
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView;->stopInterceptRequestLayout(Z)V

    goto :goto_2

    .line 4676
    :cond_9
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    iget-boolean v0, v0, Landroidx/recyclerview/widget/RecyclerView$State;->mRunPredictiveAnimations:Z

    if-eqz v0, :cond_a

    .line 4682
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    return-void

    .line 4686
    :cond_a
    :goto_2
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_b

    .line 4687
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    iput v0, v1, Landroidx/recyclerview/widget/RecyclerView$State;->mItemCount:I

    goto :goto_3

    .line 4689
    :cond_b
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    iput v2, v0, Landroidx/recyclerview/widget/RecyclerView$State;->mItemCount:I

    .line 4691
    :goto_3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->startInterceptRequestLayout()V

    .line 4692
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    invoke-virtual {v0, v1, v3, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onMeasure(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;II)V

    .line 4693
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView;->stopInterceptRequestLayout(Z)V

    .line 4694
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    iput-boolean v2, p0, Landroidx/recyclerview/widget/RecyclerView$State;->mInPreLayout:Z

    :goto_4
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 1

    .line 3841
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->isComputingLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 3846
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z

    move-result p0

    return p0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 2020
    instance-of v0, p1, Landroidx/recyclerview/widget/RecyclerView$SavedState;

    if-nez v0, :cond_0

    .line 2021
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 2025
    :cond_0
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$SavedState;

    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mPendingSavedState:Landroidx/recyclerview/widget/RecyclerView$SavedState;

    .line 2026
    invoke-virtual {p1}, Landroidx/customview/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 2034
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    const/4 v0, 0x1

    .line 2003
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mIsNeedCheckLatency:Z

    .line 2006
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$SavedState;

    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 2007
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mPendingSavedState:Landroidx/recyclerview/widget/RecyclerView$SavedState;

    if-eqz v1, :cond_0

    .line 2008
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$SavedState;->copyFrom(Landroidx/recyclerview/widget/RecyclerView$SavedState;)V

    goto :goto_0

    .line 2009
    :cond_0
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    if-eqz p0, :cond_1

    .line 2010
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object p0

    iput-object p0, v0, Landroidx/recyclerview/widget/RecyclerView$SavedState;->mLayoutState:Landroid/os/Parcelable;

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    .line 2012
    iput-object p0, v0, Landroidx/recyclerview/widget/RecyclerView$SavedState;->mLayoutState:Landroid/os/Parcelable;

    :goto_0
    return-object v0
.end method

.method public onScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onScrolled(II)V
    .locals 0

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    .line 4717
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    if-ne p1, p3, :cond_0

    if-eq p2, p4, :cond_2

    .line 4720
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mFastScroller:Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;

    if-eqz v0, :cond_1

    .line 4721
    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->onSizeChanged(IIII)V

    .line 4724
    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->invalidateGlows()V

    :cond_2
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 17

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    .line 4315
    iget-boolean v0, v6, Landroidx/recyclerview/widget/RecyclerView;->mLayoutSuppressed:Z

    const/4 v8, 0x0

    if-nez v0, :cond_23

    iget-boolean v0, v6, Landroidx/recyclerview/widget/RecyclerView;->mIgnoreMotionEventTillDown:Z

    if-eqz v0, :cond_0

    goto/16 :goto_a

    .line 4318
    :cond_0
    invoke-direct/range {p0 .. p1}, Landroidx/recyclerview/widget/RecyclerView;->dispatchToOnItemTouchListeners(Landroid/view/MotionEvent;)Z

    move-result v0

    const/4 v9, 0x1

    if-eqz v0, :cond_1

    .line 4319
    invoke-direct/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView;->cancelScroll()V

    return v9

    .line 4323
    :cond_1
    iget-object v0, v6, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    if-nez v0, :cond_2

    return v8

    .line 4327
    :cond_2
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v10

    .line 4328
    iget-object v0, v6, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v11

    .line 4330
    iget-object v0, v6, Landroidx/recyclerview/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_3

    .line 4331
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, v6, Landroidx/recyclerview/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 4335
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 4336
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    if-nez v0, :cond_4

    .line 4339
    iget-object v2, v6, Landroidx/recyclerview/widget/RecyclerView;->mNestedOffsets:[I

    aput v8, v2, v9

    aput v8, v2, v8

    .line 4341
    :cond_4
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v12

    .line 4342
    iget-object v2, v6, Landroidx/recyclerview/widget/RecyclerView;->mNestedOffsets:[I

    aget v3, v2, v8

    int-to-float v3, v3

    aget v2, v2, v9

    int-to-float v2, v2

    invoke-virtual {v12, v3, v2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 4345
    iget-object v2, v6, Landroidx/recyclerview/widget/RecyclerView;->mFastScroller:Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;

    if-eqz v2, :cond_5

    invoke-virtual {v2, v7}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 4355
    invoke-virtual {v12}, Landroid/view/MotionEvent;->recycle()V

    return v9

    :cond_5
    const/high16 v2, 0x3f000000    # 0.5f

    if-eqz v0, :cond_1e

    const-string v3, "SeslRecyclerView"

    if-eq v0, v9, :cond_18

    const/4 v4, 0x2

    if-eq v0, v4, :cond_9

    const/4 v3, 0x3

    if-eq v0, v3, :cond_8

    const/4 v3, 0x5

    if-eq v0, v3, :cond_7

    const/4 v1, 0x6

    if-eq v0, v1, :cond_6

    goto/16 :goto_9

    .line 4479
    :cond_6
    invoke-direct/range {p0 .. p1}, Landroidx/recyclerview/widget/RecyclerView;->onPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_9

    .line 4388
    :cond_7
    invoke-virtual {v7, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, v6, Landroidx/recyclerview/widget/RecyclerView;->mScrollPointerId:I

    .line 4389
    invoke-virtual {v7, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    add-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, v6, Landroidx/recyclerview/widget/RecyclerView;->mLastTouchX:I

    iput v0, v6, Landroidx/recyclerview/widget/RecyclerView;->mInitialTouchX:I

    .line 4390
    invoke-virtual {v7, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    add-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, v6, Landroidx/recyclerview/widget/RecyclerView;->mLastTouchY:I

    iput v0, v6, Landroidx/recyclerview/widget/RecyclerView;->mInitialTouchY:I

    goto/16 :goto_9

    .line 4503
    :cond_8
    invoke-direct/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView;->cancelScroll()V

    goto/16 :goto_9

    .line 4395
    :cond_9
    iget v0, v6, Landroidx/recyclerview/widget/RecyclerView;->mScrollPointerId:I

    invoke-virtual {v7, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-gez v0, :cond_a

    .line 4397
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error processing scroll; pointer index for id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v6, Landroidx/recyclerview/widget/RecyclerView;->mScrollPointerId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " not found. Did any MotionEvents get skipped?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v8

    .line 4402
    :cond_a
    invoke-virtual {v7, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    add-float/2addr v1, v2

    float-to-int v13, v1

    .line 4403
    invoke-virtual {v7, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    add-float/2addr v0, v2

    float-to-int v14, v0

    .line 4404
    iget v0, v6, Landroidx/recyclerview/widget/RecyclerView;->mLastTouchX:I

    sub-int/2addr v0, v13

    .line 4405
    iget v1, v6, Landroidx/recyclerview/widget/RecyclerView;->mLastTouchY:I

    sub-int/2addr v1, v14

    .line 4407
    iget v2, v6, Landroidx/recyclerview/widget/RecyclerView;->mScrollState:I

    if-eq v2, v9, :cond_f

    if-eqz v10, :cond_c

    if-lez v0, :cond_b

    .line 4411
    iget v2, v6, Landroidx/recyclerview/widget/RecyclerView;->mTouchSlop:I

    sub-int/2addr v0, v2

    invoke-static {v8, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    .line 4413
    :cond_b
    iget v2, v6, Landroidx/recyclerview/widget/RecyclerView;->mTouchSlop:I

    add-int/2addr v0, v2

    invoke-static {v8, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_0
    if-eqz v0, :cond_c

    move v2, v9

    goto :goto_1

    :cond_c
    move v2, v8

    :goto_1
    if-eqz v11, :cond_e

    if-lez v1, :cond_d

    .line 4421
    iget v3, v6, Landroidx/recyclerview/widget/RecyclerView;->mTouchSlop:I

    sub-int/2addr v1, v3

    invoke-static {v8, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_2

    .line 4423
    :cond_d
    iget v3, v6, Landroidx/recyclerview/widget/RecyclerView;->mTouchSlop:I

    add-int/2addr v1, v3

    invoke-static {v8, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    :goto_2
    if-eqz v1, :cond_e

    move v2, v9

    :cond_e
    if-eqz v2, :cond_f

    .line 4430
    invoke-virtual {v6, v9}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    .line 4434
    :cond_f
    iget v2, v6, Landroidx/recyclerview/widget/RecyclerView;->mScrollState:I

    if-ne v2, v9, :cond_21

    .line 4435
    iget-object v2, v6, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    aput v8, v2, v8

    .line 4436
    aput v8, v2, v9

    .line 4437
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {v6, v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->releaseHorizontalGlow(IF)I

    move-result v2

    sub-int v15, v0, v2

    .line 4438
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-direct {v6, v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->releaseVerticalGlow(IF)I

    move-result v0

    sub-int v16, v1, v0

    if-eqz v10, :cond_10

    move v1, v15

    goto :goto_3

    :cond_10
    move v1, v8

    :goto_3
    if-eqz v11, :cond_11

    move/from16 v2, v16

    goto :goto_4

    :cond_11
    move v2, v8

    .line 4442
    :goto_4
    iget-object v3, v6, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    iget-object v4, v6, Landroidx/recyclerview/widget/RecyclerView;->mScrollOffset:[I

    const/4 v5, 0x0

    move-object/from16 v0, p0

    .line 4440
    invoke-virtual/range {v0 .. v5}, Landroidx/recyclerview/widget/RecyclerView;->dispatchNestedPreScroll(II[I[II)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 4445
    iget-object v0, v6, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    aget v1, v0, v8

    sub-int/2addr v15, v1

    .line 4446
    aget v0, v0, v9

    sub-int v16, v16, v0

    .line 4448
    iget-object v0, v6, Landroidx/recyclerview/widget/RecyclerView;->mNestedOffsets:[I

    aget v1, v0, v8

    iget-object v2, v6, Landroidx/recyclerview/widget/RecyclerView;->mScrollOffset:[I

    aget v3, v2, v8

    add-int/2addr v1, v3

    aput v1, v0, v8

    .line 4449
    aget v1, v0, v9

    aget v2, v2, v9

    add-int/2addr v1, v2

    aput v1, v0, v9

    .line 4451
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v9}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_12
    move/from16 v0, v16

    .line 4454
    iget-object v1, v6, Landroidx/recyclerview/widget/RecyclerView;->mScrollOffset:[I

    aget v2, v1, v8

    sub-int/2addr v13, v2

    iput v13, v6, Landroidx/recyclerview/widget/RecyclerView;->mLastTouchX:I

    .line 4455
    aget v1, v1, v9

    sub-int/2addr v14, v1

    iput v14, v6, Landroidx/recyclerview/widget/RecyclerView;->mLastTouchY:I

    .line 4458
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getFlags()I

    move-result v1

    const/high16 v2, 0x2000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_13

    .line 4459
    iget-object v0, v6, Landroidx/recyclerview/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, v12}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 4460
    iput-boolean v9, v6, Landroidx/recyclerview/widget/RecyclerView;->mIsSkipMoveEvent:Z

    return v8

    :cond_13
    if-eqz v10, :cond_14

    move v1, v15

    goto :goto_5

    :cond_14
    move v1, v8

    :goto_5
    if-eqz v11, :cond_15

    move v2, v0

    goto :goto_6

    :cond_15
    move v2, v8

    .line 4465
    :goto_6
    invoke-virtual {v6, v1, v2, v7, v8}, Landroidx/recyclerview/widget/RecyclerView;->scrollByInternal(IILandroid/view/MotionEvent;I)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 4469
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1, v9}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 4471
    :cond_16
    iget-object v1, v6, Landroidx/recyclerview/widget/RecyclerView;->mGapWorker:Landroidx/recyclerview/widget/GapWorker;

    if-eqz v1, :cond_21

    if-nez v15, :cond_17

    if-eqz v0, :cond_21

    .line 4472
    :cond_17
    invoke-virtual {v1, v6, v15, v0}, Landroidx/recyclerview/widget/GapWorker;->postFromTraversal(Landroidx/recyclerview/widget/RecyclerView;II)V

    goto/16 :goto_9

    .line 4484
    :cond_18
    iget-object v0, v6, Landroidx/recyclerview/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, v12}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 4486
    iget-object v0, v6, Landroidx/recyclerview/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v1, 0x3e8

    iget v2, v6, Landroidx/recyclerview/widget/RecyclerView;->mMaxFlingVelocity:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    const/4 v0, 0x0

    if-eqz v10, :cond_19

    .line 4488
    iget-object v1, v6, Landroidx/recyclerview/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v2, v6, Landroidx/recyclerview/widget/RecyclerView;->mScrollPointerId:I

    invoke-virtual {v1, v2}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v1

    neg-float v1, v1

    goto :goto_7

    :cond_19
    move v1, v0

    :goto_7
    if-eqz v11, :cond_1a

    .line 4490
    iget-object v2, v6, Landroidx/recyclerview/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v4, v6, Landroidx/recyclerview/widget/RecyclerView;->mScrollPointerId:I

    invoke-virtual {v2, v4}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v2

    neg-float v2, v2

    goto :goto_8

    :cond_1a
    move v2, v0

    :goto_8
    cmpl-float v4, v1, v0

    if-nez v4, :cond_1b

    cmpl-float v0, v2, v0

    if-eqz v0, :cond_1c

    :cond_1b
    float-to-int v0, v1

    float-to-int v1, v2

    .line 4491
    invoke-virtual {v6, v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->fling(II)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 4492
    :cond_1c
    invoke-virtual {v6, v8}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    .line 4495
    :cond_1d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTouchUp() velocity : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", last move skip : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, v6, Landroidx/recyclerview/widget/RecyclerView;->mIsSkipMoveEvent:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v6, Landroidx/recyclerview/widget/RecyclerView;->mFrameLatency:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "), use scroller : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v6, Landroidx/recyclerview/widget/RecyclerView;->mViewFlinger:Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->mOverScroller:Landroid/widget/OverScroller;

    .line 4496
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4495
    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4498
    invoke-direct/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView;->resetScroll()V

    move v8, v9

    goto :goto_9

    .line 4362
    :cond_1e
    invoke-virtual {v7, v8}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, v6, Landroidx/recyclerview/widget/RecyclerView;->mScrollPointerId:I

    .line 4363
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    add-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, v6, Landroidx/recyclerview/widget/RecyclerView;->mLastTouchX:I

    iput v0, v6, Landroidx/recyclerview/widget/RecyclerView;->mInitialTouchX:I

    .line 4364
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    add-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, v6, Landroidx/recyclerview/widget/RecyclerView;->mLastTouchY:I

    iput v0, v6, Landroidx/recyclerview/widget/RecyclerView;->mInitialTouchY:I

    .line 4371
    iget-boolean v0, v6, Landroidx/recyclerview/widget/RecyclerView;->mHasNestedScrollRange:Z

    if-eqz v0, :cond_1f

    .line 4372
    invoke-direct/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView;->adjustNestedScrollRange()V

    :cond_1f
    if-eqz v11, :cond_20

    or-int/lit8 v10, v10, 0x2

    .line 4383
    :cond_20
    invoke-virtual {v6, v10, v8}, Landroidx/recyclerview/widget/RecyclerView;->startNestedScroll(II)Z

    :cond_21
    :goto_9
    if-nez v8, :cond_22

    .line 4509
    iget-object v0, v6, Landroidx/recyclerview/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, v12}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 4511
    :cond_22
    invoke-virtual {v12}, Landroid/view/MotionEvent;->recycle()V

    return v9

    :cond_23
    :goto_a
    return v8
.end method

.method postAnimationRunner()V
    .locals 1

    .line 4871
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mPostedAnimatorRunner:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mIsAttached:Z

    if-eqz v0, :cond_0

    .line 4872
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimatorRunner:Ljava/lang/Runnable;

    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    .line 4873
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mPostedAnimatorRunner:Z

    :cond_0
    return-void
.end method

.method processDataSetCompletelyChanged(Z)V
    .locals 1

    .line 5945
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mDispatchItemsChangedEvent:Z

    or-int/2addr p1, v0

    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mDispatchItemsChangedEvent:Z

    const/4 p1, 0x1

    .line 5946
    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    .line 5947
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->markKnownViewsInvalid()V

    return-void
.end method

.method recordAnimationInfoIfBouncedHiddenView(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V
    .locals 3

    const/4 v0, 0x0

    const/16 v1, 0x2000

    .line 5445
    invoke-virtual {p1, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->setFlags(II)V

    .line 5446
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    iget-boolean v0, v0, Landroidx/recyclerview/widget/RecyclerView$State;->mTrackOldChangeHolders:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isUpdated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5447
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5448
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChangedHolderKey(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)J

    move-result-wide v0

    .line 5449
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mViewInfoStore:Landroidx/recyclerview/widget/ViewInfoStore;

    invoke-virtual {v2, v0, v1, p1}, Landroidx/recyclerview/widget/ViewInfoStore;->addToOldChangeHolders(JLandroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 5451
    :cond_0
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mViewInfoStore:Landroidx/recyclerview/widget/ViewInfoStore;

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/ViewInfoStore;->addToPreLayout(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    return-void
.end method

.method removeAndRecycleViews()V
    .locals 2

    .line 1756
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    if-eqz v0, :cond_0

    .line 1757
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->endAnimations()V

    .line 1763
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_1

    .line 1764
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->removeAndRecycleAllViews(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    .line 1767
    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_2

    .line 1768
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->removeAndRecycleScrapInt(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    .line 1771
    :cond_2
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->clear()V

    return-void
.end method

.method removeAnimatingView(Landroid/view/View;)Z
    .locals 2

    .line 2084
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->startInterceptRequestLayout()V

    .line 2085
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/ChildHelper;->removeViewIfHidden(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2087
    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    .line 2088
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->unscrapView(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 2089
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->recycleViewHolderInternal(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    :cond_0
    xor-int/lit8 p1, v0, 0x1

    .line 2095
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->stopInterceptRequestLayout(Z)V

    return v0
.end method

.method protected removeDetachedView(Landroid/view/View;Z)V
    .locals 2

    .line 5488
    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 5490
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isTmpDetached()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5491
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->clearTmpDetachFlag()V

    goto :goto_0

    .line 5492
    :cond_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 5493
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Called removeDetachedView with a view which is not flagged as tmp detached."

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 5494
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5501
    :cond_2
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 5503
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->dispatchChildDetached(Landroid/view/View;)V

    .line 5504
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method public removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V
    .locals 2

    .line 2299
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_0

    const-string v1, "Cannot remove item decoration during a scroll  or layout"

    .line 2300
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 2303
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2304
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 2305
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getOverScrollMode()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setWillNotDraw(Z)V

    .line 2307
    :cond_2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->markItemDecorInsetsDirty()V

    .line 2308
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    return-void
.end method

.method public removeItemDecorationAt(I)V
    .locals 2

    .line 2281
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getItemDecorationCount()I

    move-result v0

    if-ltz p1, :cond_0

    if-ge p1, v0, :cond_0

    .line 2286
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->getItemDecorationAt(I)Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    return-void

    .line 2283
    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is an invalid index for size "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public removeOnChildAttachStateChangeListener(Landroidx/recyclerview/widget/RecyclerView$OnChildAttachStateChangeListener;)V
    .locals 0

    .line 1903
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    if-nez p0, :cond_0

    return-void

    .line 1906
    :cond_0
    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeOnItemTouchListener(Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;)V
    .locals 1

    .line 3999
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4000
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mInterceptingOnItemTouchListener:Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    .line 4001
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mInterceptingOnItemTouchListener:Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;

    :cond_0
    return-void
.end method

.method public removeOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V
    .locals 0

    .line 2366
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    if-eqz p0, :cond_0

    .line 2367
    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method repositionShadowingViews()V
    .locals 7

    .line 6815
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/ChildHelper;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 6817
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 6818
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 6819
    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mShadowingHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    if-eqz v3, :cond_1

    .line 6820
    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 6821
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v4

    .line 6822
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    .line 6823
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v5

    if-ne v4, v5, :cond_0

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v5

    if-eq v2, v5, :cond_1

    .line 6825
    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v5, v4

    .line 6826
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v6, v2

    .line 6824
    invoke-virtual {v3, v4, v2, v5, v6}, Landroid/view/View;->layout(IIII)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 2

    .line 3783
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    invoke-virtual {v0, p0, v1, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onRequestChildFocus(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 3784
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->requestChildOnScreen(Landroid/view/View;Landroid/view/View;)V

    .line 3786
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 1

    .line 3829
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->requestChildRectangleOnScreen(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;Landroid/graphics/Rect;Z)Z

    move-result p0

    return p0
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 3

    .line 4305
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 4307
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;

    .line 4308
    invoke-interface {v2, p1}, Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;->onRequestDisallowInterceptTouchEvent(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4310
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    return-void
.end method

.method public requestLayout()V
    .locals 1

    .line 5614
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mInterceptRequestLayoutDepth:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayoutSuppressed:Z

    if-nez v0, :cond_0

    .line 5615
    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 5617
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayoutWasDefered:Z

    :goto_0
    return-void
.end method

.method saveOldPositions()V
    .locals 4

    .line 5792
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 5794
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v2

    .line 5799
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v3

    if-nez v3, :cond_0

    .line 5800
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->saveOldPosition()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public scrollBy(II)V
    .locals 3

    .line 2474
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    if-nez v0, :cond_0

    const-string p0, "SeslRecyclerView"

    const-string p1, "Cannot scroll without a LayoutManager set. Call setLayoutManager with a non-null argument."

    .line 2475
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2479
    :cond_0
    iget-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayoutSuppressed:Z

    if-eqz v1, :cond_1

    return-void

    .line 2482
    :cond_1
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v0

    .line 2483
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v1

    if-nez v0, :cond_2

    if-eqz v1, :cond_5

    :cond_2
    const/4 v2, 0x0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    move p1, v2

    :goto_0
    if-eqz v1, :cond_4

    goto :goto_1

    :cond_4
    move p2, v2

    :goto_1
    const/4 v0, 0x0

    .line 2485
    invoke-virtual {p0, p1, p2, v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->scrollByInternal(IILandroid/view/MotionEvent;I)Z

    :cond_5
    return-void
.end method

.method scrollByInternal(IILandroid/view/MotionEvent;I)Z
    .locals 18

    move-object/from16 v8, p0

    move/from16 v9, p1

    move/from16 v10, p2

    move-object/from16 v11, p3

    .line 2684
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView;->consumePendingUpdateOperations()V

    .line 2685
    iget-object v0, v8, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    const/4 v12, 0x1

    const/4 v13, 0x0

    if-eqz v0, :cond_0

    .line 2686
    iget-object v0, v8, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    aput v13, v0, v13

    .line 2687
    aput v13, v0, v12

    .line 2688
    invoke-virtual {v8, v9, v10, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollStep(II[I)V

    .line 2689
    iget-object v0, v8, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    aget v1, v0, v13

    .line 2690
    aget v0, v0, v12

    sub-int v2, v9, v1

    sub-int v3, v10, v0

    move v14, v0

    move v15, v1

    move/from16 v16, v2

    move/from16 v17, v3

    goto :goto_0

    :cond_0
    move v14, v13

    move v15, v14

    move/from16 v16, v15

    move/from16 v17, v16

    .line 2694
    :goto_0
    iget-object v0, v8, Landroidx/recyclerview/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2695
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->invalidate()V

    .line 2698
    :cond_1
    iget-object v7, v8, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    aput v13, v7, v13

    .line 2699
    aput v13, v7, v12

    .line 2701
    iget-object v5, v8, Landroidx/recyclerview/widget/RecyclerView;->mScrollOffset:[I

    move-object/from16 v0, p0

    move v1, v15

    move v2, v14

    move/from16 v3, v16

    move/from16 v4, v17

    move/from16 v6, p4

    invoke-virtual/range {v0 .. v7}, Landroidx/recyclerview/widget/RecyclerView;->dispatchNestedScroll(IIII[II[I)V

    .line 2703
    iget-object v0, v8, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    aget v1, v0, v13

    sub-int v2, v16, v1

    .line 2704
    aget v0, v0, v12

    sub-int v3, v17, v0

    if-nez v1, :cond_3

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    move v0, v13

    goto :goto_2

    :cond_3
    :goto_1
    move v0, v12

    .line 2708
    :goto_2
    iget v1, v8, Landroidx/recyclerview/widget/RecyclerView;->mLastTouchX:I

    iget-object v4, v8, Landroidx/recyclerview/widget/RecyclerView;->mScrollOffset:[I

    aget v5, v4, v13

    sub-int/2addr v1, v5

    iput v1, v8, Landroidx/recyclerview/widget/RecyclerView;->mLastTouchX:I

    .line 2709
    iget v1, v8, Landroidx/recyclerview/widget/RecyclerView;->mLastTouchY:I

    aget v4, v4, v12

    sub-int/2addr v1, v4

    iput v1, v8, Landroidx/recyclerview/widget/RecyclerView;->mLastTouchY:I

    .line 2710
    iget-object v1, v8, Landroidx/recyclerview/widget/RecyclerView;->mNestedOffsets:[I

    aget v6, v1, v13

    add-int/2addr v6, v5

    aput v6, v1, v13

    .line 2711
    aget v5, v1, v12

    add-int/2addr v5, v4

    aput v5, v1, v12

    .line 2713
    iget-boolean v1, v8, Landroidx/recyclerview/widget/RecyclerView;->mPreventFirstGlow:Z

    if-nez v1, :cond_5

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getOverScrollMode()I

    move-result v1

    const/4 v4, 0x2

    if-eq v1, v4, :cond_5

    if-eqz v11, :cond_4

    const/16 v1, 0x2002

    .line 2714
    invoke-static {v11, v1}, Landroidx/core/view/MotionEventCompat;->isFromSource(Landroid/view/MotionEvent;I)Z

    move-result v1

    if-nez v1, :cond_4

    .line 2715
    invoke-virtual/range {p3 .. p3}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    int-to-float v2, v2

    invoke-virtual/range {p3 .. p3}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    int-to-float v3, v3

    invoke-direct {v8, v1, v2, v4, v3}, Landroidx/recyclerview/widget/RecyclerView;->pullGlows(FFFF)V

    .line 2717
    :cond_4
    invoke-virtual/range {p0 .. p2}, Landroidx/recyclerview/widget/RecyclerView;->considerReleasingGlowsOnScroll(II)V

    :cond_5
    if-nez v15, :cond_6

    if-eqz v14, :cond_7

    .line 2720
    :cond_6
    invoke-virtual {v8, v15, v14}, Landroidx/recyclerview/widget/RecyclerView;->dispatchOnScrolled(II)V

    .line 2722
    :cond_7
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->awakenScrollBars()Z

    move-result v1

    if-nez v1, :cond_8

    .line 2723
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->invalidate()V

    .line 2727
    :cond_8
    iget-object v1, v8, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    instance-of v1, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    if-eqz v1, :cond_a

    const/4 v1, -0x1

    .line 2728
    invoke-virtual {v8, v1}, Landroid/view/ViewGroup;->canScrollVertically(I)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {v8, v12}, Landroid/view/ViewGroup;->canScrollVertically(I)Z

    move-result v1

    if-nez v1, :cond_a

    .line 2729
    :cond_9
    iget-object v1, v8, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1, v13}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onScrollStateChanged(I)V

    .line 2731
    :cond_a
    iput-boolean v13, v8, Landroidx/recyclerview/widget/RecyclerView;->mPreventFirstGlow:Z

    if-nez v0, :cond_c

    if-nez v15, :cond_c

    if-eqz v14, :cond_b

    goto :goto_3

    :cond_b
    move v12, v13

    :cond_c
    :goto_3
    return v12
.end method

.method scrollStep(II[I)V
    .locals 5

    .line 2571
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->startInterceptRequestLayout()V

    .line 2572
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->onEnterLayoutOrScroll()V

    const-string v0, "RV Scroll"

    .line 2574
    invoke-static {v0}, Landroidx/core/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    .line 2575
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->fillRemainingScrollValues(Landroidx/recyclerview/widget/RecyclerView$State;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 2580
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    invoke-virtual {v1, p1, v2, v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->scrollHorizontallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result p1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    const/4 v1, 0x1

    if-eqz p2, :cond_1

    .line 2583
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    invoke-virtual {v2, p2, v3, v4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->scrollVerticallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result p2

    .line 2585
    iget v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mGoToTopState:I

    if-nez v2, :cond_2

    .line 2586
    invoke-direct {p0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setupGoToTop(I)V

    .line 2587
    invoke-direct {p0, v1}, Landroidx/recyclerview/widget/RecyclerView;->autoHide(I)V

    goto :goto_1

    :cond_1
    move p2, v0

    .line 2592
    :cond_2
    :goto_1
    invoke-static {}, Landroidx/core/os/TraceCompat;->endSection()V

    .line 2593
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->repositionShadowingViews()V

    .line 2595
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->onExitLayoutOrScroll()V

    .line 2596
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->stopInterceptRequestLayout(Z)V

    if-eqz p3, :cond_3

    .line 2599
    aput p1, p3, v0

    .line 2600
    aput p2, p3, v1

    :cond_3
    return-void
.end method

.method public scrollTo(II)V
    .locals 0

    const-string p0, "SeslRecyclerView"

    const-string p1, "RecyclerView does not support scrolling to an absolute position. Use scrollToPosition instead"

    .line 2468
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public scrollToPosition(I)V
    .locals 2

    .line 2390
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayoutSuppressed:Z

    if-eqz v0, :cond_0

    return-void

    .line 2393
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->stopScroll()V

    .line 2394
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    if-nez v0, :cond_1

    const-string p0, "SeslRecyclerView"

    const-string p1, "Cannot scroll to position a LayoutManager set. Call setLayoutManager with a non-null argument."

    .line 2395
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2399
    :cond_1
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->scrollToPosition(I)V

    .line 2400
    invoke-virtual {p0}, Landroid/view/ViewGroup;->awakenScrollBars()Z

    .line 2403
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mFastScroller:Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;

    if-eqz p1, :cond_2

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_2

    .line 2404
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->findFirstVisibleItemPosition()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p0

    invoke-virtual {p1, v0, v1, p0}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->onScroll(III)V

    :cond_2
    return-void
.end method

.method public sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 4840
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->shouldDeferAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 4843
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public seslFindNearChildViewUnder(FF)Landroid/view/View;
    .locals 11

    .line 16755
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/ChildHelper;->getChildCount()I

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float v2, p1, v1

    float-to-int v2, v2

    add-float/2addr v1, p2

    float-to-int v1, v1

    add-int/lit8 v0, v0, -0x1

    const v3, 0x7fffffff

    const/4 v4, 0x0

    move v5, v0

    move v7, v1

    move v6, v3

    :goto_0
    if-ltz v5, :cond_4

    .line 16764
    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 16766
    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v9

    .line 16767
    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v8

    add-int/2addr v9, v8

    .line 16768
    div-int/lit8 v9, v9, 0x2

    if-ne v4, v9, :cond_0

    goto :goto_1

    :cond_0
    sub-int v4, v1, v9

    .line 16773
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-ge v4, v6, :cond_1

    move v6, v4

    move v4, v9

    move v7, v4

    goto :goto_1

    .line 16777
    :cond_1
    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    instance-of v4, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    if-nez v4, :cond_2

    goto :goto_2

    :cond_2
    move v4, v9

    :cond_3
    :goto_1
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    :cond_4
    :goto_2
    const/4 v1, -0x1

    move v4, v3

    move v5, v4

    move v3, v1

    :goto_3
    if-ltz v0, :cond_a

    .line 16791
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_9

    .line 16793
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v8

    .line 16794
    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v9

    .line 16795
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v10

    .line 16796
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v6

    if-lt v7, v8, :cond_6

    if-gt v7, v9, :cond_6

    sub-int v8, v2, v10

    .line 16800
    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    sub-int v6, v2, v6

    .line 16801
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    if-gt v8, v4, :cond_5

    move v1, v0

    move v4, v8

    :cond_5
    if-gt v6, v5, :cond_6

    move v3, v0

    move v5, v6

    :cond_6
    if-gt v7, v9, :cond_7

    if-nez v0, :cond_9

    :cond_7
    if-ge v4, v5, :cond_8

    .line 16814
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    return-object p0

    .line 16816
    :cond_8
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    invoke-virtual {p0, v3}, Landroidx/recyclerview/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_9
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 16821
    :cond_a
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "findNearChildViewUnder didn\'t find valid child view! "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SeslRecyclerView"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public seslInitConfigurations(Landroid/content/Context;)V
    .locals 4

    .line 1278
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 1279
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1280
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    iput v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mTouchSlop:I

    .line 1283
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    iput v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mTouchSlop2:I

    .line 1284
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v2

    iput v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mPagingTouchSlop:I

    .line 1288
    invoke-static {v0, p1}, Landroidx/core/view/ViewConfigurationCompat;->getScaledHorizontalScrollFactor(Landroid/view/ViewConfiguration;Landroid/content/Context;)F

    move-result v2

    iput v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mScaledHorizontalScrollFactor:F

    .line 1290
    invoke-static {v0, p1}, Landroidx/core/view/ViewConfigurationCompat;->getScaledVerticalScrollFactor(Landroid/view/ViewConfiguration;Landroid/content/Context;)F

    move-result p1

    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mScaledVerticalScrollFactor:F

    .line 1291
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result p1

    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mMinFlingVelocity:I

    .line 1292
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result p1

    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mMaxFlingVelocity:I

    .line 1296
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    const/4 v0, 0x1

    const/high16 v2, 0x41c80000    # 25.0f

    .line 1295
    invoke-static {v0, v2, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr p1, v3

    float-to-int p1, p1

    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mHoverTopAreaHeight:I

    .line 1298
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    .line 1297
    invoke-static {v0, v2, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    add-float/2addr p1, v3

    float-to-int p1, p1

    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mHoverBottomAreaHeight:I

    .line 1299
    sget p1, Landroidx/recyclerview/R$dimen;->sesl_go_to_top_scrollable_view_gap:I

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mGoToTopBottomPadding:I

    const/4 p1, 0x0

    .line 1300
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mGoToTopImmersiveBottomPadding:I

    .line 1301
    sget p1, Landroidx/recyclerview/R$dimen;->sesl_go_to_top_scrollable_view_size:I

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mGoToTopSize:I

    .line 1302
    sget p1, Landroidx/recyclerview/R$dimen;->sesl_go_to_top_elevation:I

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mGoToTopElevation:I

    return-void
.end method

.method public seslIsFastScrollerEnabled()Z
    .locals 0

    .line 15597
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mFastScroller:Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->isEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public seslSetFastScrollerEnabled(Z)V
    .locals 3

    .line 15569
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mFastScroller:Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 15570
    invoke-virtual {v0}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->isEnabled()Z

    move-result v0

    if-eq p1, v0, :cond_0

    move v1, v2

    .line 15571
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mFastScroller:Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->setEnabled(Z)V

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    .line 15573
    new-instance p1, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;

    invoke-direct {p1, p0}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mFastScroller:Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;

    .line 15574
    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->setEnabled(Z)V

    .line 15575
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mFastScroller:Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getVerticalScrollbarPosition()I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->setScrollbarPosition(I)V

    move v1, v2

    .line 15579
    :cond_2
    :goto_0
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mFastScroller:Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;

    if-eqz p1, :cond_3

    if-eqz v1, :cond_3

    .line 15580
    invoke-virtual {p1}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->updateLayout()V

    .line 15584
    :cond_3
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    instance-of p0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    if-eqz p0, :cond_4

    const-string p0, "SeslRecyclerView"

    const-string p1, "FastScroller cannot be used with StaggeredGridLayoutManager."

    .line 15585
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void
.end method

.method public seslSetFillBottomColor(I)V
    .locals 0

    .line 15203
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mRectPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public seslSetFillBottomEnabled(Z)V
    .locals 1

    .line 15196
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    instance-of v0, v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v0, :cond_0

    .line 15197
    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mDrawRect:Z

    .line 15198
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    :cond_0
    return-void
.end method

.method public seslSetGoToTopEnabled(Z)V
    .locals 1

    .line 15661
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroidx/appcompat/util/SeslMisc;->isLightTheme(Landroid/content/Context;)Z

    move-result v0

    invoke-direct {p0, p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->initGoToTop(ZZ)V

    return-void
.end method

.method public seslSetImmersiveScrollBottomPadding(I)V
    .locals 6

    if-ltz p1, :cond_2

    .line 15984
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mEnableGoToTop:Z

    if-eqz v0, :cond_1

    .line 15985
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    iget v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mGoToTopSize:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mGoToTopBottomPadding:I

    sub-int/2addr v0, v1

    sub-int/2addr v0, p1

    if-gez v0, :cond_0

    const/4 v0, 0x0

    .line 15987
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mGoToTopImmersiveBottomPadding:I

    .line 15988
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "The Immersive padding value ("

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") was too large to draw GoToTop."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SeslRecyclerView"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 15991
    :cond_0
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mGoToTopImmersiveBottomPadding:I

    .line 15992
    iget v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mGoToTopState:I

    if-eqz v1, :cond_1

    .line 15993
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 15994
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v2, v1

    .line 15996
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mGoToTopRect:Landroid/graphics/Rect;

    iget v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mGoToTopSize:I

    div-int/lit8 v4, v3, 0x2

    sub-int v4, v2, v4

    div-int/lit8 v5, v3, 0x2

    add-int/2addr v2, v5

    add-int/2addr v3, v0

    invoke-virtual {v1, v4, v0, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 15998
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mGoToTopView:Landroid/widget/ImageView;

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mGoToTopRect:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->top:I

    iget v4, v1, Landroid/graphics/Rect;->right:I

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/widget/ImageView;->layout(IIII)V

    .line 16002
    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mFastScroller:Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;

    if-eqz v0, :cond_2

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-eqz p0, :cond_2

    .line 16003
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->setImmersiveBottomPadding(I)V

    :cond_2
    return-void
.end method

.method public seslSetLastRoundedCorner(Z)V
    .locals 0

    .line 15192
    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mDrawLastRoundedCorner:Z

    return-void
.end method

.method public seslSetLongPressMultiSelectionListener(Landroidx/recyclerview/widget/RecyclerView$SeslLongPressMultiSelectionListener;)V
    .locals 0

    .line 16940
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mLongPressMultiSelectionListener:Landroidx/recyclerview/widget/RecyclerView$SeslLongPressMultiSelectionListener;

    return-void
.end method

.method public seslSetPagingTouchSlopForStylus(Z)V
    .locals 0

    .line 17487
    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mUsePagingTouchSlopForStylus:Z

    return-void
.end method

.method public seslStartLongPressMultiSelection()V
    .locals 1

    const/4 v0, 0x1

    .line 16427
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mIsLongPressMultiSelection:Z

    return-void
.end method

.method public setAccessibilityDelegateCompat(Landroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate;)V
    .locals 0

    .line 1349
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mAccessibilityDelegate:Landroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate;

    .line 1350
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    return-void
.end method

.method public setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 2

    const/4 v0, 0x0

    .line 1745
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutFrozen(Z)V

    const/4 v1, 0x1

    .line 1746
    invoke-direct {p0, p1, v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapterInternal(Landroidx/recyclerview/widget/RecyclerView$Adapter;ZZ)V

    .line 1747
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->processDataSetCompletelyChanged(Z)V

    .line 1748
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    return-void
.end method

.method public setChildDrawingOrderCallback(Landroidx/recyclerview/widget/RecyclerView$ChildDrawingOrderCallback;)V
    .locals 1

    .line 2325
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildDrawingOrderCallback:Landroidx/recyclerview/widget/RecyclerView$ChildDrawingOrderCallback;

    if-ne p1, v0, :cond_0

    return-void

    .line 2328
    :cond_0
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildDrawingOrderCallback:Landroidx/recyclerview/widget/RecyclerView$ChildDrawingOrderCallback;

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 2329
    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setChildrenDrawingOrderEnabled(Z)V

    return-void
.end method

.method setChildImportantForAccessibilityInternal(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)Z
    .locals 1

    .line 13077
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->isComputingLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 13078
    iput p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPendingAccessibilityState:I

    .line 13079
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mPendingAccessibilityImportanceChange:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x0

    return p0

    .line 13082
    :cond_0
    iget-object p0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p0, p2}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    const/4 p0, 0x1

    return p0
.end method

.method public setClipToPadding(Z)V
    .locals 1

    .line 1656
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mClipToPadding:Z

    if-eq p1, v0, :cond_0

    .line 1657
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->invalidateGlows()V

    .line 1659
    :cond_0
    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mClipToPadding:Z

    .line 1660
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 1661
    iget-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mFirstLayoutComplete:Z

    if-eqz p1, :cond_1

    .line 1662
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    :cond_1
    return-void
.end method

.method public setEdgeEffectFactory(Landroidx/recyclerview/widget/RecyclerView$EdgeEffectFactory;)V
    .locals 0

    .line 3571
    invoke-static {p1}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3572
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mEdgeEffectFactory:Landroidx/recyclerview/widget/RecyclerView$EdgeEffectFactory;

    .line 3573
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->invalidateGlows()V

    return-void
.end method

.method public setHasFixedSize(Z)V
    .locals 0

    .line 1643
    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mHasFixedSize:Z

    return-void
.end method

.method public setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V
    .locals 2

    .line 4741
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    if-eqz v0, :cond_0

    .line 4742
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->endAnimations()V

    .line 4743
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setListener(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;)V

    .line 4745
    :cond_0
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    if-eqz p1, :cond_1

    .line 4747
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimatorListener:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setListener(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;)V

    .line 4749
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setHostView(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public setItemViewCacheSize(I)V
    .locals 0

    .line 2157
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->setViewCacheSize(I)V

    return-void
.end method

.method public setLayoutFrozen(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3108
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->suppressLayout(Z)V

    return-void
.end method

.method public setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V
    .locals 4

    .line 1932
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    if-ne p1, v0, :cond_0

    return-void

    .line 1936
    :cond_0
    instance-of v0, p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 1937
    iget-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mDrawRect:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    iput-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mDrawRect:Z

    .line 1938
    iget-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mDrawLastRoundedCorner:Z

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_1
    iput-boolean v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mDrawLastRoundedCorner:Z

    .line 1940
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->stopScroll()V

    .line 1943
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_5

    .line 1945
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    if-eqz v0, :cond_3

    .line 1946
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->endAnimations()V

    .line 1948
    :cond_3
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->removeAndRecycleAllViews(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    .line 1949
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->removeAndRecycleScrapInt(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    .line 1950
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->clear()V

    .line 1952
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mIsAttached:Z

    if-eqz v0, :cond_4

    .line 1953
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    invoke-virtual {v0, p0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->dispatchDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    .line 1955
    :cond_4
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->setRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 1956
    iput-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    goto :goto_2

    .line 1958
    :cond_5
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->clear()V

    .line 1961
    :goto_2
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/ChildHelper;->removeAllViewsUnfiltered()V

    .line 1962
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    if-eqz p1, :cond_7

    .line 1964
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_6

    .line 1969
    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->setRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 1970
    iget-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mIsAttached:Z

    if-eqz p1, :cond_7

    .line 1971
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->dispatchAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView;)V

    goto :goto_3

    .line 1965
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LayoutManager "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " is already attached to a RecyclerView:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 1967
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1974
    :cond_7
    :goto_3
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->updateViewCacheSize()V

    .line 1975
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    return-void
.end method

.method public setLayoutTransition(Landroid/animation/LayoutTransition;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 3147
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    return-void

    .line 3149
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Providing a LayoutTransition into RecyclerView is not supported. Please use setItemAnimator() instead for animating changes to the items in this RecyclerView"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setNestedScrollingEnabled(Z)V
    .locals 0

    .line 13135
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollingChildHelper()Landroidx/core/view/NestedScrollingChildHelper;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/core/view/NestedScrollingChildHelper;->setNestedScrollingEnabled(Z)V

    return-void
.end method

.method public setOnFlingListener(Landroidx/recyclerview/widget/RecyclerView$OnFlingListener;)V
    .locals 0

    .line 1987
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mOnFlingListener:Landroidx/recyclerview/widget/RecyclerView$OnFlingListener;

    return-void
.end method

.method public setOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2341
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    return-void
.end method

.method public setPreserveFocusAfterLayout(Z)V
    .locals 0

    .line 6010
    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mPreserveFocusAfterLayout:Z

    return-void
.end method

.method public setRecycledViewPool(Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;)V
    .locals 0

    .line 2132
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->setRecycledViewPool(Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;)V

    return-void
.end method

.method public setRecyclerListener(Landroidx/recyclerview/widget/RecyclerView$RecyclerListener;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1832
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecyclerListener:Landroidx/recyclerview/widget/RecyclerView$RecyclerListener;

    return-void
.end method

.method setScrollState(I)V
    .locals 2

    .line 2171
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mScrollState:I

    if-ne p1, v0, :cond_0

    return-void

    .line 2176
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setting scroll state to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mScrollState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SeslRecyclerView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2183
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mScrollState:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    .line 2185
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->stopScrollersInternal()V

    .line 2187
    :cond_1
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->dispatchOnScrollStateChanged(I)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    const/4 p1, 0x0

    .line 2191
    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mEdgeEffectByDragging:Z

    :cond_2
    return-void
.end method

.method public setScrollingTouchSlop(I)V
    .locals 4

    .line 1692
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 1694
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setScrollingTouchSlop(): slopConstant["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SeslRecyclerView"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 1695
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView;->seslSetPagingTouchSlopForStylus(Z)V

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    .line 1699
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setScrollingTouchSlop(): bad argument constant "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "; using default value"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1707
    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result p1

    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mTouchSlop:I

    goto :goto_1

    .line 1703
    :cond_1
    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mTouchSlop:I

    :goto_1
    return-void
.end method

.method public setViewCacheExtension(Landroidx/recyclerview/widget/RecyclerView$ViewCacheExtension;)V
    .locals 0

    .line 2142
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->setViewCacheExtension(Landroidx/recyclerview/widget/RecyclerView$ViewCacheExtension;)V

    return-void
.end method

.method shouldDeferAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2

    .line 4824
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->isComputingLayout()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_0

    .line 4827
    invoke-static {p1}, Landroidx/core/view/accessibility/AccessibilityEventCompat;->getContentChangeTypes(Landroid/view/accessibility/AccessibilityEvent;)I

    move-result p1

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    move v1, p1

    .line 4832
    :goto_1
    iget p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mEatenAccessibilityChangeFlags:I

    or-int/2addr p1, v1

    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mEatenAccessibilityChangeFlags:I

    const/4 p0, 0x1

    return p0

    :cond_2
    return v1
.end method

.method showGoToTop()V
    .locals 2

    .line 15756
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mEnableGoToTop:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->canScrollUp()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mGoToTopState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    .line 15757
    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setupGoToTop(I)V

    .line 15758
    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->autoHide(I)V

    :cond_0
    return-void
.end method

.method protected showPointerIcon(Landroid/view/MotionEvent;I)Z
    .locals 0

    .line 16995
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object p0

    invoke-static {p0, p2}, Landroidx/reflect/view/SeslInputDeviceReflector;->semSetPointerType(Landroid/view/InputDevice;I)V

    const/4 p0, 0x1

    return p0
.end method

.method public smoothScrollBy(II)V
    .locals 1

    const/4 v0, 0x0

    .line 3162
    invoke-virtual {p0, p1, p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(IILandroid/view/animation/Interpolator;)V

    return-void
.end method

.method public smoothScrollBy(IILandroid/view/animation/Interpolator;)V
    .locals 1

    const/high16 v0, -0x80000000

    .line 3174
    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(IILandroid/view/animation/Interpolator;I)V

    return-void
.end method

.method public smoothScrollBy(IILandroid/view/animation/Interpolator;I)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    .line 3193
    invoke-virtual/range {v0 .. v5}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(IILandroid/view/animation/Interpolator;IZ)V

    return-void
.end method

.method smoothScrollBy(IILandroid/view/animation/Interpolator;IZ)V
    .locals 3

    .line 3231
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    if-nez v0, :cond_0

    const-string p0, "SeslRecyclerView"

    const-string p1, "Cannot smooth scroll without a LayoutManager set. Call setLayoutManager with a non-null argument."

    .line 3232
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3236
    :cond_0
    iget-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayoutSuppressed:Z

    if-eqz v1, :cond_1

    return-void

    .line 3239
    :cond_1
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    move p1, v1

    .line 3242
    :cond_2
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v0

    if-nez v0, :cond_3

    move p2, v1

    :cond_3
    if-nez p1, :cond_4

    if-eqz p2, :cond_b

    :cond_4
    const/high16 v0, -0x80000000

    const/4 v2, 0x1

    if-eq p4, v0, :cond_6

    if-lez p4, :cond_5

    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_1

    :cond_6
    :goto_0
    move v0, v2

    :goto_1
    if-eqz v0, :cond_a

    if-eqz p5, :cond_9

    if-eqz p1, :cond_7

    move v1, v2

    :cond_7
    if-eqz p2, :cond_8

    or-int/lit8 v1, v1, 0x2

    .line 3256
    :cond_8
    invoke-virtual {p0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->startNestedScroll(II)Z

    .line 3258
    :cond_9
    iget-object p5, p0, Landroidx/recyclerview/widget/RecyclerView;->mViewFlinger:Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;

    invoke-virtual {p5, p1, p2, p4, p3}, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->smoothScrollBy(IIILandroid/view/animation/Interpolator;)V

    .line 3260
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->showGoToTop()V

    goto :goto_2

    .line 3263
    :cond_a
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    :cond_b
    :goto_2
    return-void
.end method

.method public smoothScrollToPosition(I)V
    .locals 2

    .line 2437
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayoutSuppressed:Z

    if-eqz v0, :cond_0

    return-void

    .line 2440
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    if-nez v0, :cond_1

    const-string p0, "SeslRecyclerView"

    const-string p1, "Cannot smooth scroll without a LayoutManager set. Call setLayoutManager with a non-null argument."

    .line 2441
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2445
    :cond_1
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    invoke-virtual {v0, p0, v1, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->smoothScrollToPosition(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;I)V

    return-void
.end method

.method startInterceptRequestLayout()V
    .locals 2

    .line 2975
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mInterceptRequestLayoutDepth:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mInterceptRequestLayoutDepth:I

    if-ne v0, v1, :cond_0

    .line 2976
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayoutSuppressed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 2977
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayoutWasDefered:Z

    :cond_0
    return-void
.end method

.method public startNestedScroll(I)Z
    .locals 0

    .line 13145
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollingChildHelper()Landroidx/core/view/NestedScrollingChildHelper;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/core/view/NestedScrollingChildHelper;->startNestedScroll(I)Z

    move-result p0

    return p0
.end method

.method public startNestedScroll(II)Z
    .locals 0

    .line 13150
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollingChildHelper()Landroidx/core/view/NestedScrollingChildHelper;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroidx/core/view/NestedScrollingChildHelper;->startNestedScroll(II)Z

    move-result p0

    return p0
.end method

.method stopInterceptRequestLayout(Z)V
    .locals 3

    .line 2992
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mInterceptRequestLayoutDepth:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 2999
    iput v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mInterceptRequestLayoutDepth:I

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 3001
    iget-boolean v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayoutSuppressed:Z

    if-nez v2, :cond_1

    .line 3010
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayoutWasDefered:Z

    .line 3012
    :cond_1
    iget v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mInterceptRequestLayoutDepth:I

    if-ne v2, v1, :cond_3

    if-eqz p1, :cond_2

    .line 3014
    iget-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayoutWasDefered:Z

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayoutSuppressed:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    if-eqz p1, :cond_2

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-eqz p1, :cond_2

    .line 3016
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->dispatchLayout()V

    .line 3018
    :cond_2
    iget-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayoutSuppressed:Z

    if-nez p1, :cond_3

    .line 3019
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayoutWasDefered:Z

    .line 3022
    :cond_3
    iget p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mInterceptRequestLayoutDepth:I

    sub-int/2addr p1, v1

    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mInterceptRequestLayoutDepth:I

    return-void
.end method

.method public stopNestedScroll()V
    .locals 0

    .line 13155
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollingChildHelper()Landroidx/core/view/NestedScrollingChildHelper;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/core/view/NestedScrollingChildHelper;->stopNestedScroll()V

    return-void
.end method

.method public stopNestedScroll(I)V
    .locals 0

    .line 13160
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollingChildHelper()Landroidx/core/view/NestedScrollingChildHelper;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/core/view/NestedScrollingChildHelper;->stopNestedScroll(I)V

    return-void
.end method

.method public stopScroll()V
    .locals 1

    const/4 v0, 0x0

    .line 3360
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    .line 3361
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->stopScrollersInternal()V

    return-void
.end method

.method public final suppressLayout(Z)V
    .locals 9

    .line 3052
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayoutSuppressed:Z

    if-eq p1, v0, :cond_2

    const-string v0, "Do not suppressLayout in layout or scroll"

    .line 3053
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 3055
    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayoutSuppressed:Z

    .line 3056
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayoutWasDefered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_0

    .line 3057
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    .line 3059
    :cond_0
    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayoutWasDefered:Z

    goto :goto_0

    .line 3061
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-wide v1, v3

    .line 3062
    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object p1

    .line 3064
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    const/4 p1, 0x1

    .line 3065
    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayoutSuppressed:Z

    .line 3066
    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mIgnoreMotionEventTillDown:Z

    .line 3067
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->stopScroll()V

    :cond_2
    :goto_0
    return-void
.end method

.method public verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .line 15273
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mGoToTopImage:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

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

.method viewRangeUpdate(IILjava/lang/Object;)V
    .locals 6

    .line 5904
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    add-int v1, p1, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 5908
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 5909
    invoke-static {v3}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 5910
    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    .line 5913
    :cond_0
    iget v5, v4, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    if-lt v5, p1, :cond_1

    if-ge v5, v1, :cond_1

    const/4 v5, 0x2

    .line 5916
    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->addFlags(I)V

    .line 5917
    invoke-virtual {v4, p3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->addChangePayload(Ljava/lang/Object;)V

    .line 5919
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v4, 0x1

    iput-boolean v4, v3, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->mInsetsDirty:Z

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5922
    :cond_2
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->viewRangeUpdate(II)V

    return-void
.end method
