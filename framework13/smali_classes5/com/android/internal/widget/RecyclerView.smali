.class public Lcom/android/internal/widget/RecyclerView;
.super Landroid/view/ViewGroup;
.source "RecyclerView.java"

# interfaces
.implements Lcom/android/internal/widget/ScrollingView;
.implements Lcom/android/internal/widget/NestedScrollingChild;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/RecyclerView$ChildDrawingOrderCallback;,
        Lcom/android/internal/widget/RecyclerView$ItemAnimator;,
        Lcom/android/internal/widget/RecyclerView$ItemAnimatorRestoreListener;,
        Lcom/android/internal/widget/RecyclerView$OnFlingListener;,
        Lcom/android/internal/widget/RecyclerView$State;,
        Lcom/android/internal/widget/RecyclerView$SavedState;,
        Lcom/android/internal/widget/RecyclerView$AdapterDataObservable;,
        Lcom/android/internal/widget/RecyclerView$SmoothScroller;,
        Lcom/android/internal/widget/RecyclerView$AdapterDataObserver;,
        Lcom/android/internal/widget/RecyclerView$LayoutParams;,
        Lcom/android/internal/widget/RecyclerView$ViewHolder;,
        Lcom/android/internal/widget/RecyclerView$OnChildAttachStateChangeListener;,
        Lcom/android/internal/widget/RecyclerView$RecyclerListener;,
        Lcom/android/internal/widget/RecyclerView$OnScrollListener;,
        Lcom/android/internal/widget/RecyclerView$SimpleOnItemTouchListener;,
        Lcom/android/internal/widget/RecyclerView$OnItemTouchListener;,
        Lcom/android/internal/widget/RecyclerView$ItemDecoration;,
        Lcom/android/internal/widget/RecyclerView$LayoutManager;,
        Lcom/android/internal/widget/RecyclerView$Adapter;,
        Lcom/android/internal/widget/RecyclerView$ViewCacheExtension;,
        Lcom/android/internal/widget/RecyclerView$Recycler;,
        Lcom/android/internal/widget/RecyclerView$RecycledViewPool;,
        Lcom/android/internal/widget/RecyclerView$RecyclerViewDataObserver;,
        Lcom/android/internal/widget/RecyclerView$ViewFlinger;
    }
.end annotation


# static fields
.field static final blacklist ALLOW_SIZE_IN_UNSPECIFIED_SPEC:Z

.field private static final blacklist ALLOW_THREAD_GAP_WORK:Z

.field private static final blacklist CLIP_TO_PADDING_ATTR:[I

.field static final blacklist DEBUG:Z = false

.field static final blacklist DISPATCH_TEMP_DETACH:Z = false

.field private static final blacklist FORCE_ABS_FOCUS_SEARCH_DIRECTION:Z

.field static final blacklist FORCE_INVALIDATE_DISPLAY_LIST:Z

.field static final blacklist FOREVER_NS:J = 0x7fffffffffffffffL

.field public static final blacklist HORIZONTAL:I = 0x0

.field private static final blacklist IGNORE_DETACHED_FOCUSED_CHILD:Z

.field private static final blacklist INVALID_POINTER:I = -0x1

.field public static final blacklist INVALID_TYPE:I = -0x1

.field private static final blacklist LAYOUT_MANAGER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field static final blacklist MAX_SCROLL_DURATION:I = 0x7d0

.field private static final blacklist NESTED_SCROLLING_ATTRS:[I

.field public static final blacklist NO_ID:J = -0x1L

.field public static final blacklist NO_POSITION:I = -0x1

.field static final blacklist POST_UPDATES_ON_ANIMATION:Z

.field public static final blacklist SCROLL_STATE_DRAGGING:I = 0x1

.field public static final blacklist SCROLL_STATE_IDLE:I = 0x0

.field public static final blacklist SCROLL_STATE_SETTLING:I = 0x2

.field static final blacklist TAG:Ljava/lang/String; = "RecyclerView"

.field public static final blacklist TOUCH_SLOP_DEFAULT:I = 0x0

.field public static final blacklist TOUCH_SLOP_PAGING:I = 0x1

.field static final blacklist TRACE_BIND_VIEW_TAG:Ljava/lang/String; = "RV OnBindView"

.field static final blacklist TRACE_CREATE_VIEW_TAG:Ljava/lang/String; = "RV CreateView"

.field private static final blacklist TRACE_HANDLE_ADAPTER_UPDATES_TAG:Ljava/lang/String; = "RV PartialInvalidate"

.field static final blacklist TRACE_NESTED_PREFETCH_TAG:Ljava/lang/String; = "RV Nested Prefetch"

.field private static final blacklist TRACE_ON_DATA_SET_CHANGE_LAYOUT_TAG:Ljava/lang/String; = "RV FullInvalidate"

.field private static final blacklist TRACE_ON_LAYOUT_TAG:Ljava/lang/String; = "RV OnLayout"

.field static final blacklist TRACE_PREFETCH_TAG:Ljava/lang/String; = "RV Prefetch"

.field static final blacklist TRACE_SCROLL_TAG:Ljava/lang/String; = "RV Scroll"

.field public static final blacklist VERTICAL:I = 0x1

.field static final blacklist sQuinticInterpolator:Landroid/view/animation/Interpolator;


# instance fields
.field blacklist mAccessibilityDelegate:Lcom/android/internal/widget/RecyclerViewAccessibilityDelegate;

.field private final blacklist mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private blacklist mActiveOnItemTouchListener:Lcom/android/internal/widget/RecyclerView$OnItemTouchListener;

.field blacklist mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

.field blacklist mAdapterHelper:Lcom/android/internal/widget/AdapterHelper;

.field blacklist mAdapterUpdateDuringMeasure:Z

.field private blacklist mBottomGlow:Landroid/widget/EdgeEffect;

.field private blacklist mChildDrawingOrderCallback:Lcom/android/internal/widget/RecyclerView$ChildDrawingOrderCallback;

.field blacklist mChildHelper:Lcom/android/internal/widget/ChildHelper;

.field blacklist mClipToPadding:Z

.field blacklist mDataSetHasChangedAfterLayout:Z

.field private blacklist mDispatchScrollCounter:I

.field private blacklist mEatRequestLayout:I

.field private blacklist mEatenAccessibilityChangeFlags:I

.field blacklist mFirstLayoutComplete:Z

.field blacklist mGapWorker:Lcom/android/internal/widget/GapWorker;

.field blacklist mHasFixedSize:Z

.field private blacklist mIgnoreMotionEventTillDown:Z

.field private blacklist mInitialTouchX:I

.field private blacklist mInitialTouchY:I

.field blacklist mIsAttached:Z

.field blacklist mItemAnimator:Lcom/android/internal/widget/RecyclerView$ItemAnimator;

.field private blacklist mItemAnimatorListener:Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;

.field private blacklist mItemAnimatorRunner:Ljava/lang/Runnable;

.field final blacklist mItemDecorations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/RecyclerView$ItemDecoration;",
            ">;"
        }
    .end annotation
.end field

.field blacklist mItemsAddedOrRemoved:Z

.field blacklist mItemsChanged:Z

.field private blacklist mLastTouchX:I

.field private blacklist mLastTouchY:I

.field blacklist mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

.field blacklist mLayoutFrozen:Z

.field private blacklist mLayoutOrScrollCounter:I

.field blacklist mLayoutRequestEaten:Z

.field private blacklist mLeftGlow:Landroid/widget/EdgeEffect;

.field private blacklist mMaxFlingVelocity:I

.field private final blacklist mMinFlingVelocity:I

.field private final blacklist mMinMaxLayoutPositions:[I

.field private final blacklist mNestedOffsets:[I

.field private final blacklist mObserver:Lcom/android/internal/widget/RecyclerView$RecyclerViewDataObserver;

.field private blacklist mOnChildAttachStateListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/widget/RecyclerView$OnChildAttachStateChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mOnFlingListener:Lcom/android/internal/widget/RecyclerView$OnFlingListener;

.field private final blacklist mOnItemTouchListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/RecyclerView$OnItemTouchListener;",
            ">;"
        }
    .end annotation
.end field

.field final blacklist mPendingAccessibilityImportanceChange:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mPendingSavedState:Lcom/android/internal/widget/RecyclerView$SavedState;

.field blacklist mPostedAnimatorRunner:Z

.field blacklist mPrefetchRegistry:Lcom/android/internal/widget/GapWorker$LayoutPrefetchRegistryImpl;

.field private blacklist mPreserveFocusAfterLayout:Z

.field final blacklist mRecycler:Lcom/android/internal/widget/RecyclerView$Recycler;

.field blacklist mRecyclerListener:Lcom/android/internal/widget/RecyclerView$RecyclerListener;

.field private blacklist mRightGlow:Landroid/widget/EdgeEffect;

.field private final blacklist mScrollConsumed:[I

.field private blacklist mScrollFactor:F

.field private blacklist mScrollListener:Lcom/android/internal/widget/RecyclerView$OnScrollListener;

.field private blacklist mScrollListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/widget/RecyclerView$OnScrollListener;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mScrollOffset:[I

.field private blacklist mScrollPointerId:I

.field private blacklist mScrollState:I

.field final blacklist mState:Lcom/android/internal/widget/RecyclerView$State;

.field final blacklist mTempRect:Landroid/graphics/Rect;

.field private final blacklist mTempRect2:Landroid/graphics/Rect;

.field final blacklist mTempRectF:Landroid/graphics/RectF;

.field private blacklist mTopGlow:Landroid/widget/EdgeEffect;

.field private blacklist mTouchSlop:I

.field final blacklist mUpdateChildViewsRunnable:Ljava/lang/Runnable;

.field private blacklist mVelocityTracker:Landroid/view/VelocityTracker;

.field final blacklist mViewFlinger:Lcom/android/internal/widget/RecyclerView$ViewFlinger;

.field private final blacklist mViewInfoProcessCallback:Lcom/android/internal/widget/ViewInfoStore$ProcessCallback;

.field final blacklist mViewInfoStore:Lcom/android/internal/widget/ViewInfoStore;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetALLOW_THREAD_GAP_WORK()Z
    .locals 1

    sget-boolean v0, Lcom/android/internal/widget/RecyclerView;->ALLOW_THREAD_GAP_WORK:Z

    return v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 4

    .line 144
    const/4 v0, 0x1

    new-array v1, v0, [I

    const v2, 0x1010436

    const/4 v3, 0x0

    aput v2, v1, v3

    sput-object v1, Lcom/android/internal/widget/RecyclerView;->NESTED_SCROLLING_ATTRS:[I

    .line 146
    new-array v1, v0, [I

    const v2, 0x10100eb

    aput v2, v1, v3

    sput-object v1, Lcom/android/internal/widget/RecyclerView;->CLIP_TO_PADDING_ATTR:[I

    .line 155
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-eq v1, v2, :cond_1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-eq v1, v2, :cond_1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x14

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    move v1, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v0

    :goto_1
    sput-boolean v1, Lcom/android/internal/widget/RecyclerView;->FORCE_INVALIDATE_DISPLAY_LIST:Z

    .line 162
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_2

    move v1, v0

    goto :goto_2

    :cond_2
    move v1, v3

    :goto_2
    sput-boolean v1, Lcom/android/internal/widget/RecyclerView;->ALLOW_SIZE_IN_UNSPECIFIED_SPEC:Z

    .line 164
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_3

    move v1, v0

    goto :goto_3

    :cond_3
    move v1, v3

    :goto_3
    sput-boolean v1, Lcom/android/internal/widget/RecyclerView;->POST_UPDATES_ON_ANIMATION:Z

    .line 170
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_4

    move v1, v0

    goto :goto_4

    :cond_4
    move v1, v3

    :goto_4
    sput-boolean v1, Lcom/android/internal/widget/RecyclerView;->ALLOW_THREAD_GAP_WORK:Z

    .line 176
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xf

    if-gt v1, v2, :cond_5

    move v1, v0

    goto :goto_5

    :cond_5
    move v1, v3

    :goto_5
    sput-boolean v1, Lcom/android/internal/widget/RecyclerView;->FORCE_ABS_FOCUS_SEARCH_DIRECTION:Z

    .line 186
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v1, v2, :cond_6

    move v1, v0

    goto :goto_6

    :cond_6
    move v1, v3

    :goto_6
    sput-boolean v1, Lcom/android/internal/widget/RecyclerView;->IGNORE_DETACHED_FOCUSED_CHILD:Z

    .line 275
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Class;

    const-class v2, Landroid/content/Context;

    aput-object v2, v1, v3

    const-class v2, Landroid/util/AttributeSet;

    aput-object v2, v1, v0

    const/4 v0, 0x2

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, v0

    const/4 v0, 0x3

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, v0

    sput-object v1, Lcom/android/internal/widget/RecyclerView;->LAYOUT_MANAGER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    .line 482
    new-instance v0, Lcom/android/internal/widget/RecyclerView$3;

    invoke-direct {v0}, Lcom/android/internal/widget/RecyclerView$3;-><init>()V

    sput-object v0, Lcom/android/internal/widget/RecyclerView;->sQuinticInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 529
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 530
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 533
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 534
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 18
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 537
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move/from16 v9, p3

    invoke-direct/range {p0 .. p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 278
    new-instance v0, Lcom/android/internal/widget/RecyclerView$RecyclerViewDataObserver;

    invoke-direct {v0, v6}, Lcom/android/internal/widget/RecyclerView$RecyclerViewDataObserver;-><init>(Lcom/android/internal/widget/RecyclerView;)V

    iput-object v0, v6, Lcom/android/internal/widget/RecyclerView;->mObserver:Lcom/android/internal/widget/RecyclerView$RecyclerViewDataObserver;

    .line 280
    new-instance v0, Lcom/android/internal/widget/RecyclerView$Recycler;

    invoke-direct {v0, v6}, Lcom/android/internal/widget/RecyclerView$Recycler;-><init>(Lcom/android/internal/widget/RecyclerView;)V

    iput-object v0, v6, Lcom/android/internal/widget/RecyclerView;->mRecycler:Lcom/android/internal/widget/RecyclerView$Recycler;

    .line 297
    new-instance v0, Lcom/android/internal/widget/ViewInfoStore;

    invoke-direct {v0}, Lcom/android/internal/widget/ViewInfoStore;-><init>()V

    iput-object v0, v6, Lcom/android/internal/widget/RecyclerView;->mViewInfoStore:Lcom/android/internal/widget/ViewInfoStore;

    .line 311
    new-instance v0, Lcom/android/internal/widget/RecyclerView$1;

    invoke-direct {v0, v6}, Lcom/android/internal/widget/RecyclerView$1;-><init>(Lcom/android/internal/widget/RecyclerView;)V

    iput-object v0, v6, Lcom/android/internal/widget/RecyclerView;->mUpdateChildViewsRunnable:Ljava/lang/Runnable;

    .line 331
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, v6, Lcom/android/internal/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    .line 332
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, v6, Lcom/android/internal/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    .line 333
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, v6, Lcom/android/internal/widget/RecyclerView;->mTempRectF:Landroid/graphics/RectF;

    .line 337
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v6, Lcom/android/internal/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    .line 338
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v6, Lcom/android/internal/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    .line 346
    const/4 v10, 0x0

    iput v10, v6, Lcom/android/internal/widget/RecyclerView;->mEatRequestLayout:I

    .line 371
    iput-boolean v10, v6, Lcom/android/internal/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    .line 381
    iput v10, v6, Lcom/android/internal/widget/RecyclerView;->mLayoutOrScrollCounter:I

    .line 390
    iput v10, v6, Lcom/android/internal/widget/RecyclerView;->mDispatchScrollCounter:I

    .line 394
    new-instance v0, Lcom/android/internal/widget/DefaultItemAnimator;

    invoke-direct {v0}, Lcom/android/internal/widget/DefaultItemAnimator;-><init>()V

    iput-object v0, v6, Lcom/android/internal/widget/RecyclerView;->mItemAnimator:Lcom/android/internal/widget/RecyclerView$ItemAnimator;

    .line 421
    iput v10, v6, Lcom/android/internal/widget/RecyclerView;->mScrollState:I

    .line 422
    const/4 v0, -0x1

    iput v0, v6, Lcom/android/internal/widget/RecyclerView;->mScrollPointerId:I

    .line 433
    const/4 v1, 0x1

    iput v1, v6, Lcom/android/internal/widget/RecyclerView;->mScrollFactor:F

    .line 434
    const/4 v11, 0x1

    iput-boolean v11, v6, Lcom/android/internal/widget/RecyclerView;->mPreserveFocusAfterLayout:Z

    .line 436
    new-instance v1, Lcom/android/internal/widget/RecyclerView$ViewFlinger;

    invoke-direct {v1, v6}, Lcom/android/internal/widget/RecyclerView$ViewFlinger;-><init>(Lcom/android/internal/widget/RecyclerView;)V

    iput-object v1, v6, Lcom/android/internal/widget/RecyclerView;->mViewFlinger:Lcom/android/internal/widget/RecyclerView$ViewFlinger;

    .line 439
    nop

    .line 440
    sget-boolean v1, Lcom/android/internal/widget/RecyclerView;->ALLOW_THREAD_GAP_WORK:Z

    if-eqz v1, :cond_0

    new-instance v1, Lcom/android/internal/widget/GapWorker$LayoutPrefetchRegistryImpl;

    invoke-direct {v1}, Lcom/android/internal/widget/GapWorker$LayoutPrefetchRegistryImpl;-><init>()V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-object v1, v6, Lcom/android/internal/widget/RecyclerView;->mPrefetchRegistry:Lcom/android/internal/widget/GapWorker$LayoutPrefetchRegistryImpl;

    .line 442
    new-instance v1, Lcom/android/internal/widget/RecyclerView$State;

    invoke-direct {v1}, Lcom/android/internal/widget/RecyclerView$State;-><init>()V

    iput-object v1, v6, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    .line 448
    iput-boolean v10, v6, Lcom/android/internal/widget/RecyclerView;->mItemsAddedOrRemoved:Z

    .line 449
    iput-boolean v10, v6, Lcom/android/internal/widget/RecyclerView;->mItemsChanged:Z

    .line 450
    new-instance v1, Lcom/android/internal/widget/RecyclerView$ItemAnimatorRestoreListener;

    invoke-direct {v1, v6}, Lcom/android/internal/widget/RecyclerView$ItemAnimatorRestoreListener;-><init>(Lcom/android/internal/widget/RecyclerView;)V

    iput-object v1, v6, Lcom/android/internal/widget/RecyclerView;->mItemAnimatorListener:Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;

    .line 452
    iput-boolean v10, v6, Lcom/android/internal/widget/RecyclerView;->mPostedAnimatorRunner:Z

    .line 458
    const/4 v1, 0x2

    new-array v2, v1, [I

    iput-object v2, v6, Lcom/android/internal/widget/RecyclerView;->mMinMaxLayoutPositions:[I

    .line 460
    new-array v2, v1, [I

    iput-object v2, v6, Lcom/android/internal/widget/RecyclerView;->mScrollOffset:[I

    .line 461
    new-array v2, v1, [I

    iput-object v2, v6, Lcom/android/internal/widget/RecyclerView;->mScrollConsumed:[I

    .line 462
    new-array v2, v1, [I

    iput-object v2, v6, Lcom/android/internal/widget/RecyclerView;->mNestedOffsets:[I

    .line 469
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v6, Lcom/android/internal/widget/RecyclerView;->mPendingAccessibilityImportanceChange:Ljava/util/List;

    .line 472
    new-instance v2, Lcom/android/internal/widget/RecyclerView$2;

    invoke-direct {v2, v6}, Lcom/android/internal/widget/RecyclerView$2;-><init>(Lcom/android/internal/widget/RecyclerView;)V

    iput-object v2, v6, Lcom/android/internal/widget/RecyclerView;->mItemAnimatorRunner:Ljava/lang/Runnable;

    .line 493
    new-instance v2, Lcom/android/internal/widget/RecyclerView$4;

    invoke-direct {v2, v6}, Lcom/android/internal/widget/RecyclerView$4;-><init>(Lcom/android/internal/widget/RecyclerView;)V

    iput-object v2, v6, Lcom/android/internal/widget/RecyclerView;->mViewInfoProcessCallback:Lcom/android/internal/widget/ViewInfoStore$ProcessCallback;

    .line 538
    if-eqz v8, :cond_1

    .line 539
    sget-object v2, Lcom/android/internal/widget/RecyclerView;->CLIP_TO_PADDING_ATTR:[I

    invoke-virtual {v7, v8, v2, v9, v10}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 540
    .local v2, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v2, v10, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, v6, Lcom/android/internal/widget/RecyclerView;->mClipToPadding:Z

    .line 541
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 542
    .end local v2    # "a":Landroid/content/res/TypedArray;
    goto :goto_1

    .line 543
    :cond_1
    iput-boolean v11, v6, Lcom/android/internal/widget/RecyclerView;->mClipToPadding:Z

    .line 545
    :goto_1
    invoke-virtual {v6, v11}, Lcom/android/internal/widget/RecyclerView;->setScrollContainer(Z)V

    .line 546
    invoke-virtual {v6, v11}, Lcom/android/internal/widget/RecyclerView;->setFocusableInTouchMode(Z)V

    .line 548
    invoke-static/range {p1 .. p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v12

    .line 549
    .local v12, "vc":Landroid/view/ViewConfiguration;
    invoke-virtual {v12}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    iput v2, v6, Lcom/android/internal/widget/RecyclerView;->mTouchSlop:I

    .line 550
    invoke-virtual {v12}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v2

    iput v2, v6, Lcom/android/internal/widget/RecyclerView;->mMinFlingVelocity:I

    .line 551
    invoke-virtual {v12}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v2

    iput v2, v6, Lcom/android/internal/widget/RecyclerView;->mMaxFlingVelocity:I

    .line 552
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/RecyclerView;->getOverScrollMode()I

    move-result v2

    if-ne v2, v1, :cond_2

    move v2, v11

    goto :goto_2

    :cond_2
    move v2, v10

    :goto_2
    invoke-virtual {v6, v2}, Lcom/android/internal/widget/RecyclerView;->setWillNotDraw(Z)V

    .line 554
    iget-object v2, v6, Lcom/android/internal/widget/RecyclerView;->mItemAnimator:Lcom/android/internal/widget/RecyclerView$ItemAnimator;

    iget-object v3, v6, Lcom/android/internal/widget/RecyclerView;->mItemAnimatorListener:Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/RecyclerView$ItemAnimator;->setListener(Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;)V

    .line 555
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/RecyclerView;->initAdapterManager()V

    .line 556
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/RecyclerView;->initChildrenHelper()V

    .line 558
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/RecyclerView;->getImportantForAccessibility()I

    move-result v2

    if-nez v2, :cond_3

    .line 559
    invoke-virtual {v6, v11}, Lcom/android/internal/widget/RecyclerView;->setImportantForAccessibility(I)V

    .line 561
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 562
    const-string v3, "accessibility"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/accessibility/AccessibilityManager;

    iput-object v2, v6, Lcom/android/internal/widget/RecyclerView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 563
    new-instance v2, Lcom/android/internal/widget/RecyclerViewAccessibilityDelegate;

    invoke-direct {v2, v6}, Lcom/android/internal/widget/RecyclerViewAccessibilityDelegate;-><init>(Lcom/android/internal/widget/RecyclerView;)V

    invoke-virtual {v6, v2}, Lcom/android/internal/widget/RecyclerView;->setAccessibilityDelegateCompat(Lcom/android/internal/widget/RecyclerViewAccessibilityDelegate;)V

    .line 566
    const/4 v13, 0x1

    .line 568
    .local v13, "nestedScrollingEnabled":Z
    const/high16 v2, 0x40000

    if-eqz v8, :cond_6

    .line 569
    const/4 v14, 0x0

    .line 570
    .local v14, "defStyleRes":I
    sget-object v3, Lcom/android/internal/R$styleable;->RecyclerView:[I

    invoke-virtual {v7, v8, v3, v9, v14}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v15

    .line 572
    .local v15, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v15, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 573
    .local v16, "layoutManagerName":Ljava/lang/String;
    invoke-virtual {v15, v11, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    .line 575
    .local v5, "descendantFocusability":I
    if-ne v5, v0, :cond_4

    .line 576
    invoke-virtual {v6, v2}, Lcom/android/internal/widget/RecyclerView;->setDescendantFocusability(I)V

    .line 578
    :cond_4
    invoke-virtual {v15}, Landroid/content/res/TypedArray;->recycle()V

    .line 579
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v17, v5

    .end local v5    # "descendantFocusability":I
    .local v17, "descendantFocusability":I
    move v5, v14

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/widget/RecyclerView;->createLayoutManager(Landroid/content/Context;Ljava/lang/String;Landroid/util/AttributeSet;II)V

    .line 581
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_5

    .line 582
    sget-object v0, Lcom/android/internal/widget/RecyclerView;->NESTED_SCROLLING_ATTRS:[I

    invoke-virtual {v7, v8, v0, v9, v14}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 584
    .end local v15    # "a":Landroid/content/res/TypedArray;
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v10, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 585
    .end local v13    # "nestedScrollingEnabled":Z
    .local v1, "nestedScrollingEnabled":Z
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    move v13, v1

    .line 587
    .end local v0    # "a":Landroid/content/res/TypedArray;
    .end local v1    # "nestedScrollingEnabled":Z
    .end local v14    # "defStyleRes":I
    .end local v16    # "layoutManagerName":Ljava/lang/String;
    .end local v17    # "descendantFocusability":I
    .restart local v13    # "nestedScrollingEnabled":Z
    :cond_5
    goto :goto_3

    .line 588
    :cond_6
    invoke-virtual {v6, v2}, Lcom/android/internal/widget/RecyclerView;->setDescendantFocusability(I)V

    .line 591
    :goto_3
    sget-object v0, Lcom/android/internal/R$styleable;->EdgeEffect:[I

    invoke-virtual {v7, v8, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 593
    .restart local v0    # "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 596
    invoke-virtual {v6, v13}, Lcom/android/internal/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 597
    return-void
.end method

.method static synthetic blacklist access$000(Lcom/android/internal/widget/RecyclerView;Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/widget/RecyclerView;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # I
    .param p3, "x3"    # Landroid/view/ViewGroup$LayoutParams;

    .line 138
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/widget/RecyclerView;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic blacklist access$100(Lcom/android/internal/widget/RecyclerView;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/widget/RecyclerView;
    .param p1, "x1"    # I

    .line 138
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/RecyclerView;->detachViewFromParent(I)V

    return-void
.end method

.method static synthetic blacklist access$200(Lcom/android/internal/widget/RecyclerView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/RecyclerView;

    .line 138
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->awakenScrollBars()Z

    move-result v0

    return v0
.end method

.method static synthetic blacklist access$300(Lcom/android/internal/widget/RecyclerView;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/widget/RecyclerView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 138
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/widget/RecyclerView;->setMeasuredDimension(II)V

    return-void
.end method

.method private blacklist addAnimatingView(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V
    .locals 6
    .param p1, "viewHolder"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 1242
    iget-object v0, p1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 1243
    .local v0, "view":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    const/4 v2, 0x1

    if-ne v1, p0, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1244
    .local v1, "alreadyParented":Z
    :goto_0
    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mRecycler:Lcom/android/internal/widget/RecyclerView$Recycler;

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/RecyclerView$Recycler;->unscrapView(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    .line 1245
    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->isTmpDetached()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1247
    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    const/4 v4, -0x1

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    invoke-virtual {v3, v0, v4, v5, v2}, Lcom/android/internal/widget/ChildHelper;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    goto :goto_1

    .line 1248
    :cond_1
    if-nez v1, :cond_2

    .line 1249
    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v3, v0, v2}, Lcom/android/internal/widget/ChildHelper;->addView(Landroid/view/View;Z)V

    goto :goto_1

    .line 1251
    :cond_2
    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v2, v0}, Lcom/android/internal/widget/ChildHelper;->hide(Landroid/view/View;)V

    .line 1253
    :goto_1
    return-void
.end method

.method private blacklist animateChange(Lcom/android/internal/widget/RecyclerView$ViewHolder;Lcom/android/internal/widget/RecyclerView$ViewHolder;Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;ZZ)V
    .locals 2
    .param p1, "oldHolder"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .param p2, "newHolder"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .param p3, "preInfo"    # Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    .param p4, "postInfo"    # Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    .param p5, "oldHolderDisappearing"    # Z
    .param p6, "newHolderDisappearing"    # Z

    .line 3913
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    .line 3914
    if-eqz p5, :cond_0

    .line 3915
    invoke-direct {p0, p1}, Lcom/android/internal/widget/RecyclerView;->addAnimatingView(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    .line 3917
    :cond_0
    if-eq p1, p2, :cond_2

    .line 3918
    if-eqz p6, :cond_1

    .line 3919
    invoke-direct {p0, p2}, Lcom/android/internal/widget/RecyclerView;->addAnimatingView(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    .line 3921
    :cond_1
    iput-object p2, p1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mShadowedHolder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 3923
    invoke-direct {p0, p1}, Lcom/android/internal/widget/RecyclerView;->addAnimatingView(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    .line 3924
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mRecycler:Lcom/android/internal/widget/RecyclerView$Recycler;

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/RecyclerView$Recycler;->unscrapView(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    .line 3925
    invoke-virtual {p2, v0}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    .line 3926
    iput-object p1, p2, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mShadowingHolder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 3928
    :cond_2
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mItemAnimator:Lcom/android/internal/widget/RecyclerView$ItemAnimator;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/internal/widget/RecyclerView$ItemAnimator;->animateChange(Lcom/android/internal/widget/RecyclerView$ViewHolder;Lcom/android/internal/widget/RecyclerView$ViewHolder;Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3929
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->postAnimationRunner()V

    .line 3931
    :cond_3
    return-void
.end method

.method private blacklist cancelTouch()V
    .locals 1

    .line 3029
    invoke-direct {p0}, Lcom/android/internal/widget/RecyclerView;->resetTouch()V

    .line 3030
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/RecyclerView;->setScrollState(I)V

    .line 3031
    return-void
.end method

.method static blacklist clearNestedRecyclerViewIfNotNested(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V
    .locals 3
    .param p0, "holder"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 5273
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mNestedRecyclerView:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_3

    .line 5274
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mNestedRecyclerView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 5275
    .local v0, "item":Landroid/view/View;
    :goto_0
    if-eqz v0, :cond_2

    .line 5276
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    if-ne v0, v1, :cond_0

    .line 5277
    return-void

    .line 5280
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 5281
    .local v1, "parent":Landroid/view/ViewParent;
    instance-of v2, v1, Landroid/view/View;

    if-eqz v2, :cond_1

    .line 5282
    move-object v0, v1

    check-cast v0, Landroid/view/View;

    goto :goto_1

    .line 5284
    :cond_1
    const/4 v0, 0x0

    .line 5286
    .end local v1    # "parent":Landroid/view/ViewParent;
    :goto_1
    goto :goto_0

    .line 5287
    :cond_2
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mNestedRecyclerView:Ljava/lang/ref/WeakReference;

    .line 5289
    .end local v0    # "item":Landroid/view/View;
    :cond_3
    return-void
.end method

.method private blacklist createLayoutManager(Landroid/content/Context;Ljava/lang/String;Landroid/util/AttributeSet;II)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "defStyleAttr"    # I
    .param p5, "defStyleRes"    # I

    .line 622
    const-string v0, ": Could not instantiate the LayoutManager: "

    if-eqz p2, :cond_1

    .line 623
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 624
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    .line 625
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/RecyclerView;->getFullClassName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 628
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->isInEditMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 630
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .local v1, "classLoader":Ljava/lang/ClassLoader;
    goto :goto_0

    .line 632
    .end local v1    # "classLoader":Ljava/lang/ClassLoader;
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 634
    .restart local v1    # "classLoader":Ljava/lang/ClassLoader;
    :goto_0
    nop

    .line 635
    invoke-virtual {v1, p2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {v2, v3}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_2

    .line 637
    .local v2, "layoutManagerClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/android/internal/widget/RecyclerView$LayoutManager;>;"
    const/4 v3, 0x0

    .line 639
    .local v3, "constructorArgs":[Ljava/lang/Object;
    const/4 v4, 0x1

    const/4 v5, 0x0

    :try_start_1
    sget-object v6, Lcom/android/internal/widget/RecyclerView;->LAYOUT_MANAGER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    .line 640
    invoke-virtual {v2, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v6

    .line 641
    .local v6, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lcom/android/internal/widget/RecyclerView$LayoutManager;>;"
    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    aput-object p1, v7, v5

    aput-object p3, v7, v4

    const/4 v8, 0x2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x3

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_2

    move-object v3, v7

    .line 650
    goto :goto_1

    .line 642
    .end local v6    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lcom/android/internal/widget/RecyclerView$LayoutManager;>;"
    :catch_0
    move-exception v6

    .line 644
    .local v6, "e":Ljava/lang/NoSuchMethodException;
    :try_start_2
    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v2, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2

    .line 649
    .local v5, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lcom/android/internal/widget/RecyclerView$LayoutManager;>;"
    move-object v6, v5

    .line 651
    .end local v5    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lcom/android/internal/widget/RecyclerView$LayoutManager;>;"
    .local v6, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lcom/android/internal/widget/RecyclerView$LayoutManager;>;"
    :goto_1
    :try_start_3
    invoke-virtual {v6, v4}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 652
    invoke-virtual {v6, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {p0, v4}, Lcom/android/internal/widget/RecyclerView;->setLayoutManager(Lcom/android/internal/widget/RecyclerView$LayoutManager;)V

    .line 668
    .end local v1    # "classLoader":Ljava/lang/ClassLoader;
    .end local v2    # "layoutManagerClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/android/internal/widget/RecyclerView$LayoutManager;>;"
    .end local v3    # "constructorArgs":[Ljava/lang/Object;
    .end local v6    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lcom/android/internal/widget/RecyclerView$LayoutManager;>;"
    goto/16 :goto_2

    .line 645
    .restart local v1    # "classLoader":Ljava/lang/ClassLoader;
    .restart local v2    # "layoutManagerClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/android/internal/widget/RecyclerView$LayoutManager;>;"
    .restart local v3    # "constructorArgs":[Ljava/lang/Object;
    .local v6, "e":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v4

    .line 646
    .local v4, "e1":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v4, v6}, Ljava/lang/NoSuchMethodException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 647
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": Error creating LayoutManager "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/android/internal/widget/RecyclerView;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "className":Ljava/lang/String;
    .end local p3    # "attrs":Landroid/util/AttributeSet;
    .end local p4    # "defStyleAttr":I
    .end local p5    # "defStyleRes":I
    throw v5
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/InstantiationException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_2

    .line 665
    .end local v1    # "classLoader":Ljava/lang/ClassLoader;
    .end local v2    # "layoutManagerClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/android/internal/widget/RecyclerView$LayoutManager;>;"
    .end local v3    # "constructorArgs":[Ljava/lang/Object;
    .end local v4    # "e1":Ljava/lang/NoSuchMethodException;
    .end local v6    # "e":Ljava/lang/NoSuchMethodException;
    .restart local p0    # "this":Lcom/android/internal/widget/RecyclerView;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "className":Ljava/lang/String;
    .restart local p3    # "attrs":Landroid/util/AttributeSet;
    .restart local p4    # "defStyleAttr":I
    .restart local p5    # "defStyleRes":I
    :catch_2
    move-exception v0

    .line 666
    .local v0, "e":Ljava/lang/ClassCastException;
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": Class is not a LayoutManager "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 662
    .end local v0    # "e":Ljava/lang/ClassCastException;
    :catch_3
    move-exception v0

    .line 663
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": Cannot access non-public constructor "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 659
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_4
    move-exception v1

    .line 660
    .local v1, "e":Ljava/lang/InstantiationException;
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 656
    .end local v1    # "e":Ljava/lang/InstantiationException;
    :catch_5
    move-exception v1

    .line 657
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 653
    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_6
    move-exception v0

    .line 654
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": Unable to find LayoutManager "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 671
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :cond_1
    :goto_2
    return-void
.end method

.method private blacklist didChildRangeChange(II)Z
    .locals 4
    .param p1, "minPositionPreLayout"    # I
    .param p2, "maxPositionPreLayout"    # I

    .line 3865
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mMinMaxLayoutPositions:[I

    invoke-direct {p0, v0}, Lcom/android/internal/widget/RecyclerView;->findMinMaxChildLayoutPositions([I)V

    .line 3866
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mMinMaxLayoutPositions:[I

    const/4 v1, 0x0

    aget v2, v0, v1

    const/4 v3, 0x1

    if-ne v2, p1, :cond_0

    aget v0, v0, v3

    if-eq v0, p2, :cond_1

    :cond_0
    move v1, v3

    :cond_1
    return v1
.end method

.method private blacklist dispatchContentChangedIfNecessary()V
    .locals 3

    .line 3237
    iget v0, p0, Lcom/android/internal/widget/RecyclerView;->mEatenAccessibilityChangeFlags:I

    .line 3238
    .local v0, "flags":I
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/widget/RecyclerView;->mEatenAccessibilityChangeFlags:I

    .line 3239
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->isAccessibilityEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3240
    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    .line 3241
    .local v1, "event":Landroid/view/accessibility/AccessibilityEvent;
    const/16 v2, 0x800

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setEventType(I)V

    .line 3242
    invoke-virtual {v1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setContentChangeTypes(I)V

    .line 3243
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/RecyclerView;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 3245
    .end local v1    # "event":Landroid/view/accessibility/AccessibilityEvent;
    :cond_0
    return-void
.end method

.method private blacklist dispatchLayoutStep1()V
    .locals 10

    .line 3575
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/RecyclerView$State;->assertLayoutStep(I)V

    .line 3576
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/internal/widget/RecyclerView$State;->mIsMeasuring:Z

    .line 3577
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->eatRequestLayout()V

    .line 3578
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mViewInfoStore:Lcom/android/internal/widget/ViewInfoStore;

    invoke-virtual {v0}, Lcom/android/internal/widget/ViewInfoStore;->clear()V

    .line 3579
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->onEnterLayoutOrScroll()V

    .line 3580
    invoke-direct {p0}, Lcom/android/internal/widget/RecyclerView;->processAdapterUpdatesAndSetAnimationFlags()V

    .line 3581
    invoke-direct {p0}, Lcom/android/internal/widget/RecyclerView;->saveFocusInfo()V

    .line 3582
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    iget-boolean v3, v0, Lcom/android/internal/widget/RecyclerView$State;->mRunSimpleAnimations:Z

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/android/internal/widget/RecyclerView;->mItemsChanged:Z

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iput-boolean v1, v0, Lcom/android/internal/widget/RecyclerView$State;->mTrackOldChangeHolders:Z

    .line 3583
    iput-boolean v2, p0, Lcom/android/internal/widget/RecyclerView;->mItemsChanged:Z

    iput-boolean v2, p0, Lcom/android/internal/widget/RecyclerView;->mItemsAddedOrRemoved:Z

    .line 3584
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    iget-boolean v1, v0, Lcom/android/internal/widget/RecyclerView$State;->mRunPredictiveAnimations:Z

    iput-boolean v1, v0, Lcom/android/internal/widget/RecyclerView$State;->mInPreLayout:Z

    .line 3585
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    invoke-virtual {v1}, Lcom/android/internal/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    iput v1, v0, Lcom/android/internal/widget/RecyclerView$State;->mItemCount:I

    .line 3586
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mMinMaxLayoutPositions:[I

    invoke-direct {p0, v0}, Lcom/android/internal/widget/RecyclerView;->findMinMaxChildLayoutPositions([I)V

    .line 3588
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    iget-boolean v0, v0, Lcom/android/internal/widget/RecyclerView$State;->mRunSimpleAnimations:Z

    if-eqz v0, :cond_3

    .line 3590
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v0}, Lcom/android/internal/widget/ChildHelper;->getChildCount()I

    move-result v0

    .line 3591
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_3

    .line 3592
    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v3, v1}, Lcom/android/internal/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v3

    .line 3593
    .local v3, "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    invoke-virtual {v3}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v3}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->isInvalid()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    invoke-virtual {v4}, Lcom/android/internal/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v4

    if-nez v4, :cond_1

    .line 3594
    goto :goto_2

    .line 3596
    :cond_1
    iget-object v4, p0, Lcom/android/internal/widget/RecyclerView;->mItemAnimator:Lcom/android/internal/widget/RecyclerView$ItemAnimator;

    iget-object v5, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    .line 3598
    invoke-static {v3}, Lcom/android/internal/widget/RecyclerView$ItemAnimator;->buildAdapterChangeFlagsForAnimations(Lcom/android/internal/widget/RecyclerView$ViewHolder;)I

    move-result v6

    .line 3599
    invoke-virtual {v3}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->getUnmodifiedPayloads()Ljava/util/List;

    move-result-object v7

    .line 3597
    invoke-virtual {v4, v5, v3, v6, v7}, Lcom/android/internal/widget/RecyclerView$ItemAnimator;->recordPreLayoutInformation(Lcom/android/internal/widget/RecyclerView$State;Lcom/android/internal/widget/RecyclerView$ViewHolder;ILjava/util/List;)Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    move-result-object v4

    .line 3600
    .local v4, "animationInfo":Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    iget-object v5, p0, Lcom/android/internal/widget/RecyclerView;->mViewInfoStore:Lcom/android/internal/widget/ViewInfoStore;

    invoke-virtual {v5, v3, v4}, Lcom/android/internal/widget/ViewInfoStore;->addToPreLayout(Lcom/android/internal/widget/RecyclerView$ViewHolder;Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    .line 3601
    iget-object v5, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    iget-boolean v5, v5, Lcom/android/internal/widget/RecyclerView$State;->mTrackOldChangeHolders:Z

    if-eqz v5, :cond_2

    invoke-virtual {v3}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->isUpdated()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v3}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v5

    if-nez v5, :cond_2

    .line 3602
    invoke-virtual {v3}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v3}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->isInvalid()Z

    move-result v5

    if-nez v5, :cond_2

    .line 3603
    invoke-virtual {p0, v3}, Lcom/android/internal/widget/RecyclerView;->getChangedHolderKey(Lcom/android/internal/widget/RecyclerView$ViewHolder;)J

    move-result-wide v5

    .line 3611
    .local v5, "key":J
    iget-object v7, p0, Lcom/android/internal/widget/RecyclerView;->mViewInfoStore:Lcom/android/internal/widget/ViewInfoStore;

    invoke-virtual {v7, v5, v6, v3}, Lcom/android/internal/widget/ViewInfoStore;->addToOldChangeHolders(JLcom/android/internal/widget/RecyclerView$ViewHolder;)V

    .line 3591
    .end local v3    # "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .end local v4    # "animationInfo":Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    .end local v5    # "key":J
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3615
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_3
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    iget-boolean v0, v0, Lcom/android/internal/widget/RecyclerView$State;->mRunPredictiveAnimations:Z

    if-eqz v0, :cond_9

    .line 3622
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->saveOldPositions()V

    .line 3623
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    iget-boolean v0, v0, Lcom/android/internal/widget/RecyclerView$State;->mStructureChanged:Z

    .line 3624
    .local v0, "didStructureChange":Z
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    iput-boolean v2, v1, Lcom/android/internal/widget/RecyclerView$State;->mStructureChanged:Z

    .line 3626
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mRecycler:Lcom/android/internal/widget/RecyclerView$Recycler;

    iget-object v4, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    invoke-virtual {v1, v3, v4}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->onLayoutChildren(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;)V

    .line 3627
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    iput-boolean v0, v1, Lcom/android/internal/widget/RecyclerView$State;->mStructureChanged:Z

    .line 3629
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_3
    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v3}, Lcom/android/internal/widget/ChildHelper;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_8

    .line 3630
    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v3, v1}, Lcom/android/internal/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 3631
    .local v3, "child":Landroid/view/View;
    invoke-static {v3}, Lcom/android/internal/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v4

    .line 3632
    .local v4, "viewHolder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    invoke-virtual {v4}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 3633
    goto :goto_4

    .line 3635
    :cond_4
    iget-object v5, p0, Lcom/android/internal/widget/RecyclerView;->mViewInfoStore:Lcom/android/internal/widget/ViewInfoStore;

    invoke-virtual {v5, v4}, Lcom/android/internal/widget/ViewInfoStore;->isInPreLayout(Lcom/android/internal/widget/RecyclerView$ViewHolder;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 3636
    invoke-static {v4}, Lcom/android/internal/widget/RecyclerView$ItemAnimator;->buildAdapterChangeFlagsForAnimations(Lcom/android/internal/widget/RecyclerView$ViewHolder;)I

    move-result v5

    .line 3637
    .local v5, "flags":I
    const/16 v6, 0x2000

    .line 3638
    invoke-virtual {v4, v6}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->hasAnyOfTheFlags(I)Z

    move-result v6

    .line 3639
    .local v6, "wasHidden":Z
    if-nez v6, :cond_5

    .line 3640
    or-int/lit16 v5, v5, 0x1000

    .line 3642
    :cond_5
    iget-object v7, p0, Lcom/android/internal/widget/RecyclerView;->mItemAnimator:Lcom/android/internal/widget/RecyclerView$ItemAnimator;

    iget-object v8, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    .line 3643
    invoke-virtual {v4}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->getUnmodifiedPayloads()Ljava/util/List;

    move-result-object v9

    .line 3642
    invoke-virtual {v7, v8, v4, v5, v9}, Lcom/android/internal/widget/RecyclerView$ItemAnimator;->recordPreLayoutInformation(Lcom/android/internal/widget/RecyclerView$State;Lcom/android/internal/widget/RecyclerView$ViewHolder;ILjava/util/List;)Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    move-result-object v7

    .line 3644
    .local v7, "animationInfo":Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    if-eqz v6, :cond_6

    .line 3645
    invoke-virtual {p0, v4, v7}, Lcom/android/internal/widget/RecyclerView;->recordAnimationInfoIfBouncedHiddenView(Lcom/android/internal/widget/RecyclerView$ViewHolder;Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    goto :goto_4

    .line 3647
    :cond_6
    iget-object v8, p0, Lcom/android/internal/widget/RecyclerView;->mViewInfoStore:Lcom/android/internal/widget/ViewInfoStore;

    invoke-virtual {v8, v4, v7}, Lcom/android/internal/widget/ViewInfoStore;->addToAppearedInPreLayoutHolders(Lcom/android/internal/widget/RecyclerView$ViewHolder;Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    .line 3629
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "viewHolder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .end local v5    # "flags":I
    .end local v6    # "wasHidden":Z
    .end local v7    # "animationInfo":Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    :cond_7
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 3652
    .end local v1    # "i":I
    :cond_8
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->clearOldPositions()V

    .line 3653
    .end local v0    # "didStructureChange":Z
    goto :goto_5

    .line 3654
    :cond_9
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->clearOldPositions()V

    .line 3656
    :goto_5
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->onExitLayoutOrScroll()V

    .line 3657
    invoke-virtual {p0, v2}, Lcom/android/internal/widget/RecyclerView;->resumeRequestLayout(Z)V

    .line 3658
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    const/4 v1, 0x2

    iput v1, v0, Lcom/android/internal/widget/RecyclerView$State;->mLayoutStep:I

    .line 3659
    return-void
.end method

.method private blacklist dispatchLayoutStep2()V
    .locals 4

    .line 3666
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->eatRequestLayout()V

    .line 3667
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->onEnterLayoutOrScroll()V

    .line 3668
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/RecyclerView$State;->assertLayoutStep(I)V

    .line 3669
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mAdapterHelper:Lcom/android/internal/widget/AdapterHelper;

    invoke-virtual {v0}, Lcom/android/internal/widget/AdapterHelper;->consumeUpdatesInOnePass()V

    .line 3670
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    invoke-virtual {v1}, Lcom/android/internal/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    iput v1, v0, Lcom/android/internal/widget/RecyclerView$State;->mItemCount:I

    .line 3671
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    const/4 v1, 0x0

    iput v1, v0, Lcom/android/internal/widget/RecyclerView$State;->mDeletedInvisibleItemCountSincePreviousLayout:I

    .line 3674
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    iput-boolean v1, v0, Lcom/android/internal/widget/RecyclerView$State;->mInPreLayout:Z

    .line 3675
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mRecycler:Lcom/android/internal/widget/RecyclerView$Recycler;

    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->onLayoutChildren(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;)V

    .line 3677
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    iput-boolean v1, v0, Lcom/android/internal/widget/RecyclerView$State;->mStructureChanged:Z

    .line 3678
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mPendingSavedState:Lcom/android/internal/widget/RecyclerView$SavedState;

    .line 3681
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    iget-boolean v2, v0, Lcom/android/internal/widget/RecyclerView$State;->mRunSimpleAnimations:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mItemAnimator:Lcom/android/internal/widget/RecyclerView$ItemAnimator;

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    iput-boolean v2, v0, Lcom/android/internal/widget/RecyclerView$State;->mRunSimpleAnimations:Z

    .line 3682
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    const/4 v2, 0x4

    iput v2, v0, Lcom/android/internal/widget/RecyclerView$State;->mLayoutStep:I

    .line 3683
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->onExitLayoutOrScroll()V

    .line 3684
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/RecyclerView;->resumeRequestLayout(Z)V

    .line 3685
    return-void
.end method

.method private blacklist dispatchLayoutStep3()V
    .locals 19

    .line 3692
    move-object/from16 v7, p0

    iget-object v0, v7, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/RecyclerView$State;->assertLayoutStep(I)V

    .line 3693
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/RecyclerView;->eatRequestLayout()V

    .line 3694
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/RecyclerView;->onEnterLayoutOrScroll()V

    .line 3695
    iget-object v0, v7, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    const/4 v8, 0x1

    iput v8, v0, Lcom/android/internal/widget/RecyclerView$State;->mLayoutStep:I

    .line 3696
    iget-object v0, v7, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    iget-boolean v0, v0, Lcom/android/internal/widget/RecyclerView$State;->mRunSimpleAnimations:Z

    if-eqz v0, :cond_5

    .line 3700
    iget-object v0, v7, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v0}, Lcom/android/internal/widget/ChildHelper;->getChildCount()I

    move-result v0

    sub-int/2addr v0, v8

    move v9, v0

    .local v9, "i":I
    :goto_0
    if-ltz v9, :cond_4

    .line 3701
    iget-object v0, v7, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v0, v9}, Lcom/android/internal/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v10

    .line 3702
    .local v10, "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    invoke-virtual {v10}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3703
    goto :goto_2

    .line 3705
    :cond_0
    invoke-virtual {v7, v10}, Lcom/android/internal/widget/RecyclerView;->getChangedHolderKey(Lcom/android/internal/widget/RecyclerView$ViewHolder;)J

    move-result-wide v11

    .line 3706
    .local v11, "key":J
    iget-object v0, v7, Lcom/android/internal/widget/RecyclerView;->mItemAnimator:Lcom/android/internal/widget/RecyclerView$ItemAnimator;

    iget-object v1, v7, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    .line 3707
    invoke-virtual {v0, v1, v10}, Lcom/android/internal/widget/RecyclerView$ItemAnimator;->recordPostLayoutInformation(Lcom/android/internal/widget/RecyclerView$State;Lcom/android/internal/widget/RecyclerView$ViewHolder;)Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    move-result-object v13

    .line 3708
    .local v13, "animationInfo":Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    iget-object v0, v7, Lcom/android/internal/widget/RecyclerView;->mViewInfoStore:Lcom/android/internal/widget/ViewInfoStore;

    invoke-virtual {v0, v11, v12}, Lcom/android/internal/widget/ViewInfoStore;->getFromOldChangeHolders(J)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v14

    .line 3709
    .local v14, "oldChangeViewHolder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    if-eqz v14, :cond_3

    invoke-virtual {v14}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v0

    if-nez v0, :cond_3

    .line 3720
    iget-object v0, v7, Lcom/android/internal/widget/RecyclerView;->mViewInfoStore:Lcom/android/internal/widget/ViewInfoStore;

    invoke-virtual {v0, v14}, Lcom/android/internal/widget/ViewInfoStore;->isDisappearing(Lcom/android/internal/widget/RecyclerView$ViewHolder;)Z

    move-result v15

    .line 3722
    .local v15, "oldDisappearing":Z
    iget-object v0, v7, Lcom/android/internal/widget/RecyclerView;->mViewInfoStore:Lcom/android/internal/widget/ViewInfoStore;

    invoke-virtual {v0, v10}, Lcom/android/internal/widget/ViewInfoStore;->isDisappearing(Lcom/android/internal/widget/RecyclerView$ViewHolder;)Z

    move-result v16

    .line 3723
    .local v16, "newDisappearing":Z
    if-eqz v15, :cond_1

    if-ne v14, v10, :cond_1

    .line 3725
    iget-object v0, v7, Lcom/android/internal/widget/RecyclerView;->mViewInfoStore:Lcom/android/internal/widget/ViewInfoStore;

    invoke-virtual {v0, v10, v13}, Lcom/android/internal/widget/ViewInfoStore;->addToPostLayout(Lcom/android/internal/widget/RecyclerView$ViewHolder;Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    goto :goto_1

    .line 3727
    :cond_1
    iget-object v0, v7, Lcom/android/internal/widget/RecyclerView;->mViewInfoStore:Lcom/android/internal/widget/ViewInfoStore;

    invoke-virtual {v0, v14}, Lcom/android/internal/widget/ViewInfoStore;->popFromPreLayout(Lcom/android/internal/widget/RecyclerView$ViewHolder;)Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    move-result-object v17

    .line 3730
    .local v17, "preInfo":Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    iget-object v0, v7, Lcom/android/internal/widget/RecyclerView;->mViewInfoStore:Lcom/android/internal/widget/ViewInfoStore;

    invoke-virtual {v0, v10, v13}, Lcom/android/internal/widget/ViewInfoStore;->addToPostLayout(Lcom/android/internal/widget/RecyclerView$ViewHolder;Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    .line 3731
    iget-object v0, v7, Lcom/android/internal/widget/RecyclerView;->mViewInfoStore:Lcom/android/internal/widget/ViewInfoStore;

    invoke-virtual {v0, v10}, Lcom/android/internal/widget/ViewInfoStore;->popFromPostLayout(Lcom/android/internal/widget/RecyclerView$ViewHolder;)Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    move-result-object v18

    .line 3732
    .local v18, "postInfo":Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    if-nez v17, :cond_2

    .line 3733
    invoke-direct {v7, v11, v12, v10, v14}, Lcom/android/internal/widget/RecyclerView;->handleMissingPreInfoForChangeError(JLcom/android/internal/widget/RecyclerView$ViewHolder;Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    goto :goto_1

    .line 3735
    :cond_2
    move-object/from16 v0, p0

    move-object v1, v14

    move-object v2, v10

    move-object/from16 v3, v17

    move-object/from16 v4, v18

    move v5, v15

    move/from16 v6, v16

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/widget/RecyclerView;->animateChange(Lcom/android/internal/widget/RecyclerView$ViewHolder;Lcom/android/internal/widget/RecyclerView$ViewHolder;Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;ZZ)V

    .line 3739
    .end local v15    # "oldDisappearing":Z
    .end local v16    # "newDisappearing":Z
    .end local v17    # "preInfo":Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    .end local v18    # "postInfo":Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    :goto_1
    goto :goto_2

    .line 3740
    :cond_3
    iget-object v0, v7, Lcom/android/internal/widget/RecyclerView;->mViewInfoStore:Lcom/android/internal/widget/ViewInfoStore;

    invoke-virtual {v0, v10, v13}, Lcom/android/internal/widget/ViewInfoStore;->addToPostLayout(Lcom/android/internal/widget/RecyclerView$ViewHolder;Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    .line 3700
    .end local v10    # "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .end local v11    # "key":J
    .end local v13    # "animationInfo":Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    .end local v14    # "oldChangeViewHolder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    :goto_2
    add-int/lit8 v9, v9, -0x1

    goto :goto_0

    .line 3745
    .end local v9    # "i":I
    :cond_4
    iget-object v0, v7, Lcom/android/internal/widget/RecyclerView;->mViewInfoStore:Lcom/android/internal/widget/ViewInfoStore;

    iget-object v1, v7, Lcom/android/internal/widget/RecyclerView;->mViewInfoProcessCallback:Lcom/android/internal/widget/ViewInfoStore$ProcessCallback;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ViewInfoStore;->process(Lcom/android/internal/widget/ViewInfoStore$ProcessCallback;)V

    .line 3748
    :cond_5
    iget-object v0, v7, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    iget-object v1, v7, Lcom/android/internal/widget/RecyclerView;->mRecycler:Lcom/android/internal/widget/RecyclerView$Recycler;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->removeAndRecycleScrapInt(Lcom/android/internal/widget/RecyclerView$Recycler;)V

    .line 3749
    iget-object v0, v7, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    iget v1, v0, Lcom/android/internal/widget/RecyclerView$State;->mItemCount:I

    iput v1, v0, Lcom/android/internal/widget/RecyclerView$State;->mPreviousLayoutItemCount:I

    .line 3750
    const/4 v0, 0x0

    iput-boolean v0, v7, Lcom/android/internal/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    .line 3751
    iget-object v1, v7, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    iput-boolean v0, v1, Lcom/android/internal/widget/RecyclerView$State;->mRunSimpleAnimations:Z

    .line 3753
    iget-object v1, v7, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    iput-boolean v0, v1, Lcom/android/internal/widget/RecyclerView$State;->mRunPredictiveAnimations:Z

    .line 3754
    iget-object v1, v7, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    iput-boolean v0, v1, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRequestedSimpleAnimations:Z

    .line 3755
    iget-object v1, v7, Lcom/android/internal/widget/RecyclerView;->mRecycler:Lcom/android/internal/widget/RecyclerView$Recycler;

    iget-object v1, v1, Lcom/android/internal/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    if-eqz v1, :cond_6

    .line 3756
    iget-object v1, v7, Lcom/android/internal/widget/RecyclerView;->mRecycler:Lcom/android/internal/widget/RecyclerView$Recycler;

    iget-object v1, v1, Lcom/android/internal/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 3758
    :cond_6
    iget-object v1, v7, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    iget-boolean v1, v1, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mPrefetchMaxObservedInInitialPrefetch:Z

    if-eqz v1, :cond_7

    .line 3761
    iget-object v1, v7, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    iput v0, v1, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mPrefetchMaxCountObserved:I

    .line 3762
    iget-object v1, v7, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    iput-boolean v0, v1, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mPrefetchMaxObservedInInitialPrefetch:Z

    .line 3763
    iget-object v1, v7, Lcom/android/internal/widget/RecyclerView;->mRecycler:Lcom/android/internal/widget/RecyclerView$Recycler;

    invoke-virtual {v1}, Lcom/android/internal/widget/RecyclerView$Recycler;->updateViewCacheSize()V

    .line 3766
    :cond_7
    iget-object v1, v7, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    iget-object v2, v7, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->onLayoutCompleted(Lcom/android/internal/widget/RecyclerView$State;)V

    .line 3767
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/RecyclerView;->onExitLayoutOrScroll()V

    .line 3768
    invoke-virtual {v7, v0}, Lcom/android/internal/widget/RecyclerView;->resumeRequestLayout(Z)V

    .line 3769
    iget-object v1, v7, Lcom/android/internal/widget/RecyclerView;->mViewInfoStore:Lcom/android/internal/widget/ViewInfoStore;

    invoke-virtual {v1}, Lcom/android/internal/widget/ViewInfoStore;->clear()V

    .line 3770
    iget-object v1, v7, Lcom/android/internal/widget/RecyclerView;->mMinMaxLayoutPositions:[I

    aget v2, v1, v0

    aget v1, v1, v8

    invoke-direct {v7, v2, v1}, Lcom/android/internal/widget/RecyclerView;->didChildRangeChange(II)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 3771
    invoke-virtual {v7, v0, v0}, Lcom/android/internal/widget/RecyclerView;->dispatchOnScrolled(II)V

    .line 3773
    :cond_8
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/RecyclerView;->recoverFocusFromState()V

    .line 3774
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/RecyclerView;->resetFocusInfo()V

    .line 3775
    return-void
.end method

.method private blacklist dispatchOnItemTouch(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "e"    # Landroid/view/MotionEvent;

    .line 2630
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 2631
    .local v0, "action":I
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mActiveOnItemTouchListener:Lcom/android/internal/widget/RecyclerView$OnItemTouchListener;

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    .line 2632
    const/4 v3, 0x0

    if-nez v0, :cond_0

    .line 2634
    iput-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mActiveOnItemTouchListener:Lcom/android/internal/widget/RecyclerView$OnItemTouchListener;

    goto :goto_0

    .line 2636
    :cond_0
    invoke-interface {v1, p0, p1}, Lcom/android/internal/widget/RecyclerView$OnItemTouchListener;->onTouchEvent(Lcom/android/internal/widget/RecyclerView;Landroid/view/MotionEvent;)V

    .line 2637
    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    if-ne v0, v2, :cond_2

    .line 2639
    :cond_1
    iput-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mActiveOnItemTouchListener:Lcom/android/internal/widget/RecyclerView$OnItemTouchListener;

    .line 2641
    :cond_2
    return v2

    .line 2647
    :cond_3
    :goto_0
    if-eqz v0, :cond_5

    .line 2648
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2649
    .local v1, "listenerCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v1, :cond_5

    .line 2650
    iget-object v4, p0, Lcom/android/internal/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/widget/RecyclerView$OnItemTouchListener;

    .line 2651
    .local v4, "listener":Lcom/android/internal/widget/RecyclerView$OnItemTouchListener;
    invoke-interface {v4, p0, p1}, Lcom/android/internal/widget/RecyclerView$OnItemTouchListener;->onInterceptTouchEvent(Lcom/android/internal/widget/RecyclerView;Landroid/view/MotionEvent;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2652
    iput-object v4, p0, Lcom/android/internal/widget/RecyclerView;->mActiveOnItemTouchListener:Lcom/android/internal/widget/RecyclerView$OnItemTouchListener;

    .line 2653
    return v2

    .line 2649
    .end local v4    # "listener":Lcom/android/internal/widget/RecyclerView$OnItemTouchListener;
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2657
    .end local v1    # "listenerCount":I
    .end local v3    # "i":I
    :cond_5
    const/4 v1, 0x0

    return v1
.end method

.method private blacklist dispatchOnItemTouchIntercept(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "e"    # Landroid/view/MotionEvent;

    .line 2613
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 2614
    .local v0, "action":I
    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    if-nez v0, :cond_1

    .line 2615
    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mActiveOnItemTouchListener:Lcom/android/internal/widget/RecyclerView$OnItemTouchListener;

    .line 2618
    :cond_1
    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2619
    .local v2, "listenerCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_3

    .line 2620
    iget-object v4, p0, Lcom/android/internal/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/widget/RecyclerView$OnItemTouchListener;

    .line 2621
    .local v4, "listener":Lcom/android/internal/widget/RecyclerView$OnItemTouchListener;
    invoke-interface {v4, p0, p1}, Lcom/android/internal/widget/RecyclerView$OnItemTouchListener;->onInterceptTouchEvent(Lcom/android/internal/widget/RecyclerView;Landroid/view/MotionEvent;)Z

    move-result v5

    if-eqz v5, :cond_2

    if-eq v0, v1, :cond_2

    .line 2622
    iput-object v4, p0, Lcom/android/internal/widget/RecyclerView;->mActiveOnItemTouchListener:Lcom/android/internal/widget/RecyclerView$OnItemTouchListener;

    .line 2623
    const/4 v1, 0x1

    return v1

    .line 2619
    .end local v4    # "listener":Lcom/android/internal/widget/RecyclerView$OnItemTouchListener;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2626
    .end local v3    # "i":I
    :cond_3
    const/4 v1, 0x0

    return v1
.end method

.method private blacklist findMinMaxChildLayoutPositions([I)V
    .locals 8
    .param p1, "into"    # [I

    .line 3839
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v0}, Lcom/android/internal/widget/ChildHelper;->getChildCount()I

    move-result v0

    .line 3840
    .local v0, "count":I
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 3841
    const/4 v3, -0x1

    aput v3, p1, v1

    .line 3842
    aput v3, p1, v2

    .line 3843
    return-void

    .line 3845
    :cond_0
    const v3, 0x7fffffff

    .line 3846
    .local v3, "minPositionPreLayout":I
    const/high16 v4, -0x80000000

    .line 3847
    .local v4, "maxPositionPreLayout":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v0, :cond_4

    .line 3848
    iget-object v6, p0, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v6, v5}, Lcom/android/internal/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v6

    .line 3849
    .local v6, "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    invoke-virtual {v6}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 3850
    goto :goto_1

    .line 3852
    :cond_1
    invoke-virtual {v6}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v7

    .line 3853
    .local v7, "pos":I
    if-ge v7, v3, :cond_2

    .line 3854
    move v3, v7

    .line 3856
    :cond_2
    if-le v7, v4, :cond_3

    .line 3857
    move v4, v7

    .line 3847
    .end local v6    # "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .end local v7    # "pos":I
    :cond_3
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 3860
    .end local v5    # "i":I
    :cond_4
    aput v3, p1, v1

    .line 3861
    aput v4, p1, v2

    .line 3862
    return-void
.end method

.method static blacklist findNestedRecyclerView(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView;
    .locals 6
    .param p0, "view"    # Landroid/view/View;

    .line 5251
    instance-of v0, p0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 5252
    return-object v1

    .line 5254
    :cond_0
    instance-of v0, p0, Lcom/android/internal/widget/RecyclerView;

    if-eqz v0, :cond_1

    .line 5255
    move-object v0, p0

    check-cast v0, Lcom/android/internal/widget/RecyclerView;

    return-object v0

    .line 5257
    :cond_1
    move-object v0, p0

    check-cast v0, Landroid/view/ViewGroup;

    .line 5258
    .local v0, "parent":Landroid/view/ViewGroup;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 5259
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_3

    .line 5260
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 5261
    .local v4, "child":Landroid/view/View;
    invoke-static {v4}, Lcom/android/internal/widget/RecyclerView;->findNestedRecyclerView(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView;

    move-result-object v5

    .line 5262
    .local v5, "descendant":Lcom/android/internal/widget/RecyclerView;
    if-eqz v5, :cond_2

    .line 5263
    return-object v5

    .line 5259
    .end local v4    # "child":Landroid/view/View;
    .end local v5    # "descendant":Lcom/android/internal/widget/RecyclerView;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 5266
    .end local v3    # "i":I
    :cond_3
    return-object v1
.end method

.method private blacklist findNextViewToFocus()Landroid/view/View;
    .locals 6

    .line 3455
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    iget v0, v0, Lcom/android/internal/widget/RecyclerView$State;->mFocusedItemPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    iget v0, v0, Lcom/android/internal/widget/RecyclerView$State;->mFocusedItemPosition:I

    goto :goto_0

    .line 3456
    :cond_0
    const/4 v0, 0x0

    :goto_0
    nop

    .line 3458
    .local v0, "startFocusSearchIndex":I
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    invoke-virtual {v1}, Lcom/android/internal/widget/RecyclerView$State;->getItemCount()I

    move-result v1

    .line 3459
    .local v1, "itemCount":I
    move v2, v0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_3

    .line 3460
    invoke-virtual {p0, v2}, Lcom/android/internal/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v3

    .line 3461
    .local v3, "nextFocus":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    if-nez v3, :cond_1

    .line 3462
    goto :goto_2

    .line 3464
    :cond_1
    iget-object v4, v3, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->hasFocusable()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 3465
    iget-object v4, v3, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    return-object v4

    .line 3459
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 3468
    .end local v2    # "i":I
    .end local v3    # "nextFocus":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    :cond_3
    :goto_2
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 3469
    .local v2, "limit":I
    add-int/lit8 v3, v2, -0x1

    .local v3, "i":I
    :goto_3
    const/4 v4, 0x0

    if-ltz v3, :cond_6

    .line 3470
    invoke-virtual {p0, v3}, Lcom/android/internal/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v5

    .line 3471
    .local v5, "nextFocus":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    if-nez v5, :cond_4

    .line 3472
    return-object v4

    .line 3474
    :cond_4
    iget-object v4, v5, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->hasFocusable()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 3475
    iget-object v4, v5, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    return-object v4

    .line 3469
    :cond_5
    add-int/lit8 v3, v3, -0x1

    goto :goto_3

    .line 3478
    .end local v3    # "i":I
    .end local v5    # "nextFocus":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    :cond_6
    return-object v4
.end method

.method static blacklist getChildViewHolderInt(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .locals 1
    .param p0, "child"    # Landroid/view/View;

    .line 4361
    if-nez p0, :cond_0

    .line 4362
    const/4 v0, 0x0

    return-object v0

    .line 4364
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/RecyclerView$LayoutParams;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView$LayoutParams;->mViewHolder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    return-object v0
.end method

.method static blacklist getDecoratedBoundsWithMarginsInt(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 7
    .param p0, "view"    # Landroid/view/View;
    .param p1, "outBounds"    # Landroid/graphics/Rect;

    .line 4636
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/RecyclerView$LayoutParams;

    .line 4637
    .local v0, "lp":Lcom/android/internal/widget/RecyclerView$LayoutParams;
    iget-object v1, v0, Lcom/android/internal/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    .line 4638
    .local v1, "insets":Landroid/graphics/Rect;
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v2

    iget v3, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iget v3, v0, Lcom/android/internal/widget/RecyclerView$LayoutParams;->leftMargin:I

    sub-int/2addr v2, v3

    .line 4639
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v3

    iget v4, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    iget v4, v0, Lcom/android/internal/widget/RecyclerView$LayoutParams;->topMargin:I

    sub-int/2addr v3, v4

    .line 4640
    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v4

    iget v5, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    iget v5, v0, Lcom/android/internal/widget/RecyclerView$LayoutParams;->rightMargin:I

    add-int/2addr v4, v5

    .line 4641
    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v5

    iget v6, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v6

    iget v6, v0, Lcom/android/internal/widget/RecyclerView$LayoutParams;->bottomMargin:I

    add-int/2addr v5, v6

    .line 4638
    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 4642
    return-void
.end method

.method private blacklist getDeepestFocusedViewWithId(Landroid/view/View;)I
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .line 3556
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 3557
    .local v0, "lastKnownId":I
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->isFocused()Z

    move-result v1

    if-nez v1, :cond_1

    instance-of v1, p1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3558
    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object p1

    .line 3559
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 3560
    .local v1, "id":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 3561
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 3563
    .end local v1    # "id":I
    :cond_0
    goto :goto_0

    .line 3564
    :cond_1
    return v0
.end method

.method private blacklist getFullClassName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "className"    # Ljava/lang/String;

    .line 674
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2e

    if-ne v0, v1, :cond_0

    .line 675
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 677
    :cond_0
    const-string v0, "."

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 678
    return-object p2

    .line 680
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v2}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getScrollFactor()F
    .locals 4

    .line 3082
    iget v0, p0, Lcom/android/internal/widget/RecyclerView;->mScrollFactor:F

    const/4 v1, 0x1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 3083
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 3084
    .local v0, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x101004d

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3086
    nop

    .line 3087
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 3086
    invoke-virtual {v0, v1}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/RecyclerView;->mScrollFactor:F

    goto :goto_0

    .line 3089
    :cond_0
    const/4 v1, 0x0

    return v1

    .line 3092
    .end local v0    # "outValue":Landroid/util/TypedValue;
    :cond_1
    :goto_0
    iget v0, p0, Lcom/android/internal/widget/RecyclerView;->mScrollFactor:F

    return v0
.end method

.method private blacklist handleMissingPreInfoForChangeError(JLcom/android/internal/widget/RecyclerView$ViewHolder;Lcom/android/internal/widget/RecyclerView$ViewHolder;)V
    .locals 10
    .param p1, "key"    # J
    .param p3, "holder"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .param p4, "oldChangeViewHolder"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 3795
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v0}, Lcom/android/internal/widget/ChildHelper;->getChildCount()I

    move-result v0

    .line 3796
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 3797
    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v2, v1}, Lcom/android/internal/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 3798
    .local v2, "view":Landroid/view/View;
    invoke-static {v2}, Lcom/android/internal/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v3

    .line 3799
    .local v3, "other":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    if-ne v3, p3, :cond_0

    .line 3800
    goto :goto_1

    .line 3802
    :cond_0
    invoke-virtual {p0, v3}, Lcom/android/internal/widget/RecyclerView;->getChangedHolderKey(Lcom/android/internal/widget/RecyclerView$ViewHolder;)J

    move-result-wide v4

    .line 3803
    .local v4, "otherKey":J
    cmp-long v6, v4, p1

    if-nez v6, :cond_2

    .line 3804
    iget-object v6, p0, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    const-string v7, " \n View Holder 2:"

    if-eqz v6, :cond_1

    invoke-virtual {v6}, Lcom/android/internal/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 3805
    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Two different ViewHolders have the same stable ID. Stable IDs in your adapter MUST BE unique and SHOULD NOT change.\n ViewHolder 1:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 3809
    :cond_1
    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Two different ViewHolders have the same change ID. This might happen due to inconsistent Adapter update events or if the LayoutManager lays out the same View multiple times.\n ViewHolder 1:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 3796
    .end local v2    # "view":Landroid/view/View;
    .end local v3    # "other":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .end local v4    # "otherKey":J
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3817
    .end local v1    # "i":I
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Problem while matching changed view holders with the newones. The pre-layout information for the change holder "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cannot be found but it is necessary for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RecyclerView"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3820
    return-void
.end method

.method private blacklist hasUpdatedView()Z
    .locals 4

    .line 1630
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v0}, Lcom/android/internal/widget/ChildHelper;->getChildCount()I

    move-result v0

    .line 1631
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 1632
    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v2, v1}, Lcom/android/internal/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v2

    .line 1633
    .local v2, "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1634
    goto :goto_1

    .line 1636
    :cond_0
    invoke-virtual {v2}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->isUpdated()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1637
    const/4 v3, 0x1

    return v3

    .line 1631
    .end local v2    # "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1640
    .end local v1    # "i":I
    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method private blacklist initChildrenHelper()V
    .locals 2

    .line 684
    new-instance v0, Lcom/android/internal/widget/ChildHelper;

    new-instance v1, Lcom/android/internal/widget/RecyclerView$5;

    invoke-direct {v1, p0}, Lcom/android/internal/widget/RecyclerView$5;-><init>(Lcom/android/internal/widget/RecyclerView;)V

    invoke-direct {v0, v1}, Lcom/android/internal/widget/ChildHelper;-><init>(Lcom/android/internal/widget/ChildHelper$Callback;)V

    iput-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    .line 781
    return-void
.end method

.method private blacklist isPreferredNextFocus(Landroid/view/View;Landroid/view/View;I)Z
    .locals 5
    .param p1, "focused"    # Landroid/view/View;
    .param p2, "next"    # Landroid/view/View;
    .param p3, "direction"    # I

    .line 2373
    const/4 v0, 0x0

    if-eqz p2, :cond_9

    if-ne p2, p0, :cond_0

    goto :goto_3

    .line 2376
    :cond_0
    const/4 v1, 0x1

    if-nez p1, :cond_1

    .line 2377
    return v1

    .line 2380
    :cond_1
    const/4 v2, 0x2

    if-eq p3, v2, :cond_3

    if-ne p3, v1, :cond_2

    goto :goto_0

    .line 2393
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/widget/RecyclerView;->isPreferredNextFocusAbsolute(Landroid/view/View;Landroid/view/View;I)Z

    move-result v0

    return v0

    .line 2381
    :cond_3
    :goto_0
    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {v3}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getLayoutDirection()I

    move-result v3

    if-ne v3, v1, :cond_4

    move v3, v1

    goto :goto_1

    :cond_4
    move v3, v0

    .line 2382
    .local v3, "rtl":Z
    :goto_1
    if-ne p3, v2, :cond_5

    move v0, v1

    :cond_5
    xor-int/2addr v0, v3

    if-eqz v0, :cond_6

    .line 2383
    const/16 v0, 0x42

    goto :goto_2

    :cond_6
    const/16 v0, 0x11

    .line 2384
    .local v0, "absHorizontal":I
    :goto_2
    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/widget/RecyclerView;->isPreferredNextFocusAbsolute(Landroid/view/View;Landroid/view/View;I)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 2385
    return v1

    .line 2387
    :cond_7
    if-ne p3, v2, :cond_8

    .line 2388
    const/16 v1, 0x82

    invoke-direct {p0, p1, p2, v1}, Lcom/android/internal/widget/RecyclerView;->isPreferredNextFocusAbsolute(Landroid/view/View;Landroid/view/View;I)Z

    move-result v1

    return v1

    .line 2390
    :cond_8
    const/16 v1, 0x21

    invoke-direct {p0, p1, p2, v1}, Lcom/android/internal/widget/RecyclerView;->isPreferredNextFocusAbsolute(Landroid/view/View;Landroid/view/View;I)Z

    move-result v1

    return v1

    .line 2374
    .end local v0    # "absHorizontal":I
    .end local v3    # "rtl":Z
    :cond_9
    :goto_3
    return v0
.end method

.method private blacklist isPreferredNextFocusAbsolute(Landroid/view/View;Landroid/view/View;I)Z
    .locals 4
    .param p1, "focused"    # Landroid/view/View;
    .param p2, "next"    # Landroid/view/View;
    .param p3, "direction"    # I

    .line 2402
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 2403
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 2404
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/widget/RecyclerView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2405
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    invoke-virtual {p0, p2, v0}, Lcom/android/internal/widget/RecyclerView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2406
    const/4 v0, 0x1

    sparse-switch p3, :sswitch_data_0

    .line 2424
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "direction must be absolute. received:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2420
    :sswitch_0
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    if-lt v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    if-gt v1, v2, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    if-ge v1, v2, :cond_1

    move v3, v0

    :cond_1
    return v3

    .line 2412
    :sswitch_1
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    if-lt v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    if-gt v1, v2, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    if-ge v1, v2, :cond_3

    move v3, v0

    :cond_3
    return v3

    .line 2416
    :sswitch_2
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    if-gt v1, v2, :cond_4

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    if-lt v1, v2, :cond_5

    :cond_4
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    if-le v1, v2, :cond_5

    move v3, v0

    :cond_5
    return v3

    .line 2408
    :sswitch_3
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    if-gt v1, v2, :cond_6

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    if-lt v1, v2, :cond_7

    :cond_6
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    if-le v1, v2, :cond_7

    move v3, v0

    :cond_7
    return v3

    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_3
        0x21 -> :sswitch_2
        0x42 -> :sswitch_1
        0x82 -> :sswitch_0
    .end sparse-switch
.end method

.method private blacklist onPointerUp(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "e"    # Landroid/view/MotionEvent;

    .line 3034
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 3035
    .local v0, "actionIndex":I
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iget v2, p0, Lcom/android/internal/widget/RecyclerView;->mScrollPointerId:I

    if-ne v1, v2, :cond_1

    .line 3037
    if-nez v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 3038
    .local v1, "newIndex":I
    :goto_0
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/RecyclerView;->mScrollPointerId:I

    .line 3039
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/android/internal/widget/RecyclerView;->mLastTouchX:I

    iput v2, p0, Lcom/android/internal/widget/RecyclerView;->mInitialTouchX:I

    .line 3040
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/android/internal/widget/RecyclerView;->mLastTouchY:I

    iput v2, p0, Lcom/android/internal/widget/RecyclerView;->mInitialTouchY:I

    .line 3042
    .end local v1    # "newIndex":I
    :cond_1
    return-void
.end method

.method private blacklist predictiveItemAnimationsEnabled()Z
    .locals 1

    .line 3326
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mItemAnimator:Lcom/android/internal/widget/RecyclerView$ItemAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->supportsPredictiveItemAnimations()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private blacklist processAdapterUpdatesAndSetAnimationFlags()V
    .locals 5

    .line 3336
    iget-boolean v0, p0, Lcom/android/internal/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-eqz v0, :cond_0

    .line 3339
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mAdapterHelper:Lcom/android/internal/widget/AdapterHelper;

    invoke-virtual {v0}, Lcom/android/internal/widget/AdapterHelper;->reset()V

    .line 3340
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->onItemsChanged(Lcom/android/internal/widget/RecyclerView;)V

    .line 3345
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/widget/RecyclerView;->predictiveItemAnimationsEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3346
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mAdapterHelper:Lcom/android/internal/widget/AdapterHelper;

    invoke-virtual {v0}, Lcom/android/internal/widget/AdapterHelper;->preProcess()V

    goto :goto_0

    .line 3348
    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mAdapterHelper:Lcom/android/internal/widget/AdapterHelper;

    invoke-virtual {v0}, Lcom/android/internal/widget/AdapterHelper;->consumeUpdatesInOnePass()V

    .line 3350
    :goto_0
    iget-boolean v0, p0, Lcom/android/internal/widget/RecyclerView;->mItemsAddedOrRemoved:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/internal/widget/RecyclerView;->mItemsChanged:Z

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_2

    :cond_3
    :goto_1
    move v0, v2

    .line 3351
    .local v0, "animationTypeSupported":Z
    :goto_2
    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    iget-boolean v4, p0, Lcom/android/internal/widget/RecyclerView;->mFirstLayoutComplete:Z

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/internal/widget/RecyclerView;->mItemAnimator:Lcom/android/internal/widget/RecyclerView$ItemAnimator;

    if-eqz v4, :cond_6

    iget-boolean v4, p0, Lcom/android/internal/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-nez v4, :cond_4

    if-nez v0, :cond_4

    iget-object v4, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    iget-boolean v4, v4, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRequestedSimpleAnimations:Z

    if-eqz v4, :cond_6

    :cond_4
    iget-boolean v4, p0, Lcom/android/internal/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    .line 3357
    invoke-virtual {v4}, Lcom/android/internal/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_5
    move v4, v2

    goto :goto_3

    :cond_6
    move v4, v1

    :goto_3
    iput-boolean v4, v3, Lcom/android/internal/widget/RecyclerView$State;->mRunSimpleAnimations:Z

    .line 3358
    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    iget-boolean v4, v3, Lcom/android/internal/widget/RecyclerView$State;->mRunSimpleAnimations:Z

    if-eqz v4, :cond_7

    if-eqz v0, :cond_7

    iget-boolean v4, p0, Lcom/android/internal/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-nez v4, :cond_7

    .line 3361
    invoke-direct {p0}, Lcom/android/internal/widget/RecyclerView;->predictiveItemAnimationsEnabled()Z

    move-result v4

    if-eqz v4, :cond_7

    move v1, v2

    goto :goto_4

    :cond_7
    nop

    :goto_4
    iput-boolean v1, v3, Lcom/android/internal/widget/RecyclerView$State;->mRunPredictiveAnimations:Z

    .line 3362
    return-void
.end method

.method private blacklist pullGlows(FFFF)V
    .locals 6
    .param p1, "x"    # F
    .param p2, "overscrollX"    # F
    .param p3, "y"    # F
    .param p4, "overscrollY"    # F

    .line 2117
    const/4 v0, 0x0

    .line 2118
    .local v0, "invalidate":Z
    const/4 v1, 0x0

    cmpg-float v2, p2, v1

    const/high16 v3, 0x3f800000    # 1.0f

    if-gez v2, :cond_0

    .line 2119
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->ensureLeftGlow()V

    .line 2120
    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    neg-float v4, p2

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float v5, p3, v5

    sub-float v5, v3, v5

    invoke-virtual {v2, v4, v5}, Landroid/widget/EdgeEffect;->onPull(FF)V

    .line 2121
    const/4 v0, 0x1

    goto :goto_0

    .line 2122
    :cond_0
    cmpl-float v2, p2, v1

    if-lez v2, :cond_1

    .line 2123
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->ensureRightGlow()V

    .line 2124
    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float v4, p2, v4

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float v5, p3, v5

    invoke-virtual {v2, v4, v5}, Landroid/widget/EdgeEffect;->onPull(FF)V

    .line 2125
    const/4 v0, 0x1

    .line 2128
    :cond_1
    :goto_0
    cmpg-float v2, p4, v1

    if-gez v2, :cond_2

    .line 2129
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->ensureTopGlow()V

    .line 2130
    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    neg-float v3, p4

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float v4, p1, v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/EdgeEffect;->onPull(FF)V

    .line 2131
    const/4 v0, 0x1

    goto :goto_1

    .line 2132
    :cond_2
    cmpl-float v2, p4, v1

    if-lez v2, :cond_3

    .line 2133
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->ensureBottomGlow()V

    .line 2134
    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float v4, p4, v4

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float v5, p1, v5

    sub-float/2addr v3, v5

    invoke-virtual {v2, v4, v3}, Landroid/widget/EdgeEffect;->onPull(FF)V

    .line 2135
    const/4 v0, 0x1

    .line 2138
    :cond_3
    :goto_1
    if-nez v0, :cond_4

    cmpl-float v2, p2, v1

    if-nez v2, :cond_4

    cmpl-float v1, p4, v1

    if-eqz v1, :cond_5

    .line 2139
    :cond_4
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->postInvalidateOnAnimation()V

    .line 2141
    :cond_5
    return-void
.end method

.method private blacklist recoverFocusFromState()V
    .locals 7

    .line 3482
    iget-boolean v0, p0, Lcom/android/internal/widget/RecyclerView;->mPreserveFocusAfterLayout:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 3483
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getDescendantFocusability()I

    move-result v0

    const/high16 v1, 0x60000

    if-eq v0, v1, :cond_a

    .line 3484
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getDescendantFocusability()I

    move-result v0

    const/high16 v1, 0x20000

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 3492
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->isFocused()Z

    move-result v0

    if-nez v0, :cond_3

    .line 3493
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    .line 3494
    .local v0, "focusedChild":Landroid/view/View;
    sget-boolean v1, Lcom/android/internal/widget/RecyclerView;->IGNORE_DETACHED_FOCUSED_CHILD:Z

    if-eqz v1, :cond_2

    .line 3495
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_2

    .line 3507
    :cond_1
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v1}, Lcom/android/internal/widget/ChildHelper;->getChildCount()I

    move-result v1

    if-nez v1, :cond_3

    .line 3510
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->requestFocus()Z

    .line 3511
    return-void

    .line 3513
    :cond_2
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/ChildHelper;->isHidden(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 3516
    return-void

    .line 3519
    .end local v0    # "focusedChild":Landroid/view/View;
    :cond_3
    const/4 v0, 0x0

    .line 3523
    .local v0, "focusTarget":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    iget-wide v1, v1, Lcom/android/internal/widget/RecyclerView$State;->mFocusedItemId:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    invoke-virtual {v1}, Lcom/android/internal/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3524
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    iget-wide v1, v1, Lcom/android/internal/widget/RecyclerView$State;->mFocusedItemId:J

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/widget/RecyclerView;->findViewHolderForItemId(J)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 3526
    :cond_4
    const/4 v1, 0x0

    .line 3527
    .local v1, "viewToFocus":Landroid/view/View;
    if-eqz v0, :cond_6

    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    iget-object v5, v0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2, v5}, Lcom/android/internal/widget/ChildHelper;->isHidden(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, v0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 3528
    invoke-virtual {v2}, Landroid/view/View;->hasFocusable()Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_0

    .line 3541
    :cond_5
    iget-object v1, v0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    goto :goto_1

    .line 3529
    :cond_6
    :goto_0
    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v2}, Lcom/android/internal/widget/ChildHelper;->getChildCount()I

    move-result v2

    if-lez v2, :cond_7

    .line 3536
    invoke-direct {p0}, Lcom/android/internal/widget/RecyclerView;->findNextViewToFocus()Landroid/view/View;

    move-result-object v1

    .line 3544
    :cond_7
    :goto_1
    if-eqz v1, :cond_9

    .line 3545
    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    iget v2, v2, Lcom/android/internal/widget/RecyclerView$State;->mFocusedSubChildId:I

    int-to-long v5, v2

    cmp-long v2, v5, v3

    if-eqz v2, :cond_8

    .line 3546
    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    iget v2, v2, Lcom/android/internal/widget/RecyclerView$State;->mFocusedSubChildId:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 3547
    .local v2, "child":Landroid/view/View;
    if-eqz v2, :cond_8

    invoke-virtual {v2}, Landroid/view/View;->isFocusable()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 3548
    move-object v1, v2

    .line 3551
    .end local v2    # "child":Landroid/view/View;
    :cond_8
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 3553
    :cond_9
    return-void

    .line 3489
    .end local v0    # "focusTarget":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .end local v1    # "viewToFocus":Landroid/view/View;
    :cond_a
    :goto_2
    return-void
.end method

.method private blacklist releaseGlows()V
    .locals 2

    .line 2144
    const/4 v0, 0x0

    .line 2145
    .local v0, "needsInvalidate":Z
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    if-eqz v1, :cond_0

    .line 2146
    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 2147
    const/4 v0, 0x1

    .line 2149
    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    if-eqz v1, :cond_1

    .line 2150
    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 2151
    const/4 v0, 0x1

    .line 2153
    :cond_1
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    if-eqz v1, :cond_2

    .line 2154
    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 2155
    const/4 v0, 0x1

    .line 2157
    :cond_2
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    if-eqz v1, :cond_3

    .line 2158
    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 2159
    const/4 v0, 0x1

    .line 2161
    :cond_3
    if-eqz v0, :cond_4

    .line 2162
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->postInvalidateOnAnimation()V

    .line 2164
    :cond_4
    return-void
.end method

.method private blacklist releaseHorizontalGlow(IF)I
    .locals 7
    .param p1, "deltaX"    # I
    .param p2, "y"    # F

    .line 2966
    const/4 v0, 0x0

    .line 2967
    .local v0, "consumed":F
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float v1, p2, v1

    .line 2968
    .local v1, "displacement":F
    int-to-float v2, p1

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 2969
    .local v2, "pullDistance":F
    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->getDistance()F

    move-result v3

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_0

    .line 2970
    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    neg-float v5, v2

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float/2addr v6, v1

    invoke-virtual {v3, v5, v6}, Landroid/widget/EdgeEffect;->onPullDistance(FF)F

    move-result v3

    neg-float v0, v3

    .line 2971
    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->getDistance()F

    move-result v3

    cmpl-float v3, v3, v4

    if-nez v3, :cond_1

    .line 2972
    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->onRelease()V

    goto :goto_0

    .line 2974
    :cond_0
    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->getDistance()F

    move-result v3

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_1

    .line 2975
    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v3, v2, v1}, Landroid/widget/EdgeEffect;->onPullDistance(FF)F

    move-result v0

    .line 2976
    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->getDistance()F

    move-result v3

    cmpl-float v3, v3, v4

    if-nez v3, :cond_1

    .line 2977
    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 2980
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 2981
    .local v3, "pixelsConsumed":I
    if-eqz v3, :cond_2

    .line 2982
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->invalidate()V

    .line 2984
    :cond_2
    return v3
.end method

.method private blacklist releaseVerticalGlow(IF)I
    .locals 6
    .param p1, "deltaY"    # I
    .param p2, "x"    # F

    .line 2999
    const/4 v0, 0x0

    .line 3000
    .local v0, "consumed":F
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float v1, p2, v1

    .line 3001
    .local v1, "displacement":F
    int-to-float v2, p1

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 3002
    .local v2, "pullDistance":F
    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->getDistance()F

    move-result v3

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_0

    .line 3003
    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    neg-float v5, v2

    invoke-virtual {v3, v5, v1}, Landroid/widget/EdgeEffect;->onPullDistance(FF)F

    move-result v3

    neg-float v0, v3

    .line 3004
    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->getDistance()F

    move-result v3

    cmpl-float v3, v3, v4

    if-nez v3, :cond_1

    .line 3005
    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->onRelease()V

    goto :goto_0

    .line 3007
    :cond_0
    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->getDistance()F

    move-result v3

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_1

    .line 3008
    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float/2addr v5, v1

    invoke-virtual {v3, v2, v5}, Landroid/widget/EdgeEffect;->onPullDistance(FF)F

    move-result v0

    .line 3009
    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->getDistance()F

    move-result v3

    cmpl-float v3, v3, v4

    if-nez v3, :cond_1

    .line 3010
    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 3013
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 3014
    .local v3, "pixelsConsumed":I
    if-eqz v3, :cond_2

    .line 3015
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->invalidate()V

    .line 3017
    :cond_2
    return v3
.end method

.method private blacklist resetFocusInfo()V
    .locals 3

    .line 3440
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    const-wide/16 v1, -0x1

    iput-wide v1, v0, Lcom/android/internal/widget/RecyclerView$State;->mFocusedItemId:J

    .line 3441
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    const/4 v1, -0x1

    iput v1, v0, Lcom/android/internal/widget/RecyclerView$State;->mFocusedItemPosition:I

    .line 3442
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    iput v1, v0, Lcom/android/internal/widget/RecyclerView$State;->mFocusedSubChildId:I

    .line 3443
    return-void
.end method

.method private blacklist resetTouch()V
    .locals 1

    .line 3021
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 3022
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 3024
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->stopNestedScroll()V

    .line 3025
    invoke-direct {p0}, Lcom/android/internal/widget/RecyclerView;->releaseGlows()V

    .line 3026
    return-void
.end method

.method private blacklist saveFocusInfo()V
    .locals 5

    .line 3419
    const/4 v0, 0x0

    .line 3420
    .local v0, "child":Landroid/view/View;
    iget-boolean v1, p0, Lcom/android/internal/widget/RecyclerView;->mPreserveFocusAfterLayout:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    if-eqz v1, :cond_0

    .line 3421
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    .line 3424
    :cond_0
    if-nez v0, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/RecyclerView;->findContainingViewHolder(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v1

    .line 3425
    .local v1, "focusedVh":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    :goto_0
    if-nez v1, :cond_2

    .line 3426
    invoke-direct {p0}, Lcom/android/internal/widget/RecyclerView;->resetFocusInfo()V

    goto :goto_3

    .line 3428
    :cond_2
    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    invoke-virtual {v3}, Lcom/android/internal/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v3

    goto :goto_1

    :cond_3
    const-wide/16 v3, -0x1

    :goto_1
    iput-wide v3, v2, Lcom/android/internal/widget/RecyclerView$State;->mFocusedItemId:J

    .line 3432
    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    iget-boolean v3, p0, Lcom/android/internal/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-eqz v3, :cond_4

    const/4 v3, -0x1

    goto :goto_2

    .line 3433
    :cond_4
    invoke-virtual {v1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v3

    if-eqz v3, :cond_5

    iget v3, v1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mOldPosition:I

    goto :goto_2

    .line 3434
    :cond_5
    invoke-virtual {v1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v3

    :goto_2
    iput v3, v2, Lcom/android/internal/widget/RecyclerView$State;->mFocusedItemPosition:I

    .line 3435
    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    iget-object v3, v1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-direct {p0, v3}, Lcom/android/internal/widget/RecyclerView;->getDeepestFocusedViewWithId(Landroid/view/View;)I

    move-result v3

    iput v3, v2, Lcom/android/internal/widget/RecyclerView$State;->mFocusedSubChildId:I

    .line 3437
    :goto_3
    return-void
.end method

.method private blacklist setAdapterInternal(Lcom/android/internal/widget/RecyclerView$Adapter;ZZ)V
    .locals 3
    .param p1, "adapter"    # Lcom/android/internal/widget/RecyclerView$Adapter;
    .param p2, "compatibleWithPrevious"    # Z
    .param p3, "removeAndRecycleViews"    # Z

    .line 1011
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_0

    .line 1012
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mObserver:Lcom/android/internal/widget/RecyclerView$RecyclerViewDataObserver;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/RecyclerView$Adapter;->unregisterAdapterDataObserver(Lcom/android/internal/widget/RecyclerView$AdapterDataObserver;)V

    .line 1013
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p0}, Lcom/android/internal/widget/RecyclerView$Adapter;->onDetachedFromRecyclerView(Lcom/android/internal/widget/RecyclerView;)V

    .line 1015
    :cond_0
    if-eqz p2, :cond_1

    if-eqz p3, :cond_2

    .line 1016
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->removeAndRecycleViews()V

    .line 1018
    :cond_2
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mAdapterHelper:Lcom/android/internal/widget/AdapterHelper;

    invoke-virtual {v0}, Lcom/android/internal/widget/AdapterHelper;->reset()V

    .line 1019
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    .line 1020
    .local v0, "oldAdapter":Lcom/android/internal/widget/RecyclerView$Adapter;
    iput-object p1, p0, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    .line 1021
    if-eqz p1, :cond_3

    .line 1022
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mObserver:Lcom/android/internal/widget/RecyclerView$RecyclerViewDataObserver;

    invoke-virtual {p1, v1}, Lcom/android/internal/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Lcom/android/internal/widget/RecyclerView$AdapterDataObserver;)V

    .line 1023
    invoke-virtual {p1, p0}, Lcom/android/internal/widget/RecyclerView$Adapter;->onAttachedToRecyclerView(Lcom/android/internal/widget/RecyclerView;)V

    .line 1025
    :cond_3
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    if-eqz v1, :cond_4

    .line 1026
    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    invoke-virtual {v1, v0, v2}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->onAdapterChanged(Lcom/android/internal/widget/RecyclerView$Adapter;Lcom/android/internal/widget/RecyclerView$Adapter;)V

    .line 1028
    :cond_4
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mRecycler:Lcom/android/internal/widget/RecyclerView$Recycler;

    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    invoke-virtual {v1, v0, v2, p2}, Lcom/android/internal/widget/RecyclerView$Recycler;->onAdapterChanged(Lcom/android/internal/widget/RecyclerView$Adapter;Lcom/android/internal/widget/RecyclerView$Adapter;Z)V

    .line 1029
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/internal/widget/RecyclerView$State;->mStructureChanged:Z

    .line 1030
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->markKnownViewsInvalid()V

    .line 1031
    return-void
.end method

.method private blacklist stopGlowAnimations(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "e"    # Landroid/view/MotionEvent;

    .line 2776
    const/4 v0, 0x0

    .line 2777
    .local v0, "stopped":Z
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->getDistance()F

    move-result v1

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_0

    .line 2778
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    sub-float v4, v2, v4

    invoke-virtual {v1, v3, v4}, Landroid/widget/EdgeEffect;->onPullDistance(FF)F

    .line 2779
    const/4 v0, 0x1

    .line 2781
    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->getDistance()F

    move-result v1

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_1

    .line 2782
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-virtual {v1, v3, v4}, Landroid/widget/EdgeEffect;->onPullDistance(FF)F

    .line 2783
    const/4 v0, 0x1

    .line 2785
    :cond_1
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->getDistance()F

    move-result v1

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_2

    .line 2786
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-virtual {v1, v3, v4}, Landroid/widget/EdgeEffect;->onPullDistance(FF)F

    .line 2787
    const/4 v0, 0x1

    .line 2789
    :cond_2
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->getDistance()F

    move-result v1

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_3

    .line 2790
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    sub-float/2addr v2, v4

    invoke-virtual {v1, v3, v2}, Landroid/widget/EdgeEffect;->onPullDistance(FF)F

    .line 2791
    const/4 v0, 0x1

    .line 2793
    :cond_3
    return v0
.end method

.method private blacklist stopScrollersInternal()V
    .locals 1

    .line 2088
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mViewFlinger:Lcom/android/internal/widget/RecyclerView$ViewFlinger;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->stop()V

    .line 2089
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_0

    .line 2090
    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->stopSmoothScroller()V

    .line 2092
    :cond_0
    return-void
.end method


# virtual methods
.method blacklist absorbGlows(II)V
    .locals 2
    .param p1, "velocityX"    # I
    .param p2, "velocityY"    # I

    .line 2190
    if-gez p1, :cond_0

    .line 2191
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->ensureLeftGlow()V

    .line 2192
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    neg-int v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    goto :goto_0

    .line 2193
    :cond_0
    if-lez p1, :cond_1

    .line 2194
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->ensureRightGlow()V

    .line 2195
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v0, p1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    .line 2198
    :cond_1
    :goto_0
    if-gez p2, :cond_2

    .line 2199
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->ensureTopGlow()V

    .line 2200
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    neg-int v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    goto :goto_1

    .line 2201
    :cond_2
    if-lez p2, :cond_3

    .line 2202
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->ensureBottomGlow()V

    .line 2203
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v0, p2}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    .line 2206
    :cond_3
    :goto_1
    if-nez p1, :cond_4

    if-eqz p2, :cond_5

    .line 2207
    :cond_4
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->postInvalidateOnAnimation()V

    .line 2209
    :cond_5
    return-void
.end method

.method public whitelist addFocusables(Ljava/util/ArrayList;II)V
    .locals 1
    .param p2, "direction"    # I
    .param p3, "focusableMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    .line 2462
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->onAddFocusables(Lcom/android/internal/widget/RecyclerView;Ljava/util/ArrayList;II)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2463
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addFocusables(Ljava/util/ArrayList;II)V

    .line 2465
    :cond_1
    return-void
.end method

.method public blacklist addItemDecoration(Lcom/android/internal/widget/RecyclerView$ItemDecoration;)V
    .locals 1
    .param p1, "decor"    # Lcom/android/internal/widget/RecyclerView$ItemDecoration;

    .line 1406
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/widget/RecyclerView;->addItemDecoration(Lcom/android/internal/widget/RecyclerView$ItemDecoration;I)V

    .line 1407
    return-void
.end method

.method public blacklist addItemDecoration(Lcom/android/internal/widget/RecyclerView$ItemDecoration;I)V
    .locals 2
    .param p1, "decor"    # Lcom/android/internal/widget/RecyclerView$ItemDecoration;
    .param p2, "index"    # I

    .line 1377
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_0

    .line 1378
    const-string v1, "Cannot add item decoration during a scroll  or layout"

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 1381
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1382
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/RecyclerView;->setWillNotDraw(Z)V

    .line 1384
    :cond_1
    if-gez p2, :cond_2

    .line 1385
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1387
    :cond_2
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1389
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->markItemDecorInsetsDirty()V

    .line 1390
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->requestLayout()V

    .line 1391
    return-void
.end method

.method public blacklist addOnChildAttachStateChangeListener(Lcom/android/internal/widget/RecyclerView$OnChildAttachStateChangeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/internal/widget/RecyclerView$OnChildAttachStateChangeListener;

    .line 1086
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1087
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    .line 1089
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1090
    return-void
.end method

.method public blacklist addOnItemTouchListener(Lcom/android/internal/widget/RecyclerView$OnItemTouchListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/internal/widget/RecyclerView$OnItemTouchListener;

    .line 2597
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2598
    return-void
.end method

.method public blacklist addOnScrollListener(Lcom/android/internal/widget/RecyclerView$OnScrollListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/internal/widget/RecyclerView$OnScrollListener;

    .line 1474
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1475
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    .line 1477
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1478
    return-void
.end method

.method blacklist animateAppearance(Lcom/android/internal/widget/RecyclerView$ViewHolder;Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V
    .locals 1
    .param p1, "itemHolder"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .param p2, "preLayoutInfo"    # Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    .param p3, "postLayoutInfo"    # Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    .line 3895
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    .line 3896
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mItemAnimator:Lcom/android/internal/widget/RecyclerView$ItemAnimator;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/widget/RecyclerView$ItemAnimator;->animateAppearance(Lcom/android/internal/widget/RecyclerView$ViewHolder;Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3897
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->postAnimationRunner()V

    .line 3899
    :cond_0
    return-void
.end method

.method blacklist animateDisappearance(Lcom/android/internal/widget/RecyclerView$ViewHolder;Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V
    .locals 1
    .param p1, "holder"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .param p2, "preLayoutInfo"    # Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    .param p3, "postLayoutInfo"    # Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    .line 3903
    invoke-direct {p0, p1}, Lcom/android/internal/widget/RecyclerView;->addAnimatingView(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    .line 3904
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    .line 3905
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mItemAnimator:Lcom/android/internal/widget/RecyclerView$ItemAnimator;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/widget/RecyclerView$ItemAnimator;->animateDisappearance(Lcom/android/internal/widget/RecyclerView$ViewHolder;Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3906
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->postAnimationRunner()V

    .line 3908
    :cond_0
    return-void
.end method

.method blacklist assertInLayoutOrScroll(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .line 2549
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->isComputingLayout()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2550
    if-nez p1, :cond_0

    .line 2551
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call this method unless RecyclerView is computing a layout or scrolling"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2554
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2557
    :cond_1
    return-void
.end method

.method blacklist assertNotInLayoutOrScroll(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;

    .line 2567
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->isComputingLayout()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2568
    if-nez p1, :cond_0

    .line 2569
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call this method while RecyclerView is computing a layout or scrolling"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2572
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2574
    :cond_1
    iget v0, p0, Lcom/android/internal/widget/RecyclerView;->mDispatchScrollCounter:I

    if-lez v0, :cond_2

    .line 2575
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    const-string v1, "RecyclerView"

    const-string v2, "Cannot call this method in a scroll callback. Scroll callbacks might be run during a measure & layout pass where you cannot change the RecyclerView data. Any method call that might change the structure of the RecyclerView or the adapter contents should be postponed to the next frame."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2581
    :cond_2
    return-void
.end method

.method blacklist canReuseUpdatedViewHolder(Lcom/android/internal/widget/RecyclerView$ViewHolder;)Z
    .locals 2
    .param p1, "viewHolder"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 4206
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mItemAnimator:Lcom/android/internal/widget/RecyclerView$ItemAnimator;

    if-eqz v0, :cond_1

    .line 4207
    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->getUnmodifiedPayloads()Ljava/util/List;

    move-result-object v1

    .line 4206
    invoke-virtual {v0, p1, v1}, Lcom/android/internal/widget/RecyclerView$ItemAnimator;->canReuseUpdatedViewHolder(Lcom/android/internal/widget/RecyclerView$ViewHolder;Ljava/util/List;)Z

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

.method protected whitelist checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 2
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 4032
    instance-of v0, p1, Lcom/android/internal/widget/RecyclerView$LayoutParams;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    move-object v1, p1

    check-cast v1, Lcom/android/internal/widget/RecyclerView$LayoutParams;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->checkLayoutParams(Lcom/android/internal/widget/RecyclerView$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method blacklist clearOldPositions()V
    .locals 4

    .line 4086
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v0}, Lcom/android/internal/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    .line 4087
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 4088
    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v2, v1}, Lcom/android/internal/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v2

    .line 4089
    .local v2, "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    invoke-virtual {v2}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v3

    if-nez v3, :cond_0

    .line 4090
    invoke-virtual {v2}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->clearOldPosition()V

    .line 4087
    .end local v2    # "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4093
    .end local v1    # "i":I
    :cond_1
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mRecycler:Lcom/android/internal/widget/RecyclerView$Recycler;

    invoke-virtual {v1}, Lcom/android/internal/widget/RecyclerView$Recycler;->clearOldPositions()V

    .line 4094
    return-void
.end method

.method public blacklist clearOnChildAttachStateChangeListeners()V
    .locals 1

    .line 1109
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 1110
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1112
    :cond_0
    return-void
.end method

.method public blacklist clearOnScrollListeners()V
    .locals 1

    .line 1495
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 1496
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1498
    :cond_0
    return-void
.end method

.method public whitelist computeHorizontalScrollExtent()I
    .locals 2

    .line 1749
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1750
    return v1

    .line 1752
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->computeHorizontalScrollExtent(Lcom/android/internal/widget/RecyclerView$State;)I

    move-result v1

    :cond_1
    return v1
.end method

.method public whitelist computeHorizontalScrollOffset()I
    .locals 2

    .line 1724
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1725
    return v1

    .line 1727
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->computeHorizontalScrollOffset(Lcom/android/internal/widget/RecyclerView$State;)I

    move-result v1

    :cond_1
    return v1
.end method

.method public whitelist computeHorizontalScrollRange()I
    .locals 2

    .line 1772
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1773
    return v1

    .line 1775
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->computeHorizontalScrollRange(Lcom/android/internal/widget/RecyclerView$State;)I

    move-result v1

    :cond_1
    return v1
.end method

.method public whitelist computeVerticalScrollExtent()I
    .locals 2

    .line 1821
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1822
    return v1

    .line 1824
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->computeVerticalScrollExtent(Lcom/android/internal/widget/RecyclerView$State;)I

    move-result v1

    :cond_1
    return v1
.end method

.method public whitelist computeVerticalScrollOffset()I
    .locals 2

    .line 1797
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1798
    return v1

    .line 1800
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->computeVerticalScrollOffset(Lcom/android/internal/widget/RecyclerView$State;)I

    move-result v1

    :cond_1
    return v1
.end method

.method public whitelist computeVerticalScrollRange()I
    .locals 2

    .line 1844
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1845
    return v1

    .line 1847
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->computeVerticalScrollRange(Lcom/android/internal/widget/RecyclerView$State;)I

    move-result v1

    :cond_1
    return v1
.end method

.method blacklist considerReleasingGlowsOnScroll(II)V
    .locals 2
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .line 2167
    const/4 v0, 0x0

    .line 2168
    .local v0, "needsInvalidate":Z
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    if-nez v1, :cond_0

    if-lez p1, :cond_0

    .line 2169
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 2170
    const/4 v0, 0x1

    .line 2172
    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    if-nez v1, :cond_1

    if-gez p1, :cond_1

    .line 2173
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 2174
    const/4 v0, 0x1

    .line 2176
    :cond_1
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    if-nez v1, :cond_2

    if-lez p2, :cond_2

    .line 2177
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 2178
    const/4 v0, 0x1

    .line 2180
    :cond_2
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    if-nez v1, :cond_3

    if-gez p2, :cond_3

    .line 2181
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 2182
    const/4 v0, 0x1

    .line 2184
    :cond_3
    if-eqz v0, :cond_4

    .line 2185
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->postInvalidateOnAnimation()V

    .line 2187
    :cond_4
    return-void
.end method

.method blacklist consumePendingUpdateOperations()V
    .locals 3

    .line 1589
    iget-boolean v0, p0, Lcom/android/internal/widget/RecyclerView;->mFirstLayoutComplete:Z

    const-string v1, "RV FullInvalidate"

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/android/internal/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-eqz v0, :cond_0

    goto :goto_2

    .line 1595
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mAdapterHelper:Lcom/android/internal/widget/AdapterHelper;

    invoke-virtual {v0}, Lcom/android/internal/widget/AdapterHelper;->hasPendingUpdates()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1596
    return-void

    .line 1601
    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mAdapterHelper:Lcom/android/internal/widget/AdapterHelper;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/AdapterHelper;->hasAnyUpdateTypes(I)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mAdapterHelper:Lcom/android/internal/widget/AdapterHelper;

    const/16 v2, 0xb

    .line 1602
    invoke-virtual {v0, v2}, Lcom/android/internal/widget/AdapterHelper;->hasAnyUpdateTypes(I)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1604
    const-string v0, "RV PartialInvalidate"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 1605
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->eatRequestLayout()V

    .line 1606
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->onEnterLayoutOrScroll()V

    .line 1607
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mAdapterHelper:Lcom/android/internal/widget/AdapterHelper;

    invoke-virtual {v0}, Lcom/android/internal/widget/AdapterHelper;->preProcess()V

    .line 1608
    iget-boolean v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayoutRequestEaten:Z

    if-nez v0, :cond_3

    .line 1609
    invoke-direct {p0}, Lcom/android/internal/widget/RecyclerView;->hasUpdatedView()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1610
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->dispatchLayout()V

    goto :goto_0

    .line 1613
    :cond_2
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mAdapterHelper:Lcom/android/internal/widget/AdapterHelper;

    invoke-virtual {v0}, Lcom/android/internal/widget/AdapterHelper;->consumePostponedUpdates()V

    .line 1616
    :cond_3
    :goto_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/RecyclerView;->resumeRequestLayout(Z)V

    .line 1617
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->onExitLayoutOrScroll()V

    .line 1618
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto :goto_1

    .line 1619
    :cond_4
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mAdapterHelper:Lcom/android/internal/widget/AdapterHelper;

    invoke-virtual {v0}, Lcom/android/internal/widget/AdapterHelper;->hasPendingUpdates()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1620
    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 1621
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->dispatchLayout()V

    .line 1622
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 1624
    :cond_5
    :goto_1
    return-void

    .line 1590
    :cond_6
    :goto_2
    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 1591
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->dispatchLayout()V

    .line 1592
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 1593
    return-void
.end method

.method blacklist defaultOnMeasure(II)V
    .locals 3
    .param p1, "widthSpec"    # I
    .param p2, "heightSpec"    # I

    .line 3174
    nop

    .line 3175
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    .line 3176
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getMinimumWidth()I

    move-result v1

    .line 3174
    invoke-static {p1, v0, v1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->chooseSize(III)I

    move-result v0

    .line 3177
    .local v0, "width":I
    nop

    .line 3178
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    .line 3179
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getMinimumHeight()I

    move-result v2

    .line 3177
    invoke-static {p2, v1, v2}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->chooseSize(III)I

    move-result v1

    .line 3181
    .local v1, "height":I
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/widget/RecyclerView;->setMeasuredDimension(II)V

    .line 3182
    return-void
.end method

.method blacklist dispatchChildAttached(Landroid/view/View;)V
    .locals 4
    .param p1, "child"    # Landroid/view/View;

    .line 6930
    invoke-static {p1}, Lcom/android/internal/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 6931
    .local v0, "viewHolder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/RecyclerView;->onChildAttachedToWindow(Landroid/view/View;)V

    .line 6932
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 6933
    invoke-virtual {v1, v0}, Lcom/android/internal/widget/RecyclerView$Adapter;->onViewAttachedToWindow(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    .line 6935
    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 6936
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 6937
    .local v1, "cnt":I
    add-int/lit8 v2, v1, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 6938
    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/RecyclerView$OnChildAttachStateChangeListener;

    invoke-interface {v3, p1}, Lcom/android/internal/widget/RecyclerView$OnChildAttachStateChangeListener;->onChildViewAttachedToWindow(Landroid/view/View;)V

    .line 6937
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 6941
    .end local v1    # "cnt":I
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method blacklist dispatchChildDetached(Landroid/view/View;)V
    .locals 4
    .param p1, "child"    # Landroid/view/View;

    .line 6916
    invoke-static {p1}, Lcom/android/internal/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 6917
    .local v0, "viewHolder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/RecyclerView;->onChildDetachedFromWindow(Landroid/view/View;)V

    .line 6918
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 6919
    invoke-virtual {v1, v0}, Lcom/android/internal/widget/RecyclerView$Adapter;->onViewDetachedFromWindow(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    .line 6921
    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 6922
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 6923
    .local v1, "cnt":I
    add-int/lit8 v2, v1, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 6924
    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/RecyclerView$OnChildAttachStateChangeListener;

    invoke-interface {v3, p1}, Lcom/android/internal/widget/RecyclerView$OnChildAttachStateChangeListener;->onChildViewDetachedFromWindow(Landroid/view/View;)V

    .line 6923
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 6927
    .end local v1    # "cnt":I
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method blacklist dispatchLayout()V
    .locals 2

    .line 3390
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    const-string v1, "RecyclerView"

    if-nez v0, :cond_0

    .line 3391
    const-string v0, "No adapter attached; skipping layout"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3393
    return-void

    .line 3395
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    if-nez v0, :cond_1

    .line 3396
    const-string v0, "No layout manager attached; skipping layout"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3398
    return-void

    .line 3400
    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/internal/widget/RecyclerView$State;->mIsMeasuring:Z

    .line 3401
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    iget v0, v0, Lcom/android/internal/widget/RecyclerView$State;->mLayoutStep:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 3402
    invoke-direct {p0}, Lcom/android/internal/widget/RecyclerView;->dispatchLayoutStep1()V

    .line 3403
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->setExactMeasureSpecsFrom(Lcom/android/internal/widget/RecyclerView;)V

    .line 3404
    invoke-direct {p0}, Lcom/android/internal/widget/RecyclerView;->dispatchLayoutStep2()V

    goto :goto_1

    .line 3405
    :cond_2
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mAdapterHelper:Lcom/android/internal/widget/AdapterHelper;

    invoke-virtual {v0}, Lcom/android/internal/widget/AdapterHelper;->hasUpdates()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getWidth()I

    move-result v1

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    .line 3406
    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getHeight()I

    move-result v1

    if-eq v0, v1, :cond_3

    goto :goto_0

    .line 3413
    :cond_3
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->setExactMeasureSpecsFrom(Lcom/android/internal/widget/RecyclerView;)V

    goto :goto_1

    .line 3409
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->setExactMeasureSpecsFrom(Lcom/android/internal/widget/RecyclerView;)V

    .line 3410
    invoke-direct {p0}, Lcom/android/internal/widget/RecyclerView;->dispatchLayoutStep2()V

    .line 3415
    :goto_1
    invoke-direct {p0}, Lcom/android/internal/widget/RecyclerView;->dispatchLayoutStep3()V

    .line 3416
    return-void
.end method

.method blacklist dispatchOnScrollStateChanged(I)V
    .locals 2
    .param p1, "state"    # I

    .line 4734
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_0

    .line 4735
    invoke-virtual {v0, p1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->onScrollStateChanged(I)V

    .line 4740
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/RecyclerView;->onScrollStateChanged(I)V

    .line 4743
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mScrollListener:Lcom/android/internal/widget/RecyclerView$OnScrollListener;

    if-eqz v0, :cond_1

    .line 4744
    invoke-virtual {v0, p0, p1}, Lcom/android/internal/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Lcom/android/internal/widget/RecyclerView;I)V

    .line 4746
    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 4747
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 4748
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v1, p0, p1}, Lcom/android/internal/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Lcom/android/internal/widget/RecyclerView;I)V

    .line 4747
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 4751
    .end local v0    # "i":I
    :cond_2
    return-void
.end method

.method blacklist dispatchOnScrolled(II)V
    .locals 4
    .param p1, "hresult"    # I
    .param p2, "vresult"    # I

    .line 4694
    iget v0, p0, Lcom/android/internal/widget/RecyclerView;->mDispatchScrollCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/widget/RecyclerView;->mDispatchScrollCounter:I

    .line 4697
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getScrollX()I

    move-result v0

    .line 4698
    .local v0, "scrollX":I
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getScrollY()I

    move-result v1

    .line 4699
    .local v1, "scrollY":I
    invoke-virtual {p0, v0, v1, v0, v1}, Lcom/android/internal/widget/RecyclerView;->onScrollChanged(IIII)V

    .line 4702
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/widget/RecyclerView;->onScrolled(II)V

    .line 4706
    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mScrollListener:Lcom/android/internal/widget/RecyclerView$OnScrollListener;

    if-eqz v2, :cond_0

    .line 4707
    invoke-virtual {v2, p0, p1, p2}, Lcom/android/internal/widget/RecyclerView$OnScrollListener;->onScrolled(Lcom/android/internal/widget/RecyclerView;II)V

    .line 4709
    :cond_0
    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    if-eqz v2, :cond_1

    .line 4710
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 4711
    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v3, p0, p1, p2}, Lcom/android/internal/widget/RecyclerView$OnScrollListener;->onScrolled(Lcom/android/internal/widget/RecyclerView;II)V

    .line 4710
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 4714
    .end local v2    # "i":I
    :cond_1
    iget v2, p0, Lcom/android/internal/widget/RecyclerView;->mDispatchScrollCounter:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/internal/widget/RecyclerView;->mDispatchScrollCounter:I

    .line 4715
    return-void
.end method

.method blacklist dispatchPendingImportantForAccessibilityChanges()V
    .locals 5

    .line 10577
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mPendingAccessibilityImportanceChange:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 10578
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mPendingAccessibilityImportanceChange:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 10579
    .local v1, "viewHolder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    iget-object v2, v1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-ne v2, p0, :cond_1

    invoke-virtual {v1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 10580
    goto :goto_1

    .line 10582
    :cond_0
    iget v2, v1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mPendingAccessibilityState:I

    .line 10583
    .local v2, "state":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 10585
    iget-object v4, v1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v4, v2}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 10586
    iput v3, v1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mPendingAccessibilityState:I

    .line 10577
    .end local v1    # "viewHolder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .end local v2    # "state":I
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 10590
    .end local v0    # "i":I
    :cond_2
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mPendingAccessibilityImportanceChange:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 10591
    return-void
.end method

.method protected whitelist dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .line 1230
    .local p1, "container":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/RecyclerView;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    .line 1231
    return-void
.end method

.method protected whitelist dispatchSaveInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .line 1222
    .local p1, "container":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/RecyclerView;->dispatchFreezeSelfOnly(Landroid/util/SparseArray;)V

    .line 1223
    return-void
.end method

.method public whitelist draw(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "c"    # Landroid/graphics/Canvas;

    .line 3961
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 3963
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3964
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 3965
    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/RecyclerView$ItemDecoration;

    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    invoke-virtual {v2, p1, p0, v3}, Lcom/android/internal/widget/RecyclerView$ItemDecoration;->onDrawOver(Landroid/graphics/Canvas;Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$State;)V

    .line 3964
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3969
    .end local v1    # "i":I
    :cond_0
    const/4 v1, 0x0

    .line 3970
    .local v1, "needsInvalidate":Z
    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v2

    if-nez v2, :cond_3

    .line 3971
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 3972
    .local v2, "restore":I
    iget-boolean v5, p0, Lcom/android/internal/widget/RecyclerView;->mClipToPadding:Z

    if-eqz v5, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getPaddingBottom()I

    move-result v5

    goto :goto_1

    :cond_1
    move v5, v4

    .line 3973
    .local v5, "padding":I
    :goto_1
    const/high16 v6, 0x43870000    # 270.0f

    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->rotate(F)V

    .line 3974
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getHeight()I

    move-result v6

    neg-int v6, v6

    add-int/2addr v6, v5

    int-to-float v6, v6

    const/4 v7, 0x0

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3975
    iget-object v6, p0, Lcom/android/internal/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    if-eqz v6, :cond_2

    invoke-virtual {v6, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v6

    if-eqz v6, :cond_2

    move v6, v3

    goto :goto_2

    :cond_2
    move v6, v4

    :goto_2
    move v1, v6

    .line 3976
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 3978
    .end local v2    # "restore":I
    .end local v5    # "padding":I
    :cond_3
    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v2

    if-nez v2, :cond_6

    .line 3979
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 3980
    .restart local v2    # "restore":I
    iget-boolean v5, p0, Lcom/android/internal/widget/RecyclerView;->mClipToPadding:Z

    if-eqz v5, :cond_4

    .line 3981
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getPaddingLeft()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getPaddingTop()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3983
    :cond_4
    iget-object v5, p0, Lcom/android/internal/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    if-eqz v5, :cond_5

    invoke-virtual {v5, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v5

    if-eqz v5, :cond_5

    move v5, v3

    goto :goto_3

    :cond_5
    move v5, v4

    :goto_3
    or-int/2addr v1, v5

    .line 3984
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 3986
    .end local v2    # "restore":I
    :cond_6
    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v2

    if-nez v2, :cond_9

    .line 3987
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 3988
    .restart local v2    # "restore":I
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getWidth()I

    move-result v5

    .line 3989
    .local v5, "width":I
    iget-boolean v6, p0, Lcom/android/internal/widget/RecyclerView;->mClipToPadding:Z

    if-eqz v6, :cond_7

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getPaddingTop()I

    move-result v6

    goto :goto_4

    :cond_7
    move v6, v4

    .line 3990
    .local v6, "padding":I
    :goto_4
    const/high16 v7, 0x42b40000    # 90.0f

    invoke-virtual {p1, v7}, Landroid/graphics/Canvas;->rotate(F)V

    .line 3991
    neg-int v7, v6

    int-to-float v7, v7

    neg-int v8, v5

    int-to-float v8, v8

    invoke-virtual {p1, v7, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3992
    iget-object v7, p0, Lcom/android/internal/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    if-eqz v7, :cond_8

    invoke-virtual {v7, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v7

    if-eqz v7, :cond_8

    move v7, v3

    goto :goto_5

    :cond_8
    move v7, v4

    :goto_5
    or-int/2addr v1, v7

    .line 3993
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 3995
    .end local v2    # "restore":I
    .end local v5    # "width":I
    .end local v6    # "padding":I
    :cond_9
    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    if-eqz v2, :cond_c

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v2

    if-nez v2, :cond_c

    .line 3996
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 3997
    .restart local v2    # "restore":I
    const/high16 v5, 0x43340000    # 180.0f

    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->rotate(F)V

    .line 3998
    iget-boolean v5, p0, Lcom/android/internal/widget/RecyclerView;->mClipToPadding:Z

    if-eqz v5, :cond_a

    .line 3999
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getWidth()I

    move-result v5

    neg-int v5, v5

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getPaddingRight()I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getHeight()I

    move-result v6

    neg-int v6, v6

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getPaddingBottom()I

    move-result v7

    add-int/2addr v6, v7

    int-to-float v6, v6

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_6

    .line 4001
    :cond_a
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getWidth()I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getHeight()I

    move-result v6

    neg-int v6, v6

    int-to-float v6, v6

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4003
    :goto_6
    iget-object v5, p0, Lcom/android/internal/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    if-eqz v5, :cond_b

    invoke-virtual {v5, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v5

    if-eqz v5, :cond_b

    goto :goto_7

    :cond_b
    move v3, v4

    :goto_7
    or-int/2addr v1, v3

    .line 4004
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 4010
    .end local v2    # "restore":I
    :cond_c
    if-nez v1, :cond_d

    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mItemAnimator:Lcom/android/internal/widget/RecyclerView$ItemAnimator;

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_d

    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mItemAnimator:Lcom/android/internal/widget/RecyclerView$ItemAnimator;

    .line 4011
    invoke-virtual {v2}, Lcom/android/internal/widget/RecyclerView$ItemAnimator;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 4012
    const/4 v1, 0x1

    .line 4015
    :cond_d
    if-eqz v1, :cond_e

    .line 4016
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->postInvalidateOnAnimation()V

    .line 4018
    :cond_e
    return-void
.end method

.method public whitelist drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "drawingTime"    # J

    .line 4570
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    return v0
.end method

.method blacklist eatRequestLayout()V
    .locals 2

    .line 1852
    iget v0, p0, Lcom/android/internal/widget/RecyclerView;->mEatRequestLayout:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/widget/RecyclerView;->mEatRequestLayout:I

    .line 1853
    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayoutFrozen:Z

    if-nez v0, :cond_0

    .line 1854
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayoutRequestEaten:Z

    .line 1856
    :cond_0
    return-void
.end method

.method blacklist ensureBottomGlow()V
    .locals 4

    .line 2252
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_0

    .line 2253
    return-void

    .line 2255
    :cond_0
    new-instance v0, Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    .line 2256
    iget-boolean v1, p0, Lcom/android/internal/widget/RecyclerView;->mClipToPadding:Z

    if-eqz v1, :cond_1

    .line 2257
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 2258
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    .line 2257
    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    goto :goto_0

    .line 2260
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 2262
    :goto_0
    return-void
.end method

.method blacklist ensureLeftGlow()V
    .locals 4

    .line 2212
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_0

    .line 2213
    return-void

    .line 2215
    :cond_0
    new-instance v0, Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    .line 2216
    iget-boolean v1, p0, Lcom/android/internal/widget/RecyclerView;->mClipToPadding:Z

    if-eqz v1, :cond_1

    .line 2217
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    .line 2218
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    .line 2217
    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    goto :goto_0

    .line 2220
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 2222
    :goto_0
    return-void
.end method

.method blacklist ensureRightGlow()V
    .locals 4

    .line 2225
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_0

    .line 2226
    return-void

    .line 2228
    :cond_0
    new-instance v0, Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    .line 2229
    iget-boolean v1, p0, Lcom/android/internal/widget/RecyclerView;->mClipToPadding:Z

    if-eqz v1, :cond_1

    .line 2230
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    .line 2231
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    .line 2230
    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    goto :goto_0

    .line 2233
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 2235
    :goto_0
    return-void
.end method

.method blacklist ensureTopGlow()V
    .locals 4

    .line 2238
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_0

    .line 2239
    return-void

    .line 2241
    :cond_0
    new-instance v0, Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    .line 2242
    iget-boolean v1, p0, Lcom/android/internal/widget/RecyclerView;->mClipToPadding:Z

    if-eqz v1, :cond_1

    .line 2243
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 2244
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    .line 2243
    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    goto :goto_0

    .line 2246
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 2249
    :goto_0
    return-void
.end method

.method public blacklist findChildViewUnder(FF)Landroid/view/View;
    .locals 6
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 4553
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v0}, Lcom/android/internal/widget/ChildHelper;->getChildCount()I

    move-result v0

    .line 4554
    .local v0, "count":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 4555
    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v2, v1}, Lcom/android/internal/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 4556
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTranslationX()F

    move-result v3

    .line 4557
    .local v3, "translationX":F
    invoke-virtual {v2}, Landroid/view/View;->getTranslationY()F

    move-result v4

    .line 4558
    .local v4, "translationY":F
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v3

    cmpl-float v5, p1, v5

    if-ltz v5, :cond_0

    .line 4559
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v3

    cmpg-float v5, p1, v5

    if-gtz v5, :cond_0

    .line 4560
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v4

    cmpl-float v5, p2, v5

    if-ltz v5, :cond_0

    .line 4561
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v4

    cmpg-float v5, p2, v5

    if-gtz v5, :cond_0

    .line 4562
    return-object v2

    .line 4554
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "translationX":F
    .end local v4    # "translationY":F
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 4565
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public blacklist findContainingItemView(Landroid/view/View;)Landroid/view/View;
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 4337
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 4338
    .local v0, "parent":Landroid/view/ViewParent;
    :goto_0
    if-eqz v0, :cond_0

    if-eq v0, p0, :cond_0

    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_0

    .line 4339
    move-object p1, v0

    check-cast p1, Landroid/view/View;

    .line 4340
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    .line 4342
    :cond_0
    if-ne v0, p0, :cond_1

    move-object v1, p1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return-object v1
.end method

.method public blacklist findContainingViewHolder(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 4355
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/RecyclerView;->findContainingItemView(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 4356
    .local v0, "itemView":Landroid/view/View;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public blacklist findViewHolderForAdapterPosition(I)Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .locals 6
    .param p1, "position"    # I

    .line 4466
    iget-boolean v0, p0, Lcom/android/internal/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-eqz v0, :cond_0

    .line 4467
    const/4 v0, 0x0

    return-object v0

    .line 4469
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v0}, Lcom/android/internal/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    .line 4471
    .local v0, "childCount":I
    const/4 v1, 0x0

    .line 4472
    .local v1, "hidden":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_3

    .line 4473
    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v3, v2}, Lcom/android/internal/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v3

    .line 4474
    .local v3, "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v4

    if-nez v4, :cond_2

    .line 4475
    invoke-virtual {p0, v3}, Lcom/android/internal/widget/RecyclerView;->getAdapterPositionFor(Lcom/android/internal/widget/RecyclerView$ViewHolder;)I

    move-result v4

    if-ne v4, p1, :cond_2

    .line 4476
    iget-object v4, p0, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    iget-object v5, v3, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/ChildHelper;->isHidden(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 4477
    move-object v1, v3

    goto :goto_1

    .line 4479
    :cond_1
    return-object v3

    .line 4472
    .end local v3    # "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4483
    .end local v2    # "i":I
    :cond_3
    return-object v1
.end method

.method public blacklist findViewHolderForItemId(J)Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .locals 6
    .param p1, "id"    # J

    .line 4527
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 4530
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v0}, Lcom/android/internal/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    .line 4531
    .local v0, "childCount":I
    const/4 v1, 0x0

    .line 4532
    .local v1, "hidden":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_3

    .line 4533
    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v3, v2}, Lcom/android/internal/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v3

    .line 4534
    .local v3, "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v3}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v4

    cmp-long v4, v4, p1

    if-nez v4, :cond_2

    .line 4535
    iget-object v4, p0, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    iget-object v5, v3, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/ChildHelper;->isHidden(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 4536
    move-object v1, v3

    goto :goto_1

    .line 4538
    :cond_1
    return-object v3

    .line 4532
    .end local v3    # "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4542
    .end local v2    # "i":I
    :cond_3
    return-object v1

    .line 4528
    .end local v0    # "childCount":I
    .end local v1    # "hidden":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    :cond_4
    :goto_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist findViewHolderForLayoutPosition(I)Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .locals 1
    .param p1, "position"    # I

    .line 4445
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/widget/RecyclerView;->findViewHolderForPosition(IZ)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public blacklist findViewHolderForPosition(I)Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .locals 1
    .param p1, "position"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4422
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/widget/RecyclerView;->findViewHolderForPosition(IZ)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method blacklist findViewHolderForPosition(IZ)Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .locals 6
    .param p1, "position"    # I
    .param p2, "checkNewPosition"    # Z

    .line 4487
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v0}, Lcom/android/internal/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    .line 4488
    .local v0, "childCount":I
    const/4 v1, 0x0

    .line 4489
    .local v1, "hidden":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_4

    .line 4490
    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v3, v2}, Lcom/android/internal/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v3

    .line 4491
    .local v3, "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v4

    if-nez v4, :cond_3

    .line 4492
    if-eqz p2, :cond_0

    .line 4493
    iget v4, v3, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mPosition:I

    if-eq v4, p1, :cond_1

    .line 4494
    goto :goto_1

    .line 4496
    :cond_0
    invoke-virtual {v3}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v4

    if-eq v4, p1, :cond_1

    .line 4497
    goto :goto_1

    .line 4499
    :cond_1
    iget-object v4, p0, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    iget-object v5, v3, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/ChildHelper;->isHidden(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 4500
    move-object v1, v3

    goto :goto_1

    .line 4502
    :cond_2
    return-object v3

    .line 4489
    .end local v3    # "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4509
    .end local v2    # "i":I
    :cond_4
    return-object v1
.end method

.method public blacklist fling(II)Z
    .locals 10
    .param p1, "velocityX"    # I
    .param p2, "velocityY"    # I

    .line 1995
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1996
    const-string v0, "RecyclerView"

    const-string v2, "Cannot fling without a LayoutManager set. Call setLayoutManager with a non-null argument."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1998
    return v1

    .line 2000
    :cond_0
    iget-boolean v2, p0, Lcom/android/internal/widget/RecyclerView;->mLayoutFrozen:Z

    if-eqz v2, :cond_1

    .line 2001
    return v1

    .line 2004
    :cond_1
    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v0

    .line 2005
    .local v0, "canScrollHorizontal":Z
    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {v2}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v2

    .line 2007
    .local v2, "canScrollVertical":Z
    if-eqz v0, :cond_2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, p0, Lcom/android/internal/widget/RecyclerView;->mMinFlingVelocity:I

    if-ge v3, v4, :cond_3

    .line 2008
    :cond_2
    const/4 p1, 0x0

    .line 2010
    :cond_3
    if-eqz v2, :cond_4

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, p0, Lcom/android/internal/widget/RecyclerView;->mMinFlingVelocity:I

    if-ge v3, v4, :cond_5

    .line 2011
    :cond_4
    const/4 p2, 0x0

    .line 2013
    :cond_5
    if-nez p1, :cond_6

    if-nez p2, :cond_6

    .line 2015
    return v1

    .line 2018
    :cond_6
    int-to-float v3, p1

    int-to-float v4, p2

    invoke-virtual {p0, v3, v4}, Lcom/android/internal/widget/RecyclerView;->dispatchNestedPreFling(FF)Z

    move-result v3

    if-nez v3, :cond_10

    .line 2019
    const/4 v3, 0x0

    .line 2020
    .local v3, "consumed":Z
    iget-object v4, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {v4}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v4

    const/4 v5, 0x1

    if-lez v4, :cond_c

    .line 2021
    iget-object v4, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {v4, v1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 2022
    .local v4, "firstChild":Landroid/view/View;
    iget-object v6, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {v6}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v7

    sub-int/2addr v7, v5

    invoke-virtual {v6, v7}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 2023
    .local v6, "lastChild":Landroid/view/View;
    if-gez p2, :cond_9

    .line 2024
    invoke-virtual {p0, v4}, Lcom/android/internal/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v7

    if-gtz v7, :cond_8

    .line 2025
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v7

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getPaddingTop()I

    move-result v8

    if-ge v7, v8, :cond_7

    goto :goto_0

    :cond_7
    move v7, v1

    goto :goto_1

    :cond_8
    :goto_0
    move v7, v5

    :goto_1
    move v3, v7

    .line 2028
    :cond_9
    if-lez p2, :cond_c

    .line 2029
    invoke-virtual {p0, v6}, Lcom/android/internal/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v7

    iget-object v8, p0, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    invoke-virtual {v8}, Lcom/android/internal/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v8

    sub-int/2addr v8, v5

    if-lt v7, v8, :cond_b

    .line 2030
    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v7

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getHeight()I

    move-result v8

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getPaddingBottom()I

    move-result v9

    sub-int/2addr v8, v9

    if-le v7, v8, :cond_a

    goto :goto_2

    :cond_a
    move v7, v1

    goto :goto_3

    :cond_b
    :goto_2
    move v7, v5

    :goto_3
    move v3, v7

    .line 2034
    .end local v4    # "firstChild":Landroid/view/View;
    .end local v6    # "lastChild":Landroid/view/View;
    :cond_c
    int-to-float v4, p1

    int-to-float v6, p2

    invoke-virtual {p0, v4, v6, v3}, Lcom/android/internal/widget/RecyclerView;->dispatchNestedFling(FFZ)Z

    .line 2036
    iget-object v4, p0, Lcom/android/internal/widget/RecyclerView;->mOnFlingListener:Lcom/android/internal/widget/RecyclerView$OnFlingListener;

    if-eqz v4, :cond_d

    invoke-virtual {v4, p1, p2}, Lcom/android/internal/widget/RecyclerView$OnFlingListener;->onFling(II)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 2037
    return v5

    .line 2040
    :cond_d
    if-nez v0, :cond_f

    if-eqz v2, :cond_e

    goto :goto_4

    :cond_e
    move v4, v1

    goto :goto_5

    :cond_f
    :goto_4
    move v4, v5

    .line 2042
    .local v4, "canScroll":Z
    :goto_5
    if-eqz v4, :cond_10

    .line 2043
    iget v1, p0, Lcom/android/internal/widget/RecyclerView;->mMaxFlingVelocity:I

    neg-int v6, v1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v6, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 2044
    iget v1, p0, Lcom/android/internal/widget/RecyclerView;->mMaxFlingVelocity:I

    neg-int v6, v1

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v6, v1}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 2045
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mViewFlinger:Lcom/android/internal/widget/RecyclerView$ViewFlinger;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->fling(II)V

    .line 2046
    return v5

    .line 2049
    .end local v3    # "consumed":Z
    .end local v4    # "canScroll":Z
    :cond_10
    return v1
.end method

.method public whitelist focusSearch(Landroid/view/View;I)Landroid/view/View;
    .locals 11
    .param p1, "focused"    # Landroid/view/View;
    .param p2, "direction"    # I

    .line 2300
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->onInterceptFocusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 2301
    .local v0, "result":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 2302
    return-object v0

    .line 2304
    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    if-eqz v1, :cond_1

    .line 2305
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->isComputingLayout()Z

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/internal/widget/RecyclerView;->mLayoutFrozen:Z

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v3

    .line 2307
    .local v1, "canRunFocusFailure":Z
    :goto_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v4

    .line 2308
    .local v4, "ff":Landroid/view/FocusFinder;
    const/4 v5, 0x0

    if-eqz v1, :cond_d

    const/4 v6, 0x2

    if-eq p2, v6, :cond_2

    if-ne p2, v2, :cond_d

    .line 2312
    :cond_2
    const/4 v7, 0x0

    .line 2313
    .local v7, "needsFocusFailureLayout":Z
    iget-object v8, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {v8}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 2315
    if-ne p2, v6, :cond_3

    const/16 v8, 0x82

    goto :goto_1

    :cond_3
    const/16 v8, 0x21

    .line 2316
    .local v8, "absDir":I
    :goto_1
    invoke-virtual {v4, p0, p1, v8}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v9

    .line 2317
    .local v9, "found":Landroid/view/View;
    if-nez v9, :cond_4

    move v10, v2

    goto :goto_2

    :cond_4
    move v10, v3

    :goto_2
    move v7, v10

    .line 2318
    sget-boolean v10, Lcom/android/internal/widget/RecyclerView;->FORCE_ABS_FOCUS_SEARCH_DIRECTION:Z

    if-eqz v10, :cond_5

    .line 2320
    move p2, v8

    .line 2323
    .end local v8    # "absDir":I
    .end local v9    # "found":Landroid/view/View;
    :cond_5
    if-nez v7, :cond_a

    iget-object v8, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {v8}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v8

    if-eqz v8, :cond_a

    .line 2324
    iget-object v8, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {v8}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getLayoutDirection()I

    move-result v8

    if-ne v8, v2, :cond_6

    move v8, v2

    goto :goto_3

    :cond_6
    move v8, v3

    .line 2325
    .local v8, "rtl":Z
    :goto_3
    if-ne p2, v6, :cond_7

    move v6, v2

    goto :goto_4

    :cond_7
    move v6, v3

    :goto_4
    xor-int/2addr v6, v8

    if-eqz v6, :cond_8

    .line 2326
    const/16 v6, 0x42

    goto :goto_5

    :cond_8
    const/16 v6, 0x11

    .line 2327
    .local v6, "absDir":I
    :goto_5
    invoke-virtual {v4, p0, p1, v6}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v9

    .line 2328
    .restart local v9    # "found":Landroid/view/View;
    if-nez v9, :cond_9

    goto :goto_6

    :cond_9
    move v2, v3

    :goto_6
    move v7, v2

    .line 2329
    sget-boolean v2, Lcom/android/internal/widget/RecyclerView;->FORCE_ABS_FOCUS_SEARCH_DIRECTION:Z

    if-eqz v2, :cond_a

    .line 2331
    move p2, v6

    .line 2334
    .end local v6    # "absDir":I
    .end local v8    # "rtl":Z
    .end local v9    # "found":Landroid/view/View;
    :cond_a
    if-eqz v7, :cond_c

    .line 2335
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->consumePendingUpdateOperations()V

    .line 2336
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/RecyclerView;->findContainingItemView(Landroid/view/View;)Landroid/view/View;

    move-result-object v2

    .line 2337
    .local v2, "focusedItemView":Landroid/view/View;
    if-nez v2, :cond_b

    .line 2339
    return-object v5

    .line 2341
    :cond_b
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->eatRequestLayout()V

    .line 2342
    iget-object v5, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    iget-object v6, p0, Lcom/android/internal/widget/RecyclerView;->mRecycler:Lcom/android/internal/widget/RecyclerView$Recycler;

    iget-object v8, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    invoke-virtual {v5, p1, p2, v6, v8}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->onFocusSearchFailed(Landroid/view/View;ILcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;)Landroid/view/View;

    .line 2343
    invoke-virtual {p0, v3}, Lcom/android/internal/widget/RecyclerView;->resumeRequestLayout(Z)V

    .line 2345
    .end local v2    # "focusedItemView":Landroid/view/View;
    :cond_c
    invoke-virtual {v4, p0, p1, p2}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 2346
    .end local v7    # "needsFocusFailureLayout":Z
    goto :goto_7

    .line 2347
    :cond_d
    invoke-virtual {v4, p0, p1, p2}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 2348
    if-nez v0, :cond_f

    if-eqz v1, :cond_f

    .line 2349
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->consumePendingUpdateOperations()V

    .line 2350
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/RecyclerView;->findContainingItemView(Landroid/view/View;)Landroid/view/View;

    move-result-object v2

    .line 2351
    .restart local v2    # "focusedItemView":Landroid/view/View;
    if-nez v2, :cond_e

    .line 2353
    return-object v5

    .line 2355
    :cond_e
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->eatRequestLayout()V

    .line 2356
    iget-object v5, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    iget-object v6, p0, Lcom/android/internal/widget/RecyclerView;->mRecycler:Lcom/android/internal/widget/RecyclerView$Recycler;

    iget-object v7, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    invoke-virtual {v5, p1, p2, v6, v7}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->onFocusSearchFailed(Landroid/view/View;ILcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;)Landroid/view/View;

    move-result-object v0

    .line 2357
    invoke-virtual {p0, v3}, Lcom/android/internal/widget/RecyclerView;->resumeRequestLayout(Z)V

    .line 2360
    .end local v2    # "focusedItemView":Landroid/view/View;
    :cond_f
    :goto_7
    invoke-direct {p0, p1, v0, p2}, Lcom/android/internal/widget/RecyclerView;->isPreferredNextFocus(Landroid/view/View;Landroid/view/View;I)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 2361
    move-object v2, v0

    goto :goto_8

    :cond_10
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    .line 2360
    :goto_8
    return-object v2
.end method

.method protected whitelist generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 4037
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_0

    .line 4040
    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->generateDefaultLayoutParams()Lcom/android/internal/widget/RecyclerView$LayoutParams;

    move-result-object v0

    return-object v0

    .line 4038
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RecyclerView has no LayoutManager"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .line 4045
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_0

    .line 4048
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->generateLayoutParams(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/android/internal/widget/RecyclerView$LayoutParams;

    move-result-object v0

    return-object v0

    .line 4046
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RecyclerView has no LayoutManager"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected whitelist generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 4053
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_0

    .line 4056
    invoke-virtual {v0, p1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/android/internal/widget/RecyclerView$LayoutParams;

    move-result-object v0

    return-object v0

    .line 4054
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RecyclerView has no LayoutManager"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getAdapter()Lcom/android/internal/widget/RecyclerView$Adapter;
    .locals 1

    .line 1040
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    return-object v0
.end method

.method blacklist getAdapterPositionFor(Lcom/android/internal/widget/RecyclerView$ViewHolder;)I
    .locals 2
    .param p1, "viewHolder"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 10594
    const/16 v0, 0x20c

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->hasAnyOfTheFlags(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 10596
    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->isBound()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 10599
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mAdapterHelper:Lcom/android/internal/widget/AdapterHelper;

    iget v1, p1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mPosition:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/AdapterHelper;->applyPendingUpdatesToPosition(I)I

    move-result v0

    return v0

    .line 10597
    :cond_1
    :goto_0
    const/4 v0, -0x1

    return v0
.end method

.method public whitelist getBaseline()I
    .locals 1

    .line 1067
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_0

    .line 1068
    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getBaseline()I

    move-result v0

    return v0

    .line 1070
    :cond_0
    invoke-super {p0}, Landroid/view/ViewGroup;->getBaseline()I

    move-result v0

    return v0
.end method

.method blacklist getChangedHolderKey(Lcom/android/internal/widget/RecyclerView$ViewHolder;)J
    .locals 2
    .param p1, "holder"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 3890
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    iget v0, p1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mPosition:I

    int-to-long v0, v0

    :goto_0
    return-wide v0
.end method

.method public blacklist getChildAdapterPosition(Landroid/view/View;)I
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .line 4383
    invoke-static {p1}, Lcom/android/internal/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 4384
    .local v0, "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    return v1
.end method

.method protected whitelist getChildDrawingOrder(II)I
    .locals 1
    .param p1, "childCount"    # I
    .param p2, "i"    # I

    .line 12371
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mChildDrawingOrderCallback:Lcom/android/internal/widget/RecyclerView$ChildDrawingOrderCallback;

    if-nez v0, :cond_0

    .line 12372
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->getChildDrawingOrder(II)I

    move-result v0

    return v0

    .line 12374
    :cond_0
    invoke-interface {v0, p1, p2}, Lcom/android/internal/widget/RecyclerView$ChildDrawingOrderCallback;->onGetChildDrawingOrder(II)I

    move-result v0

    return v0
.end method

.method public blacklist getChildItemId(Landroid/view/View;)J
    .locals 3
    .param p1, "child"    # Landroid/view/View;

    .line 4409
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 4412
    :cond_0
    invoke-static {p1}, Lcom/android/internal/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 4413
    .local v0, "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v1

    :cond_1
    return-wide v1

    .line 4410
    .end local v0    # "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    :cond_2
    :goto_0
    return-wide v1
.end method

.method public blacklist getChildLayoutPosition(Landroid/view/View;)I
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .line 4398
    invoke-static {p1}, Lcom/android/internal/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 4399
    .local v0, "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    return v1
.end method

.method public blacklist getChildPosition(Landroid/view/View;)I
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4373
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public blacklist getChildViewHolder(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .locals 4
    .param p1, "child"    # Landroid/view/View;

    .line 4314
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 4315
    .local v0, "parent":Landroid/view/ViewParent;
    if-eqz v0, :cond_1

    if-ne v0, p0, :cond_0

    goto :goto_0

    .line 4316
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "View "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not a direct child of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4319
    :cond_1
    :goto_0
    invoke-static {p1}, Lcom/android/internal/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v1

    return-object v1
.end method

.method public whitelist getClipToPadding()Z
    .locals 1

    .line 914
    iget-boolean v0, p0, Lcom/android/internal/widget/RecyclerView;->mClipToPadding:Z

    return v0
.end method

.method public blacklist getCompatAccessibilityDelegate()Lcom/android/internal/widget/RecyclerViewAccessibilityDelegate;
    .locals 1

    .line 604
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mAccessibilityDelegate:Lcom/android/internal/widget/RecyclerViewAccessibilityDelegate;

    return-object v0
.end method

.method public blacklist getDecoratedBoundsWithMargins(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "outBounds"    # Landroid/graphics/Rect;

    .line 4632
    invoke-static {p1, p2}, Lcom/android/internal/widget/RecyclerView;->getDecoratedBoundsWithMarginsInt(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 4633
    return-void
.end method

.method public blacklist getItemAnimator()Lcom/android/internal/widget/RecyclerView$ItemAnimator;
    .locals 1

    .line 3311
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mItemAnimator:Lcom/android/internal/widget/RecyclerView$ItemAnimator;

    return-object v0
.end method

.method blacklist getItemDecorInsetsForChild(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 8
    .param p1, "child"    # Landroid/view/View;

    .line 4645
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/RecyclerView$LayoutParams;

    .line 4646
    .local v0, "lp":Lcom/android/internal/widget/RecyclerView$LayoutParams;
    iget-boolean v1, v0, Lcom/android/internal/widget/RecyclerView$LayoutParams;->mInsetsDirty:Z

    if-nez v1, :cond_0

    .line 4647
    iget-object v1, v0, Lcom/android/internal/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    return-object v1

    .line 4650
    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    invoke-virtual {v1}, Lcom/android/internal/widget/RecyclerView$State;->isPreLayout()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$LayoutParams;->isItemChanged()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$LayoutParams;->isViewInvalid()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4652
    :cond_1
    iget-object v1, v0, Lcom/android/internal/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    return-object v1

    .line 4654
    :cond_2
    iget-object v1, v0, Lcom/android/internal/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    .line 4655
    .local v1, "insets":Landroid/graphics/Rect;
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 4656
    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 4657
    .local v3, "decorCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_3

    .line 4658
    iget-object v5, p0, Lcom/android/internal/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v5, v2, v2, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 4659
    iget-object v5, p0, Lcom/android/internal/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/widget/RecyclerView$ItemDecoration;

    iget-object v6, p0, Lcom/android/internal/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    invoke-virtual {v5, v6, p1, p0, v7}, Lcom/android/internal/widget/RecyclerView$ItemDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$State;)V

    .line 4660
    iget v5, v1, Landroid/graphics/Rect;->left:I

    iget-object v6, p0, Lcom/android/internal/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v6

    iput v5, v1, Landroid/graphics/Rect;->left:I

    .line 4661
    iget v5, v1, Landroid/graphics/Rect;->top:I

    iget-object v6, p0, Lcom/android/internal/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v6

    iput v5, v1, Landroid/graphics/Rect;->top:I

    .line 4662
    iget v5, v1, Landroid/graphics/Rect;->right:I

    iget-object v6, p0, Lcom/android/internal/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v6

    iput v5, v1, Landroid/graphics/Rect;->right:I

    .line 4663
    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v6, p0, Lcom/android/internal/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v6

    iput v5, v1, Landroid/graphics/Rect;->bottom:I

    .line 4657
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 4665
    .end local v4    # "i":I
    :cond_3
    iput-boolean v2, v0, Lcom/android/internal/widget/RecyclerView$LayoutParams;->mInsetsDirty:Z

    .line 4666
    return-object v1
.end method

.method public blacklist getLayoutManager()Lcom/android/internal/widget/RecyclerView$LayoutManager;
    .locals 1

    .line 1284
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    return-object v0
.end method

.method public blacklist getMaxFlingVelocity()I
    .locals 1

    .line 2110
    iget v0, p0, Lcom/android/internal/widget/RecyclerView;->mMaxFlingVelocity:I

    return v0
.end method

.method public blacklist getMinFlingVelocity()I
    .locals 1

    .line 2100
    iget v0, p0, Lcom/android/internal/widget/RecyclerView;->mMinFlingVelocity:I

    return v0
.end method

.method blacklist getNanoTime()J
    .locals 2

    .line 5298
    sget-boolean v0, Lcom/android/internal/widget/RecyclerView;->ALLOW_THREAD_GAP_WORK:Z

    if-eqz v0, :cond_0

    .line 5299
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    return-wide v0

    .line 5301
    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public blacklist getOnFlingListener()Lcom/android/internal/widget/RecyclerView$OnFlingListener;
    .locals 1

    .line 1186
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mOnFlingListener:Lcom/android/internal/widget/RecyclerView$OnFlingListener;

    return-object v0
.end method

.method public blacklist getPreserveFocusAfterLayout()Z
    .locals 1

    .line 4286
    iget-boolean v0, p0, Lcom/android/internal/widget/RecyclerView;->mPreserveFocusAfterLayout:Z

    return v0
.end method

.method public blacklist getRecycledViewPool()Lcom/android/internal/widget/RecyclerView$RecycledViewPool;
    .locals 1

    .line 1296
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mRecycler:Lcom/android/internal/widget/RecyclerView$Recycler;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$Recycler;->getRecycledViewPool()Lcom/android/internal/widget/RecyclerView$RecycledViewPool;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getScrollState()I
    .locals 1

    .line 1344
    iget v0, p0, Lcom/android/internal/widget/RecyclerView;->mScrollState:I

    return v0
.end method

.method public blacklist hasFixedSize()Z
    .locals 1

    .line 885
    iget-boolean v0, p0, Lcom/android/internal/widget/RecyclerView;->mHasFixedSize:Z

    return v0
.end method

.method public blacklist hasPendingAdapterUpdates()Z
    .locals 1

    .line 4767
    iget-boolean v0, p0, Lcom/android/internal/widget/RecyclerView;->mFirstLayoutComplete:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mAdapterHelper:Lcom/android/internal/widget/AdapterHelper;

    .line 4768
    invoke-virtual {v0}, Lcom/android/internal/widget/AdapterHelper;->hasPendingUpdates()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 4767
    :goto_1
    return v0
.end method

.method blacklist initAdapterManager()V
    .locals 2

    .line 784
    new-instance v0, Lcom/android/internal/widget/AdapterHelper;

    new-instance v1, Lcom/android/internal/widget/RecyclerView$6;

    invoke-direct {v1, p0}, Lcom/android/internal/widget/RecyclerView$6;-><init>(Lcom/android/internal/widget/RecyclerView;)V

    invoke-direct {v0, v1}, Lcom/android/internal/widget/AdapterHelper;-><init>(Lcom/android/internal/widget/AdapterHelper$Callback;)V

    iput-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mAdapterHelper:Lcom/android/internal/widget/AdapterHelper;

    .line 863
    return-void
.end method

.method blacklist invalidateGlows()V
    .locals 1

    .line 2265
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    iput-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    iput-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    iput-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    .line 2266
    return-void
.end method

.method public blacklist invalidateItemDecorations()V
    .locals 2

    .line 4263
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 4264
    return-void

    .line 4266
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_1

    .line 4267
    const-string v1, "Cannot invalidate item decorations during a scroll or layout"

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 4270
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->markItemDecorInsetsDirty()V

    .line 4271
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->requestLayout()V

    .line 4272
    return-void
.end method

.method blacklist isAccessibilityEnabled()Z
    .locals 1

    .line 3233
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist isAnimating()Z
    .locals 1

    .line 4068
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mItemAnimator:Lcom/android/internal/widget/RecyclerView$ItemAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$ItemAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist isAttachedToWindow()Z
    .locals 1

    .line 2538
    iget-boolean v0, p0, Lcom/android/internal/widget/RecyclerView;->mIsAttached:Z

    return v0
.end method

.method public blacklist isComputingLayout()Z
    .locals 1

    .line 3267
    iget v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayoutOrScrollCounter:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist isLayoutFrozen()Z
    .locals 1

    .line 1940
    iget-boolean v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayoutFrozen:Z

    return v0
.end method

.method blacklist jumpToPositionForSmoothScroller(I)V
    .locals 1
    .param p1, "position"    # I

    .line 1523
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    if-nez v0, :cond_0

    .line 1524
    return-void

    .line 1526
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->scrollToPosition(I)V

    .line 1527
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->awakenScrollBars()Z

    .line 1528
    return-void
.end method

.method blacklist markItemDecorInsetsDirty()V
    .locals 5

    .line 3951
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v0}, Lcom/android/internal/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    .line 3952
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 3953
    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v2, v1}, Lcom/android/internal/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 3954
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/RecyclerView$LayoutParams;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/android/internal/widget/RecyclerView$LayoutParams;->mInsetsDirty:Z

    .line 3952
    .end local v2    # "child":Landroid/view/View;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3956
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mRecycler:Lcom/android/internal/widget/RecyclerView$Recycler;

    invoke-virtual {v1}, Lcom/android/internal/widget/RecyclerView$Recycler;->markItemDecorInsetsDirty()V

    .line 3957
    return-void
.end method

.method blacklist markKnownViewsInvalid()V
    .locals 4

    .line 4247
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v0}, Lcom/android/internal/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    .line 4248
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 4249
    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v2, v1}, Lcom/android/internal/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v2

    .line 4250
    .local v2, "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v3

    if-nez v3, :cond_0

    .line 4251
    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->addFlags(I)V

    .line 4248
    .end local v2    # "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4254
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->markItemDecorInsetsDirty()V

    .line 4255
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mRecycler:Lcom/android/internal/widget/RecyclerView$Recycler;

    invoke-virtual {v1}, Lcom/android/internal/widget/RecyclerView$Recycler;->markKnownViewsInvalid()V

    .line 4256
    return-void
.end method

.method public blacklist offsetChildrenHorizontal(I)V
    .locals 3
    .param p1, "dx"    # I

    .line 4618
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v0}, Lcom/android/internal/widget/ChildHelper;->getChildCount()I

    move-result v0

    .line 4619
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 4620
    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v2, v1}, Lcom/android/internal/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 4619
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4622
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public blacklist offsetChildrenVertical(I)V
    .locals 3
    .param p1, "dy"    # I

    .line 4580
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v0}, Lcom/android/internal/widget/ChildHelper;->getChildCount()I

    move-result v0

    .line 4581
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 4582
    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v2, v1}, Lcom/android/internal/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 4581
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4584
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method blacklist offsetPositionRecordsForInsert(II)V
    .locals 5
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .line 4131
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v0}, Lcom/android/internal/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    .line 4132
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 4133
    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v2, v1}, Lcom/android/internal/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v2

    .line 4134
    .local v2, "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v3

    if-nez v3, :cond_0

    iget v3, v2, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mPosition:I

    if-lt v3, p1, :cond_0

    .line 4139
    const/4 v3, 0x0

    invoke-virtual {v2, p2, v3}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->offsetPosition(IZ)V

    .line 4140
    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/android/internal/widget/RecyclerView$State;->mStructureChanged:Z

    .line 4132
    .end local v2    # "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4143
    .end local v1    # "i":I
    :cond_1
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mRecycler:Lcom/android/internal/widget/RecyclerView$Recycler;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/widget/RecyclerView$Recycler;->offsetPositionRecordsForInsert(II)V

    .line 4144
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->requestLayout()V

    .line 4145
    return-void
.end method

.method blacklist offsetPositionRecordsForMove(II)V
    .locals 8
    .param p1, "from"    # I
    .param p2, "to"    # I

    .line 4097
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v0}, Lcom/android/internal/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    .line 4099
    .local v0, "childCount":I
    if-ge p1, p2, :cond_0

    .line 4100
    move v1, p1

    .line 4101
    .local v1, "start":I
    move v2, p2

    .line 4102
    .local v2, "end":I
    const/4 v3, -0x1

    .local v3, "inBetweenOffset":I
    goto :goto_0

    .line 4104
    .end local v1    # "start":I
    .end local v2    # "end":I
    .end local v3    # "inBetweenOffset":I
    :cond_0
    move v1, p2

    .line 4105
    .restart local v1    # "start":I
    move v2, p1

    .line 4106
    .restart local v2    # "end":I
    const/4 v3, 0x1

    .line 4109
    .restart local v3    # "inBetweenOffset":I
    :goto_0
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v0, :cond_4

    .line 4110
    iget-object v5, p0, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v5, v4}, Lcom/android/internal/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v5

    .line 4111
    .local v5, "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    if-eqz v5, :cond_3

    iget v6, v5, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mPosition:I

    if-lt v6, v1, :cond_3

    iget v6, v5, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mPosition:I

    if-le v6, v2, :cond_1

    .line 4112
    goto :goto_3

    .line 4118
    :cond_1
    iget v6, v5, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mPosition:I

    const/4 v7, 0x0

    if-ne v6, p1, :cond_2

    .line 4119
    sub-int v6, p2, p1

    invoke-virtual {v5, v6, v7}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->offsetPosition(IZ)V

    goto :goto_2

    .line 4121
    :cond_2
    invoke-virtual {v5, v3, v7}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->offsetPosition(IZ)V

    .line 4124
    :goto_2
    iget-object v6, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    const/4 v7, 0x1

    iput-boolean v7, v6, Lcom/android/internal/widget/RecyclerView$State;->mStructureChanged:Z

    .line 4109
    .end local v5    # "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    :cond_3
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 4126
    .end local v4    # "i":I
    :cond_4
    iget-object v4, p0, Lcom/android/internal/widget/RecyclerView;->mRecycler:Lcom/android/internal/widget/RecyclerView$Recycler;

    invoke-virtual {v4, p1, p2}, Lcom/android/internal/widget/RecyclerView$Recycler;->offsetPositionRecordsForMove(II)V

    .line 4127
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->requestLayout()V

    .line 4128
    return-void
.end method

.method blacklist offsetPositionRecordsForRemove(IIZ)V
    .locals 7
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I
    .param p3, "applyToPreLayout"    # Z

    .line 4149
    add-int v0, p1, p2

    .line 4150
    .local v0, "positionEnd":I
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v1}, Lcom/android/internal/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v1

    .line 4151
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 4152
    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v3, v2}, Lcom/android/internal/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v3

    .line 4153
    .local v3, "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v4

    if-nez v4, :cond_1

    .line 4154
    iget v4, v3, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mPosition:I

    const/4 v5, 0x1

    if-lt v4, v0, :cond_0

    .line 4160
    neg-int v4, p2

    invoke-virtual {v3, v4, p3}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->offsetPosition(IZ)V

    .line 4161
    iget-object v4, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    iput-boolean v5, v4, Lcom/android/internal/widget/RecyclerView$State;->mStructureChanged:Z

    goto :goto_1

    .line 4162
    :cond_0
    iget v4, v3, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mPosition:I

    if-lt v4, p1, :cond_1

    .line 4167
    add-int/lit8 v4, p1, -0x1

    neg-int v6, p2

    invoke-virtual {v3, v4, v6, p3}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->flagRemovedAndOffsetPosition(IIZ)V

    .line 4169
    iget-object v4, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    iput-boolean v5, v4, Lcom/android/internal/widget/RecyclerView$State;->mStructureChanged:Z

    .line 4151
    .end local v3    # "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4173
    .end local v2    # "i":I
    :cond_2
    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mRecycler:Lcom/android/internal/widget/RecyclerView$Recycler;

    invoke-virtual {v2, p1, p2, p3}, Lcom/android/internal/widget/RecyclerView$Recycler;->offsetPositionRecordsForRemove(IIZ)V

    .line 4174
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->requestLayout()V

    .line 4175
    return-void
.end method

.method protected whitelist onAttachedToWindow()V
    .locals 5

    .line 2479
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 2480
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayoutOrScrollCounter:I

    .line 2481
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/widget/RecyclerView;->mIsAttached:Z

    .line 2482
    iget-boolean v2, p0, Lcom/android/internal/widget/RecyclerView;->mFirstLayoutComplete:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->isLayoutRequested()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    iput-boolean v1, p0, Lcom/android/internal/widget/RecyclerView;->mFirstLayoutComplete:Z

    .line 2483
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    if-eqz v1, :cond_1

    .line 2484
    invoke-virtual {v1, p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->dispatchAttachedToWindow(Lcom/android/internal/widget/RecyclerView;)V

    .line 2486
    :cond_1
    iput-boolean v0, p0, Lcom/android/internal/widget/RecyclerView;->mPostedAnimatorRunner:Z

    .line 2488
    sget-boolean v0, Lcom/android/internal/widget/RecyclerView;->ALLOW_THREAD_GAP_WORK:Z

    if-eqz v0, :cond_4

    .line 2490
    sget-object v0, Lcom/android/internal/widget/GapWorker;->sGapWorker:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/GapWorker;

    iput-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mGapWorker:Lcom/android/internal/widget/GapWorker;

    .line 2491
    if-nez v0, :cond_3

    .line 2492
    new-instance v0, Lcom/android/internal/widget/GapWorker;

    invoke-direct {v0}, Lcom/android/internal/widget/GapWorker;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mGapWorker:Lcom/android/internal/widget/GapWorker;

    .line 2496
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getDisplay()Landroid/view/Display;

    move-result-object v0

    .line 2497
    .local v0, "display":Landroid/view/Display;
    const/high16 v1, 0x42700000    # 60.0f

    .line 2498
    .local v1, "refreshRate":F
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->isInEditMode()Z

    move-result v2

    if-nez v2, :cond_2

    if-eqz v0, :cond_2

    .line 2499
    invoke-virtual {v0}, Landroid/view/Display;->getRefreshRate()F

    move-result v2

    .line 2500
    .local v2, "displayRefreshRate":F
    const/high16 v3, 0x41f00000    # 30.0f

    cmpl-float v3, v2, v3

    if-ltz v3, :cond_2

    .line 2501
    move v1, v2

    .line 2504
    .end local v2    # "displayRefreshRate":F
    :cond_2
    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mGapWorker:Lcom/android/internal/widget/GapWorker;

    const v3, 0x4e6e6b28    # 1.0E9f

    div-float/2addr v3, v1

    float-to-long v3, v3

    iput-wide v3, v2, Lcom/android/internal/widget/GapWorker;->mFrameIntervalNs:J

    .line 2505
    sget-object v2, Lcom/android/internal/widget/GapWorker;->sGapWorker:Ljava/lang/ThreadLocal;

    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mGapWorker:Lcom/android/internal/widget/GapWorker;

    invoke-virtual {v2, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 2507
    .end local v0    # "display":Landroid/view/Display;
    .end local v1    # "refreshRate":F
    :cond_3
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mGapWorker:Lcom/android/internal/widget/GapWorker;

    invoke-virtual {v0, p0}, Lcom/android/internal/widget/GapWorker;->add(Lcom/android/internal/widget/RecyclerView;)V

    .line 2509
    :cond_4
    return-void
.end method

.method public blacklist onChildAttachedToWindow(Landroid/view/View;)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;

    .line 4597
    return-void
.end method

.method public blacklist onChildDetachedFromWindow(Landroid/view/View;)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;

    .line 4609
    return-void
.end method

.method protected whitelist onDetachedFromWindow()V
    .locals 2

    .line 2513
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 2514
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mItemAnimator:Lcom/android/internal/widget/RecyclerView$ItemAnimator;

    if-eqz v0, :cond_0

    .line 2515
    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$ItemAnimator;->endAnimations()V

    .line 2517
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->stopScroll()V

    .line 2518
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/RecyclerView;->mIsAttached:Z

    .line 2519
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_1

    .line 2520
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mRecycler:Lcom/android/internal/widget/RecyclerView$Recycler;

    invoke-virtual {v0, p0, v1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->dispatchDetachedFromWindow(Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$Recycler;)V

    .line 2522
    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mPendingAccessibilityImportanceChange:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2523
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mItemAnimatorRunner:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2524
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mViewInfoStore:Lcom/android/internal/widget/ViewInfoStore;

    invoke-virtual {v0}, Lcom/android/internal/widget/ViewInfoStore;->onDetach()V

    .line 2526
    sget-boolean v0, Lcom/android/internal/widget/RecyclerView;->ALLOW_THREAD_GAP_WORK:Z

    if-eqz v0, :cond_2

    .line 2528
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mGapWorker:Lcom/android/internal/widget/GapWorker;

    invoke-virtual {v0, p0}, Lcom/android/internal/widget/GapWorker;->remove(Lcom/android/internal/widget/RecyclerView;)V

    .line 2529
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mGapWorker:Lcom/android/internal/widget/GapWorker;

    .line 2531
    :cond_2
    return-void
.end method

.method public whitelist onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "c"    # Landroid/graphics/Canvas;

    .line 4022
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 4024
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4025
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 4026
    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/RecyclerView$ItemDecoration;

    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    invoke-virtual {v2, p1, p0, v3}, Lcom/android/internal/widget/RecyclerView$ItemDecoration;->onDraw(Landroid/graphics/Canvas;Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$State;)V

    .line 4025
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4028
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method blacklist onEnterLayoutOrScroll()V
    .locals 1

    .line 3216
    iget v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayoutOrScrollCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayoutOrScrollCounter:I

    .line 3217
    return-void
.end method

.method blacklist onExitLayoutOrScroll()V
    .locals 2

    .line 3220
    iget v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayoutOrScrollCounter:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayoutOrScrollCounter:I

    .line 3221
    if-ge v0, v1, :cond_0

    .line 3226
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayoutOrScrollCounter:I

    .line 3227
    invoke-direct {p0}, Lcom/android/internal/widget/RecyclerView;->dispatchContentChangedIfNecessary()V

    .line 3228
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->dispatchPendingImportantForAccessibilityChanges()V

    .line 3230
    :cond_0
    return-void
.end method

.method public whitelist onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 3046
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 3047
    return v1

    .line 3049
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayoutFrozen:Z

    if-eqz v0, :cond_1

    .line 3050
    return v1

    .line 3052
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_5

    .line 3053
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v2, 0x8

    if-ne v0, v2, :cond_5

    .line 3055
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3058
    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    neg-float v0, v0

    .local v0, "vScroll":F
    goto :goto_0

    .line 3060
    .end local v0    # "vScroll":F
    :cond_2
    const/4 v0, 0x0

    .line 3062
    .restart local v0    # "vScroll":F
    :goto_0
    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {v2}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3063
    const/16 v2, 0xa

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v2

    .local v2, "hScroll":F
    goto :goto_1

    .line 3065
    .end local v2    # "hScroll":F
    :cond_3
    const/4 v2, 0x0

    .line 3068
    .restart local v2    # "hScroll":F
    :goto_1
    const/4 v3, 0x0

    cmpl-float v4, v0, v3

    if-nez v4, :cond_4

    cmpl-float v3, v2, v3

    if-eqz v3, :cond_5

    .line 3069
    :cond_4
    invoke-direct {p0}, Lcom/android/internal/widget/RecyclerView;->getScrollFactor()F

    move-result v3

    .line 3070
    .local v3, "scrollFactor":F
    mul-float v4, v2, v3

    float-to-int v4, v4

    mul-float v5, v0, v3

    float-to-int v5, v5

    invoke-virtual {p0, v4, v5, p1}, Lcom/android/internal/widget/RecyclerView;->scrollByInternal(IILandroid/view/MotionEvent;)Z

    .line 3075
    .end local v0    # "vScroll":F
    .end local v2    # "hScroll":F
    .end local v3    # "scrollFactor":F
    :cond_5
    return v1
.end method

.method public whitelist onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 18
    .param p1, "e"    # Landroid/view/MotionEvent;

    .line 2662
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-boolean v2, v0, Lcom/android/internal/widget/RecyclerView;->mLayoutFrozen:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 2665
    return v3

    .line 2667
    :cond_0
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/widget/RecyclerView;->dispatchOnItemTouchIntercept(Landroid/view/MotionEvent;)Z

    move-result v2

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    .line 2668
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/RecyclerView;->cancelTouch()V

    .line 2669
    return v4

    .line 2672
    :cond_1
    iget-object v2, v0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    if-nez v2, :cond_2

    .line 2673
    return v3

    .line 2676
    :cond_2
    invoke-virtual {v2}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v2

    .line 2677
    .local v2, "canScrollHorizontally":Z
    iget-object v5, v0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {v5}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v5

    .line 2679
    .local v5, "canScrollVertically":Z
    iget-object v6, v0, Lcom/android/internal/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v6, :cond_3

    .line 2680
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v6

    iput-object v6, v0, Lcom/android/internal/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2682
    :cond_3
    iget-object v6, v0, Lcom/android/internal/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v6, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 2684
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v6

    .line 2685
    .local v6, "action":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v7

    .line 2687
    .local v7, "actionIndex":I
    const/high16 v8, 0x3f000000    # 0.5f

    packed-switch v6, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_2

    .line 2749
    :pswitch_1
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/widget/RecyclerView;->onPointerUp(Landroid/view/MotionEvent;)V

    .line 2750
    goto/16 :goto_2

    .line 2715
    :pswitch_2
    invoke-virtual {v1, v7}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v9

    iput v9, v0, Lcom/android/internal/widget/RecyclerView;->mScrollPointerId:I

    .line 2716
    invoke-virtual {v1, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result v9

    add-float/2addr v9, v8

    float-to-int v9, v9

    iput v9, v0, Lcom/android/internal/widget/RecyclerView;->mLastTouchX:I

    iput v9, v0, Lcom/android/internal/widget/RecyclerView;->mInitialTouchX:I

    .line 2717
    invoke-virtual {v1, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    add-float/2addr v9, v8

    float-to-int v8, v9

    iput v8, v0, Lcom/android/internal/widget/RecyclerView;->mLastTouchY:I

    iput v8, v0, Lcom/android/internal/widget/RecyclerView;->mInitialTouchY:I

    .line 2718
    goto/16 :goto_2

    .line 2758
    :pswitch_3
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/RecyclerView;->cancelTouch()V

    goto/16 :goto_2

    .line 2721
    :pswitch_4
    iget v9, v0, Lcom/android/internal/widget/RecyclerView;->mScrollPointerId:I

    invoke-virtual {v1, v9}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v9

    .line 2722
    .local v9, "index":I
    if-gez v9, :cond_4

    .line 2723
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error processing scroll; pointer index for id "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v8, v0, Lcom/android/internal/widget/RecyclerView;->mScrollPointerId:I

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, " not found. Did any MotionEvents get skipped?"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v8, "RecyclerView"

    invoke-static {v8, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2725
    return v3

    .line 2728
    :cond_4
    invoke-virtual {v1, v9}, Landroid/view/MotionEvent;->getX(I)F

    move-result v10

    add-float/2addr v10, v8

    float-to-int v10, v10

    .line 2729
    .local v10, "x":I
    invoke-virtual {v1, v9}, Landroid/view/MotionEvent;->getY(I)F

    move-result v11

    add-float/2addr v11, v8

    float-to-int v8, v11

    .line 2730
    .local v8, "y":I
    iget v11, v0, Lcom/android/internal/widget/RecyclerView;->mScrollState:I

    if-eq v11, v4, :cond_9

    .line 2731
    iget v11, v0, Lcom/android/internal/widget/RecyclerView;->mInitialTouchX:I

    sub-int v11, v10, v11

    .line 2732
    .local v11, "dx":I
    iget v12, v0, Lcom/android/internal/widget/RecyclerView;->mInitialTouchY:I

    sub-int v12, v8, v12

    .line 2733
    .local v12, "dy":I
    const/4 v13, 0x0

    .line 2734
    .local v13, "startScroll":Z
    if-eqz v2, :cond_6

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v15

    iget v14, v0, Lcom/android/internal/widget/RecyclerView;->mTouchSlop:I

    if-le v15, v14, :cond_6

    .line 2735
    iget v15, v0, Lcom/android/internal/widget/RecyclerView;->mInitialTouchX:I

    if-gez v11, :cond_5

    const/16 v17, -0x1

    goto :goto_0

    :cond_5
    move/from16 v17, v4

    :goto_0
    mul-int v14, v14, v17

    add-int/2addr v15, v14

    iput v15, v0, Lcom/android/internal/widget/RecyclerView;->mLastTouchX:I

    .line 2736
    const/4 v13, 0x1

    .line 2738
    :cond_6
    if-eqz v5, :cond_8

    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v14

    iget v15, v0, Lcom/android/internal/widget/RecyclerView;->mTouchSlop:I

    if-le v14, v15, :cond_8

    .line 2739
    iget v14, v0, Lcom/android/internal/widget/RecyclerView;->mInitialTouchY:I

    if-gez v12, :cond_7

    const/16 v16, -0x1

    goto :goto_1

    :cond_7
    move/from16 v16, v4

    :goto_1
    mul-int v15, v15, v16

    add-int/2addr v14, v15

    iput v14, v0, Lcom/android/internal/widget/RecyclerView;->mLastTouchY:I

    .line 2740
    const/4 v13, 0x1

    .line 2742
    :cond_8
    if-eqz v13, :cond_9

    .line 2743
    invoke-virtual {v0, v4}, Lcom/android/internal/widget/RecyclerView;->setScrollState(I)V

    .line 2746
    .end local v8    # "y":I
    .end local v9    # "index":I
    .end local v10    # "x":I
    .end local v11    # "dx":I
    .end local v12    # "dy":I
    .end local v13    # "startScroll":Z
    :cond_9
    goto :goto_2

    .line 2753
    :pswitch_5
    iget-object v8, v0, Lcom/android/internal/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v8}, Landroid/view/VelocityTracker;->clear()V

    .line 2754
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/RecyclerView;->stopNestedScroll()V

    .line 2755
    goto :goto_2

    .line 2689
    :pswitch_6
    iget-boolean v9, v0, Lcom/android/internal/widget/RecyclerView;->mIgnoreMotionEventTillDown:Z

    if-eqz v9, :cond_a

    .line 2690
    iput-boolean v3, v0, Lcom/android/internal/widget/RecyclerView;->mIgnoreMotionEventTillDown:Z

    .line 2692
    :cond_a
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v9

    iput v9, v0, Lcom/android/internal/widget/RecyclerView;->mScrollPointerId:I

    .line 2693
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    add-float/2addr v9, v8

    float-to-int v9, v9

    iput v9, v0, Lcom/android/internal/widget/RecyclerView;->mLastTouchX:I

    iput v9, v0, Lcom/android/internal/widget/RecyclerView;->mInitialTouchX:I

    .line 2694
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    add-float/2addr v9, v8

    float-to-int v8, v9

    iput v8, v0, Lcom/android/internal/widget/RecyclerView;->mLastTouchY:I

    iput v8, v0, Lcom/android/internal/widget/RecyclerView;->mInitialTouchY:I

    .line 2696
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/widget/RecyclerView;->stopGlowAnimations(Landroid/view/MotionEvent;)Z

    move-result v8

    if-nez v8, :cond_b

    iget v8, v0, Lcom/android/internal/widget/RecyclerView;->mScrollState:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_c

    .line 2697
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/RecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    invoke-interface {v8, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 2698
    invoke-virtual {v0, v4}, Lcom/android/internal/widget/RecyclerView;->setScrollState(I)V

    .line 2702
    :cond_c
    iget-object v8, v0, Lcom/android/internal/widget/RecyclerView;->mNestedOffsets:[I

    aput v3, v8, v4

    aput v3, v8, v3

    .line 2704
    const/4 v8, 0x0

    .line 2705
    .local v8, "nestedScrollAxis":I
    if-eqz v2, :cond_d

    .line 2706
    or-int/lit8 v8, v8, 0x1

    .line 2708
    :cond_d
    if-eqz v5, :cond_e

    .line 2709
    or-int/lit8 v8, v8, 0x2

    .line 2711
    :cond_e
    invoke-virtual {v0, v8}, Lcom/android/internal/widget/RecyclerView;->startNestedScroll(I)Z

    .line 2712
    nop

    .line 2761
    .end local v8    # "nestedScrollAxis":I
    :goto_2
    iget v8, v0, Lcom/android/internal/widget/RecyclerView;->mScrollState:I

    if-ne v8, v4, :cond_f

    move v3, v4

    :cond_f
    return v3

    nop

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

.method protected whitelist onLayout(ZIIII)V
    .locals 1
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 3935
    const-string v0, "RV OnLayout"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 3936
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->dispatchLayout()V

    .line 3937
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 3938
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/RecyclerView;->mFirstLayoutComplete:Z

    .line 3939
    return-void
.end method

.method protected whitelist onMeasure(II)V
    .locals 8
    .param p1, "widthSpec"    # I
    .param p2, "heightSpec"    # I

    .line 3097
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    if-nez v0, :cond_0

    .line 3098
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/widget/RecyclerView;->defaultOnMeasure(II)V

    .line 3099
    return-void

    .line 3101
    :cond_0
    iget-boolean v0, v0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mAutoMeasure:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_6

    .line 3102
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 3103
    .local v0, "widthMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 3104
    .local v3, "heightMode":I
    const/high16 v4, 0x40000000    # 2.0f

    if-ne v0, v4, :cond_1

    if-ne v3, v4, :cond_1

    move v2, v1

    .line 3106
    .local v2, "skipMeasure":Z
    :cond_1
    iget-object v5, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    iget-object v6, p0, Lcom/android/internal/widget/RecyclerView;->mRecycler:Lcom/android/internal/widget/RecyclerView$Recycler;

    iget-object v7, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    invoke-virtual {v5, v6, v7, p1, p2}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->onMeasure(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;II)V

    .line 3107
    if-nez v2, :cond_5

    iget-object v5, p0, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    if-nez v5, :cond_2

    goto :goto_0

    .line 3110
    :cond_2
    iget-object v5, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    iget v5, v5, Lcom/android/internal/widget/RecyclerView$State;->mLayoutStep:I

    if-ne v5, v1, :cond_3

    .line 3111
    invoke-direct {p0}, Lcom/android/internal/widget/RecyclerView;->dispatchLayoutStep1()V

    .line 3115
    :cond_3
    iget-object v5, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {v5, p1, p2}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->setMeasureSpecs(II)V

    .line 3116
    iget-object v5, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    iput-boolean v1, v5, Lcom/android/internal/widget/RecyclerView$State;->mIsMeasuring:Z

    .line 3117
    invoke-direct {p0}, Lcom/android/internal/widget/RecyclerView;->dispatchLayoutStep2()V

    .line 3120
    iget-object v5, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {v5, p1, p2}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->setMeasuredDimensionFromChildren(II)V

    .line 3124
    iget-object v5, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {v5}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->shouldMeasureTwice()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 3125
    iget-object v5, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    .line 3126
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getMeasuredWidth()I

    move-result v6

    invoke-static {v6, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 3127
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getMeasuredHeight()I

    move-result v7

    invoke-static {v7, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 3125
    invoke-virtual {v5, v6, v4}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->setMeasureSpecs(II)V

    .line 3128
    iget-object v4, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    iput-boolean v1, v4, Lcom/android/internal/widget/RecyclerView$State;->mIsMeasuring:Z

    .line 3129
    invoke-direct {p0}, Lcom/android/internal/widget/RecyclerView;->dispatchLayoutStep2()V

    .line 3131
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->setMeasuredDimensionFromChildren(II)V

    .line 3133
    .end local v0    # "widthMode":I
    .end local v2    # "skipMeasure":Z
    .end local v3    # "heightMode":I
    :cond_4
    goto :goto_3

    .line 3108
    .restart local v0    # "widthMode":I
    .restart local v2    # "skipMeasure":Z
    .restart local v3    # "heightMode":I
    :cond_5
    :goto_0
    return-void

    .line 3134
    .end local v0    # "widthMode":I
    .end local v2    # "skipMeasure":Z
    .end local v3    # "heightMode":I
    :cond_6
    iget-boolean v0, p0, Lcom/android/internal/widget/RecyclerView;->mHasFixedSize:Z

    if-eqz v0, :cond_7

    .line 3135
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mRecycler:Lcom/android/internal/widget/RecyclerView$Recycler;

    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->onMeasure(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;II)V

    .line 3136
    return-void

    .line 3139
    :cond_7
    iget-boolean v0, p0, Lcom/android/internal/widget/RecyclerView;->mAdapterUpdateDuringMeasure:Z

    if-eqz v0, :cond_9

    .line 3140
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->eatRequestLayout()V

    .line 3141
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->onEnterLayoutOrScroll()V

    .line 3142
    invoke-direct {p0}, Lcom/android/internal/widget/RecyclerView;->processAdapterUpdatesAndSetAnimationFlags()V

    .line 3143
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->onExitLayoutOrScroll()V

    .line 3145
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    iget-boolean v0, v0, Lcom/android/internal/widget/RecyclerView$State;->mRunPredictiveAnimations:Z

    if-eqz v0, :cond_8

    .line 3146
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    iput-boolean v1, v0, Lcom/android/internal/widget/RecyclerView$State;->mInPreLayout:Z

    goto :goto_1

    .line 3149
    :cond_8
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mAdapterHelper:Lcom/android/internal/widget/AdapterHelper;

    invoke-virtual {v0}, Lcom/android/internal/widget/AdapterHelper;->consumeUpdatesInOnePass()V

    .line 3150
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    iput-boolean v2, v0, Lcom/android/internal/widget/RecyclerView$State;->mInPreLayout:Z

    .line 3152
    :goto_1
    iput-boolean v2, p0, Lcom/android/internal/widget/RecyclerView;->mAdapterUpdateDuringMeasure:Z

    .line 3153
    invoke-virtual {p0, v2}, Lcom/android/internal/widget/RecyclerView;->resumeRequestLayout(Z)V

    .line 3156
    :cond_9
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_a

    .line 3157
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    iput v0, v1, Lcom/android/internal/widget/RecyclerView$State;->mItemCount:I

    goto :goto_2

    .line 3159
    :cond_a
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    iput v2, v0, Lcom/android/internal/widget/RecyclerView$State;->mItemCount:I

    .line 3161
    :goto_2
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->eatRequestLayout()V

    .line 3162
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mRecycler:Lcom/android/internal/widget/RecyclerView$Recycler;

    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    invoke-virtual {v0, v1, v3, p1, p2}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->onMeasure(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;II)V

    .line 3163
    invoke-virtual {p0, v2}, Lcom/android/internal/widget/RecyclerView;->resumeRequestLayout(Z)V

    .line 3164
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    iput-boolean v2, v0, Lcom/android/internal/widget/RecyclerView$State;->mInPreLayout:Z

    .line 3166
    :goto_3
    return-void
.end method

.method protected whitelist onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 1
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .line 2469
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->isComputingLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2472
    const/4 v0, 0x0

    return v0

    .line 2474
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method protected whitelist onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 1205
    instance-of v0, p1, Lcom/android/internal/widget/RecyclerView$SavedState;

    if-nez v0, :cond_0

    .line 1206
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1207
    return-void

    .line 1210
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/android/internal/widget/RecyclerView$SavedState;

    iput-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mPendingSavedState:Lcom/android/internal/widget/RecyclerView$SavedState;

    .line 1211
    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1212
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mPendingSavedState:Lcom/android/internal/widget/RecyclerView$SavedState;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView$SavedState;->mLayoutState:Landroid/os/Parcelable;

    if-eqz v0, :cond_1

    .line 1213
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mPendingSavedState:Lcom/android/internal/widget/RecyclerView$SavedState;

    iget-object v1, v1, Lcom/android/internal/widget/RecyclerView$SavedState;->mLayoutState:Landroid/os/Parcelable;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1215
    :cond_1
    return-void
.end method

.method protected whitelist onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 1191
    new-instance v0, Lcom/android/internal/widget/RecyclerView$SavedState;

    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/RecyclerView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1192
    .local v0, "state":Lcom/android/internal/widget/RecyclerView$SavedState;
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mPendingSavedState:Lcom/android/internal/widget/RecyclerView$SavedState;

    if-eqz v1, :cond_0

    .line 1193
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/RecyclerView$SavedState;->copyFrom(Lcom/android/internal/widget/RecyclerView$SavedState;)V

    goto :goto_0

    .line 1194
    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    if-eqz v1, :cond_1

    .line 1195
    invoke-virtual {v1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/widget/RecyclerView$SavedState;->mLayoutState:Landroid/os/Parcelable;

    goto :goto_0

    .line 1197
    :cond_1
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/internal/widget/RecyclerView$SavedState;->mLayoutState:Landroid/os/Parcelable;

    .line 1200
    :goto_0
    return-object v0
.end method

.method public blacklist onScrollStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .line 4729
    return-void
.end method

.method public blacklist onScrolled(II)V
    .locals 0
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .line 4691
    return-void
.end method

.method protected whitelist onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .line 3186
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    .line 3187
    if-ne p1, p3, :cond_0

    if-eq p2, p4, :cond_1

    .line 3188
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->invalidateGlows()V

    .line 3191
    :cond_1
    return-void
.end method

.method public whitelist onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 19
    .param p1, "e"    # Landroid/view/MotionEvent;

    .line 2808
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-boolean v2, v0, Lcom/android/internal/widget/RecyclerView;->mLayoutFrozen:Z

    const/4 v3, 0x0

    if-nez v2, :cond_1a

    iget-boolean v2, v0, Lcom/android/internal/widget/RecyclerView;->mIgnoreMotionEventTillDown:Z

    if-eqz v2, :cond_0

    goto/16 :goto_9

    .line 2811
    :cond_0
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/widget/RecyclerView;->dispatchOnItemTouch(Landroid/view/MotionEvent;)Z

    move-result v2

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    .line 2812
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/RecyclerView;->cancelTouch()V

    .line 2813
    return v4

    .line 2816
    :cond_1
    iget-object v2, v0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    if-nez v2, :cond_2

    .line 2817
    return v3

    .line 2820
    :cond_2
    invoke-virtual {v2}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v2

    .line 2821
    .local v2, "canScrollHorizontally":Z
    iget-object v5, v0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {v5}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v5

    .line 2823
    .local v5, "canScrollVertically":Z
    iget-object v6, v0, Lcom/android/internal/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v6, :cond_3

    .line 2824
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v6

    iput-object v6, v0, Lcom/android/internal/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2826
    :cond_3
    const/4 v6, 0x0

    .line 2828
    .local v6, "eventAddedToVelocityTracker":Z
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v7

    .line 2829
    .local v7, "vtev":Landroid/view/MotionEvent;
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v8

    .line 2830
    .local v8, "action":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v9

    .line 2832
    .local v9, "actionIndex":I
    if-nez v8, :cond_4

    .line 2833
    iget-object v10, v0, Lcom/android/internal/widget/RecyclerView;->mNestedOffsets:[I

    aput v3, v10, v4

    aput v3, v10, v3

    .line 2835
    :cond_4
    iget-object v10, v0, Lcom/android/internal/widget/RecyclerView;->mNestedOffsets:[I

    aget v11, v10, v3

    int-to-float v11, v11

    aget v10, v10, v4

    int-to-float v10, v10

    invoke-virtual {v7, v11, v10}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 2837
    const/high16 v10, 0x3f000000    # 0.5f

    packed-switch v8, :pswitch_data_0

    :pswitch_0
    move/from16 v17, v6

    .end local v6    # "eventAddedToVelocityTracker":Z
    .local v17, "eventAddedToVelocityTracker":Z
    goto/16 :goto_7

    .line 2924
    .end local v17    # "eventAddedToVelocityTracker":Z
    .restart local v6    # "eventAddedToVelocityTracker":Z
    :pswitch_1
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/widget/RecyclerView;->onPointerUp(Landroid/view/MotionEvent;)V

    .line 2925
    move/from16 v17, v6

    goto/16 :goto_7

    .line 2854
    :pswitch_2
    invoke-virtual {v1, v9}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, v0, Lcom/android/internal/widget/RecyclerView;->mScrollPointerId:I

    .line 2855
    invoke-virtual {v1, v9}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    add-float/2addr v3, v10

    float-to-int v3, v3

    iput v3, v0, Lcom/android/internal/widget/RecyclerView;->mLastTouchX:I

    iput v3, v0, Lcom/android/internal/widget/RecyclerView;->mInitialTouchX:I

    .line 2856
    invoke-virtual {v1, v9}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    add-float/2addr v3, v10

    float-to-int v3, v3

    iput v3, v0, Lcom/android/internal/widget/RecyclerView;->mLastTouchY:I

    iput v3, v0, Lcom/android/internal/widget/RecyclerView;->mInitialTouchY:I

    .line 2857
    move/from16 v17, v6

    goto/16 :goto_7

    .line 2942
    :pswitch_3
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/RecyclerView;->cancelTouch()V

    move/from16 v17, v6

    goto/16 :goto_7

    .line 2860
    :pswitch_4
    iget v11, v0, Lcom/android/internal/widget/RecyclerView;->mScrollPointerId:I

    invoke-virtual {v1, v11}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v11

    .line 2861
    .local v11, "index":I
    if-gez v11, :cond_5

    .line 2862
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error processing scroll; pointer index for id "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v10, v0, Lcom/android/internal/widget/RecyclerView;->mScrollPointerId:I

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v10, " not found. Did any MotionEvents get skipped?"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v10, "RecyclerView"

    invoke-static {v10, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2864
    invoke-virtual {v7}, Landroid/view/MotionEvent;->recycle()V

    .line 2865
    return v3

    .line 2868
    :cond_5
    invoke-virtual {v1, v11}, Landroid/view/MotionEvent;->getX(I)F

    move-result v12

    add-float/2addr v12, v10

    float-to-int v12, v12

    .line 2869
    .local v12, "x":I
    invoke-virtual {v1, v11}, Landroid/view/MotionEvent;->getY(I)F

    move-result v13

    add-float/2addr v13, v10

    float-to-int v10, v13

    .line 2870
    .local v10, "y":I
    iget v13, v0, Lcom/android/internal/widget/RecyclerView;->mLastTouchX:I

    sub-int/2addr v13, v12

    .line 2871
    .local v13, "dx":I
    iget v14, v0, Lcom/android/internal/widget/RecyclerView;->mLastTouchY:I

    sub-int/2addr v14, v10

    .line 2872
    .local v14, "dy":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v15

    invoke-direct {v0, v13, v15}, Lcom/android/internal/widget/RecyclerView;->releaseHorizontalGlow(IF)I

    move-result v15

    sub-int/2addr v13, v15

    .line 2873
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v15

    invoke-direct {v0, v14, v15}, Lcom/android/internal/widget/RecyclerView;->releaseVerticalGlow(IF)I

    move-result v15

    sub-int/2addr v14, v15

    .line 2875
    iget-object v15, v0, Lcom/android/internal/widget/RecyclerView;->mScrollConsumed:[I

    iget-object v4, v0, Lcom/android/internal/widget/RecyclerView;->mScrollOffset:[I

    invoke-virtual {v0, v13, v14, v15, v4}, Lcom/android/internal/widget/RecyclerView;->dispatchNestedPreScroll(II[I[I)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 2876
    iget-object v4, v0, Lcom/android/internal/widget/RecyclerView;->mScrollConsumed:[I

    aget v15, v4, v3

    sub-int/2addr v13, v15

    .line 2877
    const/4 v15, 0x1

    aget v4, v4, v15

    sub-int/2addr v14, v4

    .line 2878
    iget-object v4, v0, Lcom/android/internal/widget/RecyclerView;->mScrollOffset:[I

    move/from16 v17, v6

    .end local v6    # "eventAddedToVelocityTracker":Z
    .restart local v17    # "eventAddedToVelocityTracker":Z
    aget v6, v4, v3

    int-to-float v6, v6

    aget v4, v4, v15

    int-to-float v4, v4

    invoke-virtual {v7, v6, v4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 2880
    iget-object v4, v0, Lcom/android/internal/widget/RecyclerView;->mNestedOffsets:[I

    aget v6, v4, v3

    iget-object v15, v0, Lcom/android/internal/widget/RecyclerView;->mScrollOffset:[I

    aget v18, v15, v3

    add-int v6, v6, v18

    aput v6, v4, v3

    .line 2881
    const/4 v6, 0x1

    aget v16, v4, v6

    aget v15, v15, v6

    add-int v16, v16, v15

    aput v16, v4, v6

    goto :goto_0

    .line 2875
    .end local v17    # "eventAddedToVelocityTracker":Z
    .restart local v6    # "eventAddedToVelocityTracker":Z
    :cond_6
    move/from16 v17, v6

    const/4 v6, 0x1

    .line 2884
    .end local v6    # "eventAddedToVelocityTracker":Z
    .restart local v17    # "eventAddedToVelocityTracker":Z
    :goto_0
    iget v4, v0, Lcom/android/internal/widget/RecyclerView;->mScrollState:I

    if-eq v4, v6, :cond_c

    .line 2885
    const/4 v4, 0x0

    .line 2886
    .local v4, "startScroll":Z
    if-eqz v2, :cond_8

    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v6

    iget v15, v0, Lcom/android/internal/widget/RecyclerView;->mTouchSlop:I

    if-le v6, v15, :cond_8

    .line 2887
    if-lez v13, :cond_7

    .line 2888
    sub-int/2addr v13, v15

    goto :goto_1

    .line 2890
    :cond_7
    add-int/2addr v13, v15

    .line 2892
    :goto_1
    const/4 v4, 0x1

    .line 2894
    :cond_8
    if-eqz v5, :cond_a

    invoke-static {v14}, Ljava/lang/Math;->abs(I)I

    move-result v6

    iget v15, v0, Lcom/android/internal/widget/RecyclerView;->mTouchSlop:I

    if-le v6, v15, :cond_a

    .line 2895
    if-lez v14, :cond_9

    .line 2896
    sub-int/2addr v14, v15

    goto :goto_2

    .line 2898
    :cond_9
    add-int/2addr v14, v15

    .line 2900
    :goto_2
    const/4 v4, 0x1

    .line 2902
    :cond_a
    if-eqz v4, :cond_b

    .line 2903
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Lcom/android/internal/widget/RecyclerView;->setScrollState(I)V

    goto :goto_3

    .line 2902
    :cond_b
    const/4 v6, 0x1

    .line 2907
    .end local v4    # "startScroll":Z
    :cond_c
    :goto_3
    iget v4, v0, Lcom/android/internal/widget/RecyclerView;->mScrollState:I

    if-ne v4, v6, :cond_11

    .line 2908
    iget-object v4, v0, Lcom/android/internal/widget/RecyclerView;->mScrollOffset:[I

    aget v15, v4, v3

    sub-int v15, v12, v15

    iput v15, v0, Lcom/android/internal/widget/RecyclerView;->mLastTouchX:I

    .line 2909
    aget v4, v4, v6

    sub-int v4, v10, v4

    iput v4, v0, Lcom/android/internal/widget/RecyclerView;->mLastTouchY:I

    .line 2911
    nop

    .line 2912
    if-eqz v2, :cond_d

    move v4, v13

    goto :goto_4

    :cond_d
    move v4, v3

    .line 2913
    :goto_4
    if-eqz v5, :cond_e

    move v3, v14

    .line 2911
    :cond_e
    invoke-virtual {v0, v4, v3, v7}, Lcom/android/internal/widget/RecyclerView;->scrollByInternal(IILandroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 2915
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/RecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 2917
    :cond_f
    iget-object v3, v0, Lcom/android/internal/widget/RecyclerView;->mGapWorker:Lcom/android/internal/widget/GapWorker;

    if-eqz v3, :cond_11

    if-nez v13, :cond_10

    if-eqz v14, :cond_11

    .line 2918
    :cond_10
    invoke-virtual {v3, v0, v13, v14}, Lcom/android/internal/widget/GapWorker;->postFromTraversal(Lcom/android/internal/widget/RecyclerView;II)V

    .line 2921
    .end local v10    # "y":I
    .end local v11    # "index":I
    .end local v12    # "x":I
    .end local v13    # "dx":I
    .end local v14    # "dy":I
    :cond_11
    goto/16 :goto_7

    .line 2928
    .end local v17    # "eventAddedToVelocityTracker":Z
    .restart local v6    # "eventAddedToVelocityTracker":Z
    :pswitch_5
    move/from16 v17, v6

    .end local v6    # "eventAddedToVelocityTracker":Z
    .restart local v17    # "eventAddedToVelocityTracker":Z
    iget-object v4, v0, Lcom/android/internal/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v4, v7}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 2929
    const/4 v6, 0x1

    .line 2930
    .end local v17    # "eventAddedToVelocityTracker":Z
    .restart local v6    # "eventAddedToVelocityTracker":Z
    iget-object v4, v0, Lcom/android/internal/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v10, 0x3e8

    iget v11, v0, Lcom/android/internal/widget/RecyclerView;->mMaxFlingVelocity:I

    int-to-float v11, v11

    invoke-virtual {v4, v10, v11}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 2931
    const/4 v4, 0x0

    if-eqz v2, :cond_12

    .line 2932
    iget-object v10, v0, Lcom/android/internal/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v11, v0, Lcom/android/internal/widget/RecyclerView;->mScrollPointerId:I

    invoke-virtual {v10, v11}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v10

    neg-float v10, v10

    goto :goto_5

    :cond_12
    move v10, v4

    .line 2933
    .local v10, "xvel":F
    :goto_5
    if-eqz v5, :cond_13

    .line 2934
    iget-object v11, v0, Lcom/android/internal/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v12, v0, Lcom/android/internal/widget/RecyclerView;->mScrollPointerId:I

    invoke-virtual {v11, v12}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v11

    neg-float v11, v11

    goto :goto_6

    :cond_13
    move v11, v4

    .line 2935
    .local v11, "yvel":F
    :goto_6
    cmpl-float v12, v10, v4

    if-nez v12, :cond_14

    cmpl-float v4, v11, v4

    if-eqz v4, :cond_15

    :cond_14
    float-to-int v4, v10

    float-to-int v12, v11

    invoke-virtual {v0, v4, v12}, Lcom/android/internal/widget/RecyclerView;->fling(II)Z

    move-result v4

    if-nez v4, :cond_16

    .line 2936
    :cond_15
    invoke-virtual {v0, v3}, Lcom/android/internal/widget/RecyclerView;->setScrollState(I)V

    .line 2938
    :cond_16
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/RecyclerView;->resetTouch()V

    .line 2939
    .end local v10    # "xvel":F
    .end local v11    # "yvel":F
    goto :goto_8

    .line 2839
    :pswitch_6
    move/from16 v17, v6

    .end local v6    # "eventAddedToVelocityTracker":Z
    .restart local v17    # "eventAddedToVelocityTracker":Z
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, v0, Lcom/android/internal/widget/RecyclerView;->mScrollPointerId:I

    .line 2840
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    add-float/2addr v3, v10

    float-to-int v3, v3

    iput v3, v0, Lcom/android/internal/widget/RecyclerView;->mLastTouchX:I

    iput v3, v0, Lcom/android/internal/widget/RecyclerView;->mInitialTouchX:I

    .line 2841
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    add-float/2addr v3, v10

    float-to-int v3, v3

    iput v3, v0, Lcom/android/internal/widget/RecyclerView;->mLastTouchY:I

    iput v3, v0, Lcom/android/internal/widget/RecyclerView;->mInitialTouchY:I

    .line 2843
    const/4 v3, 0x0

    .line 2844
    .local v3, "nestedScrollAxis":I
    if-eqz v2, :cond_17

    .line 2845
    or-int/lit8 v3, v3, 0x1

    .line 2847
    :cond_17
    if-eqz v5, :cond_18

    .line 2848
    or-int/lit8 v3, v3, 0x2

    .line 2850
    :cond_18
    invoke-virtual {v0, v3}, Lcom/android/internal/widget/RecyclerView;->startNestedScroll(I)Z

    .line 2851
    .end local v3    # "nestedScrollAxis":I
    nop

    .line 2946
    :goto_7
    move/from16 v6, v17

    .end local v17    # "eventAddedToVelocityTracker":Z
    .restart local v6    # "eventAddedToVelocityTracker":Z
    :goto_8
    if-nez v6, :cond_19

    .line 2947
    iget-object v3, v0, Lcom/android/internal/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3, v7}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 2949
    :cond_19
    invoke-virtual {v7}, Landroid/view/MotionEvent;->recycle()V

    .line 2951
    const/4 v3, 0x1

    return v3

    .line 2809
    .end local v2    # "canScrollHorizontally":Z
    .end local v5    # "canScrollVertically":Z
    .end local v6    # "eventAddedToVelocityTracker":Z
    .end local v7    # "vtev":Landroid/view/MotionEvent;
    .end local v8    # "action":I
    .end local v9    # "actionIndex":I
    :cond_1a
    :goto_9
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

.method blacklist postAnimationRunner()V
    .locals 1

    .line 3319
    iget-boolean v0, p0, Lcom/android/internal/widget/RecyclerView;->mPostedAnimatorRunner:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/widget/RecyclerView;->mIsAttached:Z

    if-eqz v0, :cond_0

    .line 3320
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mItemAnimatorRunner:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/RecyclerView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 3321
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/RecyclerView;->mPostedAnimatorRunner:Z

    .line 3323
    :cond_0
    return-void
.end method

.method blacklist recordAnimationInfoIfBouncedHiddenView(Lcom/android/internal/widget/RecyclerView$ViewHolder;Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V
    .locals 3
    .param p1, "viewHolder"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .param p2, "animationInfo"    # Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    .line 3829
    const/4 v0, 0x0

    const/16 v1, 0x2000

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->setFlags(II)V

    .line 3830
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    iget-boolean v0, v0, Lcom/android/internal/widget/RecyclerView$State;->mTrackOldChangeHolders:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->isUpdated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3831
    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3832
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/RecyclerView;->getChangedHolderKey(Lcom/android/internal/widget/RecyclerView$ViewHolder;)J

    move-result-wide v0

    .line 3833
    .local v0, "key":J
    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mViewInfoStore:Lcom/android/internal/widget/ViewInfoStore;

    invoke-virtual {v2, v0, v1, p1}, Lcom/android/internal/widget/ViewInfoStore;->addToOldChangeHolders(JLcom/android/internal/widget/RecyclerView$ViewHolder;)V

    .line 3835
    .end local v0    # "key":J
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mViewInfoStore:Lcom/android/internal/widget/ViewInfoStore;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/ViewInfoStore;->addToPreLayout(Lcom/android/internal/widget/RecyclerView$ViewHolder;Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    .line 3836
    return-void
.end method

.method blacklist removeAndRecycleViews()V
    .locals 2

    .line 985
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mItemAnimator:Lcom/android/internal/widget/RecyclerView$ItemAnimator;

    if-eqz v0, :cond_0

    .line 986
    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$ItemAnimator;->endAnimations()V

    .line 992
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_1

    .line 993
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mRecycler:Lcom/android/internal/widget/RecyclerView$Recycler;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->removeAndRecycleAllViews(Lcom/android/internal/widget/RecyclerView$Recycler;)V

    .line 994
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mRecycler:Lcom/android/internal/widget/RecyclerView$Recycler;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->removeAndRecycleScrapInt(Lcom/android/internal/widget/RecyclerView$Recycler;)V

    .line 997
    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mRecycler:Lcom/android/internal/widget/RecyclerView$Recycler;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$Recycler;->clear()V

    .line 998
    return-void
.end method

.method blacklist removeAnimatingView(Landroid/view/View;)Z
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .line 1262
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->eatRequestLayout()V

    .line 1263
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ChildHelper;->removeViewIfHidden(Landroid/view/View;)Z

    move-result v0

    .line 1264
    .local v0, "removed":Z
    if-eqz v0, :cond_0

    .line 1265
    invoke-static {p1}, Lcom/android/internal/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v1

    .line 1266
    .local v1, "viewHolder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mRecycler:Lcom/android/internal/widget/RecyclerView$Recycler;

    invoke-virtual {v2, v1}, Lcom/android/internal/widget/RecyclerView$Recycler;->unscrapView(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    .line 1267
    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mRecycler:Lcom/android/internal/widget/RecyclerView$Recycler;

    invoke-virtual {v2, v1}, Lcom/android/internal/widget/RecyclerView$Recycler;->recycleViewHolderInternal(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    .line 1273
    .end local v1    # "viewHolder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    :cond_0
    xor-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/RecyclerView;->resumeRequestLayout(Z)V

    .line 1274
    return v0
.end method

.method protected whitelist removeDetachedView(Landroid/view/View;Z)V
    .locals 4
    .param p1, "child"    # Landroid/view/View;
    .param p2, "animate"    # Z

    .line 3872
    invoke-static {p1}, Lcom/android/internal/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 3873
    .local v0, "vh":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    if-eqz v0, :cond_2

    .line 3874
    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->isTmpDetached()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3875
    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->clearTmpDetachFlag()V

    goto :goto_0

    .line 3876
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 3877
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Called removeDetachedView with a view which is not flagged as tmp detached."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3881
    :cond_2
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/RecyclerView;->dispatchChildDetached(Landroid/view/View;)V

    .line 3882
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->removeDetachedView(Landroid/view/View;Z)V

    .line 3883
    return-void
.end method

.method public blacklist removeItemDecoration(Lcom/android/internal/widget/RecyclerView$ItemDecoration;)V
    .locals 2
    .param p1, "decor"    # Lcom/android/internal/widget/RecyclerView$ItemDecoration;

    .line 1419
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_0

    .line 1420
    const-string v1, "Cannot remove item decoration during a scroll  or layout"

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 1423
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1424
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1425
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getOverScrollMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/RecyclerView;->setWillNotDraw(Z)V

    .line 1427
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->markItemDecorInsetsDirty()V

    .line 1428
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->requestLayout()V

    .line 1429
    return-void
.end method

.method public blacklist removeOnChildAttachStateChangeListener(Lcom/android/internal/widget/RecyclerView$OnChildAttachStateChangeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/internal/widget/RecyclerView$OnChildAttachStateChangeListener;

    .line 1098
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1099
    return-void

    .line 1101
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1102
    return-void
.end method

.method public blacklist removeOnItemTouchListener(Lcom/android/internal/widget/RecyclerView$OnItemTouchListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/internal/widget/RecyclerView$OnItemTouchListener;

    .line 2606
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2607
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mActiveOnItemTouchListener:Lcom/android/internal/widget/RecyclerView$OnItemTouchListener;

    if-ne v0, p1, :cond_0

    .line 2608
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mActiveOnItemTouchListener:Lcom/android/internal/widget/RecyclerView$OnItemTouchListener;

    .line 2610
    :cond_0
    return-void
.end method

.method public blacklist removeOnScrollListener(Lcom/android/internal/widget/RecyclerView$OnScrollListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/internal/widget/RecyclerView$OnScrollListener;

    .line 1486
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 1487
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1489
    :cond_0
    return-void
.end method

.method blacklist repositionShadowingViews()V
    .locals 9

    .line 5005
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v0}, Lcom/android/internal/widget/ChildHelper;->getChildCount()I

    move-result v0

    .line 5006
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 5007
    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v2, v1}, Lcom/android/internal/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 5008
    .local v2, "view":Landroid/view/View;
    invoke-virtual {p0, v2}, Lcom/android/internal/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v3

    .line 5009
    .local v3, "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    if-eqz v3, :cond_1

    iget-object v4, v3, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mShadowingHolder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    if-eqz v4, :cond_1

    .line 5010
    iget-object v4, v3, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mShadowingHolder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    iget-object v4, v4, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 5011
    .local v4, "shadowingView":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v5

    .line 5012
    .local v5, "left":I
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v6

    .line 5013
    .local v6, "top":I
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v7

    if-ne v5, v7, :cond_0

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v7

    if-eq v6, v7, :cond_1

    .line 5014
    :cond_0
    nop

    .line 5015
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v7

    add-int/2addr v7, v5

    .line 5016
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v8

    add-int/2addr v8, v6

    .line 5014
    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/view/View;->layout(IIII)V

    .line 5006
    .end local v2    # "view":Landroid/view/View;
    .end local v3    # "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .end local v4    # "shadowingView":Landroid/view/View;
    .end local v5    # "left":I
    .end local v6    # "top":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5020
    .end local v1    # "i":I
    :cond_2
    return-void
.end method

.method public whitelist requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 6
    .param p1, "child"    # Landroid/view/View;
    .param p2, "focused"    # Landroid/view/View;

    .line 2429
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    invoke-virtual {v0, p0, v1, p1, p2}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->onRequestChildFocus(Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$State;Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_1

    .line 2430
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 2435
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 2436
    .local v0, "focusedLayoutParams":Landroid/view/ViewGroup$LayoutParams;
    instance-of v1, v0, Lcom/android/internal/widget/RecyclerView$LayoutParams;

    if-eqz v1, :cond_0

    .line 2438
    move-object v1, v0

    check-cast v1, Lcom/android/internal/widget/RecyclerView$LayoutParams;

    .line 2439
    .local v1, "lp":Lcom/android/internal/widget/RecyclerView$LayoutParams;
    iget-boolean v2, v1, Lcom/android/internal/widget/RecyclerView$LayoutParams;->mInsetsDirty:Z

    if-nez v2, :cond_0

    .line 2440
    iget-object v2, v1, Lcom/android/internal/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    .line 2441
    .local v2, "insets":Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->left:I

    iget v5, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->left:I

    .line 2442
    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->right:I

    iget v5, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->right:I

    .line 2443
    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->top:I

    iget v5, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->top:I

    .line 2444
    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->bottom:I

    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    .line 2448
    .end local v1    # "lp":Lcom/android/internal/widget/RecyclerView$LayoutParams;
    .end local v2    # "insets":Landroid/graphics/Rect;
    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p2, v1}, Lcom/android/internal/widget/RecyclerView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2449
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v1}, Lcom/android/internal/widget/RecyclerView;->offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2450
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget-boolean v2, p0, Lcom/android/internal/widget/RecyclerView;->mFirstLayoutComplete:Z

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, p1, v1, v2}, Lcom/android/internal/widget/RecyclerView;->requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z

    .line 2452
    .end local v0    # "focusedLayoutParams":Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 2453
    return-void
.end method

.method public whitelist requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "rect"    # Landroid/graphics/Rect;
    .param p3, "immediate"    # Z

    .line 2457
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->requestChildRectangleOnScreen(Lcom/android/internal/widget/RecyclerView;Landroid/view/View;Landroid/graphics/Rect;Z)Z

    move-result v0

    return v0
.end method

.method public whitelist requestDisallowInterceptTouchEvent(Z)V
    .locals 3
    .param p1, "disallowIntercept"    # Z

    .line 2798
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2799
    .local v0, "listenerCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 2800
    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/RecyclerView$OnItemTouchListener;

    .line 2801
    .local v2, "listener":Lcom/android/internal/widget/RecyclerView$OnItemTouchListener;
    invoke-interface {v2, p1}, Lcom/android/internal/widget/RecyclerView$OnItemTouchListener;->onRequestDisallowInterceptTouchEvent(Z)V

    .line 2799
    .end local v2    # "listener":Lcom/android/internal/widget/RecyclerView$OnItemTouchListener;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2803
    .end local v1    # "i":I
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 2804
    return-void
.end method

.method public whitelist requestLayout()V
    .locals 1

    .line 3943
    iget v0, p0, Lcom/android/internal/widget/RecyclerView;->mEatRequestLayout:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayoutFrozen:Z

    if-nez v0, :cond_0

    .line 3944
    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    goto :goto_0

    .line 3946
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayoutRequestEaten:Z

    .line 3948
    :goto_0
    return-void
.end method

.method blacklist resumeRequestLayout(Z)V
    .locals 3
    .param p1, "performLayoutChildren"    # Z

    .line 1859
    iget v0, p0, Lcom/android/internal/widget/RecyclerView;->mEatRequestLayout:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 1864
    iput v1, p0, Lcom/android/internal/widget/RecyclerView;->mEatRequestLayout:I

    .line 1866
    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 1875
    iput-boolean v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayoutRequestEaten:Z

    .line 1877
    :cond_1
    iget v2, p0, Lcom/android/internal/widget/RecyclerView;->mEatRequestLayout:I

    if-ne v2, v1, :cond_3

    .line 1879
    if-eqz p1, :cond_2

    iget-boolean v2, p0, Lcom/android/internal/widget/RecyclerView;->mLayoutRequestEaten:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/internal/widget/RecyclerView;->mLayoutFrozen:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    if-eqz v2, :cond_2

    .line 1881
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->dispatchLayout()V

    .line 1883
    :cond_2
    iget-boolean v2, p0, Lcom/android/internal/widget/RecyclerView;->mLayoutFrozen:Z

    if-nez v2, :cond_3

    .line 1884
    iput-boolean v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayoutRequestEaten:Z

    .line 1887
    :cond_3
    iget v0, p0, Lcom/android/internal/widget/RecyclerView;->mEatRequestLayout:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/widget/RecyclerView;->mEatRequestLayout:I

    .line 1888
    return-void
.end method

.method blacklist saveOldPositions()V
    .locals 4

    .line 4072
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v0}, Lcom/android/internal/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    .line 4073
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 4074
    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v2, v1}, Lcom/android/internal/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v2

    .line 4079
    .local v2, "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    invoke-virtual {v2}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v3

    if-nez v3, :cond_0

    .line 4080
    invoke-virtual {v2}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->saveOldPosition()V

    .line 4073
    .end local v2    # "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4083
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public whitelist scrollBy(II)V
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 1565
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    if-nez v0, :cond_0

    .line 1566
    const-string v0, "RecyclerView"

    const-string v1, "Cannot scroll without a LayoutManager set. Call setLayoutManager with a non-null argument."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1568
    return-void

    .line 1570
    :cond_0
    iget-boolean v1, p0, Lcom/android/internal/widget/RecyclerView;->mLayoutFrozen:Z

    if-eqz v1, :cond_1

    .line 1571
    return-void

    .line 1573
    :cond_1
    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v0

    .line 1574
    .local v0, "canScrollHorizontal":Z
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v1

    .line 1575
    .local v1, "canScrollVertical":Z
    if-nez v0, :cond_2

    if-eqz v1, :cond_5

    .line 1576
    :cond_2
    const/4 v2, 0x0

    if-eqz v0, :cond_3

    move v3, p1

    goto :goto_0

    :cond_3
    move v3, v2

    :goto_0
    if-eqz v1, :cond_4

    move v2, p2

    :cond_4
    const/4 v4, 0x0

    invoke-virtual {p0, v3, v2, v4}, Lcom/android/internal/widget/RecyclerView;->scrollByInternal(IILandroid/view/MotionEvent;)Z

    .line 1578
    :cond_5
    return-void
.end method

.method blacklist scrollByInternal(IILandroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "ev"    # Landroid/view/MotionEvent;

    .line 1655
    const/4 v0, 0x0

    .local v0, "unconsumedX":I
    const/4 v1, 0x0

    .line 1656
    .local v1, "unconsumedY":I
    const/4 v2, 0x0

    .local v2, "consumedX":I
    const/4 v3, 0x0

    .line 1658
    .local v3, "consumedY":I
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->consumePendingUpdateOperations()V

    .line 1659
    iget-object v4, p0, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    .line 1660
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->eatRequestLayout()V

    .line 1661
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->onEnterLayoutOrScroll()V

    .line 1662
    const-string v4, "RV Scroll"

    invoke-static {v4}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 1663
    if-eqz p1, :cond_0

    .line 1664
    iget-object v4, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    iget-object v6, p0, Lcom/android/internal/widget/RecyclerView;->mRecycler:Lcom/android/internal/widget/RecyclerView$Recycler;

    iget-object v7, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    invoke-virtual {v4, p1, v6, v7}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->scrollHorizontallyBy(ILcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;)I

    move-result v2

    .line 1665
    sub-int v0, p1, v2

    .line 1667
    :cond_0
    if-eqz p2, :cond_1

    .line 1668
    iget-object v4, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    iget-object v6, p0, Lcom/android/internal/widget/RecyclerView;->mRecycler:Lcom/android/internal/widget/RecyclerView$Recycler;

    iget-object v7, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    invoke-virtual {v4, p2, v6, v7}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->scrollVerticallyBy(ILcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;)I

    move-result v3

    .line 1669
    sub-int v1, p2, v3

    .line 1671
    :cond_1
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 1672
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->repositionShadowingViews()V

    .line 1673
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->onExitLayoutOrScroll()V

    .line 1674
    invoke-virtual {p0, v5}, Lcom/android/internal/widget/RecyclerView;->resumeRequestLayout(Z)V

    .line 1676
    :cond_2
    iget-object v4, p0, Lcom/android/internal/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 1677
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->invalidate()V

    .line 1680
    :cond_3
    iget-object v11, p0, Lcom/android/internal/widget/RecyclerView;->mScrollOffset:[I

    move-object v6, p0

    move v7, v2

    move v8, v3

    move v9, v0

    move v10, v1

    invoke-virtual/range {v6 .. v11}, Lcom/android/internal/widget/RecyclerView;->dispatchNestedScroll(IIII[I)Z

    move-result v4

    const/4 v6, 0x1

    if-eqz v4, :cond_5

    .line 1682
    iget v4, p0, Lcom/android/internal/widget/RecyclerView;->mLastTouchX:I

    iget-object v7, p0, Lcom/android/internal/widget/RecyclerView;->mScrollOffset:[I

    aget v8, v7, v5

    sub-int/2addr v4, v8

    iput v4, p0, Lcom/android/internal/widget/RecyclerView;->mLastTouchX:I

    .line 1683
    iget v4, p0, Lcom/android/internal/widget/RecyclerView;->mLastTouchY:I

    aget v7, v7, v6

    sub-int/2addr v4, v7

    iput v4, p0, Lcom/android/internal/widget/RecyclerView;->mLastTouchY:I

    .line 1684
    if-eqz p3, :cond_4

    .line 1685
    int-to-float v4, v8

    int-to-float v7, v7

    invoke-virtual {p3, v4, v7}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 1687
    :cond_4
    iget-object v4, p0, Lcom/android/internal/widget/RecyclerView;->mNestedOffsets:[I

    aget v7, v4, v5

    iget-object v8, p0, Lcom/android/internal/widget/RecyclerView;->mScrollOffset:[I

    aget v9, v8, v5

    add-int/2addr v7, v9

    aput v7, v4, v5

    .line 1688
    aget v7, v4, v6

    aget v8, v8, v6

    add-int/2addr v7, v8

    aput v7, v4, v6

    goto :goto_0

    .line 1689
    :cond_5
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getOverScrollMode()I

    move-result v4

    const/4 v7, 0x2

    if-eq v4, v7, :cond_7

    .line 1690
    if-eqz p3, :cond_6

    .line 1691
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    int-to-float v7, v0

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    int-to-float v9, v1

    invoke-direct {p0, v4, v7, v8, v9}, Lcom/android/internal/widget/RecyclerView;->pullGlows(FFFF)V

    .line 1693
    :cond_6
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/widget/RecyclerView;->considerReleasingGlowsOnScroll(II)V

    .line 1695
    :cond_7
    :goto_0
    if-nez v2, :cond_8

    if-eqz v3, :cond_9

    .line 1696
    :cond_8
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/widget/RecyclerView;->dispatchOnScrolled(II)V

    .line 1698
    :cond_9
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->awakenScrollBars()Z

    move-result v4

    if-nez v4, :cond_a

    .line 1699
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->invalidate()V

    .line 1701
    :cond_a
    if-nez v2, :cond_b

    if-eqz v3, :cond_c

    :cond_b
    move v5, v6

    :cond_c
    return v5
.end method

.method public whitelist scrollTo(II)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 1559
    const-string v0, "RecyclerView"

    const-string v1, "RecyclerView does not support scrolling to an absolute position. Use scrollToPosition instead"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1561
    return-void
.end method

.method public blacklist scrollToPosition(I)V
    .locals 2
    .param p1, "position"    # I

    .line 1509
    iget-boolean v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayoutFrozen:Z

    if-eqz v0, :cond_0

    .line 1510
    return-void

    .line 1512
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->stopScroll()V

    .line 1513
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    if-nez v0, :cond_1

    .line 1514
    const-string v0, "RecyclerView"

    const-string v1, "Cannot scroll to position a LayoutManager set. Call setLayoutManager with a non-null argument."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1516
    return-void

    .line 1518
    :cond_1
    invoke-virtual {v0, p1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->scrollToPosition(I)V

    .line 1519
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->awakenScrollBars()Z

    .line 1520
    return-void
.end method

.method public blacklist semGetMaxFlingVelocity()I
    .locals 1

    .line 2056
    iget v0, p0, Lcom/android/internal/widget/RecyclerView;->mMaxFlingVelocity:I

    return v0
.end method

.method public blacklist semSetFriction(F)V
    .locals 1
    .param p1, "friction"    # F

    .line 2072
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mViewFlinger:Lcom/android/internal/widget/RecyclerView$ViewFlinger;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->setFriction(F)V

    .line 2073
    return-void
.end method

.method public blacklist semSetMaxFlingVelocity(I)V
    .locals 0
    .param p1, "velocity"    # I

    .line 2064
    iput p1, p0, Lcom/android/internal/widget/RecyclerView;->mMaxFlingVelocity:I

    .line 2065
    return-void
.end method

.method public blacklist semSnapScrollToPosition(I)V
    .locals 4
    .param p1, "position"    # I

    .line 12408
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->computeHorizontalScrollRange()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3e4ccccd    # 0.2f

    mul-float/2addr v0, v1

    .line 12409
    .local v0, "scrollDuration":F
    const/4 v1, 0x1

    .line 12410
    .local v1, "snapMode":I
    new-instance v2, Lcom/android/internal/widget/RecyclerView$7;

    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3, v0}, Lcom/android/internal/widget/RecyclerView$7;-><init>(Lcom/android/internal/widget/RecyclerView;Landroid/content/Context;F)V

    .line 12425
    .local v2, "smoothScroller":Lcom/android/internal/widget/LinearSmoothScroller;
    invoke-virtual {v2, p1}, Lcom/android/internal/widget/LinearSmoothScroller;->setTargetPosition(I)V

    .line 12426
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getLayoutManager()Lcom/android/internal/widget/RecyclerView$LayoutManager;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 12427
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getLayoutManager()Lcom/android/internal/widget/RecyclerView$LayoutManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->startSmoothScroll(Lcom/android/internal/widget/RecyclerView$SmoothScroller;)V

    .line 12429
    :cond_0
    return-void
.end method

.method public whitelist sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 3295
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/RecyclerView;->shouldDeferAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3296
    return-void

    .line 3298
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 3299
    return-void
.end method

.method public blacklist setAccessibilityDelegateCompat(Lcom/android/internal/widget/RecyclerViewAccessibilityDelegate;)V
    .locals 0
    .param p1, "accessibilityDelegate"    # Lcom/android/internal/widget/RecyclerViewAccessibilityDelegate;

    .line 613
    iput-object p1, p0, Lcom/android/internal/widget/RecyclerView;->mAccessibilityDelegate:Lcom/android/internal/widget/RecyclerViewAccessibilityDelegate;

    .line 614
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/RecyclerView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 615
    return-void
.end method

.method public blacklist setAdapter(Lcom/android/internal/widget/RecyclerView$Adapter;)V
    .locals 2
    .param p1, "adapter"    # Lcom/android/internal/widget/RecyclerView$Adapter;

    .line 975
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/RecyclerView;->setLayoutFrozen(Z)V

    .line 976
    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/widget/RecyclerView;->setAdapterInternal(Lcom/android/internal/widget/RecyclerView$Adapter;ZZ)V

    .line 977
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->requestLayout()V

    .line 978
    return-void
.end method

.method public blacklist setChildDrawingOrderCallback(Lcom/android/internal/widget/RecyclerView$ChildDrawingOrderCallback;)V
    .locals 1
    .param p1, "childDrawingOrderCallback"    # Lcom/android/internal/widget/RecyclerView$ChildDrawingOrderCallback;

    .line 1444
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mChildDrawingOrderCallback:Lcom/android/internal/widget/RecyclerView$ChildDrawingOrderCallback;

    if-ne p1, v0, :cond_0

    .line 1445
    return-void

    .line 1447
    :cond_0
    iput-object p1, p0, Lcom/android/internal/widget/RecyclerView;->mChildDrawingOrderCallback:Lcom/android/internal/widget/RecyclerView$ChildDrawingOrderCallback;

    .line 1448
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/RecyclerView;->setChildrenDrawingOrderEnabled(Z)V

    .line 1449
    return-void
.end method

.method blacklist setChildImportantForAccessibilityInternal(Lcom/android/internal/widget/RecyclerView$ViewHolder;I)Z
    .locals 1
    .param p1, "viewHolder"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .param p2, "importantForAccessibility"    # I

    .line 10567
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->isComputingLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10568
    iput p2, p1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mPendingAccessibilityState:I

    .line 10569
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mPendingAccessibilityImportanceChange:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10570
    const/4 v0, 0x0

    return v0

    .line 10572
    :cond_0
    iget-object v0, p1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 10573
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist setClipToPadding(Z)V
    .locals 1
    .param p1, "clipToPadding"    # Z

    .line 890
    iget-boolean v0, p0, Lcom/android/internal/widget/RecyclerView;->mClipToPadding:Z

    if-eq p1, v0, :cond_0

    .line 891
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->invalidateGlows()V

    .line 893
    :cond_0
    iput-boolean p1, p0, Lcom/android/internal/widget/RecyclerView;->mClipToPadding:Z

    .line 894
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 895
    iget-boolean v0, p0, Lcom/android/internal/widget/RecyclerView;->mFirstLayoutComplete:Z

    if-eqz v0, :cond_1

    .line 896
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->requestLayout()V

    .line 898
    :cond_1
    return-void
.end method

.method blacklist setDataSetChangedAfterLayout()V
    .locals 4

    .line 4224
    iget-boolean v0, p0, Lcom/android/internal/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-eqz v0, :cond_0

    .line 4225
    return-void

    .line 4227
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    .line 4228
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v0}, Lcom/android/internal/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    .line 4229
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 4230
    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v2, v1}, Lcom/android/internal/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v2

    .line 4231
    .local v2, "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v3

    if-nez v3, :cond_1

    .line 4232
    const/16 v3, 0x200

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->addFlags(I)V

    .line 4229
    .end local v2    # "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4235
    .end local v1    # "i":I
    :cond_2
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mRecycler:Lcom/android/internal/widget/RecyclerView$Recycler;

    invoke-virtual {v1}, Lcom/android/internal/widget/RecyclerView$Recycler;->setAdapterPositionsAsUnknown()V

    .line 4239
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->markKnownViewsInvalid()V

    .line 4240
    return-void
.end method

.method public blacklist setHasFixedSize(Z)V
    .locals 0
    .param p1, "hasFixedSize"    # Z

    .line 877
    iput-boolean p1, p0, Lcom/android/internal/widget/RecyclerView;->mHasFixedSize:Z

    .line 878
    return-void
.end method

.method public blacklist setItemAnimator(Lcom/android/internal/widget/RecyclerView$ItemAnimator;)V
    .locals 2
    .param p1, "animator"    # Lcom/android/internal/widget/RecyclerView$ItemAnimator;

    .line 3205
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mItemAnimator:Lcom/android/internal/widget/RecyclerView$ItemAnimator;

    if-eqz v0, :cond_0

    .line 3206
    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$ItemAnimator;->endAnimations()V

    .line 3207
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mItemAnimator:Lcom/android/internal/widget/RecyclerView$ItemAnimator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/RecyclerView$ItemAnimator;->setListener(Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;)V

    .line 3209
    :cond_0
    iput-object p1, p0, Lcom/android/internal/widget/RecyclerView;->mItemAnimator:Lcom/android/internal/widget/RecyclerView$ItemAnimator;

    .line 3210
    if-eqz p1, :cond_1

    .line 3211
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mItemAnimatorListener:Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/RecyclerView$ItemAnimator;->setListener(Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;)V

    .line 3213
    :cond_1
    return-void
.end method

.method public blacklist setItemViewCacheSize(I)V
    .locals 1
    .param p1, "size"    # I

    .line 1334
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mRecycler:Lcom/android/internal/widget/RecyclerView$Recycler;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/RecyclerView$Recycler;->setViewCacheSize(I)V

    .line 1335
    return-void
.end method

.method public blacklist setLayoutFrozen(Z)V
    .locals 10
    .param p1, "frozen"    # Z

    .line 1913
    iget-boolean v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayoutFrozen:Z

    if-eq p1, v0, :cond_2

    .line 1914
    const-string v0, "Do not setLayoutFrozen in layout or scroll"

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/RecyclerView;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 1915
    if-nez p1, :cond_1

    .line 1916
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayoutFrozen:Z

    .line 1917
    iget-boolean v1, p0, Lcom/android/internal/widget/RecyclerView;->mLayoutRequestEaten:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    if-eqz v1, :cond_0

    .line 1918
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->requestLayout()V

    .line 1920
    :cond_0
    iput-boolean v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayoutRequestEaten:Z

    goto :goto_0

    .line 1922
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1923
    .local v0, "now":J
    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-wide v2, v0

    move-wide v4, v0

    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v2

    .line 1925
    .local v2, "cancelEvent":Landroid/view/MotionEvent;
    invoke-virtual {p0, v2}, Lcom/android/internal/widget/RecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1926
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/internal/widget/RecyclerView;->mLayoutFrozen:Z

    .line 1927
    iput-boolean v3, p0, Lcom/android/internal/widget/RecyclerView;->mIgnoreMotionEventTillDown:Z

    .line 1928
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->stopScroll()V

    .line 1931
    .end local v0    # "now":J
    .end local v2    # "cancelEvent":Landroid/view/MotionEvent;
    :cond_2
    :goto_0
    return-void
.end method

.method public blacklist setLayoutManager(Lcom/android/internal/widget/RecyclerView$LayoutManager;)V
    .locals 3
    .param p1, "layout"    # Lcom/android/internal/widget/RecyclerView$LayoutManager;

    .line 1127
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    if-ne p1, v0, :cond_0

    .line 1128
    return-void

    .line 1130
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->stopScroll()V

    .line 1133
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_3

    .line 1135
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mItemAnimator:Lcom/android/internal/widget/RecyclerView$ItemAnimator;

    if-eqz v0, :cond_1

    .line 1136
    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$ItemAnimator;->endAnimations()V

    .line 1138
    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mRecycler:Lcom/android/internal/widget/RecyclerView$Recycler;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->removeAndRecycleAllViews(Lcom/android/internal/widget/RecyclerView$Recycler;)V

    .line 1139
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mRecycler:Lcom/android/internal/widget/RecyclerView$Recycler;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->removeAndRecycleScrapInt(Lcom/android/internal/widget/RecyclerView$Recycler;)V

    .line 1140
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mRecycler:Lcom/android/internal/widget/RecyclerView$Recycler;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$Recycler;->clear()V

    .line 1142
    iget-boolean v0, p0, Lcom/android/internal/widget/RecyclerView;->mIsAttached:Z

    if-eqz v0, :cond_2

    .line 1143
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mRecycler:Lcom/android/internal/widget/RecyclerView$Recycler;

    invoke-virtual {v0, p0, v1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->dispatchDetachedFromWindow(Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$Recycler;)V

    .line 1145
    :cond_2
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->setRecyclerView(Lcom/android/internal/widget/RecyclerView;)V

    .line 1146
    iput-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    goto :goto_0

    .line 1148
    :cond_3
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mRecycler:Lcom/android/internal/widget/RecyclerView$Recycler;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$Recycler;->clear()V

    .line 1151
    :goto_0
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v0}, Lcom/android/internal/widget/ChildHelper;->removeAllViewsUnfiltered()V

    .line 1152
    iput-object p1, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    .line 1153
    if-eqz p1, :cond_5

    .line 1154
    iget-object v0, p1, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    if-nez v0, :cond_4

    .line 1158
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->setRecyclerView(Lcom/android/internal/widget/RecyclerView;)V

    .line 1159
    iget-boolean v0, p0, Lcom/android/internal/widget/RecyclerView;->mIsAttached:Z

    if-eqz v0, :cond_5

    .line 1160
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->dispatchAttachedToWindow(Lcom/android/internal/widget/RecyclerView;)V

    goto :goto_1

    .line 1155
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LayoutManager "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is already attached to a RecyclerView: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1163
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mRecycler:Lcom/android/internal/widget/RecyclerView$Recycler;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$Recycler;->updateViewCacheSize()V

    .line 1164
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->requestLayout()V

    .line 1165
    return-void
.end method

.method public blacklist setOnFlingListener(Lcom/android/internal/widget/RecyclerView$OnFlingListener;)V
    .locals 0
    .param p1, "onFlingListener"    # Lcom/android/internal/widget/RecyclerView$OnFlingListener;

    .line 1176
    iput-object p1, p0, Lcom/android/internal/widget/RecyclerView;->mOnFlingListener:Lcom/android/internal/widget/RecyclerView$OnFlingListener;

    .line 1177
    return-void
.end method

.method public blacklist setOnScrollListener(Lcom/android/internal/widget/RecyclerView$OnScrollListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/internal/widget/RecyclerView$OnScrollListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1461
    iput-object p1, p0, Lcom/android/internal/widget/RecyclerView;->mScrollListener:Lcom/android/internal/widget/RecyclerView$OnScrollListener;

    .line 1462
    return-void
.end method

.method public blacklist setPreserveFocusAfterLayout(Z)V
    .locals 0
    .param p1, "preserveFocusAfterLayout"    # Z

    .line 4304
    iput-boolean p1, p0, Lcom/android/internal/widget/RecyclerView;->mPreserveFocusAfterLayout:Z

    .line 4305
    return-void
.end method

.method public blacklist setRecycledViewPool(Lcom/android/internal/widget/RecyclerView$RecycledViewPool;)V
    .locals 1
    .param p1, "pool"    # Lcom/android/internal/widget/RecyclerView$RecycledViewPool;

    .line 1308
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mRecycler:Lcom/android/internal/widget/RecyclerView$Recycler;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/RecyclerView$Recycler;->setRecycledViewPool(Lcom/android/internal/widget/RecyclerView$RecycledViewPool;)V

    .line 1309
    return-void
.end method

.method public blacklist setRecyclerListener(Lcom/android/internal/widget/RecyclerView$RecyclerListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/internal/widget/RecyclerView$RecyclerListener;

    .line 1054
    iput-object p1, p0, Lcom/android/internal/widget/RecyclerView;->mRecyclerListener:Lcom/android/internal/widget/RecyclerView$RecyclerListener;

    .line 1055
    return-void
.end method

.method blacklist setScrollState(I)V
    .locals 1
    .param p1, "state"    # I

    .line 1348
    iget v0, p0, Lcom/android/internal/widget/RecyclerView;->mScrollState:I

    if-ne p1, v0, :cond_0

    .line 1349
    return-void

    .line 1355
    :cond_0
    iput p1, p0, Lcom/android/internal/widget/RecyclerView;->mScrollState:I

    .line 1356
    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    .line 1357
    invoke-direct {p0}, Lcom/android/internal/widget/RecyclerView;->stopScrollersInternal()V

    .line 1359
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/RecyclerView;->dispatchOnScrollStateChanged(I)V

    .line 1360
    return-void
.end method

.method public blacklist setScrollingTouchSlop(I)V
    .locals 3
    .param p1, "slopConstant"    # I

    .line 927
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 928
    .local v0, "vc":Landroid/view/ViewConfiguration;
    packed-switch p1, :pswitch_data_0

    .line 930
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setScrollingTouchSlop(): bad argument constant "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; using default value"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RecyclerView"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 938
    :pswitch_0
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/RecyclerView;->mTouchSlop:I

    goto :goto_1

    .line 934
    :goto_0
    :pswitch_1
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/RecyclerView;->mTouchSlop:I

    .line 935
    nop

    .line 941
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public blacklist setViewCacheExtension(Lcom/android/internal/widget/RecyclerView$ViewCacheExtension;)V
    .locals 1
    .param p1, "extension"    # Lcom/android/internal/widget/RecyclerView$ViewCacheExtension;

    .line 1319
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mRecycler:Lcom/android/internal/widget/RecyclerView$Recycler;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/RecyclerView$Recycler;->setViewCacheExtension(Lcom/android/internal/widget/RecyclerView$ViewCacheExtension;)V

    .line 1320
    return-void
.end method

.method blacklist shouldDeferAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 3279
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->isComputingLayout()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3280
    const/4 v0, 0x0

    .line 3281
    .local v0, "type":I
    if-eqz p1, :cond_0

    .line 3282
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getContentChangeTypes()I

    move-result v0

    .line 3284
    :cond_0
    if-nez v0, :cond_1

    .line 3285
    const/4 v0, 0x0

    .line 3287
    :cond_1
    iget v1, p0, Lcom/android/internal/widget/RecyclerView;->mEatenAccessibilityChangeFlags:I

    or-int/2addr v1, v0

    iput v1, p0, Lcom/android/internal/widget/RecyclerView;->mEatenAccessibilityChangeFlags:I

    .line 3288
    const/4 v1, 0x1

    return v1

    .line 3290
    .end local v0    # "type":I
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist smoothScrollBy(II)V
    .locals 1
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .line 1950
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/widget/RecyclerView;->smoothScrollBy(IILandroid/view/animation/Interpolator;)V

    .line 1951
    return-void
.end method

.method public blacklist smoothScrollBy(IILandroid/view/animation/Interpolator;)V
    .locals 2
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "interpolator"    # Landroid/view/animation/Interpolator;

    .line 1962
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    if-nez v0, :cond_0

    .line 1963
    const-string v0, "RecyclerView"

    const-string v1, "Cannot smooth scroll without a LayoutManager set. Call setLayoutManager with a non-null argument."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1965
    return-void

    .line 1967
    :cond_0
    iget-boolean v1, p0, Lcom/android/internal/widget/RecyclerView;->mLayoutFrozen:Z

    if-eqz v1, :cond_1

    .line 1968
    return-void

    .line 1970
    :cond_1
    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1971
    const/4 p1, 0x0

    .line 1973
    :cond_2
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1974
    const/4 p2, 0x0

    .line 1976
    :cond_3
    if-nez p1, :cond_4

    if-eqz p2, :cond_5

    .line 1977
    :cond_4
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mViewFlinger:Lcom/android/internal/widget/RecyclerView$ViewFlinger;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->smoothScrollBy(IILandroid/view/animation/Interpolator;)V

    .line 1979
    :cond_5
    return-void
.end method

.method public blacklist smoothScrollToPosition(I)V
    .locals 2
    .param p1, "position"    # I

    .line 1546
    iget-boolean v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayoutFrozen:Z

    if-eqz v0, :cond_0

    .line 1547
    return-void

    .line 1549
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    if-nez v0, :cond_1

    .line 1550
    const-string v0, "RecyclerView"

    const-string v1, "Cannot smooth scroll without a LayoutManager set. Call setLayoutManager with a non-null argument."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1552
    return-void

    .line 1554
    :cond_1
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    invoke-virtual {v0, p0, v1, p1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->smoothScrollToPosition(Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$State;I)V

    .line 1555
    return-void
.end method

.method public blacklist stopScroll()V
    .locals 1

    .line 2080
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/RecyclerView;->setScrollState(I)V

    .line 2081
    invoke-direct {p0}, Lcom/android/internal/widget/RecyclerView;->stopScrollersInternal()V

    .line 2082
    return-void
.end method

.method public blacklist swapAdapter(Lcom/android/internal/widget/RecyclerView$Adapter;Z)V
    .locals 1
    .param p1, "adapter"    # Lcom/android/internal/widget/RecyclerView$Adapter;
    .param p2, "removeAndRecycleExistingViews"    # Z

    .line 959
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/RecyclerView;->setLayoutFrozen(Z)V

    .line 960
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lcom/android/internal/widget/RecyclerView;->setAdapterInternal(Lcom/android/internal/widget/RecyclerView$Adapter;ZZ)V

    .line 961
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->setDataSetChangedAfterLayout()V

    .line 962
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->requestLayout()V

    .line 963
    return-void
.end method

.method blacklist viewRangeUpdate(IILjava/lang/Object;)V
    .locals 7
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I
    .param p3, "payload"    # Ljava/lang/Object;

    .line 4184
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v0}, Lcom/android/internal/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    .line 4185
    .local v0, "childCount":I
    add-int v1, p1, p2

    .line 4187
    .local v1, "positionEnd":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 4188
    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v3, v2}, Lcom/android/internal/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 4189
    .local v3, "child":Landroid/view/View;
    invoke-static {v3}, Lcom/android/internal/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v4

    .line 4190
    .local v4, "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 4191
    goto :goto_1

    .line 4193
    :cond_0
    iget v5, v4, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mPosition:I

    if-lt v5, p1, :cond_1

    iget v5, v4, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mPosition:I

    if-ge v5, v1, :cond_1

    .line 4196
    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->addFlags(I)V

    .line 4197
    invoke-virtual {v4, p3}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->addChangePayload(Ljava/lang/Object;)V

    .line 4199
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/android/internal/widget/RecyclerView$LayoutParams;

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/android/internal/widget/RecyclerView$LayoutParams;->mInsetsDirty:Z

    .line 4187
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4202
    .end local v2    # "i":I
    :cond_2
    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mRecycler:Lcom/android/internal/widget/RecyclerView$Recycler;

    invoke-virtual {v2, p1, p2}, Lcom/android/internal/widget/RecyclerView$Recycler;->viewRangeUpdate(II)V

    .line 4203
    return-void
.end method
