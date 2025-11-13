.class public Landroidx/recyclerview/widget/RecyclerView;
.super Landroid/view/ViewGroup;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/core/view/NestedScrollingChild2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/RecyclerView$ScrollArrowDirection;
    }
.end annotation


# static fields
.field public static final ALLOW_SIZE_IN_UNSPECIFIED_SPEC:Z

.field public static final ALLOW_THREAD_GAP_WORK:Z

.field public static final DECELERATION_RATE:F

.field public static final HOVERSCROLL_SPEED:F

.field public static final LAYOUT_MANAGER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

.field public static final LINEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field public static final NESTED_SCROLLING_ATTRS:[I

.field public static final POST_UPDATES_ON_ANIMATION:Z

.field public static sDebugAssertionsEnabled:Z

.field public static final sDefaultEdgeEffectFactory:Landroidx/recyclerview/widget/RecyclerView$StretchEdgeEffectFactory;

.field public static final sQuinticInterpolator:Landroidx/recyclerview/widget/RecyclerView$8;

.field public static sVerboseLoggingEnabled:Z


# instance fields
.field public mAccessibilityDelegate:Landroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate;

.field public final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field public mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

.field public final mAdapterHelper:Landroidx/recyclerview/widget/AdapterHelper;

.field public mAdapterUpdateDuringMeasure:Z

.field public final mAnimListener:Landroidx/recyclerview/widget/RecyclerView$2;

.field public mAnimatedBlackTop:I

.field public final mAutoHide:Landroidx/recyclerview/widget/RecyclerView$1;

.field public mBlackTop:I

.field public mBottomGlow:Landroid/widget/EdgeEffect;

.field public final mChildBound:Landroid/graphics/Rect;

.field public mChildDrawingOrderCallback:Landroidx/recyclerview/widget/RecyclerView$ChildDrawingOrderCallback;

.field public final mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

.field public mClipToPadding:Z

.field public final mCloseChildPositionByBottom:I

.field public final mCloseChildPositionByTop:I

.field public final mContext:Landroid/content/Context;

.field public mDataSetHasChangedAfterLayout:Z

.field public mDispatchItemsChangedEvent:Z

.field public mDispatchScrollCounter:I

.field public mDrawHorizontalPadding:Z

.field public mDrawLastRoundedCorner:Z

.field public mDrawRect:Z

.field public mDrawReverse:Z

.field public mEatenAccessibilityChangeFlags:I

.field public mEdgeEffectByDragging:Z

.field public mEdgeEffectFactory:Landroidx/recyclerview/widget/RecyclerView$EdgeEffectFactory;

.field public mEnableGoToTop:Z

.field public mFastScroller:Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;

.field mFirstLayoutComplete:Z

.field public mFrameLatency:F

.field public mGapWorker:Landroidx/recyclerview/widget/GapWorker;

.field public final mGoToToFadeInRunnable:Landroidx/recyclerview/widget/RecyclerView$1;

.field public final mGoToToFadeOutRunnable:Landroidx/recyclerview/widget/RecyclerView$1;

.field public final mGoToTopBottomPadding:I

.field public final mGoToTopElevation:I

.field public mGoToTopFadeInAnimator:Landroid/animation/ValueAnimator;

.field public mGoToTopFadeOutAnimator:Landroid/animation/ValueAnimator;

.field public mGoToTopImage:Landroid/graphics/drawable/Drawable;

.field public mGoToTopImmersiveBottomPadding:I

.field public mGoToTopLastState:I

.field public final mGoToTopRect:Landroid/graphics/Rect;

.field public final mGoToTopSize:I

.field public mGoToTopState:I

.field public mGoToTopView:Landroid/widget/ImageView;

.field public mHasFixedSize:Z

.field public mHasNestedScrollRange:Z

.field public mHoverAreaEnter:Z

.field public final mHoverBottomAreaHeight:I

.field public final mHoverHandler:Landroidx/recyclerview/widget/RecyclerView$6;

.field public mHoverRecognitionCurrentTime:J

.field public mHoverRecognitionDurationTime:J

.field public mHoverRecognitionStartTime:J

.field public final mHoverScrollArrows:[I

.field public mHoverScrollDirection:I

.field public final mHoverScrollEnable:Z

.field public mHoverScrollSpeed:I

.field public mHoverScrollStartTime:J

.field public mHoverScrollStateForListener:I

.field public final mHoverScrollTimeInterval:J

.field public final mHoverTopAreaHeight:I

.field public mIgnoreMotionEventTillDown:Z

.field public mInitialTopOffsetOfScreen:I

.field public mInitialTouchX:I

.field public mInitialTouchY:I

.field public mInterceptRequestLayoutDepth:I

.field public mInterceptingOnItemTouchListener:Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;

.field public mIsArrowKeyPressed:Z

.field public mIsAttached:Z

.field public mIsCloseChildSetted:Z

.field public mIsCtrlKeyPressed:Z

.field public mIsCtrlMultiSelection:Z

.field public mIsEdgeEffectEnabled:Z

.field public mIsFirstMultiSelectionMove:Z

.field public mIsFirstPenMoveEvent:Z

.field public mIsHoverOverscrolled:Z

.field public mIsLongPressMultiSelection:Z

.field public mIsNeedCheckLatency:Z

.field public mIsNeedPenSelectIconSet:Z

.field public mIsNeedPenSelection:Z

.field public final mIsPenDragBlockEnabled:Z

.field public mIsPenHovered:Z

.field public mIsPenPressed:Z

.field public mIsPenSelectPointerSetted:Z

.field public final mIsPenSelectionEnabled:Z

.field public final mIsRecoilEnabled:Z

.field public final mIsRecoilSupported:Z

.field public mIsSendHoverScrollState:Z

.field public mIsSetOnlyAddAnim:Z

.field public mIsSetOnlyRemoveAnim:Z

.field public mIsSkipMoveEvent:Z

.field public mItemAnimator:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

.field public final mItemAnimatorHolder:Landroidx/appcompat/animation/SeslRecoilAnimator$Holder;

.field public final mItemAnimatorListener:Landroidx/recyclerview/widget/RecyclerView$9;

.field public final mItemAnimatorRunner:Landroidx/recyclerview/widget/RecyclerView$1;

.field public final mItemBackgroundHolder:Landroidx/recyclerview/widget/RecyclerView$ItemBackgroundHolder;

.field public final mItemDecorations:Ljava/util/ArrayList;

.field public mItemsAddedOrRemoved:Z

.field public mItemsChanged:Z

.field public mLastAutoMeasureNonExactMeasuredHeight:I

.field public mLastAutoMeasureNonExactMeasuredWidth:I

.field public mLastAutoMeasureSkippedDueToExact:Z

.field public mLastBlackTop:I

.field public mLastItemAddRemoveAnim:Landroid/animation/ValueAnimator;

.field public mLastItemAnimTop:I

.field public mLastTouchX:I

.field public mLastTouchY:I

.field mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

.field public mLayoutOrScrollCounter:I

.field public mLayoutSuppressed:Z

.field public mLayoutWasDefered:Z

.field public mLeftGlow:Landroid/widget/EdgeEffect;

.field public final mListPadding:Landroid/graphics/Rect;

.field public mLongPressMultiSelectionListener:Landroidx/recyclerview/widget/RecyclerView$SeslLongPressMultiSelectionListener;

.field public final mMaxFlingVelocity:I

.field public final mMinFlingVelocity:I

.field public final mMinMaxLayoutPositions:[I

.field public mNeedsHoverScroll:Z

.field public final mNestedOffsets:[I

.field public mNestedScrollRange:I

.field public mNewTextViewHoverState:Z

.field public final mObserver:Landroidx/recyclerview/widget/RecyclerView$RecyclerViewDataObserver;

.field public mOldHoverScrollDirection:I

.field public mOldTextViewHoverState:Z

.field public mOnChildAttachStateListeners:Ljava/util/List;

.field public mOnFlingListener:Landroidx/recyclerview/widget/RecyclerView$OnFlingListener;

.field public final mOnItemTouchListeners:Ljava/util/ArrayList;

.field public mOnMultiSelectedListener:Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/AppListListener$getSeslOnMultiSelectedListener$1;

.field public final mPagingTouchSlop:I

.field public mPenDistanceFromTrackedChildTop:I

.field public final mPenDragBlockImage:Landroid/graphics/drawable/Drawable;

.field public mPenDragBlockLeft:I

.field public final mPenDragBlockRect:Landroid/graphics/Rect;

.field public mPenDragBlockRight:I

.field public mPenDragBlockTop:I

.field public mPenDragEndX:I

.field public mPenDragEndY:I

.field public final mPenDragScrollTimeInterval:J

.field public mPenDragSelectedItemArray:Ljava/util/ArrayList;

.field public mPenDragSelectedViewPosition:I

.field public mPenDragStartX:I

.field public mPenDragStartY:I

.field public mPenTrackedChild:Landroid/view/View;

.field public mPenTrackedChildPosition:I

.field final mPendingAccessibilityImportanceChange:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field public mPendingSavedState:Landroidx/recyclerview/widget/RecyclerView$SavedState;

.field public final mPhysicalCoef:F

.field public mPostedAnimatorRunner:Z

.field public final mPrefetchRegistry:Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;

.field public mPreserveFocusAfterLayout:Z

.field public mPreventFirstGlow:Z

.field public final mRectColor:I

.field public final mRectPaint:Landroid/graphics/Paint;

.field public final mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

.field public mRecyclerListener:Landroidx/recyclerview/widget/RecyclerView$RecyclerListener;

.field public final mRecyclerListeners:Ljava/util/List;

.field public mRemainNestedScrollRange:I

.field public final mReusableIntPair:[I

.field public mRightGlow:Landroid/widget/EdgeEffect;

.field public final mRoundedCorner:Landroidx/appcompat/util/SeslSubheaderRoundedCorner;

.field public final mScaledHorizontalScrollFactor:F

.field public final mScaledVerticalScrollFactor:F

.field public mScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

.field public mScrollListeners:Ljava/util/List;

.field public final mScrollOffset:[I

.field public mScrollPointerId:I

.field public mScrollState:I

.field public mScrollbarBottomPadding:I

.field public mScrollingChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

.field public mSeslOverlayFeatureHeight:I

.field public mShowFadeOutGTT:I

.field public mSizeChange:Z

.field public final mState:Landroidx/recyclerview/widget/RecyclerView$State;

.field public final mTempRect:Landroid/graphics/Rect;

.field public final mTempRect2:Landroid/graphics/Rect;

.field public final mTempRectF:Landroid/graphics/RectF;

.field public mTopGlow:Landroid/widget/EdgeEffect;

.field public mTouchSlop:I

.field public final mTouchSlop2:I

.field public final mUpdateChildViewsRunnable:Landroidx/recyclerview/widget/RecyclerView$1;

.field public mUsePagingTouchSlopForStylus:Z

.field public mVelocityTracker:Landroid/view/VelocityTracker;

.field public final mViewFlinger:Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;

.field public final mViewInfoProcessCallback:Landroidx/recyclerview/widget/RecyclerView$9;

.field public final mViewInfoStore:Landroidx/recyclerview/widget/ViewInfoStore;

.field public final mWindowOffsets:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const v0, 0x1010436

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Landroidx/recyclerview/widget/RecyclerView;->NESTED_SCROLLING_ATTRS:[I

    const-wide v0, 0x3fe8f5c28f5c28f6L    # 0.78

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    const-wide v2, 0x3feccccccccccccdL    # 0.9

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    double-to-float v0, v0

    sput v0, Landroidx/recyclerview/widget/RecyclerView;->DECELERATION_RATE:F

    const/4 v0, 0x1

    sput-boolean v0, Landroidx/recyclerview/widget/RecyclerView;->ALLOW_SIZE_IN_UNSPECIFIED_SPEC:Z

    sput-boolean v0, Landroidx/recyclerview/widget/RecyclerView;->POST_UPDATES_ON_ANIMATION:Z

    sput-boolean v0, Landroidx/recyclerview/widget/RecyclerView;->ALLOW_THREAD_GAP_WORK:Z

    const/high16 v1, 0x41200000    # 10.0f

    sput v1, Landroidx/recyclerview/widget/RecyclerView;->HOVERSCROLL_SPEED:F

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Class;

    const-class v2, Landroid/content/Context;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-class v2, Landroid/util/AttributeSet;

    aput-object v2, v1, v0

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x2

    aput-object v0, v1, v2

    const/4 v2, 0x3

    aput-object v0, v1, v2

    sput-object v1, Landroidx/recyclerview/widget/RecyclerView;->LAYOUT_MANAGER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Landroidx/recyclerview/widget/RecyclerView;->LINEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$8;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/recyclerview/widget/RecyclerView;->sQuinticInterpolator:Landroidx/recyclerview/widget/RecyclerView$8;

    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$StretchEdgeEffectFactory;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/recyclerview/widget/RecyclerView;->sDefaultEdgeEffectFactory:Landroidx/recyclerview/widget/RecyclerView$StretchEdgeEffectFactory;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x7f04050f

    invoke-direct {p0, p1, p2, v0}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 16
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ResourceType"
        }
    .end annotation

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move/from16 v11, p3

    const/4 v13, 0x4

    const/4 v14, 0x3

    const/4 v15, 0x2

    invoke-direct/range {p0 .. p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$RecyclerViewDataObserver;

    invoke-direct {v0, v8}, Landroidx/recyclerview/widget/RecyclerView$RecyclerViewDataObserver;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    iput-object v0, v8, Landroidx/recyclerview/widget/RecyclerView;->mObserver:Landroidx/recyclerview/widget/RecyclerView$RecyclerViewDataObserver;

    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$Recycler;

    invoke-direct {v0, v8}, Landroidx/recyclerview/widget/RecyclerView$Recycler;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    iput-object v0, v8, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    new-instance v0, Landroidx/recyclerview/widget/ViewInfoStore;

    invoke-direct {v0}, Landroidx/recyclerview/widget/ViewInfoStore;-><init>()V

    iput-object v0, v8, Landroidx/recyclerview/widget/RecyclerView;->mViewInfoStore:Landroidx/recyclerview/widget/ViewInfoStore;

    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$1;

    const/4 v7, 0x0

    invoke-direct {v0, v7, v8}, Landroidx/recyclerview/widget/RecyclerView$1;-><init>(ILandroidx/recyclerview/widget/RecyclerView;)V

    iput-object v0, v8, Landroidx/recyclerview/widget/RecyclerView;->mUpdateChildViewsRunnable:Landroidx/recyclerview/widget/RecyclerView$1;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, v8, Landroidx/recyclerview/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, v8, Landroidx/recyclerview/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, v8, Landroidx/recyclerview/widget/RecyclerView;->mTempRectF:Landroid/graphics/RectF;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v8, Landroidx/recyclerview/widget/RecyclerView;->mRecyclerListeners:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v8, Landroidx/recyclerview/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v8, Landroidx/recyclerview/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    iput v7, v8, Landroidx/recyclerview/widget/RecyclerView;->mInterceptRequestLayoutDepth:I

    iput-boolean v7, v8, Landroidx/recyclerview/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    iput-boolean v7, v8, Landroidx/recyclerview/widget/RecyclerView;->mDispatchItemsChangedEvent:Z

    iput v7, v8, Landroidx/recyclerview/widget/RecyclerView;->mLayoutOrScrollCounter:I

    iput v7, v8, Landroidx/recyclerview/widget/RecyclerView;->mDispatchScrollCounter:I

    sget-object v0, Landroidx/recyclerview/widget/RecyclerView;->sDefaultEdgeEffectFactory:Landroidx/recyclerview/widget/RecyclerView$StretchEdgeEffectFactory;

    iput-object v0, v8, Landroidx/recyclerview/widget/RecyclerView;->mEdgeEffectFactory:Landroidx/recyclerview/widget/RecyclerView$EdgeEffectFactory;

    new-instance v0, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-direct {v0}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    iput-object v0, v8, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    iput v7, v8, Landroidx/recyclerview/widget/RecyclerView;->mScrollState:I

    const/4 v6, -0x1

    iput v6, v8, Landroidx/recyclerview/widget/RecyclerView;->mScrollPointerId:I

    const/4 v0, 0x1

    iput v0, v8, Landroidx/recyclerview/widget/RecyclerView;->mScaledHorizontalScrollFactor:F

    iput v0, v8, Landroidx/recyclerview/widget/RecyclerView;->mScaledVerticalScrollFactor:F

    const/4 v5, 0x1

    iput-boolean v5, v8, Landroidx/recyclerview/widget/RecyclerView;->mPreserveFocusAfterLayout:Z

    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;

    invoke-direct {v0, v8}, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    iput-object v0, v8, Landroidx/recyclerview/widget/RecyclerView;->mViewFlinger:Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;

    sget-boolean v0, Landroidx/recyclerview/widget/RecyclerView;->ALLOW_THREAD_GAP_WORK:Z

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    new-instance v0, Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    goto :goto_0

    :cond_0
    move-object v0, v4

    :goto_0
    iput-object v0, v8, Landroidx/recyclerview/widget/RecyclerView;->mPrefetchRegistry:Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;

    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$State;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput v6, v0, Landroidx/recyclerview/widget/RecyclerView$State;->mTargetPosition:I

    iput v7, v0, Landroidx/recyclerview/widget/RecyclerView$State;->mPreviousLayoutItemCount:I

    iput v7, v0, Landroidx/recyclerview/widget/RecyclerView$State;->mDeletedInvisibleItemCountSincePreviousLayout:I

    iput v5, v0, Landroidx/recyclerview/widget/RecyclerView$State;->mLayoutStep:I

    iput v7, v0, Landroidx/recyclerview/widget/RecyclerView$State;->mItemCount:I

    iput-boolean v7, v0, Landroidx/recyclerview/widget/RecyclerView$State;->mStructureChanged:Z

    iput-boolean v7, v0, Landroidx/recyclerview/widget/RecyclerView$State;->mInPreLayout:Z

    iput-boolean v7, v0, Landroidx/recyclerview/widget/RecyclerView$State;->mTrackOldChangeHolders:Z

    iput-boolean v7, v0, Landroidx/recyclerview/widget/RecyclerView$State;->mIsMeasuring:Z

    iput-boolean v7, v0, Landroidx/recyclerview/widget/RecyclerView$State;->mRunSimpleAnimations:Z

    iput-boolean v7, v0, Landroidx/recyclerview/widget/RecyclerView$State;->mRunPredictiveAnimations:Z

    iput-object v0, v8, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    iput-boolean v7, v8, Landroidx/recyclerview/widget/RecyclerView;->mItemsAddedOrRemoved:Z

    iput-boolean v7, v8, Landroidx/recyclerview/widget/RecyclerView;->mItemsChanged:Z

    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$9;

    invoke-direct {v0, v8}, Landroidx/recyclerview/widget/RecyclerView$9;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    iput-object v0, v8, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimatorListener:Landroidx/recyclerview/widget/RecyclerView$9;

    iput-boolean v7, v8, Landroidx/recyclerview/widget/RecyclerView;->mPostedAnimatorRunner:Z

    new-array v0, v15, [I

    iput-object v0, v8, Landroidx/recyclerview/widget/RecyclerView;->mMinMaxLayoutPositions:[I

    new-array v0, v15, [I

    iput-object v0, v8, Landroidx/recyclerview/widget/RecyclerView;->mScrollOffset:[I

    new-array v0, v15, [I

    iput-object v0, v8, Landroidx/recyclerview/widget/RecyclerView;->mNestedOffsets:[I

    new-array v0, v15, [I

    iput-object v0, v8, Landroidx/recyclerview/widget/RecyclerView;->mWindowOffsets:[I

    iput-boolean v7, v8, Landroidx/recyclerview/widget/RecyclerView;->mEdgeEffectByDragging:Z

    iput-boolean v7, v8, Landroidx/recyclerview/widget/RecyclerView;->mIsSkipMoveEvent:Z

    const v0, 0x418547ae    # 16.66f

    iput v0, v8, Landroidx/recyclerview/widget/RecyclerView;->mFrameLatency:F

    iput-boolean v5, v8, Landroidx/recyclerview/widget/RecyclerView;->mIsNeedCheckLatency:Z

    iput-object v4, v8, Landroidx/recyclerview/widget/RecyclerView;->mLastItemAddRemoveAnim:Landroid/animation/ValueAnimator;

    iput-boolean v7, v8, Landroidx/recyclerview/widget/RecyclerView;->mIsSetOnlyAddAnim:Z

    iput-boolean v7, v8, Landroidx/recyclerview/widget/RecyclerView;->mIsSetOnlyRemoveAnim:Z

    iput v6, v8, Landroidx/recyclerview/widget/RecyclerView;->mLastItemAnimTop:I

    iput-boolean v7, v8, Landroidx/recyclerview/widget/RecyclerView;->mPreventFirstGlow:Z

    iput-boolean v5, v8, Landroidx/recyclerview/widget/RecyclerView;->mIsEdgeEffectEnabled:Z

    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$2;

    invoke-direct {v0, v7, v8}, Landroidx/recyclerview/widget/RecyclerView$2;-><init>(ILandroidx/recyclerview/widget/RecyclerView;)V

    iput-object v0, v8, Landroidx/recyclerview/widget/RecyclerView;->mAnimListener:Landroidx/recyclerview/widget/RecyclerView$2;

    new-array v0, v15, [I

    iput-object v0, v8, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    iput v7, v8, Landroidx/recyclerview/widget/RecyclerView;->mTouchSlop2:I

    iput v7, v8, Landroidx/recyclerview/widget/RecyclerView;->mPagingTouchSlop:I

    iput-boolean v7, v8, Landroidx/recyclerview/widget/RecyclerView;->mUsePagingTouchSlopForStylus:Z

    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$1;

    invoke-direct {v0, v15, v8}, Landroidx/recyclerview/widget/RecyclerView$1;-><init>(ILandroidx/recyclerview/widget/RecyclerView;)V

    iput-object v0, v8, Landroidx/recyclerview/widget/RecyclerView;->mGoToToFadeOutRunnable:Landroidx/recyclerview/widget/RecyclerView$1;

    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$1;

    invoke-direct {v0, v14, v8}, Landroidx/recyclerview/widget/RecyclerView$1;-><init>(ILandroidx/recyclerview/widget/RecyclerView;)V

    iput-object v0, v8, Landroidx/recyclerview/widget/RecyclerView;->mGoToToFadeInRunnable:Landroidx/recyclerview/widget/RecyclerView$1;

    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$1;

    invoke-direct {v0, v13, v8}, Landroidx/recyclerview/widget/RecyclerView$1;-><init>(ILandroidx/recyclerview/widget/RecyclerView;)V

    iput-object v0, v8, Landroidx/recyclerview/widget/RecyclerView;->mAutoHide:Landroidx/recyclerview/widget/RecyclerView$1;

    iput-boolean v7, v8, Landroidx/recyclerview/widget/RecyclerView;->mEnableGoToTop:Z

    iput-boolean v7, v8, Landroidx/recyclerview/widget/RecyclerView;->mSizeChange:Z

    iput v7, v8, Landroidx/recyclerview/widget/RecyclerView;->mSeslOverlayFeatureHeight:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, v8, Landroidx/recyclerview/widget/RecyclerView;->mGoToTopRect:Landroid/graphics/Rect;

    iput v7, v8, Landroidx/recyclerview/widget/RecyclerView;->mGoToTopState:I

    iput v7, v8, Landroidx/recyclerview/widget/RecyclerView;->mGoToTopLastState:I

    iput v7, v8, Landroidx/recyclerview/widget/RecyclerView;->mShowFadeOutGTT:I

    iput-boolean v5, v8, Landroidx/recyclerview/widget/RecyclerView;->mIsPenSelectionEnabled:Z

    iput-boolean v7, v8, Landroidx/recyclerview/widget/RecyclerView;->mIsPenPressed:Z

    iput-boolean v5, v8, Landroidx/recyclerview/widget/RecyclerView;->mIsFirstPenMoveEvent:Z

    iput-boolean v7, v8, Landroidx/recyclerview/widget/RecyclerView;->mIsNeedPenSelection:Z

    iput v6, v8, Landroidx/recyclerview/widget/RecyclerView;->mPenDragSelectedViewPosition:I

    iput-boolean v5, v8, Landroidx/recyclerview/widget/RecyclerView;->mIsPenDragBlockEnabled:Z

    iput v7, v8, Landroidx/recyclerview/widget/RecyclerView;->mPenDragStartX:I

    iput v7, v8, Landroidx/recyclerview/widget/RecyclerView;->mPenDragStartY:I

    iput v7, v8, Landroidx/recyclerview/widget/RecyclerView;->mPenDragEndX:I

    iput v7, v8, Landroidx/recyclerview/widget/RecyclerView;->mPenDragEndY:I

    iput v7, v8, Landroidx/recyclerview/widget/RecyclerView;->mPenDragBlockLeft:I

    iput v7, v8, Landroidx/recyclerview/widget/RecyclerView;->mPenDragBlockTop:I

    iput v7, v8, Landroidx/recyclerview/widget/RecyclerView;->mPenDragBlockRight:I

    iput-object v4, v8, Landroidx/recyclerview/widget/RecyclerView;->mPenTrackedChild:Landroid/view/View;

    iput v6, v8, Landroidx/recyclerview/widget/RecyclerView;->mPenTrackedChildPosition:I

    iput v7, v8, Landroidx/recyclerview/widget/RecyclerView;->mPenDistanceFromTrackedChildTop:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, v8, Landroidx/recyclerview/widget/RecyclerView;->mPenDragBlockRect:Landroid/graphics/Rect;

    iput v7, v8, Landroidx/recyclerview/widget/RecyclerView;->mInitialTopOffsetOfScreen:I

    iput v7, v8, Landroidx/recyclerview/widget/RecyclerView;->mRemainNestedScrollRange:I

    iput v7, v8, Landroidx/recyclerview/widget/RecyclerView;->mNestedScrollRange:I

    iput-boolean v7, v8, Landroidx/recyclerview/widget/RecyclerView;->mHasNestedScrollRange:Z

    iput-boolean v7, v8, Landroidx/recyclerview/widget/RecyclerView;->mIsCtrlKeyPressed:Z

    iput-boolean v7, v8, Landroidx/recyclerview/widget/RecyclerView;->mIsLongPressMultiSelection:Z

    iput-boolean v5, v8, Landroidx/recyclerview/widget/RecyclerView;->mIsFirstMultiSelectionMove:Z

    iput-boolean v7, v8, Landroidx/recyclerview/widget/RecyclerView;->mIsCtrlMultiSelection:Z

    iput-boolean v7, v8, Landroidx/recyclerview/widget/RecyclerView;->mDrawHorizontalPadding:Z

    iput-boolean v7, v8, Landroidx/recyclerview/widget/RecyclerView;->mDrawRect:Z

    iput-boolean v5, v8, Landroidx/recyclerview/widget/RecyclerView;->mDrawLastRoundedCorner:Z

    iput-boolean v7, v8, Landroidx/recyclerview/widget/RecyclerView;->mDrawReverse:Z

    iput v6, v8, Landroidx/recyclerview/widget/RecyclerView;->mBlackTop:I

    iput v6, v8, Landroidx/recyclerview/widget/RecyclerView;->mLastBlackTop:I

    iput v6, v8, Landroidx/recyclerview/widget/RecyclerView;->mAnimatedBlackTop:I

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, v8, Landroidx/recyclerview/widget/RecyclerView;->mRectPaint:Landroid/graphics/Paint;

    iput v7, v8, Landroidx/recyclerview/widget/RecyclerView;->mScrollbarBottomPadding:I

    iput-boolean v7, v8, Landroidx/recyclerview/widget/RecyclerView;->mIsPenHovered:Z

    iput-boolean v7, v8, Landroidx/recyclerview/widget/RecyclerView;->mIsPenSelectPointerSetted:Z

    iput-boolean v7, v8, Landroidx/recyclerview/widget/RecyclerView;->mIsNeedPenSelectIconSet:Z

    iput-boolean v7, v8, Landroidx/recyclerview/widget/RecyclerView;->mOldTextViewHoverState:Z

    iput-boolean v7, v8, Landroidx/recyclerview/widget/RecyclerView;->mNewTextViewHoverState:Z

    iput v7, v8, Landroidx/recyclerview/widget/RecyclerView;->mHoverScrollSpeed:I

    invoke-static {}, Landroidx/reflect/view/SeslPointerIconReflector;->getField_SEM_TYPE_STYLUS_SCROLL_UP()I

    move-result v1

    new-array v0, v7, [Ljava/lang/Class;

    const-string v2, "android.view.PointerIcon"

    const-string v3, "hidden_SEM_TYPE_STYLUS_SCROLL_RIGHT"

    invoke-static {v2, v3, v0}, Landroidx/reflect/SeslBaseReflector;->getDeclaredMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const-string v13, " IllegalAccessException"

    const-string v14, " IllegalArgumentException"

    const-string v15, " InvocationTargetException"

    const-string v12, "SeslBaseReflector"

    if-eqz v3, :cond_1

    :try_start_0
    invoke-virtual {v3, v4, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v5, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3, v0, v15, v12, v5}, Landroidx/appcompat/app/AlertDialog$$ExternalSyntheticOutline0;->m(Ljava/lang/reflect/Method;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/InvocationTargetException;)V

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v5, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3, v0, v14, v12, v5}, Landroidx/appcompat/app/AlertDialog$$ExternalSyntheticOutline0;->m(Ljava/lang/reflect/Method;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/IllegalArgumentException;)V

    goto :goto_1

    :catch_2
    move-exception v0

    move-object v5, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3, v0, v13, v12, v5}, Landroidx/appcompat/app/AlertDialog$$ExternalSyntheticOutline0;->m(Ljava/lang/reflect/Method;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/IllegalAccessException;)V

    :cond_1
    :goto_1
    move-object v0, v4

    :goto_2
    instance-of v3, v0, Ljava/lang/Integer;

    if-eqz v3, :cond_2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_3
    move v3, v0

    goto :goto_4

    :cond_2
    const/16 v0, 0xd

    goto :goto_3

    :goto_4
    invoke-static {}, Landroidx/reflect/view/SeslPointerIconReflector;->getField_SEM_TYPE_STYLUS_SCROLL_DOWN()I

    move-result v5

    new-array v0, v7, [Ljava/lang/Class;

    const-string v7, "hidden_SEM_TYPE_STYLUS_SCROLL_LEFT"

    invoke-static {v2, v7, v0}, Landroidx/reflect/SeslBaseReflector;->getDeclaredMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    if-eqz v2, :cond_3

    :try_start_1
    invoke-virtual {v2, v4, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_6

    :catch_3
    move-exception v0

    move-object v7, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2, v0, v15, v12, v7}, Landroidx/appcompat/app/AlertDialog$$ExternalSyntheticOutline0;->m(Ljava/lang/reflect/Method;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/InvocationTargetException;)V

    goto :goto_5

    :catch_4
    move-exception v0

    move-object v7, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2, v0, v14, v12, v7}, Landroidx/appcompat/app/AlertDialog$$ExternalSyntheticOutline0;->m(Ljava/lang/reflect/Method;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/IllegalArgumentException;)V

    goto :goto_5

    :catch_5
    move-exception v0

    move-object v7, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2, v0, v13, v12, v7}, Landroidx/appcompat/app/AlertDialog$$ExternalSyntheticOutline0;->m(Ljava/lang/reflect/Method;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/IllegalAccessException;)V

    :cond_3
    :goto_5
    move-object v0, v4

    :goto_6
    instance-of v2, v0, Ljava/lang/Integer;

    if-eqz v2, :cond_4

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_7

    :cond_4
    const/16 v0, 0x11

    :goto_7
    filled-new-array {v1, v3, v5, v0}, [I

    move-result-object v0

    iput-object v0, v8, Landroidx/recyclerview/widget/RecyclerView;->mHoverScrollArrows:[I

    const-wide/16 v0, 0x0

    iput-wide v0, v8, Landroidx/recyclerview/widget/RecyclerView;->mHoverRecognitionDurationTime:J

    iput-wide v0, v8, Landroidx/recyclerview/widget/RecyclerView;->mHoverRecognitionStartTime:J

    const-wide/16 v2, 0x12c

    iput-wide v2, v8, Landroidx/recyclerview/widget/RecyclerView;->mHoverScrollTimeInterval:J

    const-wide/16 v2, 0x1f4

    iput-wide v2, v8, Landroidx/recyclerview/widget/RecyclerView;->mPenDragScrollTimeInterval:J

    iput-wide v0, v8, Landroidx/recyclerview/widget/RecyclerView;->mHoverScrollStartTime:J

    iput v6, v8, Landroidx/recyclerview/widget/RecyclerView;->mHoverScrollDirection:I

    const/4 v1, 0x0

    iput-boolean v1, v8, Landroidx/recyclerview/widget/RecyclerView;->mIsHoverOverscrolled:Z

    iput-boolean v1, v8, Landroidx/recyclerview/widget/RecyclerView;->mIsSendHoverScrollState:Z

    iput v1, v8, Landroidx/recyclerview/widget/RecyclerView;->mHoverScrollStateForListener:I

    iput-boolean v1, v8, Landroidx/recyclerview/widget/RecyclerView;->mHoverAreaEnter:Z

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    const/4 v2, 0x1

    iput-boolean v2, v8, Landroidx/recyclerview/widget/RecyclerView;->mHoverScrollEnable:Z

    iput-boolean v1, v8, Landroidx/recyclerview/widget/RecyclerView;->mNeedsHoverScroll:Z

    iput v1, v8, Landroidx/recyclerview/widget/RecyclerView;->mHoverTopAreaHeight:I

    iput v1, v8, Landroidx/recyclerview/widget/RecyclerView;->mHoverBottomAreaHeight:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, v8, Landroidx/recyclerview/widget/RecyclerView;->mListPadding:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, v8, Landroidx/recyclerview/widget/RecyclerView;->mChildBound:Landroid/graphics/Rect;

    iput-boolean v1, v8, Landroidx/recyclerview/widget/RecyclerView;->mIsCloseChildSetted:Z

    iput v6, v8, Landroidx/recyclerview/widget/RecyclerView;->mOldHoverScrollDirection:I

    iput v6, v8, Landroidx/recyclerview/widget/RecyclerView;->mCloseChildPositionByTop:I

    iput v6, v8, Landroidx/recyclerview/widget/RecyclerView;->mCloseChildPositionByBottom:I

    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$ItemBackgroundHolder;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v4, v0, Landroidx/recyclerview/widget/RecyclerView$ItemBackgroundHolder;->mActiveBg:Ljava/lang/Object;

    iput-object v0, v8, Landroidx/recyclerview/widget/RecyclerView;->mItemBackgroundHolder:Landroidx/recyclerview/widget/RecyclerView$ItemBackgroundHolder;

    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$6;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v8, v1}, Landroidx/recyclerview/widget/RecyclerView$6;-><init>(Landroidx/recyclerview/widget/RecyclerView;Landroid/os/Looper;)V

    iput-object v0, v8, Landroidx/recyclerview/widget/RecyclerView;->mHoverHandler:Landroidx/recyclerview/widget/RecyclerView$6;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v8, Landroidx/recyclerview/widget/RecyclerView;->mPendingAccessibilityImportanceChange:Ljava/util/List;

    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$1;

    const/4 v1, 0x5

    invoke-direct {v0, v1, v8}, Landroidx/recyclerview/widget/RecyclerView$1;-><init>(ILandroidx/recyclerview/widget/RecyclerView;)V

    iput-object v0, v8, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimatorRunner:Landroidx/recyclerview/widget/RecyclerView$1;

    const/4 v1, 0x0

    iput v1, v8, Landroidx/recyclerview/widget/RecyclerView;->mLastAutoMeasureNonExactMeasuredWidth:I

    iput v1, v8, Landroidx/recyclerview/widget/RecyclerView;->mLastAutoMeasureNonExactMeasuredHeight:I

    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$9;

    invoke-direct {v0, v8}, Landroidx/recyclerview/widget/RecyclerView$9;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    iput-object v0, v8, Landroidx/recyclerview/widget/RecyclerView;->mViewInfoProcessCallback:Landroidx/recyclerview/widget/RecyclerView$9;

    const/4 v1, 0x1

    iput-boolean v1, v8, Landroidx/recyclerview/widget/RecyclerView;->mIsRecoilEnabled:Z

    invoke-virtual {v8, v1}, Landroid/view/ViewGroup;->setScrollContainer(Z)V

    invoke-virtual {v8, v1}, Landroid/view/ViewGroup;->setFocusableInTouchMode(Z)V

    iput-object v9, v8, Landroidx/recyclerview/widget/RecyclerView;->mContext:Landroid/content/Context;

    invoke-static/range {p1 .. p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    iput v2, v8, Landroidx/recyclerview/widget/RecyclerView;->mTouchSlop:I

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    iput v2, v8, Landroidx/recyclerview/widget/RecyclerView;->mTouchSlop2:I

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v2

    iput v2, v8, Landroidx/recyclerview/widget/RecyclerView;->mPagingTouchSlop:I

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledHorizontalScrollFactor()F

    move-result v2

    iput v2, v8, Landroidx/recyclerview/widget/RecyclerView;->mScaledHorizontalScrollFactor:F

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledVerticalScrollFactor()F

    move-result v2

    iput v2, v8, Landroidx/recyclerview/widget/RecyclerView;->mScaledVerticalScrollFactor:F

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v2

    iput v2, v8, Landroidx/recyclerview/widget/RecyclerView;->mMinFlingVelocity:I

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    iput v0, v8, Landroidx/recyclerview/widget/RecyclerView;->mMaxFlingVelocity:I

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/high16 v2, 0x41c80000    # 25.0f

    const/4 v3, 0x1

    invoke-static {v3, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v0, v5

    float-to-int v0, v0

    iput v0, v8, Landroidx/recyclerview/widget/RecyclerView;->mHoverTopAreaHeight:I

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-static {v3, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    add-float/2addr v0, v5

    float-to-int v0, v0

    iput v0, v8, Landroidx/recyclerview/widget/RecyclerView;->mHoverBottomAreaHeight:I

    const v0, 0x7f07108b

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, v8, Landroidx/recyclerview/widget/RecyclerView;->mGoToTopBottomPadding:I

    const/4 v2, 0x0

    iput v2, v8, Landroidx/recyclerview/widget/RecyclerView;->mGoToTopImmersiveBottomPadding:I

    const v0, 0x7f07108c

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, v8, Landroidx/recyclerview/widget/RecyclerView;->mGoToTopSize:I

    const v0, 0x7f07108a

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, v8, Landroidx/recyclerview/widget/RecyclerView;->mGoToTopElevation:I

    const/4 v1, 0x1

    iput-boolean v1, v8, Landroidx/recyclerview/widget/RecyclerView;->mIsRecoilSupported:Z

    new-instance v0, Landroidx/appcompat/animation/SeslRecoilAnimator$Holder;

    invoke-direct {v0, v9}, Landroidx/appcompat/animation/SeslRecoilAnimator$Holder;-><init>(Landroid/content/Context;)V

    iput-object v0, v8, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimatorHolder:Landroidx/appcompat/animation/SeslRecoilAnimator$Holder;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x43200000    # 160.0f

    mul-float/2addr v0, v1

    const v1, 0x43c10b3d

    mul-float/2addr v0, v1

    const v1, 0x3f570a3d    # 0.84f

    mul-float/2addr v0, v1

    iput v0, v8, Landroidx/recyclerview/widget/RecyclerView;->mPhysicalCoef:F

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getOverScrollMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    const/4 v1, 0x1

    goto :goto_8

    :cond_5
    const/4 v1, 0x0

    :goto_8
    invoke-virtual {v8, v1}, Landroid/view/ViewGroup;->setWillNotDraw(Z)V

    iget-object v0, v8, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    iget-object v1, v8, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimatorListener:Landroidx/recyclerview/widget/RecyclerView$9;

    iput-object v1, v0, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->mListener:Landroidx/recyclerview/widget/RecyclerView$9;

    new-instance v0, Landroidx/recyclerview/widget/AdapterHelper;

    new-instance v1, Landroidx/recyclerview/widget/RecyclerView$9;

    invoke-direct {v1, v8}, Landroidx/recyclerview/widget/RecyclerView$9;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/AdapterHelper;-><init>(Landroidx/recyclerview/widget/RecyclerView$9;)V

    iput-object v0, v8, Landroidx/recyclerview/widget/RecyclerView;->mAdapterHelper:Landroidx/recyclerview/widget/AdapterHelper;

    new-instance v0, Landroidx/recyclerview/widget/ChildHelper;

    new-instance v1, Landroidx/recyclerview/widget/RecyclerView$9;

    invoke-direct {v1, v8}, Landroidx/recyclerview/widget/RecyclerView$9;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/ChildHelper;-><init>(Landroidx/recyclerview/widget/RecyclerView$9;)V

    iput-object v0, v8, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    sget-object v0, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    invoke-static/range {p0 .. p0}, Landroidx/core/view/ViewCompat$Api26Impl;->getImportantForAutofill(Landroid/view/View;)I

    move-result v0

    const/16 v12, 0x8

    if-nez v0, :cond_6

    invoke-static {v8, v12}, Landroidx/core/view/ViewCompat$Api26Impl;->setImportantForAutofill(Landroid/view/View;I)V

    :cond_6
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v0

    const/4 v5, 0x1

    if-nez v0, :cond_7

    invoke-virtual {v8, v5}, Landroid/view/View;->setImportantForAccessibility(I)V

    :cond_7
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, v8, Landroidx/recyclerview/widget/RecyclerView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    new-instance v0, Landroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate;

    invoke-direct {v0, v8}, Landroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-virtual {v8, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAccessibilityDelegateCompat(Landroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate;)V

    sget-object v3, Landroidx/recyclerview/R$styleable;->RecyclerView:[I

    const/4 v7, 0x0

    invoke-virtual {v9, v10, v3, v11, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v13, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v14, v4

    move-object/from16 v4, p2

    move v15, v5

    move-object v5, v0

    move v14, v6

    move/from16 v6, p3

    move v7, v13

    invoke-static/range {v1 .. v7}, Landroidx/core/view/ViewCompat$Api29Impl;->saveAttributeDataForStyleable(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    invoke-virtual {v0, v12}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v14}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    if-ne v3, v14, :cond_8

    const/high16 v2, 0x40000

    invoke-virtual {v8, v2}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    :cond_8
    invoke-virtual {v0, v15, v15}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, v8, Landroidx/recyclerview/widget/RecyclerView;->mClipToPadding:Z

    const/4 v2, 0x3

    const/4 v12, 0x0

    invoke-virtual {v0, v2, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    if-eqz v3, :cond_9

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/StateListDrawable;

    const/4 v3, 0x7

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    check-cast v5, Landroid/graphics/drawable/StateListDrawable;

    const/4 v4, 0x5

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v8, v2, v3, v5, v4}, Landroidx/recyclerview/widget/RecyclerView;->initFastScroller(Landroid/graphics/drawable/StateListDrawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/StateListDrawable;Landroid/graphics/drawable/Drawable;)V

    :cond_9
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    const-string v2, ": Could not instantiate the LayoutManager: "

    if-eqz v1, :cond_d

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_d

    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x2e

    if-ne v1, v3, :cond_a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_9
    move-object v1, v0

    goto :goto_a

    :cond_a
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    goto :goto_9

    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v4, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v4}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    :goto_a
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    goto :goto_b

    :catch_6
    move-exception v0

    goto :goto_d

    :catch_7
    move-exception v0

    goto/16 :goto_e

    :catch_8
    move-exception v0

    goto/16 :goto_f

    :catch_9
    move-exception v0

    goto/16 :goto_10

    :catch_a
    move-exception v0

    goto/16 :goto_11

    :cond_c
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    :goto_b
    invoke-static {v1, v12, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    const-class v3, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, v3}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v3
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_a
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_6

    :try_start_3
    sget-object v0, Landroidx/recyclerview/widget/RecyclerView;->LAYOUT_MANAGER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    invoke-virtual {v3, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v9, v4, v12

    aput-object v10, v4, v15

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x2

    aput-object v5, v4, v6

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x3

    aput-object v5, v4, v6
    :try_end_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_a
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_9
    .catch Ljava/lang/InstantiationException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_6

    goto :goto_c

    :catch_b
    move-exception v0

    move-object v4, v0

    :try_start_4
    new-array v0, v12, [Ljava/lang/Class;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_4} :catch_c
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_a
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_4} :catch_9
    .catch Ljava/lang/InstantiationException; {:try_start_4 .. :try_end_4} :catch_8
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_6

    move-object v4, v5

    :goto_c
    :try_start_5
    invoke-virtual {v0, v15}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v8, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    goto/16 :goto_12

    :catch_c
    move-exception v0

    invoke-virtual {v0, v4}, Ljava/lang/NoSuchMethodException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {p2 .. p2}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": Error creating LayoutManager "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_5} :catch_a
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_5 .. :try_end_5} :catch_9
    .catch Ljava/lang/InstantiationException; {:try_start_5 .. :try_end_5} :catch_8
    .catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/lang/ClassCastException; {:try_start_5 .. :try_end_5} :catch_6

    :goto_d
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {p2 .. p2}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": Class is not a LayoutManager "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :goto_e
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {p2 .. p2}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": Cannot access non-public constructor "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :goto_f
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {p2 .. p2}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :goto_10
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {p2 .. p2}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :goto_11
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {p2 .. p2}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": Unable to find LayoutManager "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_d
    :goto_12
    sget-object v3, Landroidx/recyclerview/widget/RecyclerView;->NESTED_SCROLLING_ATTRS:[I

    invoke-virtual {v9, v10, v3, v11, v12}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v7, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v4, p2

    move-object v5, v0

    move/from16 v6, p3

    invoke-static/range {v1 .. v7}, Landroidx/core/view/ViewCompat$Api29Impl;->saveAttributeDataForStyleable(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    invoke-virtual {v0, v12, v15}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    const v3, 0x7f080c2a

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, v8, Landroidx/recyclerview/widget/RecyclerView;->mPenDragBlockImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    const v4, 0x7f040521

    invoke-virtual {v3, v4, v2, v15}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v2, v2, Landroid/util/TypedValue;->resourceId:I

    if-lez v2, :cond_e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, v8, Landroidx/recyclerview/widget/RecyclerView;->mRectColor:I

    :cond_e
    iget-object v0, v8, Landroidx/recyclerview/widget/RecyclerView;->mRectPaint:Landroid/graphics/Paint;

    iget v2, v8, Landroidx/recyclerview/widget/RecyclerView;->mRectColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, v8, Landroidx/recyclerview/widget/RecyclerView;->mRectPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, v8, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    iput-object v8, v0, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->mHostView:Landroid/view/View;

    new-instance v0, Landroidx/appcompat/util/SeslSubheaderRoundedCorner;

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroidx/appcompat/util/SeslRoundedCorner;-><init>(Landroid/content/Context;)V

    iput-object v0, v8, Landroidx/recyclerview/widget/RecyclerView;->mRoundedCorner:Landroidx/appcompat/util/SeslSubheaderRoundedCorner;

    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Landroidx/appcompat/util/SeslRoundedCorner;->setRoundedCorners(I)V

    invoke-virtual {v8, v1}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const v1, 0x7f0a0829

    invoke-virtual {v8, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method public static synthetic access$4800(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Landroid/view/ViewGroup;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static synthetic access$4900(ILandroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->detachViewFromParent(I)V

    return-void
.end method

.method public static synthetic access$5600(Landroidx/recyclerview/widget/RecyclerView;)Z
    .locals 0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->awakenScrollBars()Z

    move-result p0

    return p0
.end method

.method public static synthetic access$6300(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Landroid/view/ViewGroup;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static synthetic access$6400(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->detachViewFromParent(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic access$6500(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    return-void
.end method

.method public static clearNestedRecyclerViewIfNotNested(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 3

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mNestedRecyclerView:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    if-ne v0, v2, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v2, v0, Landroid/view/View;

    if-eqz v2, :cond_1

    check-cast v0, Landroid/view/View;

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_0

    :cond_2
    iput-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mNestedRecyclerView:Ljava/lang/ref/WeakReference;

    :cond_3
    return-void
.end method

.method public static consumeFlingInStretch(ILandroid/widget/EdgeEffect;Landroid/widget/EdgeEffect;I)I
    .locals 4

    const/high16 v0, 0x3f000000    # 0.5f

    const/4 v1, 0x0

    const/high16 v2, 0x40800000    # 4.0f

    if-lez p0, :cond_1

    if-eqz p1, :cond_1

    invoke-static {p1}, Landroidx/core/widget/EdgeEffectCompat;->getDistance(Landroid/widget/EdgeEffect;)F

    move-result v3

    cmpl-float v3, v3, v1

    if-eqz v3, :cond_1

    neg-int p2, p0

    int-to-float p2, p2

    mul-float/2addr p2, v2

    int-to-float v1, p3

    div-float/2addr p2, v1

    neg-int p3, p3

    int-to-float p3, p3

    div-float/2addr p3, v2

    invoke-static {p1, p2, v0}, Landroidx/core/widget/EdgeEffectCompat;->onPullDistance(Landroid/widget/EdgeEffect;FF)F

    move-result p2

    mul-float/2addr p2, p3

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    if-eq p2, p0, :cond_0

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->finish()V

    :cond_0
    sub-int/2addr p0, p2

    return p0

    :cond_1
    if-gez p0, :cond_3

    if-eqz p2, :cond_3

    invoke-static {p2}, Landroidx/core/widget/EdgeEffectCompat;->getDistance(Landroid/widget/EdgeEffect;)F

    move-result p1

    cmpl-float p1, p1, v1

    if-eqz p1, :cond_3

    int-to-float p1, p0

    mul-float/2addr p1, v2

    int-to-float p3, p3

    div-float/2addr p1, p3

    div-float/2addr p3, v2

    invoke-static {p2, p1, v0}, Landroidx/core/widget/EdgeEffectCompat;->onPullDistance(Landroid/widget/EdgeEffect;FF)F

    move-result p1

    mul-float/2addr p1, p3

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    if-eq p1, p0, :cond_2

    invoke-virtual {p2}, Landroid/widget/EdgeEffect;->finish()V

    :cond_2
    sub-int/2addr p0, p1

    :cond_3
    return p0
.end method

.method public static findNestedRecyclerView(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 4

    instance-of v0, p0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    instance-of v0, p0, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_1

    check-cast p0, Landroidx/recyclerview/widget/RecyclerView;

    return-object p0

    :cond_1
    check-cast p0, Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

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

.method public static getChildAdapterPosition(Landroid/view/View;)I
    .locals 0

    invoke-static {p0}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAbsoluteAdapterPosition()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public static getChildLayoutPosition(Landroid/view/View;)I
    .locals 0

    invoke-static {p0}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public static getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->mViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    return-object p0
.end method

.method public static getDecoratedBoundsWithMarginsInt(Landroid/graphics/Rect;Landroid/view/View;)V
    .locals 6

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    iget v3, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int/2addr v2, v3

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    iget v4, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v3, v4

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v4

    iget v5, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v4, v5

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p1, v1

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr p1, v0

    invoke-virtual {p0, v2, v3, v4, p1}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public static setDebugAssertionsEnabled(Z)V
    .locals 0

    sput-boolean p0, Landroidx/recyclerview/widget/RecyclerView;->sDebugAssertionsEnabled:Z

    return-void
.end method

.method public static setVerboseLoggingEnabled(Z)V
    .locals 0

    sput-boolean p0, Landroidx/recyclerview/widget/RecyclerView;->sVerboseLoggingEnabled:Z

    return-void
.end method


# virtual methods
.method public final addAnimatingView(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 5

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    const/4 v2, 0x1

    if-ne v1, p0, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->unscrapView(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isTmpDetached()Z

    move-result p1

    const/4 v3, -0x1

    if-eqz p1, :cond_1

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    invoke-virtual {p0, v0, v3, p1, v2}, Landroidx/recyclerview/widget/ChildHelper;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    goto :goto_1

    :cond_1
    if-nez v1, :cond_2

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    invoke-virtual {p0, v0, v3, v2}, Landroidx/recyclerview/widget/ChildHelper;->addView(Landroid/view/View;IZ)V

    goto :goto_1

    :cond_2
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    iget-object p1, p0, Landroidx/recyclerview/widget/ChildHelper;->mCallback:Landroidx/recyclerview/widget/RecyclerView$9;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$9;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p1

    if-ltz p1, :cond_3

    iget-object v1, p0, Landroidx/recyclerview/widget/ChildHelper;->mBucket:Landroidx/recyclerview/widget/ChildHelper$Bucket;

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/ChildHelper$Bucket;->set(I)V

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/ChildHelper;->hideViewInternal(Landroid/view/View;)V

    :goto_1
    return-void

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "view is not a child, cannot hide "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final addFocusables(Ljava/util/ArrayList;II)V
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addFocusables(Ljava/util/ArrayList;II)V

    return-void
.end method

.method public final addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V
    .locals 2

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_0

    const-string v1, "Cannot add item decoration during a scroll  or layout"

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setWillNotDraw(Z)V

    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->markItemDecorInsetsDirty()V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    return-void
.end method

.method public final addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    :cond_0
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final adjustNestedScrollRange$1()V
    .locals 4

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mWindowOffsets:[I

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getLocationInWindow([I)V

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mWindowOffsets:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mWindowOffsets:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    :goto_0
    iget v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mNestedScrollRange:I

    iget v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mInitialTopOffsetOfScreen:I

    sub-int v3, v2, v0

    sub-int/2addr v1, v3

    iput v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mRemainNestedScrollRange:I

    sub-int/2addr v2, v0

    if-gez v2, :cond_1

    iput v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mNestedScrollRange:I

    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mInitialTopOffsetOfScreen:I

    :cond_1
    return-void
.end method

.method public final adjustNestedScrollRangeBy$1(I)V
    .locals 1

    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mHasNestedScrollRange:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->canScrollUp$1()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mRemainNestedScrollRange:I

    if-eqz v0, :cond_2

    :cond_0
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mRemainNestedScrollRange:I

    sub-int/2addr v0, p1

    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mRemainNestedScrollRange:I

    if-gez v0, :cond_1

    const/4 p1, 0x0

    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mRemainNestedScrollRange:I

    goto :goto_0

    :cond_1
    iget p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mNestedScrollRange:I

    if-le v0, p1, :cond_2

    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mRemainNestedScrollRange:I

    :cond_2
    :goto_0
    return-void
.end method

.method public final assertNotInLayoutOrScroll(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->isComputingLayout()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Cannot call this method while RecyclerView is computing a layout or scrolling"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Landroidx/recyclerview/widget/ChildHelper$$ExternalSyntheticOutline0;->m(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iget p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mDispatchScrollCounter:I

    if-lez p1, :cond_2

    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Landroidx/recyclerview/widget/ChildHelper$$ExternalSyntheticOutline0;->m(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    const-string p0, "SeslRecyclerView"

    const-string v0, "Cannot call this method in a scroll callback. Scroll callbacks mightbe run during a measure & layout pass where you cannot change theRecyclerView data. Any method call that might change the structureof the RecyclerView or the adapter contents should be postponed tothe next frame."

    invoke-static {p0, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    return-void
.end method

.method public final autoHide(I)V
    .locals 3

    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mEnableGoToTop:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-wide/16 v0, 0x5dc

    if-nez p1, :cond_2

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mFastScroller:Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mAutoHide:Landroidx/recyclerview/widget/RecyclerView$1;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mAutoHide:Landroidx/recyclerview/widget/RecyclerView$1;

    invoke-virtual {p0, p1, v0, v1}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    if-ne p1, v2, :cond_3

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mAutoHide:Landroidx/recyclerview/widget/RecyclerView$1;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mAutoHide:Landroidx/recyclerview/widget/RecyclerView$1;

    invoke-virtual {p0, p1, v0, v1}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    :goto_0
    return-void
.end method

.method public final canScrollDown$1()Z
    .locals 8

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v1

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

    :goto_0
    iget-object v5, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    instance-of v6, v5, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v6, :cond_2

    check-cast v5, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-boolean v5, v5, Landroidx/recyclerview/widget/LinearLayoutManager;->mReverseLayout:Z

    goto :goto_1

    :cond_2
    move v5, v3

    :goto_1
    iget-object v6, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-nez v6, :cond_3

    const-string p0, "SeslRecyclerView"

    const-string v0, "No adapter attached; skipping canScrollDown"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_3
    if-eqz v5, :cond_5

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->findFirstChildPosition()I

    move-result v6

    if-lez v6, :cond_4

    :goto_2
    move v6, v2

    goto :goto_3

    :cond_4
    move v6, v3

    goto :goto_3

    :cond_5
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->findFirstChildPosition()I

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

    :goto_4
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v5, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildBound:Landroid/graphics/Rect;

    invoke-static {v5, v0}, Landroidx/recyclerview/widget/RecyclerView;->getDecoratedBoundsWithMarginsInt(Landroid/graphics/Rect;Landroid/view/View;)V

    if-eqz v1, :cond_9

    if-eqz v4, :cond_8

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildBound:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mListPadding:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->left:I

    if-ge v0, p0, :cond_7

    goto :goto_5

    :cond_7
    move v2, v3

    goto :goto_5

    :cond_8
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildBound:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getRight()I

    move-result v1

    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v4

    if-gt v0, v1, :cond_a

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildBound:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mListPadding:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, p0

    if-le v0, v1, :cond_7

    goto :goto_5

    :cond_9
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildBound:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getBottom()I

    move-result v1

    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v4

    if-gt v0, v1, :cond_a

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildBound:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mListPadding:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, p0

    if-le v0, v1, :cond_7

    :cond_a
    :goto_5
    move v6, v2

    :cond_b
    return v6
.end method

.method public final canScrollUp$1()Z
    .locals 8

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v1

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

    :goto_0
    iget-object v5, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    instance-of v6, v5, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v6, :cond_2

    check-cast v5, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-boolean v5, v5, Landroidx/recyclerview/widget/LinearLayoutManager;->mReverseLayout:Z

    goto :goto_1

    :cond_2
    move v5, v3

    :goto_1
    if-eqz v5, :cond_4

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->findFirstChildPosition()I

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

    :cond_4
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->findFirstChildPosition()I

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

    :goto_4
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v5, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildBound:Landroid/graphics/Rect;

    invoke-static {v5, v0}, Landroidx/recyclerview/widget/RecyclerView;->getDecoratedBoundsWithMarginsInt(Landroid/graphics/Rect;Landroid/view/View;)V

    if-eqz v1, :cond_8

    if-eqz v4, :cond_7

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildBound:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getRight()I

    move-result v1

    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v4

    if-gt v0, v1, :cond_9

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildBound:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mListPadding:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, p0

    if-le v0, v1, :cond_6

    goto :goto_5

    :cond_6
    move v2, v3

    goto :goto_5

    :cond_7
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildBound:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mListPadding:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->left:I

    if-ge v0, p0, :cond_6

    goto :goto_5

    :cond_8
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildBound:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mListPadding:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->top:I

    if-ge v0, p0, :cond_6

    :cond_9
    :goto_5
    move v6, v2

    :cond_a
    return v6
.end method

.method public final checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

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

.method public final clearOldPositions()V
    .locals 6

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, -0x1

    if-ge v2, v0, :cond_1

    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    invoke-virtual {v4, v2}, Landroidx/recyclerview/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v4}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v5

    if-nez v5, :cond_0

    iput v3, v4, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mOldPosition:I

    iput v3, v4, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v2, v1

    :goto_1
    if-ge v2, v0, :cond_2

    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iput v3, v4, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mOldPosition:I

    iput v3, v4, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v2, v1

    :goto_2
    if-ge v2, v0, :cond_3

    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iput v3, v4, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mOldPosition:I

    iput v3, v4, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_3
    if-ge v1, v0, :cond_4

    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iput v3, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mOldPosition:I

    iput v3, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_4
    return-void
.end method

.method public final computeHorizontalScrollExtent()I
    .locals 2

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

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

.method public final computeHorizontalScrollOffset()I
    .locals 2

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

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

.method public final computeHorizontalScrollRange()I
    .locals 2

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

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

.method public final computeVerticalScrollExtent()I
    .locals 2

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

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

.method public final computeVerticalScrollOffset()I
    .locals 2

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

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

.method public final computeVerticalScrollRange()I
    .locals 2

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

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

.method public final considerReleasingGlowsOnScroll(II)V
    .locals 2

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    if-lez p1, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    if-nez v1, :cond_1

    if-gez p1, :cond_1

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->onRelease()V

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result p1

    or-int/2addr v0, p1

    :cond_1
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result p1

    if-nez p1, :cond_2

    if-lez p2, :cond_2

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->onRelease()V

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result p1

    or-int/2addr v0, p1

    :cond_2
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result p1

    if-nez p1, :cond_3

    if-gez p2, :cond_3

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->onRelease()V

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result p1

    or-int/2addr v0, p1

    :cond_3
    if-eqz v0, :cond_4

    sget-object p1, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    :cond_4
    return-void
.end method

.method public final consumePendingUpdateOperations()V
    .locals 4

    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mFirstLayoutComplete:Z

    const-string v1, "RV FullInvalidate"

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-eqz v0, :cond_0

    goto/16 :goto_5

    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapterHelper:Landroidx/recyclerview/widget/AdapterHelper;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/AdapterHelper;->hasPendingUpdates()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapterHelper:Landroidx/recyclerview/widget/AdapterHelper;

    iget v2, v0, Landroidx/recyclerview/widget/AdapterHelper;->mExistingUpdateTypes:I

    and-int/lit8 v3, v2, 0x4

    if-eqz v3, :cond_7

    and-int/lit8 v2, v2, 0xb

    if-eqz v2, :cond_2

    goto :goto_3

    :cond_2
    const-string v0, "RV PartialInvalidate"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->startInterceptRequestLayout()V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->onEnterLayoutOrScroll()V

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapterHelper:Landroidx/recyclerview/widget/AdapterHelper;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/AdapterHelper;->preProcess()V

    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayoutWasDefered:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/ChildHelper;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_5

    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isUpdated()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->dispatchLayout()V

    goto :goto_2

    :cond_4
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapterHelper:Landroidx/recyclerview/widget/AdapterHelper;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/AdapterHelper;->consumePostponedUpdates()V

    :cond_6
    :goto_2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->stopInterceptRequestLayout(Z)V

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->onExitLayoutOrScroll(Z)V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto :goto_4

    :cond_7
    :goto_3
    invoke-virtual {v0}, Landroidx/recyclerview/widget/AdapterHelper;->hasPendingUpdates()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->dispatchLayout()V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    :cond_8
    :goto_4
    return-void

    :cond_9
    :goto_5
    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->dispatchLayout()V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public final defaultOnMeasure(II)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v1

    add-int/2addr v1, v0

    sget-object v0, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    invoke-virtual {p0}, Landroid/view/View;->getMinimumWidth()I

    move-result v0

    invoke-static {p1, v1, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->chooseSize(III)I

    move-result p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0}, Landroid/view/View;->getMinimumHeight()I

    move-result v0

    invoke-static {p2, v1, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->chooseSize(III)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    return-void
.end method

.method public final dispatchChildDetached(Landroid/view/View;)V
    .locals 2

    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    if-eqz v0, :cond_1

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$OnChildAttachStateChangeListener;

    invoke-interface {v1, p1}, Landroidx/recyclerview/widget/RecyclerView$OnChildAttachStateChangeListener;->onChildViewDetachedFromWindow(Landroid/view/View;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 10

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    invoke-virtual {v3, p1, p0, v4}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;->seslOnDispatchDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v3

    iget-boolean v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mDrawRect:Z

    if-eqz v4, :cond_13

    iget v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mBlackTop:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1

    iget v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mLastBlackTop:I

    if-eq v4, v5, :cond_13

    :cond_1
    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->canScrollVertically(I)Z

    move-result v4

    if-nez v4, :cond_13

    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->canScrollVertically(I)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    if-eqz v6, :cond_13

    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->isRunning()Z

    move-result v6

    if-eqz v6, :cond_13

    :cond_2
    iget-object v6, p0, Landroidx/recyclerview/widget/RecyclerView;->mLastItemAddRemoveAnim:Landroid/animation/ValueAnimator;

    if-eqz v6, :cond_3

    invoke-virtual {v6}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v6

    if-nez v6, :cond_4

    :cond_3
    iget v6, p0, Landroidx/recyclerview/widget/RecyclerView;->mBlackTop:I

    iput v6, p0, Landroidx/recyclerview/widget/RecyclerView;->mAnimatedBlackTop:I

    :cond_4
    iget-object v6, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    if-eqz v6, :cond_11

    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->isRunning()Z

    move-result v6

    if-eqz v6, :cond_11

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v6

    instance-of v7, v6, Landroidx/recyclerview/widget/DefaultItemAnimator;

    if-eqz v7, :cond_5

    check-cast v6, Landroidx/recyclerview/widget/DefaultItemAnimator;

    iget v6, v6, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingAnimFlag:I

    goto :goto_1

    :cond_5
    move v6, v1

    :goto_1
    const/16 v7, 0x8

    if-ne v6, v7, :cond_6

    iput-boolean v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mIsSetOnlyAddAnim:Z

    goto :goto_2

    :cond_6
    if-ne v6, v4, :cond_7

    iput-boolean v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mIsSetOnlyRemoveAnim:Z

    :cond_7
    :goto_2
    iget-boolean v6, p0, Landroidx/recyclerview/widget/RecyclerView;->mDrawReverse:Z

    if-eqz v6, :cond_9

    iget v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mBlackTop:I

    if-eq v4, v5, :cond_8

    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    invoke-virtual {v4, v1}, Landroidx/recyclerview/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    goto :goto_3

    :cond_8
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    goto :goto_3

    :cond_9
    iget v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mBlackTop:I

    if-eq v1, v5, :cond_a

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/ChildHelper;->getChildCount()I

    move-result v6

    sub-int/2addr v6, v4

    invoke-virtual {v1, v6}, Landroidx/recyclerview/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    goto :goto_3

    :cond_a
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    sub-int/2addr v1, v4

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    :goto_3
    if-eqz v1, :cond_10

    iget-boolean v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mIsSetOnlyAddAnim:Z

    if-nez v4, :cond_c

    iget-boolean v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mIsSetOnlyRemoveAnim:Z

    if-eqz v4, :cond_b

    goto :goto_4

    :cond_b
    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int/2addr v1, v4

    iput v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mAnimatedBlackTop:I

    goto :goto_6

    :cond_c
    :goto_4
    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mLastItemAddRemoveAnim:Landroid/animation/ValueAnimator;

    if-nez v4, :cond_10

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v4

    instance-of v6, v4, Landroidx/recyclerview/widget/DefaultItemAnimator;

    if-eqz v6, :cond_d

    iget v6, p0, Landroidx/recyclerview/widget/RecyclerView;->mLastItemAnimTop:I

    if-ne v6, v5, :cond_d

    check-cast v4, Landroidx/recyclerview/widget/DefaultItemAnimator;

    iget v4, v4, Landroidx/recyclerview/widget/DefaultItemAnimator;->mLastItemBottom:I

    iput v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mLastItemAnimTop:I

    :cond_d
    iget-boolean v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mIsSetOnlyAddAnim:Z

    if-eqz v4, :cond_e

    iget v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mLastItemAnimTop:I

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int/2addr v1, v6

    filled-new-array {v4, v1}, [I

    move-result-object v1

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mLastItemAddRemoveAnim:Landroid/animation/ValueAnimator;

    goto :goto_5

    :cond_e
    iget-boolean v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mIsSetOnlyRemoveAnim:Z

    if-eqz v4, :cond_f

    iget v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mLastItemAnimTop:I

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    filled-new-array {v4, v1}, [I

    move-result-object v1

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mLastItemAddRemoveAnim:Landroid/animation/ValueAnimator;

    :goto_5
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mLastItemAddRemoveAnim:Landroid/animation/ValueAnimator;

    const-wide/16 v6, 0x14a

    invoke-virtual {v1, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mLastItemAddRemoveAnim:Landroid/animation/ValueAnimator;

    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mAnimListener:Landroidx/recyclerview/widget/RecyclerView$2;

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mLastItemAddRemoveAnim:Landroid/animation/ValueAnimator;

    new-instance v4, Landroidx/recyclerview/widget/RecyclerView$13;

    const/4 v6, 0x0

    invoke-direct {v4, v6, p0}, Landroidx/recyclerview/widget/RecyclerView$13;-><init>(ILandroidx/recyclerview/widget/RecyclerView;)V

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mLastItemAddRemoveAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_6

    :cond_f
    const-string v1, "SeslRecyclerView"

    const-string v4, "Not set only add/remove anim"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    :goto_6
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    :cond_11
    iget v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mBlackTop:I

    if-ne v1, v5, :cond_12

    iget v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mAnimatedBlackTop:I

    if-ne v4, v1, :cond_12

    iget-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mIsSetOnlyAddAnim:Z

    if-eqz v1, :cond_13

    :cond_12
    iget v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mAnimatedBlackTop:I

    int-to-float v6, v1

    int-to-float v7, v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getBottom()I

    move-result v1

    int-to-float v8, v1

    iget-object v9, p0, Landroidx/recyclerview/widget/RecyclerView;->mRectPaint:Landroid/graphics/Paint;

    const/4 v5, 0x0

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mDrawLastRoundedCorner:Z

    if-eqz v1, :cond_13

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mRoundedCorner:Landroidx/appcompat/util/SeslSubheaderRoundedCorner;

    iget v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mAnimatedBlackTop:I

    sub-int v5, v0, v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getBottom()I

    move-result v6

    iget-object v7, v1, Landroidx/appcompat/util/SeslRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    invoke-virtual {v7, v2, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {v1, p1}, Landroidx/appcompat/util/SeslSubheaderRoundedCorner;->drawRoundedCornerInternal(Landroid/graphics/Canvas;)V

    :cond_13
    iget v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mBlackTop:I

    iput v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mLastItemAnimTop:I

    iget-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mDrawHorizontalPadding:Z

    if-eqz v1, :cond_15

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    if-lez v2, :cond_14

    int-to-float v7, v2

    int-to-float v8, v1

    iget-object v9, p0, Landroidx/recyclerview/widget/RecyclerView;->mRectPaint:Landroid/graphics/Paint;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_14
    if-lez v3, :cond_15

    sub-int v2, v0, v3

    int-to-float v4, v2

    int-to-float v6, v0

    int-to-float v7, v1

    iget-object v8, p0, Landroidx/recyclerview/widget/RecyclerView;->mRectPaint:Landroid/graphics/Paint;

    const/4 v5, 0x0

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_15
    return-void
.end method

.method public final dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget-object v0, v1, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    const-string v3, "SeslRecyclerView"

    if-nez v0, :cond_0

    const-string v0, "No adapter attached; skipping hover scroll"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v6

    const/16 v7, 0x9

    const/4 v8, 0x7

    const/16 v9, 0xa

    const/4 v10, 0x2

    const/4 v11, 0x1

    if-eq v4, v8, :cond_1

    if-ne v4, v7, :cond_2

    :cond_1
    if-ne v6, v10, :cond_2

    iput-boolean v11, v1, Landroidx/recyclerview/widget/RecyclerView;->mIsPenHovered:Z

    goto :goto_0

    :cond_2
    if-ne v4, v9, :cond_3

    iput-boolean v5, v1, Landroidx/recyclerview/widget/RecyclerView;->mIsPenHovered:Z

    :cond_3
    :goto_0
    sget-object v0, Landroidx/reflect/widget/SeslTextViewReflector;->mClass:Ljava/lang/Class;

    const-string v12, "hidden_semIsTextViewHovered"

    new-array v13, v5, [Ljava/lang/Class;

    invoke-static {v0, v12, v13}, Landroidx/reflect/SeslBaseReflector;->getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v12

    if-eqz v12, :cond_4

    const-string v13, "SeslBaseReflector"

    const/4 v14, 0x0

    :try_start_0
    invoke-virtual {v12, v14, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v15, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, " InvocationTargetException"

    invoke-static {v12, v0, v14, v13, v15}, Landroidx/appcompat/app/AlertDialog$$ExternalSyntheticOutline0;->m(Ljava/lang/reflect/Method;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/InvocationTargetException;)V

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v14, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, " IllegalArgumentException"

    invoke-static {v12, v0, v15, v13, v14}, Landroidx/appcompat/app/AlertDialog$$ExternalSyntheticOutline0;->m(Ljava/lang/reflect/Method;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/IllegalArgumentException;)V

    goto :goto_1

    :catch_2
    move-exception v0

    move-object v14, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, " IllegalAccessException"

    invoke-static {v12, v0, v15, v13, v14}, Landroidx/appcompat/app/AlertDialog$$ExternalSyntheticOutline0;->m(Ljava/lang/reflect/Method;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/IllegalAccessException;)V

    :goto_1
    const/4 v14, 0x0

    :goto_2
    instance-of v0, v14, Ljava/lang/Boolean;

    if-eqz v0, :cond_4

    check-cast v14, Ljava/lang/Boolean;

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_3

    :cond_4
    move v0, v5

    :goto_3
    iput-boolean v0, v1, Landroidx/recyclerview/widget/RecyclerView;->mNewTextViewHoverState:Z

    const/16 v12, 0x20

    if-nez v0, :cond_6

    iget-boolean v0, v1, Landroidx/recyclerview/widget/RecyclerView;->mOldTextViewHoverState:Z

    if-eqz v0, :cond_6

    iget-boolean v0, v1, Landroidx/recyclerview/widget/RecyclerView;->mIsPenDragBlockEnabled:Z

    if-eqz v0, :cond_6

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v0

    if-eq v0, v12, :cond_5

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v0

    if-ne v0, v10, :cond_6

    :cond_5
    iput-boolean v11, v1, Landroidx/recyclerview/widget/RecyclerView;->mIsNeedPenSelectIconSet:Z

    goto :goto_4

    :cond_6
    iput-boolean v5, v1, Landroidx/recyclerview/widget/RecyclerView;->mIsNeedPenSelectIconSet:Z

    :goto_4
    iget-boolean v0, v1, Landroidx/recyclerview/widget/RecyclerView;->mNewTextViewHoverState:Z

    iput-boolean v0, v1, Landroidx/recyclerview/widget/RecyclerView;->mOldTextViewHoverState:Z

    if-eq v4, v7, :cond_b

    if-ne v4, v8, :cond_a

    iget-boolean v0, v1, Landroidx/recyclerview/widget/RecyclerView;->mIsPenDragBlockEnabled:Z

    if-eqz v0, :cond_7

    iget-boolean v0, v1, Landroidx/recyclerview/widget/RecyclerView;->mIsPenSelectPointerSetted:Z

    if-nez v0, :cond_7

    iget-boolean v0, v1, Landroidx/recyclerview/widget/RecyclerView;->mIsPenSelectionEnabled:Z

    if-eqz v0, :cond_7

    invoke-virtual {v2, v5}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v0

    if-ne v0, v10, :cond_7

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v0

    if-eq v0, v12, :cond_8

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v0

    if-eq v0, v10, :cond_8

    :cond_7
    iget-boolean v0, v1, Landroidx/recyclerview/widget/RecyclerView;->mIsNeedPenSelectIconSet:Z

    if-eqz v0, :cond_9

    :cond_8
    invoke-static {}, Landroidx/reflect/view/SeslPointerIconReflector;->getField_SEM_TYPE_STYLUS_PEN_SELECT()I

    move-result v0

    invoke-virtual {v1, v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->showPointerIcon$1(Landroid/view/MotionEvent;I)V

    iput-boolean v11, v1, Landroidx/recyclerview/widget/RecyclerView;->mIsPenSelectPointerSetted:Z

    goto/16 :goto_7

    :cond_9
    iget-boolean v0, v1, Landroidx/recyclerview/widget/RecyclerView;->mIsPenDragBlockEnabled:Z

    if-eqz v0, :cond_14

    iget-boolean v0, v1, Landroidx/recyclerview/widget/RecyclerView;->mIsPenSelectPointerSetted:Z

    if-eqz v0, :cond_14

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v0

    if-eq v0, v12, :cond_14

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v0

    if-eq v0, v10, :cond_14

    invoke-static {}, Landroidx/reflect/view/SeslPointerIconReflector;->getField_SEM_TYPE_STYLUS_DEFAULT()I

    move-result v0

    invoke-virtual {v1, v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->showPointerIcon$1(Landroid/view/MotionEvent;I)V

    iput-boolean v5, v1, Landroidx/recyclerview/widget/RecyclerView;->mIsPenSelectPointerSetted:Z

    goto/16 :goto_7

    :cond_a
    if-ne v4, v9, :cond_14

    iget-boolean v0, v1, Landroidx/recyclerview/widget/RecyclerView;->mIsPenSelectPointerSetted:Z

    if-eqz v0, :cond_14

    invoke-static {}, Landroidx/reflect/view/SeslPointerIconReflector;->getField_SEM_TYPE_STYLUS_DEFAULT()I

    move-result v0

    invoke-virtual {v1, v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->showPointerIcon$1(Landroid/view/MotionEvent;I)V

    iput-boolean v5, v1, Landroidx/recyclerview/widget/RecyclerView;->mIsPenSelectPointerSetted:Z

    goto/16 :goto_7

    :cond_b
    iput-boolean v11, v1, Landroidx/recyclerview/widget/RecyclerView;->mNeedsHoverScroll:Z

    iget-boolean v0, v1, Landroidx/recyclerview/widget/RecyclerView;->mHasNestedScrollRange:Z

    if-eqz v0, :cond_c

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView;->adjustNestedScrollRange$1()V

    :cond_c
    iget-boolean v0, v1, Landroidx/recyclerview/widget/RecyclerView;->mHoverScrollEnable:Z

    if-nez v0, :cond_d

    iput-boolean v5, v1, Landroidx/recyclerview/widget/RecyclerView;->mNeedsHoverScroll:Z

    :cond_d
    iget-boolean v0, v1, Landroidx/recyclerview/widget/RecyclerView;->mNeedsHoverScroll:Z

    if-eqz v0, :cond_13

    if-ne v6, v10, :cond_13

    invoke-static {}, Landroidx/reflect/provider/SeslSettingsReflector$SeslSystemReflector;->getField_SEM_PEN_HOVERING()Ljava/lang/String;

    move-result-object v0

    iget-object v13, v1, Landroidx/recyclerview/widget/RecyclerView;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    invoke-static {v13, v0, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v11, :cond_e

    move v0, v11

    goto :goto_5

    :cond_e
    move v0, v5

    :goto_5
    :try_start_1
    iget-object v13, v1, Landroidx/recyclerview/widget/RecyclerView;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "car_mode_on"

    invoke-static {v13, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v3
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_3

    if-ne v3, v11, :cond_f

    move v3, v11

    goto :goto_6

    :catch_3
    const-string v13, "dispatchHoverEvent car_mode_on SettingNotFoundException"

    invoke-static {v3, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    move v3, v5

    :goto_6
    if-eqz v0, :cond_10

    if-eqz v3, :cond_11

    :cond_10
    iput-boolean v5, v1, Landroidx/recyclerview/widget/RecyclerView;->mNeedsHoverScroll:Z

    :cond_11
    if-eqz v0, :cond_13

    iget-boolean v0, v1, Landroidx/recyclerview/widget/RecyclerView;->mIsPenDragBlockEnabled:Z

    if-eqz v0, :cond_13

    iget-boolean v0, v1, Landroidx/recyclerview/widget/RecyclerView;->mIsPenSelectPointerSetted:Z

    if-nez v0, :cond_13

    iget-boolean v0, v1, Landroidx/recyclerview/widget/RecyclerView;->mIsPenSelectionEnabled:Z

    if-eqz v0, :cond_13

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v0

    if-eq v0, v12, :cond_12

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v0

    if-ne v0, v10, :cond_13

    :cond_12
    invoke-static {}, Landroidx/reflect/view/SeslPointerIconReflector;->getField_SEM_TYPE_STYLUS_PEN_SELECT()I

    move-result v0

    invoke-virtual {v1, v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->showPointerIcon$1(Landroid/view/MotionEvent;I)V

    iput-boolean v11, v1, Landroidx/recyclerview/widget/RecyclerView;->mIsPenSelectPointerSetted:Z

    :cond_13
    iget-boolean v0, v1, Landroidx/recyclerview/widget/RecyclerView;->mNeedsHoverScroll:Z

    if-eqz v0, :cond_14

    const/4 v0, 0x3

    if-ne v6, v0, :cond_14

    iput-boolean v5, v1, Landroidx/recyclerview/widget/RecyclerView;->mNeedsHoverScroll:Z

    :cond_14
    :goto_7
    iget-boolean v0, v1, Landroidx/recyclerview/widget/RecyclerView;->mNeedsHoverScroll:Z

    if-nez v0, :cond_15

    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :cond_15
    iget-object v0, v1, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    :goto_8
    float-to-int v3, v3

    goto :goto_9

    :cond_16
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    goto :goto_8

    :goto_9
    if-eqz v0, :cond_17

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    :goto_a
    float-to-int v6, v6

    goto :goto_b

    :cond_17
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    goto :goto_a

    :goto_b
    if-eqz v0, :cond_18

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v13

    goto :goto_c

    :cond_18
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v13

    :goto_c
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView;->canScrollDown$1()Z

    move-result v14

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView;->canScrollUp$1()Z

    move-result v15

    invoke-virtual {v2, v5}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v11

    if-ne v11, v10, :cond_19

    const/4 v11, 0x1

    goto :goto_d

    :cond_19
    move v11, v5

    :goto_d
    iget v5, v1, Landroidx/recyclerview/widget/RecyclerView;->mHoverTopAreaHeight:I

    if-le v6, v5, :cond_1a

    iget v5, v1, Landroidx/recyclerview/widget/RecyclerView;->mHoverBottomAreaHeight:I

    sub-int v5, v13, v5

    iget v7, v1, Landroidx/recyclerview/widget/RecyclerView;->mRemainNestedScrollRange:I

    sub-int/2addr v5, v7

    if-lt v6, v5, :cond_36

    :cond_1a
    if-lez v3, :cond_36

    if-eqz v0, :cond_1b

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getBottom()I

    move-result v5

    goto :goto_e

    :cond_1b
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getRight()I

    move-result v5

    :goto_e
    if-gt v3, v5, :cond_36

    if-nez v15, :cond_1c

    if-eqz v14, :cond_36

    :cond_1c
    if-ltz v6, :cond_1d

    iget v5, v1, Landroidx/recyclerview/widget/RecyclerView;->mHoverTopAreaHeight:I

    if-gt v6, v5, :cond_1d

    if-nez v15, :cond_1d

    iget-boolean v5, v1, Landroidx/recyclerview/widget/RecyclerView;->mIsHoverOverscrolled:Z

    if-nez v5, :cond_36

    :cond_1d
    iget v5, v1, Landroidx/recyclerview/widget/RecyclerView;->mHoverBottomAreaHeight:I

    sub-int v5, v13, v5

    iget v7, v1, Landroidx/recyclerview/widget/RecyclerView;->mRemainNestedScrollRange:I

    sub-int/2addr v5, v7

    if-lt v6, v5, :cond_1e

    sub-int v5, v13, v7

    if-gt v6, v5, :cond_1e

    if-nez v14, :cond_1e

    iget-boolean v5, v1, Landroidx/recyclerview/widget/RecyclerView;->mIsHoverOverscrolled:Z

    if-nez v5, :cond_36

    :cond_1e
    if-eqz v11, :cond_1f

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v5

    if-eq v5, v12, :cond_36

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v5

    if-eq v5, v10, :cond_36

    :cond_1f
    if-eqz v11, :cond_36

    iget-object v5, v1, Landroidx/recyclerview/widget/RecyclerView;->mContext:Landroid/content/Context;

    const-string v7, "keyguard"

    invoke-virtual {v5, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/KeyguardManager;

    invoke-virtual {v5}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v5

    if-eqz v5, :cond_20

    goto/16 :goto_16

    :cond_20
    iget-boolean v5, v1, Landroidx/recyclerview/widget/RecyclerView;->mHasNestedScrollRange:Z

    if-eqz v5, :cond_21

    iget v5, v1, Landroidx/recyclerview/widget/RecyclerView;->mRemainNestedScrollRange:I

    if-lez v5, :cond_21

    iget v7, v1, Landroidx/recyclerview/widget/RecyclerView;->mNestedScrollRange:I

    if-eq v5, v7, :cond_21

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView;->adjustNestedScrollRange$1()V

    :cond_21
    iget-boolean v5, v1, Landroidx/recyclerview/widget/RecyclerView;->mHoverAreaEnter:Z

    if-nez v5, :cond_22

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iput-wide v7, v1, Landroidx/recyclerview/widget/RecyclerView;->mHoverScrollStartTime:J

    :cond_22
    iget v5, v1, Landroidx/recyclerview/widget/RecyclerView;->mRemainNestedScrollRange:I

    if-eqz v5, :cond_24

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    if-gt v13, v5, :cond_23

    goto :goto_10

    :cond_23
    iget v5, v1, Landroidx/recyclerview/widget/RecyclerView;->mRemainNestedScrollRange:I

    :goto_f
    const/4 v7, 0x7

    goto :goto_11

    :cond_24
    :goto_10
    const/4 v5, 0x0

    goto :goto_f

    :goto_11
    if-eq v4, v7, :cond_2c

    const/16 v7, 0x9

    if-eq v4, v7, :cond_2a

    if-eq v4, v9, :cond_26

    :cond_25
    :goto_12
    const/4 v1, 0x1

    goto/16 :goto_15

    :cond_26
    iget-object v0, v1, Landroidx/recyclerview/widget/RecyclerView;->mHoverHandler:Landroidx/recyclerview/widget/RecyclerView$6;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_27

    iget-object v0, v1, Landroidx/recyclerview/widget/RecyclerView;->mHoverHandler:Landroidx/recyclerview/widget/RecyclerView$6;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    :cond_27
    iget v0, v1, Landroidx/recyclerview/widget/RecyclerView;->mScrollState:I

    const/4 v4, 0x1

    if-ne v0, v4, :cond_28

    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    :cond_28
    invoke-static {}, Landroidx/reflect/view/SeslPointerIconReflector;->getField_SEM_TYPE_STYLUS_DEFAULT()I

    move-result v0

    invoke-virtual {v1, v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->showPointerIcon$1(Landroid/view/MotionEvent;I)V

    const-wide/16 v4, 0x0

    iput-wide v4, v1, Landroidx/recyclerview/widget/RecyclerView;->mHoverRecognitionStartTime:J

    iput-wide v4, v1, Landroidx/recyclerview/widget/RecyclerView;->mHoverScrollStartTime:J

    iput-boolean v3, v1, Landroidx/recyclerview/widget/RecyclerView;->mIsHoverOverscrolled:Z

    iput-boolean v3, v1, Landroidx/recyclerview/widget/RecyclerView;->mHoverAreaEnter:Z

    iput-boolean v3, v1, Landroidx/recyclerview/widget/RecyclerView;->mIsSendHoverScrollState:Z

    iget v0, v1, Landroidx/recyclerview/widget/RecyclerView;->mHoverScrollStateForListener:I

    if-eqz v0, :cond_29

    iput v3, v1, Landroidx/recyclerview/widget/RecyclerView;->mHoverScrollStateForListener:I

    iget-object v0, v1, Landroidx/recyclerview/widget/RecyclerView;->mScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    if-eqz v0, :cond_29

    invoke-virtual {v0, v3, v1}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(ILandroidx/recyclerview/widget/RecyclerView;)V

    :cond_29
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :cond_2a
    const/4 v3, 0x0

    const/4 v4, 0x1

    iput-boolean v4, v1, Landroidx/recyclerview/widget/RecyclerView;->mHoverAreaEnter:Z

    if-ltz v6, :cond_2b

    iget v4, v1, Landroidx/recyclerview/widget/RecyclerView;->mHoverTopAreaHeight:I

    if-gt v6, v4, :cond_2b

    iget-object v4, v1, Landroidx/recyclerview/widget/RecyclerView;->mHoverHandler:Landroidx/recyclerview/widget/RecyclerView$6;

    invoke-virtual {v4, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v4

    if-nez v4, :cond_25

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v1, Landroidx/recyclerview/widget/RecyclerView;->mHoverRecognitionStartTime:J

    invoke-virtual {v1, v3, v0}, Landroidx/recyclerview/widget/RecyclerView;->getRotatedArrowPointerIcon(ZZ)I

    move-result v0

    invoke-virtual {v1, v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->showPointerIcon$1(Landroid/view/MotionEvent;I)V

    iput v10, v1, Landroidx/recyclerview/widget/RecyclerView;->mHoverScrollDirection:I

    iget-object v0, v1, Landroidx/recyclerview/widget/RecyclerView;->mHoverHandler:Landroidx/recyclerview/widget/RecyclerView$6;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_12

    :cond_2b
    iget v3, v1, Landroidx/recyclerview/widget/RecyclerView;->mHoverBottomAreaHeight:I

    sub-int v3, v13, v3

    sub-int/2addr v3, v5

    if-lt v6, v3, :cond_25

    sub-int/2addr v13, v5

    if-gt v6, v13, :cond_25

    iget-object v3, v1, Landroidx/recyclerview/widget/RecyclerView;->mHoverHandler:Landroidx/recyclerview/widget/RecyclerView$6;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v3

    if-nez v3, :cond_25

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, v1, Landroidx/recyclerview/widget/RecyclerView;->mHoverRecognitionStartTime:J

    const/4 v7, 0x1

    invoke-virtual {v1, v7, v0}, Landroidx/recyclerview/widget/RecyclerView;->getRotatedArrowPointerIcon(ZZ)I

    move-result v0

    invoke-virtual {v1, v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->showPointerIcon$1(Landroid/view/MotionEvent;I)V

    iput v7, v1, Landroidx/recyclerview/widget/RecyclerView;->mHoverScrollDirection:I

    iget-object v0, v1, Landroidx/recyclerview/widget/RecyclerView;->mHoverHandler:Landroidx/recyclerview/widget/RecyclerView$6;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    move v1, v7

    goto/16 :goto_15

    :cond_2c
    const/4 v7, 0x1

    iget-boolean v4, v1, Landroidx/recyclerview/widget/RecyclerView;->mHoverAreaEnter:Z

    if-nez v4, :cond_2d

    iput-boolean v7, v1, Landroidx/recyclerview/widget/RecyclerView;->mHoverAreaEnter:Z

    invoke-virtual {v2, v9}, Landroid/view/MotionEvent;->setAction(I)V

    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :cond_2d
    if-ltz v6, :cond_30

    iget v4, v1, Landroidx/recyclerview/widget/RecyclerView;->mHoverTopAreaHeight:I

    if-gt v6, v4, :cond_30

    iget-object v3, v1, Landroidx/recyclerview/widget/RecyclerView;->mHoverHandler:Landroidx/recyclerview/widget/RecyclerView$6;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v3

    if-nez v3, :cond_25

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, v1, Landroidx/recyclerview/widget/RecyclerView;->mHoverRecognitionStartTime:J

    iget-boolean v3, v1, Landroidx/recyclerview/widget/RecyclerView;->mIsHoverOverscrolled:Z

    if-eqz v3, :cond_2e

    iget v3, v1, Landroidx/recyclerview/widget/RecyclerView;->mHoverScrollDirection:I

    const/4 v5, 0x1

    if-ne v3, v5, :cond_2f

    :cond_2e
    invoke-virtual {v1, v4, v0}, Landroidx/recyclerview/widget/RecyclerView;->getRotatedArrowPointerIcon(ZZ)I

    move-result v0

    invoke-virtual {v1, v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->showPointerIcon$1(Landroid/view/MotionEvent;I)V

    :cond_2f
    iput v10, v1, Landroidx/recyclerview/widget/RecyclerView;->mHoverScrollDirection:I

    iget-object v0, v1, Landroidx/recyclerview/widget/RecyclerView;->mHoverHandler:Landroidx/recyclerview/widget/RecyclerView$6;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_12

    :cond_30
    iget v4, v1, Landroidx/recyclerview/widget/RecyclerView;->mHoverBottomAreaHeight:I

    sub-int v4, v13, v4

    sub-int/2addr v4, v5

    if-lt v6, v4, :cond_34

    sub-int/2addr v13, v5

    if-gt v6, v13, :cond_34

    iget-object v4, v1, Landroidx/recyclerview/widget/RecyclerView;->mHoverHandler:Landroidx/recyclerview/widget/RecyclerView$6;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v4

    if-nez v4, :cond_25

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v1, Landroidx/recyclerview/widget/RecyclerView;->mHoverRecognitionStartTime:J

    iget-boolean v4, v1, Landroidx/recyclerview/widget/RecyclerView;->mIsHoverOverscrolled:Z

    if-eqz v4, :cond_31

    iget v4, v1, Landroidx/recyclerview/widget/RecyclerView;->mHoverScrollDirection:I

    if-ne v4, v10, :cond_32

    :cond_31
    const/4 v4, 0x1

    goto :goto_13

    :cond_32
    const/4 v4, 0x1

    goto :goto_14

    :goto_13
    invoke-virtual {v1, v4, v0}, Landroidx/recyclerview/widget/RecyclerView;->getRotatedArrowPointerIcon(ZZ)I

    move-result v0

    invoke-virtual {v1, v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->showPointerIcon$1(Landroid/view/MotionEvent;I)V

    :goto_14
    iput v4, v1, Landroidx/recyclerview/widget/RecyclerView;->mHoverScrollDirection:I

    iget-object v0, v1, Landroidx/recyclerview/widget/RecyclerView;->mHoverHandler:Landroidx/recyclerview/widget/RecyclerView$6;

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView;->isSupportGotoTop$1()Z

    move-result v0

    if-eqz v0, :cond_33

    iget v0, v1, Landroidx/recyclerview/widget/RecyclerView;->mGoToTopState:I

    if-ne v0, v10, :cond_33

    iget-object v0, v1, Landroidx/recyclerview/widget/RecyclerView;->mGoToTopRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v3, v6}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-nez v0, :cond_33

    iput v4, v1, Landroidx/recyclerview/widget/RecyclerView;->mGoToTopState:I

    iget-object v0, v1, Landroidx/recyclerview/widget/RecyclerView;->mGoToTopView:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setPressed(Z)V

    invoke-virtual {v1, v4}, Landroidx/recyclerview/widget/RecyclerView;->autoHide(I)V

    :cond_33
    move v1, v4

    goto :goto_15

    :cond_34
    const/4 v5, 0x0

    iget-object v0, v1, Landroidx/recyclerview/widget/RecyclerView;->mHoverHandler:Landroidx/recyclerview/widget/RecyclerView$6;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_35

    iget-object v0, v1, Landroidx/recyclerview/widget/RecyclerView;->mHoverHandler:Landroidx/recyclerview/widget/RecyclerView$6;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    iget v0, v1, Landroidx/recyclerview/widget/RecyclerView;->mScrollState:I

    const/4 v3, 0x1

    if-ne v0, v3, :cond_35

    invoke-virtual {v1, v5}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    :cond_35
    invoke-static {}, Landroidx/reflect/view/SeslPointerIconReflector;->getField_SEM_TYPE_STYLUS_DEFAULT()I

    move-result v0

    invoke-virtual {v1, v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->showPointerIcon$1(Landroid/view/MotionEvent;I)V

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Landroidx/recyclerview/widget/RecyclerView;->mHoverRecognitionStartTime:J

    iput-wide v2, v1, Landroidx/recyclerview/widget/RecyclerView;->mHoverScrollStartTime:J

    iput-boolean v5, v1, Landroidx/recyclerview/widget/RecyclerView;->mIsHoverOverscrolled:Z

    iput-boolean v5, v1, Landroidx/recyclerview/widget/RecyclerView;->mHoverAreaEnter:Z

    iput-boolean v5, v1, Landroidx/recyclerview/widget/RecyclerView;->mIsSendHoverScrollState:Z

    goto/16 :goto_12

    :goto_15
    return v1

    :cond_36
    :goto_16
    iget-boolean v5, v1, Landroidx/recyclerview/widget/RecyclerView;->mHasNestedScrollRange:Z

    if-eqz v5, :cond_37

    iget v5, v1, Landroidx/recyclerview/widget/RecyclerView;->mRemainNestedScrollRange:I

    if-lez v5, :cond_37

    iget v7, v1, Landroidx/recyclerview/widget/RecyclerView;->mNestedScrollRange:I

    if-eq v5, v7, :cond_37

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView;->adjustNestedScrollRange$1()V

    :cond_37
    iget-object v5, v1, Landroidx/recyclerview/widget/RecyclerView;->mHoverHandler:Landroidx/recyclerview/widget/RecyclerView$6;

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v5

    if-eqz v5, :cond_38

    iget-object v5, v1, Landroidx/recyclerview/widget/RecyclerView;->mHoverHandler:Landroidx/recyclerview/widget/RecyclerView$6;

    invoke-virtual {v5, v7}, Landroid/os/Handler;->removeMessages(I)V

    invoke-static {}, Landroidx/reflect/view/SeslPointerIconReflector;->getField_SEM_TYPE_STYLUS_DEFAULT()I

    move-result v5

    invoke-virtual {v1, v2, v5}, Landroidx/recyclerview/widget/RecyclerView;->showPointerIcon$1(Landroid/view/MotionEvent;I)V

    iget v5, v1, Landroidx/recyclerview/widget/RecyclerView;->mScrollState:I

    const/4 v8, 0x1

    if-ne v5, v8, :cond_38

    invoke-virtual {v1, v7}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    :cond_38
    iget v5, v1, Landroidx/recyclerview/widget/RecyclerView;->mHoverTopAreaHeight:I

    if-le v6, v5, :cond_3a

    iget v5, v1, Landroidx/recyclerview/widget/RecyclerView;->mHoverBottomAreaHeight:I

    sub-int/2addr v13, v5

    iget v5, v1, Landroidx/recyclerview/widget/RecyclerView;->mRemainNestedScrollRange:I

    sub-int/2addr v13, v5

    if-lt v6, v13, :cond_39

    goto :goto_18

    :cond_39
    :goto_17
    const/4 v3, 0x0

    goto :goto_1a

    :cond_3a
    :goto_18
    if-lez v3, :cond_39

    if-eqz v0, :cond_3b

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getBottom()I

    move-result v0

    goto :goto_19

    :cond_3b
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getRight()I

    move-result v0

    :goto_19
    if-le v3, v0, :cond_3c

    goto :goto_17

    :goto_1a
    iput-boolean v3, v1, Landroidx/recyclerview/widget/RecyclerView;->mIsHoverOverscrolled:Z

    :cond_3c
    iget-boolean v0, v1, Landroidx/recyclerview/widget/RecyclerView;->mHoverAreaEnter:Z

    if-nez v0, :cond_3d

    iget-wide v5, v1, Landroidx/recyclerview/widget/RecyclerView;->mHoverScrollStartTime:J

    const-wide/16 v7, 0x0

    cmp-long v0, v5, v7

    if-eqz v0, :cond_3e

    goto :goto_1b

    :cond_3d
    const-wide/16 v7, 0x0

    :goto_1b
    invoke-static {}, Landroidx/reflect/view/SeslPointerIconReflector;->getField_SEM_TYPE_STYLUS_DEFAULT()I

    move-result v0

    invoke-virtual {v1, v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->showPointerIcon$1(Landroid/view/MotionEvent;I)V

    :cond_3e
    iput-wide v7, v1, Landroidx/recyclerview/widget/RecyclerView;->mHoverRecognitionStartTime:J

    iput-wide v7, v1, Landroidx/recyclerview/widget/RecyclerView;->mHoverScrollStartTime:J

    const/4 v3, 0x0

    iput-boolean v3, v1, Landroidx/recyclerview/widget/RecyclerView;->mHoverAreaEnter:Z

    iput-boolean v3, v1, Landroidx/recyclerview/widget/RecyclerView;->mIsSendHoverScrollState:Z

    if-ne v4, v9, :cond_40

    iget v0, v1, Landroidx/recyclerview/widget/RecyclerView;->mHoverScrollStateForListener:I

    if-eqz v0, :cond_3f

    iput v3, v1, Landroidx/recyclerview/widget/RecyclerView;->mHoverScrollStateForListener:I

    iget-object v0, v1, Landroidx/recyclerview/widget/RecyclerView;->mScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    if-eqz v0, :cond_40

    invoke-virtual {v0, v3, v1}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(ILandroidx/recyclerview/widget/RecyclerView;)V

    goto :goto_1c

    :cond_3f
    iput-boolean v3, v1, Landroidx/recyclerview/widget/RecyclerView;->mIsHoverOverscrolled:Z

    :cond_40
    :goto_1c
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x13

    if-eq v0, v1, :cond_2

    const/16 v1, 0x14

    if-eq v0, v1, :cond_2

    const/16 v1, 0x42

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mIsRecoilSupported:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mIsRecoilEnabled:Z

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimatorHolder:Landroidx/appcompat/animation/SeslRecoilAnimator$Holder;

    invoke-virtual {v1, v0}, Landroidx/appcompat/animation/SeslRecoilAnimator$Holder;->setPress(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimatorHolder:Landroidx/appcompat/animation/SeslRecoilAnimator$Holder;

    invoke-virtual {v0}, Landroidx/appcompat/animation/SeslRecoilAnimator$Holder;->setRelease()V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mIsArrowKeyPressed:Z

    :cond_3
    :goto_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public final dispatchLayout()V
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    const-string v2, "SeslRecyclerView"

    if-nez v1, :cond_0

    const-string v0, "No adapter attached; skipping layout"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    if-nez v1, :cond_1

    const-string v0, "No layout manager attached; skipping layout"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    const/4 v3, 0x0

    iput-boolean v3, v1, Landroidx/recyclerview/widget/RecyclerView$State;->mIsMeasuring:Z

    iget-boolean v1, v0, Landroidx/recyclerview/widget/RecyclerView;->mLastAutoMeasureSkippedDueToExact:Z

    const/4 v4, 0x1

    if-eqz v1, :cond_3

    iget v1, v0, Landroidx/recyclerview/widget/RecyclerView;->mLastAutoMeasureNonExactMeasuredWidth:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v5

    if-ne v1, v5, :cond_2

    iget v1, v0, Landroidx/recyclerview/widget/RecyclerView;->mLastAutoMeasureNonExactMeasuredHeight:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v5

    if-eq v1, v5, :cond_3

    :cond_2
    move v1, v4

    goto :goto_0

    :cond_3
    move v1, v3

    :goto_0
    iput v3, v0, Landroidx/recyclerview/widget/RecyclerView;->mLastAutoMeasureNonExactMeasuredWidth:I

    iput v3, v0, Landroidx/recyclerview/widget/RecyclerView;->mLastAutoMeasureNonExactMeasuredHeight:I

    iput-boolean v3, v0, Landroidx/recyclerview/widget/RecyclerView;->mLastAutoMeasureSkippedDueToExact:Z

    iget-object v5, v0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    iget v5, v5, Landroidx/recyclerview/widget/RecyclerView$State;->mLayoutStep:I

    if-ne v5, v4, :cond_4

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView;->dispatchLayoutStep1()V

    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->setExactMeasureSpecsFrom(Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView;->dispatchLayoutStep2()V

    goto :goto_2

    :cond_4
    iget-object v5, v0, Landroidx/recyclerview/widget/RecyclerView;->mAdapterHelper:Landroidx/recyclerview/widget/AdapterHelper;

    iget-object v6, v5, Landroidx/recyclerview/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_5

    iget-object v5, v5, Landroidx/recyclerview/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_5

    goto :goto_1

    :cond_5
    if-nez v1, :cond_7

    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    iget v1, v1, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mWidth:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v5

    if-ne v1, v5, :cond_7

    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    iget v1, v1, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mHeight:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v5

    if-eq v1, v5, :cond_6

    goto :goto_1

    :cond_6
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->setExactMeasureSpecsFrom(Landroidx/recyclerview/widget/RecyclerView;)V

    goto :goto_2

    :cond_7
    :goto_1
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->setExactMeasureSpecsFrom(Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView;->dispatchLayoutStep2()V

    :goto_2
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    const/4 v5, 0x4

    invoke-virtual {v1, v5}, Landroidx/recyclerview/widget/RecyclerView$State;->assertLayoutStep(I)V

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView;->startInterceptRequestLayout()V

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView;->onEnterLayoutOrScroll()V

    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    iput v4, v1, Landroidx/recyclerview/widget/RecyclerView$State;->mLayoutStep:I

    iget-boolean v1, v1, Landroidx/recyclerview/widget/RecyclerView$State;->mRunSimpleAnimations:Z

    const/4 v6, 0x0

    if-eqz v1, :cond_21

    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/ChildHelper;->getChildCount()I

    move-result v1

    sub-int/2addr v1, v4

    :goto_3
    if-ltz v1, :cond_16

    iget-object v7, v0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    invoke-virtual {v7, v1}, Landroidx/recyclerview/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-static {v7}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v7

    invoke-virtual {v7}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v8

    if-eqz v8, :cond_8

    goto/16 :goto_8

    :cond_8
    invoke-virtual {v0, v7}, Landroidx/recyclerview/widget/RecyclerView;->getChangedHolderKey(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)J

    move-result-wide v8

    iget-object v10, v0, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v10, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v10, v7}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->setFrom(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    iget-object v11, v0, Landroidx/recyclerview/widget/RecyclerView;->mViewInfoStore:Landroidx/recyclerview/widget/ViewInfoStore;

    iget-object v11, v11, Landroidx/recyclerview/widget/ViewInfoStore;->mOldChangedHolders:Landroidx/collection/LongSparseArray;

    invoke-virtual {v11, v8, v9}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    if-eqz v11, :cond_14

    invoke-virtual {v11}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v12

    if-nez v12, :cond_14

    iget-object v12, v0, Landroidx/recyclerview/widget/RecyclerView;->mViewInfoStore:Landroidx/recyclerview/widget/ViewInfoStore;

    iget-object v12, v12, Landroidx/recyclerview/widget/ViewInfoStore;->mLayoutHolderMap:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v12, v11}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;

    if-eqz v12, :cond_9

    iget v12, v12, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;->flags:I

    and-int/2addr v12, v4

    if-eqz v12, :cond_9

    move v12, v4

    goto :goto_4

    :cond_9
    move v12, v3

    :goto_4
    iget-object v13, v0, Landroidx/recyclerview/widget/RecyclerView;->mViewInfoStore:Landroidx/recyclerview/widget/ViewInfoStore;

    iget-object v13, v13, Landroidx/recyclerview/widget/ViewInfoStore;->mLayoutHolderMap:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v13, v7}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;

    if-eqz v13, :cond_a

    iget v13, v13, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;->flags:I

    and-int/2addr v13, v4

    if-eqz v13, :cond_a

    move v13, v4

    goto :goto_5

    :cond_a
    move v13, v3

    :goto_5
    if-eqz v12, :cond_b

    if-ne v11, v7, :cond_b

    iget-object v8, v0, Landroidx/recyclerview/widget/RecyclerView;->mViewInfoStore:Landroidx/recyclerview/widget/ViewInfoStore;

    invoke-virtual {v8, v7, v10}, Landroidx/recyclerview/widget/ViewInfoStore;->addToPostLayout(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    goto/16 :goto_8

    :cond_b
    iget-object v14, v0, Landroidx/recyclerview/widget/RecyclerView;->mViewInfoStore:Landroidx/recyclerview/widget/ViewInfoStore;

    invoke-virtual {v14, v11, v5}, Landroidx/recyclerview/widget/ViewInfoStore;->popFromLayoutStep(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    move-result-object v14

    iget-object v15, v0, Landroidx/recyclerview/widget/RecyclerView;->mViewInfoStore:Landroidx/recyclerview/widget/ViewInfoStore;

    invoke-virtual {v15, v7, v10}, Landroidx/recyclerview/widget/ViewInfoStore;->addToPostLayout(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    iget-object v10, v0, Landroidx/recyclerview/widget/RecyclerView;->mViewInfoStore:Landroidx/recyclerview/widget/ViewInfoStore;

    const/16 v15, 0x8

    invoke-virtual {v10, v7, v15}, Landroidx/recyclerview/widget/ViewInfoStore;->popFromLayoutStep(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    move-result-object v10

    if-nez v14, :cond_10

    iget-object v10, v0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    invoke-virtual {v10}, Landroidx/recyclerview/widget/ChildHelper;->getChildCount()I

    move-result v10

    move v12, v3

    :goto_6
    if-ge v12, v10, :cond_f

    iget-object v13, v0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    invoke-virtual {v13, v12}, Landroidx/recyclerview/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    invoke-static {v13}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v13

    if-ne v13, v7, :cond_c

    goto :goto_7

    :cond_c
    invoke-virtual {v0, v13}, Landroidx/recyclerview/widget/RecyclerView;->getChangedHolderKey(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)J

    move-result-wide v14

    cmp-long v14, v14, v8

    if-nez v14, :cond_e

    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    const-string v2, " \n View Holder 2:"

    if-eqz v1, :cond_d

    iget-boolean v1, v1, Landroidx/recyclerview/widget/RecyclerView$Adapter;->mHasStableIds:Z

    if-eqz v1, :cond_d

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Two different ViewHolders have the same stable ID. Stable IDs in your adapter MUST BE unique and SHOULD NOT change.\n ViewHolder 1:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {v0, v3}, Landroidx/recyclerview/widget/ChildHelper$$ExternalSyntheticOutline0;->m(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_d
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Two different ViewHolders have the same change ID. This might happen due to inconsistent Adapter update events or if the LayoutManager lays out the same View multiple times.\n ViewHolder 1:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {v0, v3}, Landroidx/recyclerview/widget/ChildHelper$$ExternalSyntheticOutline0;->m(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_e
    :goto_7
    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    :cond_f
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Problem while matching changed view holders with the newones. The pre-layout information for the change holder "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " cannot be found but it is necessary for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    :cond_10
    invoke-virtual {v11, v3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    if-eqz v12, :cond_11

    invoke-virtual {v0, v11}, Landroidx/recyclerview/widget/RecyclerView;->addAnimatingView(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    :cond_11
    if-eq v11, v7, :cond_13

    if-eqz v13, :cond_12

    invoke-virtual {v0, v7}, Landroidx/recyclerview/widget/RecyclerView;->addAnimatingView(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    :cond_12
    iput-object v7, v11, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mShadowedHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0, v11}, Landroidx/recyclerview/widget/RecyclerView;->addAnimatingView(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    iget-object v8, v0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    invoke-virtual {v8, v11}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->unscrapView(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    invoke-virtual {v7, v3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    iput-object v11, v7, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mShadowingHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    :cond_13
    iget-object v8, v0, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    invoke-virtual {v8, v11, v7, v14, v10}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->animateChange(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)Z

    move-result v7

    if-eqz v7, :cond_15

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView;->postAnimationRunner()V

    goto :goto_8

    :cond_14
    iget-object v8, v0, Landroidx/recyclerview/widget/RecyclerView;->mViewInfoStore:Landroidx/recyclerview/widget/ViewInfoStore;

    invoke-virtual {v8, v7, v10}, Landroidx/recyclerview/widget/ViewInfoStore;->addToPostLayout(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    :cond_15
    :goto_8
    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_3

    :cond_16
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->mViewInfoStore:Landroidx/recyclerview/widget/ViewInfoStore;

    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView;->mViewInfoProcessCallback:Landroidx/recyclerview/widget/RecyclerView$9;

    iget-object v1, v1, Landroidx/recyclerview/widget/ViewInfoStore;->mLayoutHolderMap:Landroidx/collection/SimpleArrayMap;

    iget v5, v1, Landroidx/collection/SimpleArrayMap;->size:I

    sub-int/2addr v5, v4

    :goto_9
    if-ltz v5, :cond_21

    invoke-virtual {v1, v5}, Landroidx/collection/SimpleArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    move-object v9, v7

    check-cast v9, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {v1, v5}, Landroidx/collection/SimpleArrayMap;->removeAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;

    iget v8, v7, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;->flags:I

    and-int/lit8 v10, v8, 0x3

    const/4 v11, 0x3

    if-ne v10, v11, :cond_17

    iget-object v8, v2, Landroidx/recyclerview/widget/RecyclerView$9;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v10, v8, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    iget-object v9, v9, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v8, v8, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    invoke-virtual {v10, v9, v8}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->removeAndRecycleView(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    goto/16 :goto_c

    :cond_17
    and-int/lit8 v10, v8, 0x1

    if-eqz v10, :cond_19

    iget-object v8, v7, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;->preInfo:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    if-nez v8, :cond_18

    iget-object v8, v2, Landroidx/recyclerview/widget/RecyclerView$9;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v10, v8, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    iget-object v9, v9, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v8, v8, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    invoke-virtual {v10, v9, v8}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->removeAndRecycleView(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    goto/16 :goto_c

    :cond_18
    iget-object v10, v7, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;->postInfo:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    invoke-virtual {v2, v9, v8, v10}, Landroidx/recyclerview/widget/RecyclerView$9;->processDisappeared(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    goto/16 :goto_c

    :cond_19
    and-int/lit8 v10, v8, 0xe

    const/16 v11, 0xe

    if-ne v10, v11, :cond_1a

    iget-object v8, v7, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;->preInfo:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    iget-object v10, v7, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;->postInfo:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    invoke-virtual {v2, v9, v8, v10}, Landroidx/recyclerview/widget/RecyclerView$9;->processAppeared(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    goto/16 :goto_c

    :cond_1a
    and-int/lit8 v10, v8, 0xc

    const/16 v11, 0xc

    if-ne v10, v11, :cond_1e

    iget-object v8, v7, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;->preInfo:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    iget-object v10, v7, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;->postInfo:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v9, v3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    iget-object v14, v2, Landroidx/recyclerview/widget/RecyclerView$9;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    iget-boolean v11, v14, Landroidx/recyclerview/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-eqz v11, :cond_1b

    iget-object v11, v14, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    if-eqz v11, :cond_20

    invoke-virtual {v11, v9, v9, v8, v10}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->animateChange(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)Z

    move-result v8

    if-eqz v8, :cond_20

    invoke-virtual {v14}, Landroidx/recyclerview/widget/RecyclerView;->postAnimationRunner()V

    goto :goto_c

    :cond_1b
    iget-object v11, v14, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    if-eqz v11, :cond_20

    check-cast v11, Landroidx/recyclerview/widget/SimpleItemAnimator;

    iget v12, v8, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->left:I

    iget v13, v10, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->left:I

    if-ne v12, v13, :cond_1d

    iget v15, v8, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->top:I

    iget v4, v10, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->top:I

    if-eq v15, v4, :cond_1c

    goto :goto_a

    :cond_1c
    invoke-virtual {v11, v9}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->dispatchAnimationFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    move v4, v3

    goto :goto_b

    :cond_1d
    :goto_a
    iget v4, v8, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->top:I

    iget v15, v10, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->top:I

    move-object v8, v11

    move v10, v12

    move v11, v4

    move v12, v13

    move v13, v15

    invoke-virtual/range {v8 .. v13}, Landroidx/recyclerview/widget/SimpleItemAnimator;->animateMove(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;IIII)Z

    move-result v4

    :goto_b
    if-eqz v4, :cond_20

    invoke-virtual {v14}, Landroidx/recyclerview/widget/RecyclerView;->postAnimationRunner()V

    goto :goto_c

    :cond_1e
    and-int/lit8 v4, v8, 0x4

    if-eqz v4, :cond_1f

    iget-object v4, v7, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;->preInfo:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    invoke-virtual {v2, v9, v4, v6}, Landroidx/recyclerview/widget/RecyclerView$9;->processDisappeared(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    goto :goto_c

    :cond_1f
    and-int/lit8 v4, v8, 0x8

    if-eqz v4, :cond_20

    iget-object v4, v7, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;->preInfo:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    iget-object v8, v7, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;->postInfo:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    invoke-virtual {v2, v9, v4, v8}, Landroidx/recyclerview/widget/RecyclerView$9;->processAppeared(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    :cond_20
    :goto_c
    iput v3, v7, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;->flags:I

    iput-object v6, v7, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;->preInfo:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    iput-object v6, v7, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;->postInfo:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    sget-object v4, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;->sPool:Landroidx/core/util/Pools$SimplePool;

    invoke-virtual {v4, v7}, Landroidx/core/util/Pools$SimplePool;->release(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, -0x1

    const/4 v4, 0x1

    goto/16 :goto_9

    :cond_21
    iget v1, v0, Landroidx/recyclerview/widget/RecyclerView;->mBlackTop:I

    iput v1, v0, Landroidx/recyclerview/widget/RecyclerView;->mLastBlackTop:I

    const/4 v1, -0x1

    iput v1, v0, Landroidx/recyclerview/widget/RecyclerView;->mBlackTop:I

    iget-boolean v2, v0, Landroidx/recyclerview/widget/RecyclerView;->mDrawRect:Z

    if-eqz v2, :cond_25

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->canScrollVertically(I)Z

    move-result v2

    if-nez v2, :cond_25

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->canScrollVertically(I)Z

    move-result v4

    if-nez v4, :cond_25

    iget-object v4, v0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v4

    sub-int/2addr v4, v2

    iget-object v5, v0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    check-cast v5, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-boolean v7, v5, Landroidx/recyclerview/widget/LinearLayoutManager;->mReverseLayout:Z

    if-eqz v7, :cond_22

    iget-boolean v8, v5, Landroidx/recyclerview/widget/LinearLayoutManager;->mStackFromEnd:Z

    if-eqz v8, :cond_22

    iput-boolean v2, v0, Landroidx/recyclerview/widget/RecyclerView;->mDrawReverse:Z

    move v4, v3

    goto :goto_d

    :cond_22
    if-nez v7, :cond_23

    iget-boolean v2, v5, Landroidx/recyclerview/widget/LinearLayoutManager;->mStackFromEnd:Z

    if-eqz v2, :cond_24

    :cond_23
    iput-boolean v3, v0, Landroidx/recyclerview/widget/RecyclerView;->mDrawRect:Z

    move v4, v1

    :cond_24
    :goto_d
    if-ltz v4, :cond_25

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView;->findLastVisibleItemPosition()I

    move-result v2

    if-gt v4, v2, :cond_25

    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    invoke-virtual {v2, v4}, Landroidx/recyclerview/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_25

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    iput v2, v0, Landroidx/recyclerview/widget/RecyclerView;->mBlackTop:I

    :cond_25
    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    iget-object v4, v0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    invoke-virtual {v2, v4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->removeAndRecycleScrapInt(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    iget v4, v2, Landroidx/recyclerview/widget/RecyclerView$State;->mItemCount:I

    iput v4, v2, Landroidx/recyclerview/widget/RecyclerView$State;->mPreviousLayoutItemCount:I

    iput-boolean v3, v0, Landroidx/recyclerview/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    iput-boolean v3, v0, Landroidx/recyclerview/widget/RecyclerView;->mDispatchItemsChangedEvent:Z

    iput-boolean v3, v2, Landroidx/recyclerview/widget/RecyclerView$State;->mRunSimpleAnimations:Z

    iput-boolean v3, v2, Landroidx/recyclerview/widget/RecyclerView$State;->mRunPredictiveAnimations:Z

    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    iput-boolean v3, v2, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRequestedSimpleAnimations:Z

    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    if-eqz v2, :cond_26

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    :cond_26
    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    iget-boolean v4, v2, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mPrefetchMaxObservedInInitialPrefetch:Z

    if-eqz v4, :cond_27

    iput v3, v2, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mPrefetchMaxCountObserved:I

    iput-boolean v3, v2, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mPrefetchMaxObservedInInitialPrefetch:Z

    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->updateViewCacheSize()V

    :cond_27
    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    iget-object v4, v0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    invoke-virtual {v2, v4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onLayoutCompleted(Landroidx/recyclerview/widget/RecyclerView$State;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->onExitLayoutOrScroll(Z)V

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->stopInterceptRequestLayout(Z)V

    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView;->mViewInfoStore:Landroidx/recyclerview/widget/ViewInfoStore;

    iget-object v4, v2, Landroidx/recyclerview/widget/ViewInfoStore;->mLayoutHolderMap:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v4}, Landroidx/collection/SimpleArrayMap;->clear()V

    iget-object v2, v2, Landroidx/recyclerview/widget/ViewInfoStore;->mOldChangedHolders:Landroidx/collection/LongSparseArray;

    invoke-virtual {v2}, Landroidx/collection/LongSparseArray;->clear()V

    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView;->mMinMaxLayoutPositions:[I

    aget v4, v2, v3

    const/4 v5, 0x1

    aget v7, v2, v5

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->findMinMaxChildLayoutPositions([I)V

    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView;->mMinMaxLayoutPositions:[I

    aget v8, v2, v3

    if-ne v8, v4, :cond_29

    aget v2, v2, v5

    if-eq v2, v7, :cond_28

    goto :goto_e

    :cond_28
    move v2, v3

    goto :goto_f

    :cond_29
    :goto_e
    const/4 v2, 0x1

    :goto_f
    if-eqz v2, :cond_2a

    invoke-virtual {v0, v3, v3}, Landroidx/recyclerview/widget/RecyclerView;->dispatchOnScrolled(II)V

    :cond_2a
    iget-boolean v2, v0, Landroidx/recyclerview/widget/RecyclerView;->mPreserveFocusAfterLayout:Z

    const-wide/16 v4, -0x1

    if-eqz v2, :cond_3c

    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-eqz v2, :cond_3c

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_3c

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v2

    const/high16 v7, 0x60000

    if-eq v2, v7, :cond_3c

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v2

    const/high16 v7, 0x20000

    if-ne v2, v7, :cond_2b

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->isFocused()Z

    move-result v2

    if-eqz v2, :cond_2b

    goto/16 :goto_19

    :cond_2b
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->isFocused()Z

    move-result v2

    if-nez v2, :cond_2c

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object v2

    iget-object v7, v0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    invoke-virtual {v7, v2}, Landroidx/recyclerview/widget/ChildHelper;->isHidden(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_2c

    goto/16 :goto_19

    :cond_2c
    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    iget-wide v7, v2, Landroidx/recyclerview/widget/RecyclerView$State;->mFocusedItemId:J

    cmp-long v2, v7, v4

    if-eqz v2, :cond_30

    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    iget-boolean v2, v2, Landroidx/recyclerview/widget/RecyclerView$Adapter;->mHasStableIds:Z

    if-eqz v2, :cond_30

    if-nez v2, :cond_2d

    goto :goto_12

    :cond_2d
    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v2

    move v9, v3

    move-object v10, v6

    :goto_10
    if-ge v9, v2, :cond_31

    iget-object v11, v0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    invoke-virtual {v11, v9}, Landroidx/recyclerview/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v11

    invoke-static {v11}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v11

    if-eqz v11, :cond_2f

    invoke-virtual {v11}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v12

    if-nez v12, :cond_2f

    iget-wide v12, v11, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mItemId:J

    cmp-long v12, v12, v7

    if-nez v12, :cond_2f

    iget-object v10, v0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    iget-object v12, v11, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v10, v12}, Landroidx/recyclerview/widget/ChildHelper;->isHidden(Landroid/view/View;)Z

    move-result v10

    if-eqz v10, :cond_2e

    move-object v10, v11

    goto :goto_11

    :cond_2e
    move-object v10, v11

    goto :goto_13

    :cond_2f
    :goto_11
    add-int/lit8 v9, v9, 0x1

    goto :goto_10

    :cond_30
    :goto_12
    move-object v10, v6

    :cond_31
    :goto_13
    if-eqz v10, :cond_33

    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    iget-object v7, v10, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroidx/recyclerview/widget/ChildHelper;->isHidden(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_33

    iget-object v2, v10, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->hasFocusable()Z

    move-result v2

    if-nez v2, :cond_32

    goto :goto_14

    :cond_32
    iget-object v6, v10, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    goto :goto_18

    :cond_33
    :goto_14
    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/ChildHelper;->getChildCount()I

    move-result v2

    if-lez v2, :cond_3a

    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    iget v7, v2, Landroidx/recyclerview/widget/RecyclerView$State;->mFocusedItemPosition:I

    if-eq v7, v1, :cond_34

    move v3, v7

    :cond_34
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v2

    move v7, v3

    :goto_15
    if-ge v7, v2, :cond_37

    invoke-virtual {v0, v7}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v8

    if-nez v8, :cond_35

    goto :goto_16

    :cond_35
    iget-object v9, v8, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->hasFocusable()Z

    move-result v9

    if-eqz v9, :cond_36

    iget-object v6, v8, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    goto :goto_18

    :cond_36
    add-int/lit8 v7, v7, 0x1

    goto :goto_15

    :cond_37
    :goto_16
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    :goto_17
    if-ltz v2, :cond_3a

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v3

    if-nez v3, :cond_38

    goto :goto_18

    :cond_38
    iget-object v7, v3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->hasFocusable()Z

    move-result v7

    if-eqz v7, :cond_39

    iget-object v6, v3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    goto :goto_18

    :cond_39
    add-int/lit8 v2, v2, -0x1

    goto :goto_17

    :cond_3a
    :goto_18
    if-eqz v6, :cond_3c

    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    iget v2, v2, Landroidx/recyclerview/widget/RecyclerView$State;->mFocusedSubChildId:I

    int-to-long v7, v2

    cmp-long v3, v7, v4

    if-eqz v3, :cond_3b

    invoke-virtual {v6, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_3b

    invoke-virtual {v2}, Landroid/view/View;->isFocusable()Z

    move-result v3

    if-eqz v3, :cond_3b

    move-object v6, v2

    :cond_3b
    invoke-virtual {v6}, Landroid/view/View;->requestFocus()Z

    :cond_3c
    :goto_19
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    iput-wide v4, v0, Landroidx/recyclerview/widget/RecyclerView$State;->mFocusedItemId:J

    iput v1, v0, Landroidx/recyclerview/widget/RecyclerView$State;->mFocusedItemPosition:I

    iput v1, v0, Landroidx/recyclerview/widget/RecyclerView$State;->mFocusedSubChildId:I

    return-void
.end method

.method public final dispatchLayoutStep1()V
    .locals 9

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$State;->assertLayoutStep(I)V

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->fillRemainingScrollValues(Landroidx/recyclerview/widget/RecyclerView$State;)V

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    const/4 v2, 0x0

    iput-boolean v2, v0, Landroidx/recyclerview/widget/RecyclerView$State;->mIsMeasuring:Z

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->startInterceptRequestLayout()V

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mViewInfoStore:Landroidx/recyclerview/widget/ViewInfoStore;

    iget-object v3, v0, Landroidx/recyclerview/widget/ViewInfoStore;->mLayoutHolderMap:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v3}, Landroidx/collection/SimpleArrayMap;->clear()V

    iget-object v0, v0, Landroidx/recyclerview/widget/ViewInfoStore;->mOldChangedHolders:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0}, Landroidx/collection/LongSparseArray;->clear()V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->onEnterLayoutOrScroll()V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->processAdapterUpdatesAndSetAnimationFlags()V

    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mPreserveFocusAfterLayout:Z

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v3

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->findContainingItemView(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v3

    :goto_1
    const-wide/16 v4, -0x1

    const/4 v0, -0x1

    if-nez v3, :cond_3

    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    iput-wide v4, v3, Landroidx/recyclerview/widget/RecyclerView$State;->mFocusedItemId:J

    iput v0, v3, Landroidx/recyclerview/widget/RecyclerView$State;->mFocusedItemPosition:I

    iput v0, v3, Landroidx/recyclerview/widget/RecyclerView$State;->mFocusedSubChildId:I

    goto :goto_4

    :cond_3
    iget-object v6, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    iget-object v7, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    iget-boolean v7, v7, Landroidx/recyclerview/widget/RecyclerView$Adapter;->mHasStableIds:Z

    if-eqz v7, :cond_4

    iget-wide v4, v3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mItemId:J

    :cond_4
    iput-wide v4, v6, Landroidx/recyclerview/widget/RecyclerView$State;->mFocusedItemId:J

    iget-boolean v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-eqz v4, :cond_5

    move v4, v0

    goto :goto_2

    :cond_5
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v4

    if-eqz v4, :cond_6

    iget v4, v3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mOldPosition:I

    goto :goto_2

    :cond_6
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAbsoluteAdapterPosition()I

    move-result v4

    :goto_2
    iput v4, v6, Landroidx/recyclerview/widget/RecyclerView$State;->mFocusedItemPosition:I

    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v5

    :cond_7
    :goto_3
    invoke-virtual {v3}, Landroid/view/View;->isFocused()Z

    move-result v6

    if-nez v6, :cond_8

    instance-of v6, v3, Landroid/view/ViewGroup;

    if-eqz v6, :cond_8

    invoke-virtual {v3}, Landroid/view/View;->hasFocus()Z

    move-result v6

    if-eqz v6, :cond_8

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v6

    if-eq v6, v0, :cond_7

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v5

    goto :goto_3

    :cond_8
    iput v5, v4, Landroidx/recyclerview/widget/RecyclerView$State;->mFocusedSubChildId:I

    :goto_4
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    iget-boolean v4, v3, Landroidx/recyclerview/widget/RecyclerView$State;->mRunSimpleAnimations:Z

    if-eqz v4, :cond_9

    iget-boolean v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemsChanged:Z

    if-eqz v4, :cond_9

    move v4, v1

    goto :goto_5

    :cond_9
    move v4, v2

    :goto_5
    iput-boolean v4, v3, Landroidx/recyclerview/widget/RecyclerView$State;->mTrackOldChangeHolders:Z

    iput-boolean v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemsChanged:Z

    iput-boolean v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemsAddedOrRemoved:Z

    iget-boolean v4, v3, Landroidx/recyclerview/widget/RecyclerView$State;->mRunPredictiveAnimations:Z

    iput-boolean v4, v3, Landroidx/recyclerview/widget/RecyclerView$State;->mInPreLayout:Z

    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v4

    iput v4, v3, Landroidx/recyclerview/widget/RecyclerView$State;->mItemCount:I

    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mMinMaxLayoutPositions:[I

    invoke-virtual {p0, v3}, Landroidx/recyclerview/widget/RecyclerView;->findMinMaxChildLayoutPositions([I)V

    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    iget-boolean v3, v3, Landroidx/recyclerview/widget/RecyclerView$State;->mRunSimpleAnimations:Z

    if-eqz v3, :cond_d

    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/ChildHelper;->getChildCount()I

    move-result v3

    move v4, v2

    :goto_6
    if-ge v4, v3, :cond_d

    iget-object v5, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    invoke-virtual {v5, v4}, Landroidx/recyclerview/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-static {v5}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v6

    if-nez v6, :cond_c

    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isInvalid()Z

    move-result v6

    if-eqz v6, :cond_a

    iget-object v6, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    iget-boolean v6, v6, Landroidx/recyclerview/widget/RecyclerView$Adapter;->mHasStableIds:Z

    if-nez v6, :cond_a

    goto :goto_7

    :cond_a
    iget-object v6, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    invoke-static {v5}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->buildAdapterChangeFlagsForAnimations(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getUnmodifiedPayloads()Ljava/util/List;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v6, v5}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->setFrom(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    iget-object v7, p0, Landroidx/recyclerview/widget/RecyclerView;->mViewInfoStore:Landroidx/recyclerview/widget/ViewInfoStore;

    iget-object v7, v7, Landroidx/recyclerview/widget/ViewInfoStore;->mLayoutHolderMap:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v7, v5}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;

    if-nez v8, :cond_b

    invoke-static {}, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;->obtain()Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;

    move-result-object v8

    invoke-virtual {v7, v5, v8}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    iput-object v6, v8, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;->preInfo:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    iget v6, v8, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;->flags:I

    or-int/lit8 v6, v6, 0x4

    iput v6, v8, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;->flags:I

    iget-object v6, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    iget-boolean v6, v6, Landroidx/recyclerview/widget/RecyclerView$State;->mTrackOldChangeHolders:Z

    if-eqz v6, :cond_c

    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isUpdated()Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v6

    if-nez v6, :cond_c

    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v6

    if-nez v6, :cond_c

    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isInvalid()Z

    move-result v6

    if-nez v6, :cond_c

    invoke-virtual {p0, v5}, Landroidx/recyclerview/widget/RecyclerView;->getChangedHolderKey(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)J

    move-result-wide v6

    iget-object v8, p0, Landroidx/recyclerview/widget/RecyclerView;->mViewInfoStore:Landroidx/recyclerview/widget/ViewInfoStore;

    iget-object v8, v8, Landroidx/recyclerview/widget/ViewInfoStore;->mOldChangedHolders:Landroidx/collection/LongSparseArray;

    invoke-virtual {v8, v6, v7, v5}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    :cond_c
    :goto_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_d
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    iget-boolean v3, v3, Landroidx/recyclerview/widget/RecyclerView$State;->mRunPredictiveAnimations:Z

    const/4 v4, 0x2

    if-eqz v3, :cond_17

    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v3

    move v5, v2

    :goto_8
    if-ge v5, v3, :cond_11

    iget-object v6, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    invoke-virtual {v6, v5}, Landroidx/recyclerview/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-static {v6}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v6

    sget-boolean v7, Landroidx/recyclerview/widget/RecyclerView;->sDebugAssertionsEnabled:Z

    if-eqz v7, :cond_f

    iget v7, v6, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    if-ne v7, v0, :cond_f

    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v7

    if-eqz v7, :cond_e

    goto :goto_9

    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "view holder cannot have position -1 unless it is removed"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v1}, Landroidx/recyclerview/widget/ChildHelper$$ExternalSyntheticOutline0;->m(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    :goto_9
    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v7

    if-nez v7, :cond_10

    iget v7, v6, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mOldPosition:I

    if-ne v7, v0, :cond_10

    iget v7, v6, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    iput v7, v6, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mOldPosition:I

    :cond_10
    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    :cond_11
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    iget-boolean v3, v0, Landroidx/recyclerview/widget/RecyclerView$State;->mStructureChanged:Z

    iput-boolean v2, v0, Landroidx/recyclerview/widget/RecyclerView$State;->mStructureChanged:Z

    iget-object v5, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    iget-object v6, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    invoke-virtual {v5, v6, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    iput-boolean v3, v0, Landroidx/recyclerview/widget/RecyclerView$State;->mStructureChanged:Z

    move v0, v2

    :goto_a
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/ChildHelper;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_16

    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    invoke-virtual {v3, v0}, Landroidx/recyclerview/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v5

    if-eqz v5, :cond_12

    goto :goto_b

    :cond_12
    iget-object v5, p0, Landroidx/recyclerview/widget/RecyclerView;->mViewInfoStore:Landroidx/recyclerview/widget/ViewInfoStore;

    iget-object v5, v5, Landroidx/recyclerview/widget/ViewInfoStore;->mLayoutHolderMap:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v5, v3}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;

    if-eqz v5, :cond_13

    iget v5, v5, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;->flags:I

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_13

    goto :goto_b

    :cond_13
    invoke-static {v3}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->buildAdapterChangeFlagsForAnimations(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    const/16 v5, 0x2000

    invoke-virtual {v3, v5}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->hasAnyOfTheFlags(I)Z

    move-result v5

    iget-object v6, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getUnmodifiedPayloads()Ljava/util/List;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v6, v3}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->setFrom(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    if-eqz v5, :cond_14

    invoke-virtual {p0, v3, v6}, Landroidx/recyclerview/widget/RecyclerView;->recordAnimationInfoIfBouncedHiddenView(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    goto :goto_b

    :cond_14
    iget-object v5, p0, Landroidx/recyclerview/widget/RecyclerView;->mViewInfoStore:Landroidx/recyclerview/widget/ViewInfoStore;

    iget-object v5, v5, Landroidx/recyclerview/widget/ViewInfoStore;->mLayoutHolderMap:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v5, v3}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;

    if-nez v7, :cond_15

    invoke-static {}, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;->obtain()Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;

    move-result-object v7

    invoke-virtual {v5, v3, v7}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_15
    iget v3, v7, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;->flags:I

    or-int/2addr v3, v4

    iput v3, v7, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;->flags:I

    iput-object v6, v7, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;->preInfo:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    :goto_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_16
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->clearOldPositions()V

    goto :goto_c

    :cond_17
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->clearOldPositions()V

    :goto_c
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView;->onExitLayoutOrScroll(Z)V

    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView;->stopInterceptRequestLayout(Z)V

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    iput v4, p0, Landroidx/recyclerview/widget/RecyclerView$State;->mLayoutStep:I

    return-void
.end method

.method public final dispatchLayoutStep2()V
    .locals 5

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->startInterceptRequestLayout()V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->onEnterLayoutOrScroll()V

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$State;->assertLayoutStep(I)V

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapterHelper:Landroidx/recyclerview/widget/AdapterHelper;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/AdapterHelper;->consumeUpdatesInOnePass()V

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    iput v1, v0, Landroidx/recyclerview/widget/RecyclerView$State;->mItemCount:I

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    const/4 v1, 0x0

    iput v1, v0, Landroidx/recyclerview/widget/RecyclerView$State;->mDeletedInvisibleItemCountSincePreviousLayout:I

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mPendingSavedState:Landroidx/recyclerview/widget/RecyclerView$SavedState;

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView$Adapter;->mStateRestorationPolicy:Landroidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    if-eq v3, v2, :cond_0

    const/4 v0, 0x2

    if-eq v3, v0, :cond_2

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    if-lez v0, :cond_2

    :goto_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mPendingSavedState:Landroidx/recyclerview/widget/RecyclerView$SavedState;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$SavedState;->mLayoutState:Landroid/os/Parcelable;

    if-eqz v0, :cond_1

    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v3, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mPendingSavedState:Landroidx/recyclerview/widget/RecyclerView$SavedState;

    :cond_2
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    iput-boolean v1, v0, Landroidx/recyclerview/widget/RecyclerView$State;->mInPreLayout:Z

    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    invoke-virtual {v3, v4, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    iput-boolean v1, v0, Landroidx/recyclerview/widget/RecyclerView$State;->mStructureChanged:Z

    iget-boolean v3, v0, Landroidx/recyclerview/widget/RecyclerView$State;->mRunSimpleAnimations:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    if-eqz v3, :cond_3

    move v3, v2

    goto :goto_1

    :cond_3
    move v3, v1

    :goto_1
    iput-boolean v3, v0, Landroidx/recyclerview/widget/RecyclerView$State;->mRunSimpleAnimations:Z

    const/4 v3, 0x4

    iput v3, v0, Landroidx/recyclerview/widget/RecyclerView$State;->mLayoutStep:I

    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView;->onExitLayoutOrScroll(Z)V

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView;->stopInterceptRequestLayout(Z)V

    return-void
.end method

.method public final dispatchNestedFling(FFZ)Z
    .locals 0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollingChildHelper()Landroidx/core/view/NestedScrollingChildHelper;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedFling(FFZ)Z

    move-result p0

    return p0
.end method

.method public final dispatchNestedPreFling(FF)Z
    .locals 0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollingChildHelper()Landroidx/core/view/NestedScrollingChildHelper;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedPreFling(FF)Z

    move-result p0

    return p0
.end method

.method public final dispatchNestedPreScroll(III[I[I)Z
    .locals 6

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollingChildHelper()Landroidx/core/view/NestedScrollingChildHelper;

    move-result-object v0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedPreScroll(III[I[I)Z

    move-result p0

    return p0
.end method

.method public final dispatchNestedPreScroll(II[I[I)Z
    .locals 6

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollingChildHelper()Landroidx/core/view/NestedScrollingChildHelper;

    move-result-object v0

    const/4 v3, 0x0

    move v1, p1

    move v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedPreScroll(III[I[I)Z

    move-result p0

    return p0
.end method

.method public final dispatchNestedScroll(IIII[I)Z
    .locals 8

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollingChildHelper()Landroidx/core/view/NestedScrollingChildHelper;

    move-result-object v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v7}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedScrollInternal(IIII[II[I)Z

    move-result p0

    return p0
.end method

.method public final dispatchOnScrolled(II)V
    .locals 4

    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mDispatchScrollCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mDispatchScrollCounter:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v1

    sub-int v2, v0, p1

    sub-int v3, v1, p2

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/view/ViewGroup;->onScrollChanged(IIII)V

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mFastScroller:Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-eqz v1, :cond_1

    if-nez p1, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->findFirstVisibleItemPosition()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->onScroll(III)V

    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    :cond_2
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    if-eqz v0, :cond_3

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_3

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v1, p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    iget p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mDispatchScrollCounter:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mDispatchScrollCounter:I

    return-void
.end method

.method public final dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const/4 p0, 0x1

    return p0
.end method

.method public final dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    return-void
.end method

.method public final dispatchSaveInstanceState(Landroid/util/SparseArray;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->dispatchFreezeSelfOnly(Landroid/util/SparseArray;)V

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget-object v0, v1, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    const-string v3, "SeslRecyclerView"

    if-nez v0, :cond_0

    const-string v0, "No layout manager attached; skipping gototop & multiselection"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v0, v5

    float-to-int v6, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    add-float/2addr v0, v5

    float-to-int v5, v0

    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v0

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-ne v0, v8, :cond_1

    move v10, v9

    goto :goto_0

    :cond_1
    move v10, v7

    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v0

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_2

    move v11, v9

    goto :goto_1

    :cond_2
    move v11, v7

    :goto_1
    iget-object v0, v1, Landroidx/recyclerview/widget/RecyclerView;->mPenDragSelectedItemArray:Ljava/util/ArrayList;

    if-nez v0, :cond_3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Landroidx/recyclerview/widget/RecyclerView;->mPenDragSelectedItemArray:Ljava/util/ArrayList;

    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v12

    iget-boolean v0, v1, Landroidx/recyclerview/widget/RecyclerView;->mIsPenSelectionEnabled:Z

    const/4 v13, 0x0

    if-eqz v0, :cond_5

    sget-object v0, Landroidx/reflect/widget/SeslTextViewReflector;->mClass:Ljava/lang/Class;

    const-string v14, "hidden_semIsTextSelectionProgressing"

    new-array v15, v7, [Ljava/lang/Class;

    invoke-static {v0, v14, v15}, Landroidx/reflect/SeslBaseReflector;->getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v14

    if-eqz v14, :cond_4

    const-string v15, "SeslBaseReflector"

    :try_start_0
    invoke-virtual {v14, v13, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v13, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " InvocationTargetException"

    invoke-static {v14, v0, v7, v15, v13}, Landroidx/appcompat/app/AlertDialog$$ExternalSyntheticOutline0;->m(Ljava/lang/reflect/Method;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/InvocationTargetException;)V

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v7, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, " IllegalArgumentException"

    invoke-static {v14, v0, v13, v15, v7}, Landroidx/appcompat/app/AlertDialog$$ExternalSyntheticOutline0;->m(Ljava/lang/reflect/Method;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/IllegalArgumentException;)V

    goto :goto_2

    :catch_2
    move-exception v0

    move-object v7, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, " IllegalAccessException"

    invoke-static {v14, v0, v13, v15, v7}, Landroidx/appcompat/app/AlertDialog$$ExternalSyntheticOutline0;->m(Ljava/lang/reflect/Method;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/IllegalAccessException;)V

    :goto_2
    const/4 v0, 0x0

    :goto_3
    instance-of v7, v0, Ljava/lang/Boolean;

    if-eqz v7, :cond_4

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_4

    :cond_4
    const/4 v0, 0x0

    :goto_4
    if-nez v0, :cond_5

    move v0, v9

    goto :goto_5

    :cond_5
    const/4 v0, 0x0

    :goto_5
    iput-boolean v0, v1, Landroidx/recyclerview/widget/RecyclerView;->mIsNeedPenSelection:Z

    const/4 v0, 0x3

    if-eqz v4, :cond_23

    if-eq v4, v9, :cond_f

    if-eq v4, v8, :cond_8

    if-eq v4, v0, :cond_6

    packed-switch v4, :pswitch_data_0

    goto/16 :goto_b

    :cond_6
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView;->isSupportGotoTop$1()Z

    move-result v0

    if-eqz v0, :cond_f

    iget v0, v1, Landroidx/recyclerview/widget/RecyclerView;->mGoToTopState:I

    if-eqz v0, :cond_f

    if-ne v0, v8, :cond_7

    iput v9, v1, Landroidx/recyclerview/widget/RecyclerView;->mGoToTopState:I

    :cond_7
    iget-object v0, v1, Landroidx/recyclerview/widget/RecyclerView;->mGoToTopView:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setPressed(Z)V

    goto :goto_6

    :cond_8
    :pswitch_0
    if-eqz v10, :cond_9

    if-nez v11, :cond_a

    :cond_9
    const/16 v0, 0xd5

    if-ne v4, v0, :cond_b

    :cond_a
    invoke-virtual {v1, v6, v5, v12}, Landroidx/recyclerview/widget/RecyclerView;->multiSelection(III)V

    goto/16 :goto_b

    :cond_b
    iget-boolean v0, v1, Landroidx/recyclerview/widget/RecyclerView;->mIsCtrlMultiSelection:Z

    if-eqz v0, :cond_c

    invoke-virtual {v1, v6, v5, v12}, Landroidx/recyclerview/widget/RecyclerView;->multiSelection(III)V

    return v9

    :cond_c
    iget-boolean v0, v1, Landroidx/recyclerview/widget/RecyclerView;->mIsLongPressMultiSelection:Z

    if-eqz v0, :cond_d

    invoke-virtual {v1, v6, v5, v9}, Landroidx/recyclerview/widget/RecyclerView;->updateLongPressMultiSelection(IIZ)V

    return v9

    :cond_d
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView;->isSupportGotoTop$1()Z

    move-result v0

    if-eqz v0, :cond_2a

    iget v0, v1, Landroidx/recyclerview/widget/RecyclerView;->mGoToTopState:I

    if-ne v0, v8, :cond_2a

    iget-object v0, v1, Landroidx/recyclerview/widget/RecyclerView;->mGoToTopRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v6, v5}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-nez v0, :cond_e

    iput v9, v1, Landroidx/recyclerview/widget/RecyclerView;->mGoToTopState:I

    iget-object v0, v1, Landroidx/recyclerview/widget/RecyclerView;->mGoToTopView:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setPressed(Z)V

    invoke-virtual {v1, v9}, Landroidx/recyclerview/widget/RecyclerView;->autoHide(I)V

    :cond_e
    return v9

    :cond_f
    :goto_6
    if-eqz v10, :cond_10

    if-nez v11, :cond_14

    :cond_10
    iget-boolean v0, v1, Landroidx/recyclerview/widget/RecyclerView;->mIsCtrlMultiSelection:Z

    if-eqz v0, :cond_11

    invoke-virtual {v1, v6, v5}, Landroidx/recyclerview/widget/RecyclerView;->multiSelectionEnd(II)V

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/recyclerview/widget/RecyclerView;->mIsCtrlMultiSelection:Z

    return v9

    :cond_11
    iget-boolean v0, v1, Landroidx/recyclerview/widget/RecyclerView;->mIsLongPressMultiSelection:Z

    if-eqz v0, :cond_14

    iget-object v0, v1, Landroidx/recyclerview/widget/RecyclerView;->mLongPressMultiSelectionListener:Landroidx/recyclerview/widget/RecyclerView$SeslLongPressMultiSelectionListener;

    if-eqz v0, :cond_12

    invoke-interface {v0}, Landroidx/recyclerview/widget/RecyclerView$SeslLongPressMultiSelectionListener;->onLongPressMultiSelectionEnded()V

    :cond_12
    iput-boolean v9, v1, Landroidx/recyclerview/widget/RecyclerView;->mIsFirstMultiSelectionMove:Z

    const/4 v0, -0x1

    iput v0, v1, Landroidx/recyclerview/widget/RecyclerView;->mPenDragSelectedViewPosition:I

    const/4 v4, 0x0

    iput v4, v1, Landroidx/recyclerview/widget/RecyclerView;->mPenDragStartX:I

    iput v4, v1, Landroidx/recyclerview/widget/RecyclerView;->mPenDragStartY:I

    iput v4, v1, Landroidx/recyclerview/widget/RecyclerView;->mPenDragEndX:I

    iput v4, v1, Landroidx/recyclerview/widget/RecyclerView;->mPenDragEndY:I

    iput v4, v1, Landroidx/recyclerview/widget/RecyclerView;->mPenDragBlockLeft:I

    iput v4, v1, Landroidx/recyclerview/widget/RecyclerView;->mPenDragBlockTop:I

    iput v4, v1, Landroidx/recyclerview/widget/RecyclerView;->mPenDragBlockRight:I

    iget-object v0, v1, Landroidx/recyclerview/widget/RecyclerView;->mPenDragSelectedItemArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v7, 0x0

    iput-object v7, v1, Landroidx/recyclerview/widget/RecyclerView;->mPenTrackedChild:Landroid/view/View;

    iput v4, v1, Landroidx/recyclerview/widget/RecyclerView;->mPenDistanceFromTrackedChildTop:I

    iget-object v0, v1, Landroidx/recyclerview/widget/RecyclerView;->mHoverHandler:Landroidx/recyclerview/widget/RecyclerView$6;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, v1, Landroidx/recyclerview/widget/RecyclerView;->mHoverHandler:Landroidx/recyclerview/widget/RecyclerView$6;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget v0, v1, Landroidx/recyclerview/widget/RecyclerView;->mScrollState:I

    if-ne v0, v9, :cond_13

    invoke-virtual {v1, v4}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    :cond_13
    iput-boolean v4, v1, Landroidx/recyclerview/widget/RecyclerView;->mIsHoverOverscrolled:Z

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->invalidate()V

    iput-boolean v4, v1, Landroidx/recyclerview/widget/RecyclerView;->mIsLongPressMultiSelection:Z

    :cond_14
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView;->isSupportGotoTop$1()Z

    move-result v0

    if-eqz v0, :cond_20

    iget v0, v1, Landroidx/recyclerview/widget/RecyclerView;->mGoToTopState:I

    if-ne v0, v8, :cond_20

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView;->canScrollUp$1()Z

    move-result v0

    if-eqz v0, :cond_1f

    const-string v0, " can scroll top "

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView;->findFirstVisibleItemPosition()I

    move-result v0

    if-lez v0, :cond_15

    move v2, v9

    goto :goto_7

    :cond_15
    const/4 v2, 0x0

    :goto_7
    if-eqz v2, :cond_16

    move v3, v0

    goto :goto_8

    :cond_16
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView;->findLastVisibleItemPosition()I

    move-result v3

    :goto_8
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    mul-int/2addr v4, v8

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result v5

    if-eqz v5, :cond_17

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    iget-object v5, v1, Landroidx/recyclerview/widget/RecyclerView;->mViewFlinger:Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;

    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->stop()V

    iget-object v5, v1, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    if-eqz v5, :cond_17

    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mSmoothScroller:Landroidx/recyclerview/widget/LinearSmoothScroller;

    if-eqz v5, :cond_17

    invoke-virtual {v5}, Landroidx/recyclerview/widget/LinearSmoothScroller;->stop()V

    :cond_17
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "remove_animations"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v9, :cond_18

    invoke-virtual {v1, v7}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    goto :goto_a

    :cond_18
    iget-object v5, v1, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    instance-of v6, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    if-eqz v6, :cond_19

    check-cast v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    invoke-virtual {v5, v7, v7}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->scrollToPositionWithOffset(IZ)V

    goto :goto_a

    :cond_19
    if-lez v0, :cond_1e

    if-eqz v2, :cond_1a

    if-lez v4, :cond_1a

    if-lt v4, v3, :cond_1b

    :cond_1a
    if-nez v2, :cond_1e

    if-lez v4, :cond_1e

    if-le v4, v3, :cond_1e

    :cond_1b
    instance-of v0, v5, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v0, :cond_1d

    instance-of v0, v5, Landroidx/recyclerview/widget/GridLayoutManager;

    if-eqz v0, :cond_1c

    move-object v0, v5

    check-cast v0, Landroidx/recyclerview/widget/GridLayoutManager;

    iget v0, v0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    if-ge v4, v0, :cond_1c

    move v4, v0

    :cond_1c
    check-cast v5, Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v2, 0x0

    invoke-virtual {v5, v4, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    goto :goto_9

    :cond_1d
    invoke-virtual {v1, v4}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    :cond_1e
    :goto_9
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$12;

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$12;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    :cond_1f
    :goto_a
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->autoHide(I)V

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->playSoundEffect(I)V

    return v9

    :cond_20
    iget-boolean v0, v1, Landroidx/recyclerview/widget/RecyclerView;->mIsPenPressed:Z

    if-eqz v0, :cond_21

    invoke-virtual {v1, v6, v5}, Landroidx/recyclerview/widget/RecyclerView;->multiSelectionEnd(II)V

    return v9

    :cond_21
    invoke-virtual {v1, v6, v5}, Landroidx/recyclerview/widget/RecyclerView;->multiSelectionEnd(II)V

    iget-boolean v0, v1, Landroidx/recyclerview/widget/RecyclerView;->mIsRecoilSupported:Z

    if-eqz v0, :cond_2a

    iget-boolean v0, v1, Landroidx/recyclerview/widget/RecyclerView;->mIsRecoilEnabled:Z

    if-eqz v0, :cond_2a

    iget-object v0, v1, Landroidx/recyclerview/widget/RecyclerView;->mItemBackgroundHolder:Landroidx/recyclerview/widget/RecyclerView$ItemBackgroundHolder;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ItemBackgroundHolder;->mActiveBg:Ljava/lang/Object;

    check-cast v0, Landroidx/appcompat/graphics/drawable/SeslRecoilDrawable;

    if-eqz v0, :cond_22

    const/4 v3, 0x0

    new-array v3, v3, [I

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/LayerDrawable;->setState([I)Z

    :cond_22
    iget-object v0, v1, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimatorHolder:Landroidx/appcompat/animation/SeslRecoilAnimator$Holder;

    invoke-virtual {v0}, Landroidx/appcompat/animation/SeslRecoilAnimator$Holder;->setRelease()V

    goto :goto_b

    :cond_23
    :pswitch_2
    if-eqz v10, :cond_24

    if-nez v11, :cond_25

    :cond_24
    const/16 v3, 0xd3

    if-ne v4, v3, :cond_26

    :cond_25
    iget-object v0, v1, Landroidx/recyclerview/widget/RecyclerView;->mPenDragSelectedItemArray:Ljava/util/ArrayList;

    if-nez v0, :cond_2a

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Landroidx/recyclerview/widget/RecyclerView;->mPenDragSelectedItemArray:Ljava/util/ArrayList;

    goto :goto_b

    :cond_26
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView;->isSupportGotoTop$1()Z

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView;->isSupportGotoTop$1()Z

    move-result v3

    if-eqz v3, :cond_27

    iget v3, v1, Landroidx/recyclerview/widget/RecyclerView;->mGoToTopState:I

    if-eq v3, v8, :cond_27

    iget-object v3, v1, Landroidx/recyclerview/widget/RecyclerView;->mGoToTopRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v6, v5}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_27

    invoke-virtual {v1, v8}, Landroidx/recyclerview/widget/RecyclerView;->setupGoToTop$1(I)V

    iget-object v0, v1, Landroidx/recyclerview/widget/RecyclerView;->mGoToTopView:Landroid/widget/ImageView;

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setPressed(Z)V

    return v9

    :cond_27
    iget-boolean v3, v1, Landroidx/recyclerview/widget/RecyclerView;->mIsCtrlKeyPressed:Z

    if-eqz v3, :cond_28

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v4

    if-ne v4, v0, :cond_29

    iput-boolean v9, v1, Landroidx/recyclerview/widget/RecyclerView;->mIsCtrlMultiSelection:Z

    iput-boolean v9, v1, Landroidx/recyclerview/widget/RecyclerView;->mIsNeedPenSelection:Z

    invoke-virtual {v1, v6, v5, v12}, Landroidx/recyclerview/widget/RecyclerView;->multiSelection(III)V

    return v9

    :cond_28
    const/4 v3, 0x0

    :cond_29
    iget-boolean v0, v1, Landroidx/recyclerview/widget/RecyclerView;->mIsLongPressMultiSelection:Z

    if-eqz v0, :cond_2a

    iput-boolean v3, v1, Landroidx/recyclerview/widget/RecyclerView;->mIsLongPressMultiSelection:Z

    :cond_2a
    :goto_b
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0xd3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 8

    const/4 v0, 0x1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    invoke-virtual {v4, p1, p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;->onDrawOver(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;)V

    add-int/2addr v3, v0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    iget-boolean v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mClipToPadding:Z

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v4

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_1
    const/high16 v5, 0x43870000    # 270.0f

    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->rotate(F)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v5

    neg-int v5, v5

    add-int/2addr v5, v4

    int-to-float v4, v5

    invoke-virtual {p1, v4, v3}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    if-eqz v4, :cond_2

    invoke-virtual {v4, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v4, v0

    goto :goto_2

    :cond_2
    move v4, v2

    :goto_2
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_3

    :cond_3
    move v4, v2

    :goto_3
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    iget-boolean v5, p0, Landroidx/recyclerview/widget/RecyclerView;->mClipToPadding:Z

    if-eqz v5, :cond_4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_4
    iget-object v5, p0, Landroidx/recyclerview/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    if-eqz v5, :cond_5

    invoke-virtual {v5, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v5

    if-eqz v5, :cond_5

    move v5, v0

    goto :goto_4

    :cond_5
    move v5, v2

    :goto_4
    or-int/2addr v4, v5

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_6
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    if-nez v1, :cond_9

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v5

    iget-boolean v6, p0, Landroidx/recyclerview/widget/RecyclerView;->mClipToPadding:Z

    if-eqz v6, :cond_7

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v6

    goto :goto_5

    :cond_7
    move v6, v2

    :goto_5
    const/high16 v7, 0x42b40000    # 90.0f

    invoke-virtual {p1, v7}, Landroid/graphics/Canvas;->rotate(F)V

    int-to-float v6, v6

    neg-int v5, v5

    int-to-float v5, v5

    invoke-virtual {p1, v6, v5}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v5, p0, Landroidx/recyclerview/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    if-eqz v5, :cond_8

    invoke-virtual {v5, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v5

    if-eqz v5, :cond_8

    move v5, v0

    goto :goto_6

    :cond_8
    move v5, v2

    :goto_6
    or-int/2addr v4, v5

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_9
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    if-nez v1, :cond_c

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    const/high16 v5, 0x43340000    # 180.0f

    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->rotate(F)V

    iget-boolean v5, p0, Landroidx/recyclerview/widget/RecyclerView;->mClipToPadding:Z

    if-eqz v5, :cond_a

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v5

    neg-int v5, v5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v6

    add-int/2addr v6, v5

    int-to-float v5, v6

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v6

    neg-int v6, v6

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v7

    add-int/2addr v7, v6

    int-to-float v6, v7

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_7

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

    :goto_7
    iget-object v5, p0, Landroidx/recyclerview/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    if-eqz v5, :cond_b

    invoke-virtual {v5, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v5

    if-eqz v5, :cond_b

    move v5, v0

    goto :goto_8

    :cond_b
    move v5, v2

    :goto_8
    or-int/2addr v4, v5

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_c
    if-nez v4, :cond_d

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    if-eqz v1, :cond_d

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_d

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_d

    goto :goto_9

    :cond_d
    move v0, v4

    :goto_9
    if-eqz v0, :cond_e

    sget-object v0, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    :cond_e
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mEnableGoToTop:Z

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v0

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mGoToTopView:Landroid/widget/ImageView;

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setTranslationY(F)V

    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mGoToTopState:I

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->canScrollUp$1()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setupGoToTop$1(I)V

    :cond_f
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->isGoToTopAvailableEnvironment()Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mGoToTopView:Landroid/widget/ImageView;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Landroid/widget/ImageView;->getAlpha()F

    move-result v0

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_10

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mGoToTopView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    :cond_10
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mIsPenDragBlockEnabled:Z

    if-eqz v0, :cond_16

    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mIsLongPressMultiSelection:Z

    if-nez v0, :cond_16

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_16

    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenDragBlockLeft:I

    if-nez v0, :cond_11

    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenDragBlockTop:I

    if-nez v0, :cond_11

    goto :goto_b

    :cond_11
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->findFirstVisibleItemPosition()I

    move-result v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->findLastVisibleItemPosition()I

    move-result v1

    iget v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenTrackedChildPosition:I

    if-lt v3, v0, :cond_13

    if-gt v3, v1, :cond_13

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenTrackedChild:Landroid/view/View;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    :cond_12
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenDistanceFromTrackedChildTop:I

    add-int/2addr v2, v0

    iput v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenDragStartY:I

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

    :cond_15
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenDragBlockRect:Landroid/graphics/Rect;

    iget v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenDragBlockLeft:I

    iget v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenDragBlockRight:I

    invoke-virtual {v1, v3, v2, v4, v0}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenDragBlockImage:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenDragBlockRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenDragBlockImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    nop

    :cond_16
    :goto_b
    return-void
.end method

.method public final drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p0

    return p0
.end method

.method public final ensureBottomGlow()V
    .locals 4

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mEdgeEffectFactory:Landroidx/recyclerview/widget/RecyclerView$EdgeEffectFactory;

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$StretchEdgeEffectFactory;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    iget-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mClipToPadding:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result p0

    sub-int/2addr v2, p0

    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result p0

    invoke-virtual {v0, v1, p0}, Landroid/widget/EdgeEffect;->setSize(II)V

    :goto_0
    return-void
.end method

.method public final ensureLeftGlow()V
    .locals 4

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mEdgeEffectFactory:Landroidx/recyclerview/widget/RecyclerView$EdgeEffectFactory;

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$StretchEdgeEffectFactory;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    iget-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mClipToPadding:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result p0

    sub-int/2addr v2, p0

    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result p0

    invoke-virtual {v0, v1, p0}, Landroid/widget/EdgeEffect;->setSize(II)V

    :goto_0
    return-void
.end method

.method public final ensureRightGlow()V
    .locals 4

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mEdgeEffectFactory:Landroidx/recyclerview/widget/RecyclerView$EdgeEffectFactory;

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$StretchEdgeEffectFactory;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    iget-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mClipToPadding:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result p0

    sub-int/2addr v2, p0

    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result p0

    invoke-virtual {v0, v1, p0}, Landroid/widget/EdgeEffect;->setSize(II)V

    :goto_0
    return-void
.end method

.method public final ensureTopGlow()V
    .locals 4

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mEdgeEffectFactory:Landroidx/recyclerview/widget/RecyclerView$EdgeEffectFactory;

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$StretchEdgeEffectFactory;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    iget-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mClipToPadding:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result p0

    sub-int/2addr v2, p0

    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result p0

    invoke-virtual {v0, v1, p0}, Landroid/widget/EdgeEffect;->setSize(II)V

    :goto_0
    return-void
.end method

.method public final exceptionLabel()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

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

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final fillRemainingScrollValues(Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mViewFlinger:Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->mOverScroller:Landroid/widget/OverScroller;

    invoke-virtual {p0}, Landroid/widget/OverScroller;->getFinalX()I

    invoke-virtual {p0}, Landroid/widget/OverScroller;->getCurrX()I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroid/widget/OverScroller;->getFinalY()I

    invoke-virtual {p0}, Landroid/widget/OverScroller;->getCurrY()I

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_0
    return-void
.end method

.method public final findChildViewUnder(FF)Landroid/view/View;
    .locals 5

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/ChildHelper;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTranslationX()F

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v3

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, v2

    cmpl-float v4, p1, v4

    if-ltz v4, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, v2

    cmpg-float v2, p1, v4

    if-gtz v2, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v3

    cmpl-float v2, p2, v2

    if-ltz v2, :cond_0

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

.method public final findClickableChildUnder(Landroid/view/View;FF)Landroid/view/View;
    .locals 6

    invoke-virtual {p1}, Landroid/view/View;->isClickable()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mScrollingChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    if-eqz v3, :cond_0

    invoke-virtual {v3, v1}, Landroidx/core/view/NestedScrollingChildHelper;->getNestedScrollingParentForType(I)Landroid/view/ViewParent;

    move-result-object v3

    instance-of v3, v3, Landroidx/core/widget/NestedScrollView;

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mScrollingChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {v3, v1}, Landroidx/core/view/NestedScrollingChildHelper;->getNestedScrollingParentForType(I)Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroidx/core/widget/NestedScrollView;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getTop()I

    move-result v5

    if-le v4, v5, :cond_0

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getTop()I

    move-result v4

    sub-int/2addr v3, v4

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    float-to-int v4, p2

    iget v5, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v5

    float-to-int v5, p3

    iget v2, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v2

    sub-int/2addr v5, v3

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, p1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    instance-of v2, p1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_3

    check-cast p1, Landroid/view/ViewGroup;

    :goto_2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_3

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->findClickableChildUnder(Landroid/view/View;FF)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2

    move-object v0, v2

    goto :goto_3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    return-object v0
.end method

.method public final findContainingItemView(Landroid/view/View;)Landroid/view/View;
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    if-eq v0, p0, :cond_0

    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_0

    move-object p1, v0

    check-cast p1, Landroid/view/View;

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

.method public final findFirstChildPosition()I
    .locals 3

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    instance-of v1, v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result p0

    goto :goto_1

    :cond_0
    instance-of v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    check-cast v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    iget v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    sub-int/2addr v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    check-cast p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->findFirstVisibleItemPositions()[I

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

.method public final findFirstVisibleItemPosition()I
    .locals 1

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    instance-of v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v0, :cond_0

    check-cast p0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result p0

    return p0

    :cond_0
    instance-of v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    if-eqz v0, :cond_1

    check-cast p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->findFirstVisibleItemPositions()[I

    move-result-object p0

    const/4 v0, 0x0

    aget p0, p0, v0

    return p0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public final findInterceptingOnItemTouchListener(Landroid/view/MotionEvent;)Z
    .locals 6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;

    invoke-interface {v4, p1}, Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x3

    if-eq v0, v5, :cond_0

    iput-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mInterceptingOnItemTouchListener:Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public final findLastVisibleItemPosition()I
    .locals 7

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    instance-of v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v0, :cond_0

    check-cast p0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result p0

    return p0

    :cond_0
    instance-of v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    const/4 v1, -0x1

    if-eqz v0, :cond_3

    check-cast p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    new-array v0, v0, [I

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    iget v4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v3, v4, :cond_2

    iget-object v4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    aget-object v4, v4, v3

    iget-object v5, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->this$0:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    iget-boolean v5, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mReverseLayout:Z

    const/4 v6, 0x1

    if-eqz v5, :cond_1

    iget-object v5, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v2, v5, v6, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->findOnePartiallyOrCompletelyVisibleChild(IIZZ)I

    move-result v4

    goto :goto_1

    :cond_1
    iget-object v5, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v6

    invoke-virtual {v4, v5, v1, v6, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->findOnePartiallyOrCompletelyVisibleChild(IIZZ)I

    move-result v4

    :goto_1
    aput v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    aget p0, v0, v2

    return p0

    :cond_3
    return v1
.end method

.method public final findMinMaxChildLayoutPositions([I)V
    .locals 8

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/ChildHelper;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 p0, -0x1

    aput p0, p1, v2

    aput p0, p1, v1

    return-void

    :cond_0
    const v3, 0x7fffffff

    const/high16 v4, -0x80000000

    move v5, v2

    :goto_0
    if-ge v5, v0, :cond_4

    iget-object v6, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    invoke-virtual {v6, v5}, Landroidx/recyclerview/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-static {v6}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_1

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

    :cond_4
    aput v3, p1, v2

    aput v4, p1, v1

    return-void
.end method

.method public final findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 5

    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p0, v3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapterPositionInRecyclerView(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I

    move-result v4

    if-ne v4, p1, :cond_2

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

.method public final findViewHolderForPosition(IZ)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 5

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_4

    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v4

    if-nez v4, :cond_3

    if-eqz p2, :cond_0

    iget v4, v3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    if-eq v4, p1, :cond_1

    goto :goto_1

    :cond_0
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v4

    if-eq v4, p1, :cond_1

    goto :goto_1

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

.method public final focusSearch(Landroid/view/View;I)Landroid/view/View;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_0

    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    if-eqz v3, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView;->isComputingLayout()Z

    move-result v3

    if-nez v3, :cond_0

    iget-boolean v3, v0, Landroidx/recyclerview/widget/RecyclerView;->mLayoutSuppressed:Z

    if-nez v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    move v3, v5

    :goto_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v6

    const/16 v7, 0x11

    const/4 v9, 0x0

    const/16 v11, 0x21

    const/4 v12, 0x2

    if-eqz v3, :cond_b

    if-eq v2, v12, :cond_1

    if-ne v2, v4, :cond_b

    :cond_1
    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v3

    if-eqz v3, :cond_3

    if-ne v2, v12, :cond_2

    const/16 v3, 0x82

    goto :goto_1

    :cond_2
    move v3, v11

    :goto_1
    invoke-virtual {v6, v0, v1, v3}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_3

    move v3, v4

    goto :goto_2

    :cond_3
    move v3, v5

    :goto_2
    if-nez v3, :cond_8

    iget-object v13, v0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v13}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v13

    if-eqz v13, :cond_8

    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getLayoutDirection()I

    move-result v3

    if-ne v3, v4, :cond_4

    move v3, v4

    goto :goto_3

    :cond_4
    move v3, v5

    :goto_3
    if-ne v2, v12, :cond_5

    move v13, v4

    goto :goto_4

    :cond_5
    move v13, v5

    :goto_4
    xor-int/2addr v3, v13

    if-eqz v3, :cond_6

    const/16 v3, 0x42

    goto :goto_5

    :cond_6
    move v3, v7

    :goto_5
    invoke-virtual {v6, v0, v1, v3}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_7

    move v3, v4

    goto :goto_6

    :cond_7
    move v3, v5

    :cond_8
    :goto_6
    if-eqz v3, :cond_a

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView;->consumePendingUpdateOperations()V

    invoke-virtual/range {p0 .. p1}, Landroidx/recyclerview/widget/RecyclerView;->findContainingItemView(Landroid/view/View;)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_9

    return-object v9

    :cond_9
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView;->startInterceptRequestLayout()V

    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    iget-object v13, v0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    iget-object v14, v0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    invoke-virtual {v3, v1, v2, v13, v14}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onFocusSearchFailed(Landroid/view/View;ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)Landroid/view/View;

    invoke-virtual {v0, v5}, Landroidx/recyclerview/widget/RecyclerView;->stopInterceptRequestLayout(Z)V

    :cond_a
    invoke-virtual {v6, v0, v1, v2}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    goto :goto_7

    :cond_b
    invoke-virtual {v6, v0, v1, v2}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v6

    if-nez v6, :cond_d

    if-eqz v3, :cond_d

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView;->consumePendingUpdateOperations()V

    invoke-virtual/range {p0 .. p1}, Landroidx/recyclerview/widget/RecyclerView;->findContainingItemView(Landroid/view/View;)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_c

    return-object v9

    :cond_c
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView;->startInterceptRequestLayout()V

    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    iget-object v6, v0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    iget-object v13, v0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    invoke-virtual {v3, v1, v2, v6, v13}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onFocusSearchFailed(Landroid/view/View;ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v0, v5}, Landroidx/recyclerview/widget/RecyclerView;->stopInterceptRequestLayout(Z)V

    goto :goto_7

    :cond_d
    move-object v3, v6

    :goto_7
    const/4 v6, -0x1

    if-eqz v3, :cond_10

    invoke-virtual {v3}, Landroid/view/View;->hasFocusable()Z

    move-result v13

    if-nez v13, :cond_10

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_f

    if-ne v2, v11, :cond_e

    if-eqz v1, :cond_e

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getBottom()I

    move-result v4

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v5

    if-ge v4, v5, :cond_e

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->canScrollVertically(I)Z

    move-result v4

    if-nez v4, :cond_e

    goto :goto_8

    :cond_e
    invoke-virtual {v0, v3, v9}, Landroidx/recyclerview/widget/RecyclerView;->requestChildOnScreen(Landroid/view/View;Landroid/view/View;)V

    return-object v1

    :cond_f
    :goto_8
    invoke-super/range {p0 .. p2}, Landroid/view/ViewGroup;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_10
    if-eqz v3, :cond_24

    if-eq v3, v0, :cond_24

    if-ne v3, v1, :cond_11

    goto/16 :goto_c

    :cond_11
    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->findContainingItemView(Landroid/view/View;)Landroid/view/View;

    move-result-object v9

    if-nez v9, :cond_12

    move v4, v5

    goto/16 :goto_d

    :cond_12
    if-nez v1, :cond_13

    goto/16 :goto_d

    :cond_13
    invoke-virtual/range {p0 .. p1}, Landroidx/recyclerview/widget/RecyclerView;->findContainingItemView(Landroid/view/View;)Landroid/view/View;

    move-result-object v9

    if-nez v9, :cond_14

    goto/16 :goto_d

    :cond_14
    iget-object v9, v0, Landroidx/recyclerview/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v13

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v14

    invoke-virtual {v9, v5, v5, v13, v14}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v9, v0, Landroidx/recyclerview/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v13

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v14

    invoke-virtual {v9, v5, v5, v13, v14}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v9, v0, Landroidx/recyclerview/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v9}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object v9, v0, Landroidx/recyclerview/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    invoke-virtual {v0, v3, v9}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object v9, v0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v9}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getLayoutDirection()I

    move-result v9

    if-ne v9, v4, :cond_15

    move v9, v6

    goto :goto_9

    :cond_15
    move v9, v4

    :goto_9
    iget-object v13, v0, Landroidx/recyclerview/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v14, v13, Landroid/graphics/Rect;->left:I

    iget-object v15, v0, Landroidx/recyclerview/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    iget v6, v15, Landroid/graphics/Rect;->left:I

    if-lt v14, v6, :cond_16

    iget v5, v13, Landroid/graphics/Rect;->right:I

    if-gt v5, v6, :cond_17

    :cond_16
    iget v5, v13, Landroid/graphics/Rect;->right:I

    iget v10, v15, Landroid/graphics/Rect;->right:I

    if-ge v5, v10, :cond_17

    move v5, v4

    goto :goto_a

    :cond_17
    iget v5, v13, Landroid/graphics/Rect;->right:I

    iget v10, v15, Landroid/graphics/Rect;->right:I

    if-gt v5, v10, :cond_18

    if-lt v14, v10, :cond_19

    :cond_18
    if-le v14, v6, :cond_19

    const/4 v5, -0x1

    goto :goto_a

    :cond_19
    const/4 v5, 0x0

    :goto_a
    iget v6, v13, Landroid/graphics/Rect;->top:I

    iget v10, v15, Landroid/graphics/Rect;->top:I

    if-lt v6, v10, :cond_1a

    iget v14, v13, Landroid/graphics/Rect;->bottom:I

    if-gt v14, v10, :cond_1b

    :cond_1a
    iget v14, v13, Landroid/graphics/Rect;->bottom:I

    iget v8, v15, Landroid/graphics/Rect;->bottom:I

    if-ge v14, v8, :cond_1b

    move v6, v4

    goto :goto_b

    :cond_1b
    iget v8, v13, Landroid/graphics/Rect;->bottom:I

    iget v13, v15, Landroid/graphics/Rect;->bottom:I

    if-gt v8, v13, :cond_1c

    if-lt v6, v13, :cond_1d

    :cond_1c
    if-le v6, v10, :cond_1d

    const/4 v6, -0x1

    goto :goto_b

    :cond_1d
    const/4 v6, 0x0

    :goto_b
    if-eq v2, v4, :cond_23

    if-eq v2, v12, :cond_22

    if-eq v2, v7, :cond_21

    if-eq v2, v11, :cond_20

    const/16 v7, 0x42

    if-eq v2, v7, :cond_1f

    const/16 v7, 0x82

    if-ne v2, v7, :cond_1e

    if-lez v6, :cond_24

    goto :goto_d

    :cond_1e
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Invalid direction: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {v0, v3}, Landroidx/recyclerview/widget/ChildHelper$$ExternalSyntheticOutline0;->m(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1f
    if-lez v5, :cond_24

    goto :goto_d

    :cond_20
    if-gez v6, :cond_24

    goto :goto_d

    :cond_21
    if-gez v5, :cond_24

    goto :goto_d

    :cond_22
    if-gtz v6, :cond_25

    if-nez v6, :cond_24

    mul-int/2addr v5, v9

    if-lez v5, :cond_24

    goto :goto_d

    :cond_23
    if-ltz v6, :cond_25

    if-nez v6, :cond_24

    mul-int/2addr v5, v9

    if-gez v5, :cond_24

    goto :goto_d

    :cond_24
    :goto_c
    const/4 v4, 0x0

    :cond_25
    :goto_d
    if-nez v4, :cond_26

    invoke-super/range {p0 .. p2}, Landroid/view/ViewGroup;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    :cond_26
    iget-boolean v1, v0, Landroidx/recyclerview/widget/RecyclerView;->mIsArrowKeyPressed:Z

    if-eqz v1, :cond_29

    if-nez v3, :cond_29

    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    instance-of v1, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    if-eqz v1, :cond_29

    const/16 v1, 0x82

    if-ne v2, v1, :cond_27

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getBottom()I

    move-result v2

    :goto_e
    sub-int/2addr v1, v2

    goto :goto_f

    :cond_27
    if-ne v2, v11, :cond_28

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getTop()I

    move-result v2

    goto :goto_e

    :cond_28
    const/4 v1, 0x0

    :goto_f
    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    check-cast v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    iget-object v4, v0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    iget-object v5, v0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    invoke-virtual {v2, v1, v4, v5}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->scrollBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroidx/recyclerview/widget/RecyclerView;->mIsArrowKeyPressed:Z

    :cond_29
    return-object v3
.end method

.method public final generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 3

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->generateDefaultLayoutParams()Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "RecyclerView has no LayoutManager"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v1}, Landroidx/recyclerview/widget/ChildHelper$$ExternalSyntheticOutline0;->m(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->generateLayoutParams(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RecyclerView has no LayoutManager"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Landroidx/recyclerview/widget/ChildHelper$$ExternalSyntheticOutline0;->m(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RecyclerView has no LayoutManager"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Landroidx/recyclerview/widget/ChildHelper$$ExternalSyntheticOutline0;->m(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

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

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    return-object p0
.end method

.method public final getAdapterPositionInRecyclerView(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I
    .locals 6

    const/16 v0, 0x20c

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->hasAnyOfTheFlags(I)Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_9

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isBound()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapterHelper:Landroidx/recyclerview/widget/AdapterHelper;

    iget p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    iget-object v0, p0, Landroidx/recyclerview/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_8

    iget-object v3, p0, Landroidx/recyclerview/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;

    iget v4, v3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->cmd:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_6

    const/4 v5, 0x2

    if-eq v4, v5, :cond_4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_1

    goto :goto_1

    :cond_1
    iget v4, v3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-ne v4, p1, :cond_2

    iget p1, v3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    goto :goto_1

    :cond_2
    if-ge v4, p1, :cond_3

    add-int/lit8 p1, p1, -0x1

    :cond_3
    iget v3, v3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    if-gt v3, p1, :cond_7

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_4
    iget v4, v3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-gt v4, p1, :cond_7

    iget v3, v3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v4, v3

    if-le v4, p1, :cond_5

    goto :goto_2

    :cond_5
    sub-int/2addr p1, v3

    goto :goto_1

    :cond_6
    iget v4, v3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-gt v4, p1, :cond_7

    iget v3, v3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr p1, v3

    :cond_7
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_8
    move v1, p1

    :cond_9
    :goto_2
    return v1
.end method

.method public getBaseline()I
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, -0x1

    return p0

    :cond_0
    invoke-super {p0}, Landroid/view/ViewGroup;->getBaseline()I

    move-result p0

    return p0
.end method

.method public final getChangedHolderKey(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)J
    .locals 0

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    iget-boolean p0, p0, Landroidx/recyclerview/widget/RecyclerView$Adapter;->mHasStableIds:Z

    if-eqz p0, :cond_0

    iget-wide p0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mItemId:J

    goto :goto_0

    :cond_0
    iget p0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    int-to-long p0, p0

    :goto_0
    return-wide p0
.end method

.method public final getChildDrawingOrder(II)I
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->getChildDrawingOrder(II)I

    move-result p0

    return p0
.end method

.method public final getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    if-ne v0, p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "View "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not a direct child of "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public getClipToPadding()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mClipToPadding:Z

    return p0
.end method

.method public getCompatAccessibilityDelegate()Landroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate;
    .locals 0

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mAccessibilityDelegate:Landroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate;

    return-object p0
.end method

.method public getEdgeEffectFactory()Landroidx/recyclerview/widget/RecyclerView$EdgeEffectFactory;
    .locals 0

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mEdgeEffectFactory:Landroidx/recyclerview/widget/RecyclerView$EdgeEffectFactory;

    return-object p0
.end method

.method public getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;
    .locals 0

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    return-object p0
.end method

.method public final getItemDecorInsetsForChild(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 8

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    iget-boolean v1, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->mInsetsDirty:Z

    if-nez v1, :cond_0

    iget-object p0, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    return-object p0

    :cond_0
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    iget-boolean v1, v1, Landroidx/recyclerview/widget/RecyclerView$State;->mInPreLayout:Z

    if-eqz v1, :cond_2

    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->mViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isUpdated()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->mViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isInvalid()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    iget-object p0, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    return-object p0

    :cond_2
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_3

    iget-object v5, p0, Landroidx/recyclerview/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v5, v2, v2, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v5, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    iget-object v6, p0, Landroidx/recyclerview/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget-object v7, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    invoke-virtual {v5, v6, p1, p0, v7}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V

    iget v5, v1, Landroid/graphics/Rect;->left:I

    iget-object v6, p0, Landroidx/recyclerview/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v7, v6, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v7

    iput v5, v1, Landroid/graphics/Rect;->left:I

    iget v5, v1, Landroid/graphics/Rect;->top:I

    iget v7, v6, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v7

    iput v5, v1, Landroid/graphics/Rect;->top:I

    iget v5, v1, Landroid/graphics/Rect;->right:I

    iget v7, v6, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v7

    iput v5, v1, Landroid/graphics/Rect;->right:I

    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v6

    iput v5, v1, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    iput-boolean v2, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->mInsetsDirty:Z

    return-object v1
.end method

.method public final getItemDecorationAt(I)Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
    .locals 2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getItemDecorationCount()I

    move-result v0

    if-ltz p1, :cond_0

    if-ge p1, v0, :cond_0

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    return-object p0

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

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    .locals 0

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    return-object p0
.end method

.method public final getLongPressMultiSelectionListener()Landroidx/recyclerview/widget/RecyclerView$SeslLongPressMultiSelectionListener;
    .locals 0

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLongPressMultiSelectionListener:Landroidx/recyclerview/widget/RecyclerView$SeslLongPressMultiSelectionListener;

    return-object p0
.end method

.method public getMaxFlingVelocity()I
    .locals 0

    iget p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mMaxFlingVelocity:I

    return p0
.end method

.method public getMinFlingVelocity()I
    .locals 0

    iget p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mMinFlingVelocity:I

    return p0
.end method

.method public getNanoTime()J
    .locals 2

    sget-boolean p0, Landroidx/recyclerview/widget/RecyclerView;->ALLOW_THREAD_GAP_WORK:Z

    if-eqz p0, :cond_0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getOnFlingListener()Landroidx/recyclerview/widget/RecyclerView$OnFlingListener;
    .locals 0

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mOnFlingListener:Landroidx/recyclerview/widget/RecyclerView$OnFlingListener;

    return-object p0
.end method

.method public getPreserveFocusAfterLayout()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mPreserveFocusAfterLayout:Z

    return p0
.end method

.method public getRecycledViewPool()Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;
    .locals 0

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->getRecycledViewPool()Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    move-result-object p0

    return-object p0
.end method

.method public final getRotatedArrowPointerIcon(ZZ)I
    .locals 0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    sget-object p1, Landroidx/recyclerview/widget/RecyclerView$ScrollArrowDirection;->RIGHT:Landroidx/recyclerview/widget/RecyclerView$ScrollArrowDirection;

    goto :goto_0

    :cond_0
    sget-object p1, Landroidx/recyclerview/widget/RecyclerView$ScrollArrowDirection;->DOWN:Landroidx/recyclerview/widget/RecyclerView$ScrollArrowDirection;

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    sget-object p1, Landroidx/recyclerview/widget/RecyclerView$ScrollArrowDirection;->LEFT:Landroidx/recyclerview/widget/RecyclerView$ScrollArrowDirection;

    goto :goto_0

    :cond_2
    sget-object p1, Landroidx/recyclerview/widget/RecyclerView$ScrollArrowDirection;->UP:Landroidx/recyclerview/widget/RecyclerView$ScrollArrowDirection;

    :goto_0
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mHoverScrollArrows:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    return p0
.end method

.method public getScrollState()I
    .locals 0

    iget p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mScrollState:I

    return p0
.end method

.method public final getScrollingChildHelper()Landroidx/core/view/NestedScrollingChildHelper;
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mScrollingChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/core/view/NestedScrollingChildHelper;

    invoke-direct {v0, p0}, Landroidx/core/view/NestedScrollingChildHelper;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mScrollingChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    :cond_0
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mScrollingChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    return-object p0
.end method

.method public final hasNestedScrollingParent()Z
    .locals 1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollingChildHelper()Landroidx/core/view/NestedScrollingChildHelper;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/core/view/NestedScrollingChildHelper;->hasNestedScrollingParent(I)Z

    move-result p0

    return p0
.end method

.method public final hasPendingAdapterUpdates()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mFirstLayoutComplete:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-nez v0, :cond_1

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapterHelper:Landroidx/recyclerview/widget/AdapterHelper;

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

.method public initFastScroller(Landroid/graphics/drawable/StateListDrawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/StateListDrawable;Landroid/graphics/drawable/Drawable;)V
    .locals 10

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v1, Landroidx/recyclerview/widget/FastScroller;

    const v2, 0x7f0703b9

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    const v2, 0x7f0703bb

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    const v2, 0x7f0703ba

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v9

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v9}, Landroidx/recyclerview/widget/FastScroller;-><init>(Landroidx/recyclerview/widget/RecyclerView;Landroid/graphics/drawable/StateListDrawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/StateListDrawable;Landroid/graphics/drawable/Drawable;III)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Trying to set fast scroller without both required drawables."

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p2}, Landroidx/recyclerview/widget/ChildHelper$$ExternalSyntheticOutline0;->m(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final invalidateItemDecorations()V
    .locals 2

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_1

    const-string v1, "Cannot invalidate item decorations during a scroll or layout"

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->markItemDecorInsetsDirty()V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    return-void
.end method

.method public final isAttachedToWindow()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mIsAttached:Z

    return p0
.end method

.method public final isComputingLayout()Z
    .locals 0

    iget p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayoutOrScrollCounter:I

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isGoToTopAvailableEnvironment()Z
    .locals 3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "enabled_accessibility_services"

    invoke-static {v0, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v2, "(?i).*com.samsung.accessibility/com.samsung.android.app.talkback.TalkBackService.*"

    invoke-virtual {v0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "(?i).*com.samsung.android.accessibility.talkback/com.samsung.android.marvin.talkback.TalkBackService.*"

    invoke-virtual {v0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "(?i).*com.google.android.marvin.talkback.TalkBackService.*"

    invoke-virtual {v0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "(?i).*com.samsung.accessibility/com.samsung.accessibility.universalswitch.UniversalSwitchService.*"

    invoke-virtual {v0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return v1

    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    iget p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mSeslOverlayFeatureHeight:I

    if-le v0, p0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public final isLayoutSuppressed()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayoutSuppressed:Z

    return p0
.end method

.method public final isNestedScrollingEnabled()Z
    .locals 0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollingChildHelper()Landroidx/core/view/NestedScrollingChildHelper;

    move-result-object p0

    iget-boolean p0, p0, Landroidx/core/view/NestedScrollingChildHelper;->mIsNestedScrollingEnabled:Z

    return p0
.end method

.method public final isSupportGotoTop$1()Z
    .locals 1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->isGoToTopAvailableEnvironment()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mEnableGoToTop:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isVerticalScrollBarEnabled()Z
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mFastScroller:Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;

    if-eqz v0, :cond_1

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

    :cond_1
    invoke-super {p0}, Landroid/view/ViewGroup;->isVerticalScrollBarEnabled()Z

    move-result p0

    return p0
.end method

.method public final jumpToPositionForSmoothScroller(I)V
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->scrollToPosition(I)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->awakenScrollBars()Z

    return-void
.end method

.method public final markItemDecorInsetsDirty()V
    .locals 5

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v0, :cond_0

    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    invoke-virtual {v4, v2}, Landroidx/recyclerview/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    iput-boolean v3, v4, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->mInsetsDirty:Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_1
    if-ge v1, v0, :cond_2

    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    if-eqz v2, :cond_1

    iput-boolean v3, v2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->mInsetsDirty:Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public final multiSelection(III)V
    .locals 5

    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mIsNeedPenSelection:Z

    if-eqz v0, :cond_11

    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mIsFirstPenMoveEvent:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenDragStartX:I

    iput p2, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenDragStartY:I

    iput-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mIsPenPressed:Z

    int-to-float v0, p1

    int-to-float v3, p2

    invoke-virtual {p0, v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->findChildViewUnder(FF)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenTrackedChild:Landroid/view/View;

    if-nez v4, :cond_0

    invoke-virtual {p0, v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->seslFindNearChildViewUnder(FF)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenTrackedChild:Landroid/view/View;

    if-nez v0, :cond_0

    const-string p1, "SeslRecyclerView"

    const-string p2, "multiSelection, mPenTrackedChild is NULL"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mIsPenPressed:Z

    iput-boolean v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mIsFirstPenMoveEvent:Z

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mOnMultiSelectedListener:Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/AppListListener$getSeslOnMultiSelectedListener$1;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/AppListListener$getSeslOnMultiSelectedListener$1;->onMultiSelectStart(II)V

    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenTrackedChild:Landroid/view/View;

    invoke-static {v0}, Landroidx/recyclerview/widget/RecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenTrackedChildPosition:I

    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenDragStartY:I

    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenTrackedChild:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int/2addr v0, v3

    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenDistanceFromTrackedChildTop:I

    iput-boolean v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mIsFirstPenMoveEvent:Z

    :cond_2
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenDragStartX:I

    if-nez v0, :cond_4

    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenDragStartY:I

    if-nez v0, :cond_4

    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenDragStartX:I

    iput p2, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenDragStartY:I

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mOnMultiSelectedListener:Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/AppListListener$getSeslOnMultiSelectedListener$1;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/AppListListener$getSeslOnMultiSelectedListener$1;->onMultiSelectStart(II)V

    :cond_3
    iput-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mIsPenPressed:Z

    :cond_4
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenDragEndX:I

    iput p2, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenDragEndY:I

    if-gez p2, :cond_5

    iput v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenDragEndY:I

    goto :goto_0

    :cond_5
    if-le p2, p3, :cond_6

    iput p3, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenDragEndY:I

    :cond_6
    :goto_0
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenDragStartX:I

    if-ge v0, p1, :cond_7

    move v3, v0

    goto :goto_1

    :cond_7
    move v3, p1

    :goto_1
    iput v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenDragBlockLeft:I

    iget v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenDragStartY:I

    iget v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenDragEndY:I

    if-ge v3, v4, :cond_8

    goto :goto_2

    :cond_8
    move v3, v4

    :goto_2
    iput v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenDragBlockTop:I

    if-le p1, v0, :cond_9

    goto :goto_3

    :cond_9
    move p1, v0

    :goto_3
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenDragBlockRight:I

    iget p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mHoverTopAreaHeight:I

    if-gt p2, p1, :cond_b

    iget-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mHoverAreaEnter:Z

    if-nez p1, :cond_a

    iput-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mHoverAreaEnter:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mHoverScrollStartTime:J

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    if-eqz p1, :cond_a

    invoke-virtual {p1, v1, p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(ILandroidx/recyclerview/widget/RecyclerView;)V

    :cond_a
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mHoverHandler:Landroidx/recyclerview/widget/RecyclerView$6;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mHoverRecognitionStartTime:J

    const/4 p1, 0x2

    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mHoverScrollDirection:I

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mHoverHandler:Landroidx/recyclerview/widget/RecyclerView$6;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_4

    :cond_b
    iget p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mHoverBottomAreaHeight:I

    sub-int/2addr p3, p1

    iget p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mRemainNestedScrollRange:I

    sub-int/2addr p3, p1

    if-lt p2, p3, :cond_d

    iget-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mHoverAreaEnter:Z

    if-nez p1, :cond_c

    iput-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mHoverAreaEnter:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mHoverScrollStartTime:J

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    if-eqz p1, :cond_c

    invoke-virtual {p1, v1, p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(ILandroidx/recyclerview/widget/RecyclerView;)V

    :cond_c
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mHoverHandler:Landroidx/recyclerview/widget/RecyclerView$6;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mHoverRecognitionStartTime:J

    iput v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mHoverScrollDirection:I

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mHoverHandler:Landroidx/recyclerview/widget/RecyclerView$6;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_4

    :cond_d
    iget-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mHoverAreaEnter:Z

    if-eqz p1, :cond_e

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    if-eqz p1, :cond_e

    invoke-virtual {p1, v2, p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(ILandroidx/recyclerview/widget/RecyclerView;)V

    :cond_e
    const-wide/16 p1, 0x0

    iput-wide p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mHoverScrollStartTime:J

    iput-wide p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mHoverRecognitionStartTime:J

    iput-boolean v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mHoverAreaEnter:Z

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mHoverHandler:Landroidx/recyclerview/widget/RecyclerView$6;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_f

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mHoverHandler:Landroidx/recyclerview/widget/RecyclerView$6;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mScrollState:I

    if-ne p1, v1, :cond_f

    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    :cond_f
    iput-boolean v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mIsHoverOverscrolled:Z

    :cond_10
    :goto_4
    iget-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mIsPenDragBlockEnabled:Z

    if-eqz p1, :cond_11

    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    :cond_11
    return-void
.end method

.method public final multiSelectionEnd(II)V
    .locals 11

    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mIsPenPressed:Z

    const/4 v1, 0x1

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mOnMultiSelectedListener:Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/AppListListener$getSeslOnMultiSelectedListener$1;

    if-eqz v0, :cond_9

    int-to-float v4, p1

    int-to-float v5, p2

    iget-object v6, v0, Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/AppListListener$getSeslOnMultiSelectedListener$1;->this$0:Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/AppListListener;

    iget-object v7, v6, Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/AppListListener;->recyclerView:Lcom/samsung/android/settings/analyzestorage/ui/widget/MyFilesRecyclerView;

    invoke-virtual {v7, v4, v5}, Landroidx/recyclerview/widget/RecyclerView;->seslFindNearChildViewUnder(FF)Landroid/view/View;

    move-result-object v8

    if-nez v8, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-object v0, v0, Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/AppListListener$getSeslOnMultiSelectedListener$1;->info:Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/AppListListener$MultiSelectedInfo;

    iget-object v9, v0, Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/AppListListener$MultiSelectedInfo;->stopPoint:Ljava/lang/Object;

    check-cast v9, Landroid/graphics/Point;

    invoke-virtual {v9, p1, p2}, Landroid/graphics/Point;->set(II)V

    invoke-virtual {v7, v4, v5}, Landroidx/recyclerview/widget/RecyclerView;->findChildViewUnder(FF)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    move-result p1

    goto :goto_0

    :cond_1
    move p1, v2

    :goto_0
    if-ne p1, v2, :cond_2

    invoke-static {v8}, Landroidx/recyclerview/widget/RecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    move-result p1

    :cond_2
    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v4

    iget-object v5, v6, Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/AppListListener;->listItemHandler:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListItemHandler;

    iget-object v7, v6, Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/AppListListener;->adapter:Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/AsSubListAdapter;

    if-ge v4, p2, :cond_4

    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result p2

    iget-object v4, v0, Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/AppListListener$MultiSelectedInfo;->startPoint:Ljava/lang/Object;

    check-cast v4, Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    if-ge p2, v4, :cond_4

    iget-boolean p1, v6, Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/AppListListener;->isDexMousePressed:Z

    if-eqz p1, :cond_8

    iget-boolean p1, v5, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListItemHandler;->mIsSelectedMousePoint:Z

    if-eqz p1, :cond_3

    iget-object p1, v5, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListItemHandler;->mCheckedItemList:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iput-boolean v3, v5, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListItemHandler;->mIsSelectedMousePoint:Z

    :cond_3
    invoke-virtual {v7}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto :goto_4

    :cond_4
    iget p2, v0, Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/AppListListener$MultiSelectedInfo;->selectionStartPosition:I

    if-eq p2, v2, :cond_8

    if-eq p1, v2, :cond_8

    if-le p2, p1, :cond_5

    goto :goto_1

    :cond_5
    if-ne p2, p1, :cond_6

    iget-object p1, v5, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListItemHandler;->mCheckedItemList:Ljava/util/List;

    invoke-virtual {v5, p2}, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListItemHandler;->getItemAt(I)Lcom/samsung/android/settings/analyzestorage/domain/entity/DataInfo;

    move-result-object v0

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v1

    invoke-virtual {v5, p2, p1}, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListItemHandler;->setItemChecked(IZ)V

    goto :goto_3

    :cond_6
    move v10, p2

    move p2, p1

    move p1, v10

    :goto_1
    if-gt p1, p2, :cond_7

    :goto_2
    iget-object v0, v5, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListItemHandler;->mCheckedItemList:Ljava/util/List;

    invoke-virtual {v5, p1}, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListItemHandler;->getItemAt(I)Lcom/samsung/android/settings/analyzestorage/domain/entity/DataInfo;

    move-result-object v4

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v1

    invoke-virtual {v5, p1, v0}, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListItemHandler;->setItemChecked(IZ)V

    if-eq p1, p2, :cond_7

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_7
    :goto_3
    invoke-virtual {v7}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_8
    :goto_4
    iput-boolean v3, v6, Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/AppListListener;->isDexMousePressed:Z

    :cond_9
    iput-boolean v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mIsPenPressed:Z

    iput-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mIsFirstPenMoveEvent:Z

    iput v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenDragSelectedViewPosition:I

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenDragSelectedItemArray:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iput v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenDragStartX:I

    iput v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenDragStartY:I

    iput v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenDragEndX:I

    iput v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenDragEndY:I

    iput v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenDragBlockLeft:I

    iput v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenDragBlockTop:I

    iput v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenDragBlockRight:I

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenTrackedChild:Landroid/view/View;

    iput v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenDistanceFromTrackedChildTop:I

    iget-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mIsPenDragBlockEnabled:Z

    if-eqz p1, :cond_a

    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    :cond_a
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mHoverHandler:Landroidx/recyclerview/widget/RecyclerView$6;

    invoke-virtual {p1, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_b

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mHoverHandler:Landroidx/recyclerview/widget/RecyclerView$6;

    invoke-virtual {p0, v3}, Landroid/os/Handler;->removeMessages(I)V

    :cond_b
    return-void
.end method

.method public final offsetPositionRecordsForRemove(IIZ)V
    .locals 11

    add-int v0, p1, p2

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x1

    const/16 v4, 0x8

    const-string v5, " now at position "

    const-string v6, " holder "

    const-string v7, "SeslRecyclerView"

    if-ge v2, v1, :cond_4

    iget-object v8, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    invoke-virtual {v8, v2}, Landroidx/recyclerview/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-static {v8}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v8

    if-eqz v8, :cond_3

    invoke-virtual {v8}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v9

    if-nez v9, :cond_3

    iget v9, v8, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    const-string v10, "offsetPositionRecordsForRemove attached child "

    if-lt v9, v0, :cond_1

    sget-boolean v4, Landroidx/recyclerview/widget/RecyclerView;->sVerboseLoggingEnabled:Z

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v8, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    sub-int/2addr v5, p2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    neg-int v4, p2

    invoke-virtual {v8, v4, p3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->offsetPosition(IZ)V

    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    iput-boolean v3, v4, Landroidx/recyclerview/widget/RecyclerView$State;->mStructureChanged:Z

    goto :goto_1

    :cond_1
    if-lt v9, p1, :cond_3

    sget-boolean v5, Landroidx/recyclerview/widget/RecyclerView;->sVerboseLoggingEnabled:Z

    if-eqz v5, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " now REMOVED"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    add-int/lit8 v5, p1, -0x1

    neg-int v6, p2

    invoke-virtual {v8, v4}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->addFlags(I)V

    invoke-virtual {v8, v6, p3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->offsetPosition(IZ)V

    iput v5, v8, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    iput-boolean v3, v4, Landroidx/recyclerview/widget/RecyclerView$State;->mStructureChanged:Z

    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    iget-object v2, v1, Landroidx/recyclerview/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v3

    :goto_2
    if-ltz v2, :cond_8

    iget-object v3, v1, Landroidx/recyclerview/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    if-eqz v3, :cond_7

    iget v8, v3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    if-lt v8, v0, :cond_6

    sget-boolean v8, Landroidx/recyclerview/widget/RecyclerView;->sVerboseLoggingEnabled:Z

    if-eqz v8, :cond_5

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "offsetPositionRecordsForRemove cached "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    sub-int/2addr v9, p2

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    neg-int v8, p2

    invoke-virtual {v3, v8, p3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->offsetPosition(IZ)V

    goto :goto_3

    :cond_6
    if-lt v8, p1, :cond_7

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->addFlags(I)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->recycleCachedViewAt(I)V

    :cond_7
    :goto_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    :cond_8
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    return-void
.end method

.method public onAttachedToWindow()V
    .locals 6

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    const/4 v0, 0x0

    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayoutOrScrollCounter:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mIsAttached:Z

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

    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->maybeSendPoolingContainerAttach()V

    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    if-eqz v2, :cond_1

    iput-boolean v1, v2, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mIsAttachedToWindow:Z

    invoke-virtual {v2, p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView;)V

    :cond_1
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mPostedAnimatorRunner:Z

    sget-boolean v2, Landroidx/recyclerview/widget/RecyclerView;->ALLOW_THREAD_GAP_WORK:Z

    if-eqz v2, :cond_7

    sget-object v2, Landroidx/recyclerview/widget/GapWorker;->sGapWorker:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/GapWorker;

    iput-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mGapWorker:Landroidx/recyclerview/widget/GapWorker;

    if-nez v3, :cond_4

    new-instance v3, Landroidx/recyclerview/widget/GapWorker;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v3, Landroidx/recyclerview/widget/GapWorker;->mRecyclerViews:Ljava/util/ArrayList;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v3, Landroidx/recyclerview/widget/GapWorker;->mTasks:Ljava/util/ArrayList;

    iput-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mGapWorker:Landroidx/recyclerview/widget/GapWorker;

    sget-object v3, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    invoke-virtual {p0}, Landroid/view/View;->getDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->isInEditMode()Z

    move-result v4

    const/high16 v5, 0x42700000    # 60.0f

    if-nez v4, :cond_3

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/view/Display;->getRefreshRate()F

    move-result v3

    const/high16 v4, 0x41f00000    # 30.0f

    cmpl-float v4, v3, v4

    if-ltz v4, :cond_2

    move v5, v3

    :cond_2
    iget-boolean v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mIsNeedCheckLatency:Z

    if-eqz v3, :cond_3

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float/2addr v3, v5

    iput v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mFrameLatency:F

    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mIsNeedCheckLatency:Z

    :cond_3
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mGapWorker:Landroidx/recyclerview/widget/GapWorker;

    const v3, 0x4e6e6b28    # 1.0E9f

    div-float/2addr v3, v5

    float-to-long v3, v3

    iput-wide v3, v0, Landroidx/recyclerview/widget/GapWorker;->mFrameIntervalNs:J

    invoke-virtual {v2, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_4
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mGapWorker:Landroidx/recyclerview/widget/GapWorker;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v2, Landroidx/recyclerview/widget/RecyclerView;->sDebugAssertionsEnabled:Z

    if-eqz v2, :cond_6

    iget-object v2, v0, Landroidx/recyclerview/widget/GapWorker;->mRecyclerViews:Ljava/util/ArrayList;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_1

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "RecyclerView already present in worker list!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    :goto_1
    iget-object v0, v0, Landroidx/recyclerview/widget/GapWorker;->mRecyclerViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getLayoutDirection()I

    move-result v0

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mFastScroller:Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getVerticalScrollbarPosition()I

    move-result p0

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->setScrollbarPosition(I)V

    :cond_7
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 4

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->endAnimations()V

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mViewFlinger:Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->stop()V

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    if-eqz v1, :cond_1

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mSmoothScroller:Landroidx/recyclerview/widget/LinearSmoothScroller;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearSmoothScroller;->stop()V

    :cond_1
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mIsAttached:Z

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    if-eqz v1, :cond_2

    iput-boolean v0, v1, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mIsAttachedToWindow:Z

    invoke-virtual {v1, p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView;)V

    :cond_2
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mPendingAccessibilityImportanceChange:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimatorRunner:Landroidx/recyclerview/widget/RecyclerView$1;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mViewInfoStore:Landroidx/recyclerview/widget/ViewInfoStore;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_0
    sget-object v1, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;->sPool:Landroidx/core/util/Pools$SimplePool;

    invoke-virtual {v1}, Landroidx/core/util/Pools$SimplePool;->acquire()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    move v2, v0

    :goto_1
    iget-object v3, v1, Landroidx/recyclerview/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    iget-object v3, v1, Landroidx/recyclerview/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v3}, Landroidx/customview/poolingcontainer/PoolingContainer;->callPoolingContainerOnRelease(Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    iget-object v2, v1, Landroidx/recyclerview/widget/RecyclerView$Recycler;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v1, v2, v0}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->poolingContainerDetach(Landroidx/recyclerview/widget/RecyclerView$Adapter;Z)V

    :goto_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_7

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-static {v0}, Landroidx/customview/poolingcontainer/PoolingContainer;->getPoolingContainerListenerHolder(Landroid/view/View;)Landroidx/customview/poolingcontainer/PoolingContainerListenerHolder;

    move-result-object v0

    iget-object v2, v0, Landroidx/customview/poolingcontainer/PoolingContainerListenerHolder;->listeners:Ljava/util/ArrayList;

    invoke-static {v2}, Lkotlin/collections/CollectionsKt__CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v2

    :goto_3
    const/4 v3, -0x1

    if-ge v3, v2, :cond_5

    iget-object v3, v0, Landroidx/customview/poolingcontainer/PoolingContainerListenerHolder;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/customview/poolingcontainer/PoolingContainerListener;

    check-cast v3, Landroidx/compose/ui/platform/ViewCompositionStrategy$DisposeOnDetachedFromWindowOrReleasedFromPool$$ExternalSyntheticLambda0;

    iget-object v3, v3, Landroidx/compose/ui/platform/ViewCompositionStrategy$DisposeOnDetachedFromWindowOrReleasedFromPool$$ExternalSyntheticLambda0;->f$0:Landroidx/compose/ui/platform/AbstractComposeView;

    invoke-virtual {v3}, Landroidx/compose/ui/platform/AbstractComposeView;->disposeComposition()V

    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    :cond_5
    move v0, v1

    goto :goto_2

    :cond_6
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0

    :cond_7
    sget-boolean v0, Landroidx/recyclerview/widget/RecyclerView;->ALLOW_THREAD_GAP_WORK:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mGapWorker:Landroidx/recyclerview/widget/GapWorker;

    if-eqz v0, :cond_a

    iget-object v0, v0, Landroidx/recyclerview/widget/GapWorker;->mRecyclerViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    sget-boolean v1, Landroidx/recyclerview/widget/RecyclerView;->sDebugAssertionsEnabled:Z

    if-eqz v1, :cond_9

    if-eqz v0, :cond_8

    goto :goto_4

    :cond_8
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "RecyclerView removal failed!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    :goto_4
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mGapWorker:Landroidx/recyclerview/widget/GapWorker;

    :cond_a
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mIsNeedCheckLatency:Z

    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mIsRecoilSupported:Z

    if-eqz v0, :cond_d

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimatorHolder:Landroidx/appcompat/animation/SeslRecoilAnimator$Holder;

    iget-object v0, p0, Landroidx/appcompat/animation/SeslRecoilAnimator$Holder;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/animation/SeslRecoilAnimator;

    invoke-virtual {v1}, Landroidx/appcompat/animation/SeslRecoilAnimator;->isActive()Z

    move-result v2

    if-eqz v2, :cond_b

    iget-object v2, v1, Landroidx/appcompat/animation/SeslRecoilAnimator;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->end()V

    :cond_b
    iget-object v1, v1, Landroidx/appcompat/animation/SeslRecoilAnimator;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    goto :goto_5

    :cond_c
    iget-object p0, p0, Landroidx/appcompat/animation/SeslRecoilAnimator$Holder;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    :cond_d
    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    invoke-virtual {v3, p1, p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;->onDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mIsNeedCheckLatency:Z

    if-eqz p1, :cond_2

    sget-object p1, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    invoke-virtual {p0}, Landroid/view/View;->getDisplay()Landroid/view/Display;

    move-result-object p1

    if-eqz p1, :cond_1

    const/high16 v0, 0x447a0000    # 1000.0f

    invoke-virtual {p1}, Landroid/view/Display;->getRefreshRate()F

    move-result p1

    div-float/2addr v0, p1

    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mFrameLatency:F

    goto :goto_1

    :cond_1
    const p1, 0x418547ae    # 16.66f

    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mFrameLatency:F

    :goto_1
    iput-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mIsNeedCheckLatency:Z

    :cond_2
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mFastScroller:Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->updateLayout()V

    :cond_3
    return-void
.end method

.method public final onEnterLayoutOrScroll()V
    .locals 1

    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayoutOrScrollCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayoutOrScrollCounter:I

    return-void
.end method

.method public final onExitLayoutOrScroll(Z)V
    .locals 5

    const/4 v0, -0x1

    iget v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayoutOrScrollCounter:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayoutOrScrollCounter:I

    if-ge v1, v2, :cond_6

    sget-boolean v3, Landroidx/recyclerview/widget/RecyclerView;->sDebugAssertionsEnabled:Z

    if-eqz v3, :cond_1

    if-ltz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "layout or scroll counter cannot go below zero.Some calls are not matching"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Landroidx/recyclerview/widget/ChildHelper$$ExternalSyntheticOutline0;->m(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    const/4 v1, 0x0

    iput v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayoutOrScrollCounter:I

    if-eqz p1, :cond_6

    iget p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mEatenAccessibilityChangeFlags:I

    iput v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mEatenAccessibilityChangeFlags:I

    if-eqz p1, :cond_2

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    const/16 v3, 0x800

    invoke-virtual {v1, v3}, Landroid/view/accessibility/AccessibilityEvent;->setEventType(I)V

    invoke-virtual {v1, p1}, Landroid/view/accessibility/AccessibilityEvent;->setContentChangeTypes(I)V

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_2
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mPendingAccessibilityImportanceChange:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    sub-int/2addr p1, v2

    :goto_1
    if-ltz p1, :cond_5

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mPendingAccessibilityImportanceChange:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object v2, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-ne v2, p0, :cond_4

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_2

    :cond_3
    iget v2, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPendingAccessibilityState:I

    if-eq v2, v0, :cond_4

    iget-object v3, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget-object v4, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    invoke-virtual {v3, v2}, Landroid/view/View;->setImportantForAccessibility(I)V

    iput v0, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPendingAccessibilityState:I

    :cond_4
    :goto_2
    add-int/2addr p1, v0

    goto :goto_1

    :cond_5
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mPendingAccessibilityImportanceChange:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    :cond_6
    return-void
.end method

.method public final onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 14

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayoutSuppressed:Z

    if-eqz v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v2, 0x8

    if-ne v0, v2, :cond_13

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    const/4 v2, 0x2

    and-int/2addr v0, v2

    const/4 v3, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    neg-float v0, v0

    goto :goto_0

    :cond_2
    move v0, v3

    :goto_0
    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v4

    if-eqz v4, :cond_3

    const/16 v4, 0xa

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v4

    goto :goto_2

    :cond_3
    :goto_1
    move v4, v3

    goto :goto_2

    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    const/high16 v4, 0x400000

    and-int/2addr v0, v4

    if-eqz v0, :cond_6

    const/16 v0, 0x1a

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v4

    if-eqz v4, :cond_5

    neg-float v0, v0

    goto :goto_1

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

    if-eqz v3, :cond_13

    :cond_7
    const/4 v3, 0x1

    if-eqz v5, :cond_8

    goto :goto_3

    :cond_8
    move v2, v3

    :goto_3
    invoke-virtual {p0, v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->startNestedScroll(II)V

    iget v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mScaledHorizontalScrollFactor:F

    mul-float/2addr v2, v4

    float-to-int v6, v2

    iget v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mScaledVerticalScrollFactor:F

    mul-float/2addr v2, v0

    float-to-int v7, v2

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v5, p0

    invoke-virtual/range {v5 .. v10}, Landroidx/recyclerview/widget/RecyclerView;->dispatchNestedPreScroll(III[I[I)Z

    move-result v2

    if-nez v2, :cond_13

    iget v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mScaledHorizontalScrollFactor:F

    mul-float/2addr v4, v2

    float-to-int v2, v4

    iget v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mScaledVerticalScrollFactor:F

    mul-float/2addr v0, v4

    float-to-int v0, v0

    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    if-nez v4, :cond_9

    const-string p0, "SeslRecyclerView"

    const-string p1, "Cannot scroll without a LayoutManager set. Call setLayoutManager with a non-null argument."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    :cond_9
    iget-boolean v5, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayoutSuppressed:Z

    if-eqz v5, :cond_a

    goto/16 :goto_9

    :cond_a
    iget-object v5, p0, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    aput v1, v5, v1

    aput v1, v5, v3

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v4

    iget-object v5, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v5

    if-eqz v5, :cond_b

    or-int/lit8 v6, v4, 0x2

    goto :goto_4

    :cond_b
    move v6, v4

    :goto_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    invoke-virtual {p0, v7, v2}, Landroidx/recyclerview/widget/RecyclerView;->releaseHorizontalGlow(FI)I

    move-result v7

    sub-int/2addr v2, v7

    invoke-virtual {p0, v8, v0}, Landroidx/recyclerview/widget/RecyclerView;->releaseVerticalGlow$1(FI)I

    move-result v7

    sub-int/2addr v0, v7

    const/4 v13, 0x1

    invoke-virtual {p0, v6, v13}, Landroidx/recyclerview/widget/RecyclerView;->startNestedScroll(II)V

    if-eqz v4, :cond_c

    move v8, v2

    goto :goto_5

    :cond_c
    move v8, v1

    :goto_5
    if-eqz v5, :cond_d

    move v9, v0

    goto :goto_6

    :cond_d
    move v9, v1

    :goto_6
    iget-object v11, p0, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    iget-object v12, p0, Landroidx/recyclerview/widget/RecyclerView;->mScrollOffset:[I

    move-object v7, p0

    move v10, v13

    invoke-virtual/range {v7 .. v12}, Landroidx/recyclerview/widget/RecyclerView;->dispatchNestedPreScroll(III[I[I)Z

    move-result v6

    if-eqz v6, :cond_e

    iget-object v6, p0, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    aget v7, v6, v1

    sub-int/2addr v2, v7

    aget v3, v6, v3

    sub-int/2addr v0, v3

    :cond_e
    if-eqz v4, :cond_f

    move v3, v2

    goto :goto_7

    :cond_f
    move v3, v1

    :goto_7
    if-eqz v5, :cond_10

    move v4, v0

    goto :goto_8

    :cond_10
    move v4, v1

    :goto_8
    invoke-virtual {p0, v3, v4, p1, v13}, Landroidx/recyclerview/widget/RecyclerView;->scrollByInternal(IILandroid/view/MotionEvent;I)Z

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mGapWorker:Landroidx/recyclerview/widget/GapWorker;

    if-eqz p1, :cond_12

    if-nez v2, :cond_11

    if-eqz v0, :cond_12

    :cond_11
    invoke-virtual {p1, p0, v2, v0}, Landroidx/recyclerview/widget/GapWorker;->postFromTraversal(Landroidx/recyclerview/widget/RecyclerView;II)V

    :cond_12
    invoke-virtual {p0, v13}, Landroidx/recyclerview/widget/RecyclerView;->stopNestedScroll(I)V

    :cond_13
    :goto_9
    return v1
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-boolean v2, v0, Landroidx/recyclerview/widget/RecyclerView;->mLayoutSuppressed:Z

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    iput v3, v0, Landroidx/recyclerview/widget/RecyclerView;->mLastTouchX:I

    iput v3, v0, Landroidx/recyclerview/widget/RecyclerView;->mLastTouchY:I

    return v4

    :cond_0
    const/4 v2, 0x0

    iput-object v2, v0, Landroidx/recyclerview/widget/RecyclerView;->mInterceptingOnItemTouchListener:Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;

    invoke-virtual/range {p0 .. p1}, Landroidx/recyclerview/widget/RecyclerView;->findInterceptingOnItemTouchListener(Landroid/view/MotionEvent;)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_1

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView;->resetScroll()V

    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    return v6

    :cond_1
    iget-object v5, v0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    if-nez v5, :cond_2

    return v4

    :cond_2
    iget-object v5, v0, Landroidx/recyclerview/widget/RecyclerView;->mFastScroller:Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x3

    if-eqz v5, :cond_9

    invoke-virtual {v5}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->isEnabled()Z

    move-result v10

    if-nez v10, :cond_4

    :cond_3
    :goto_0
    move v5, v4

    goto :goto_1

    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v10

    if-eqz v10, :cond_8

    const-wide/16 v11, -0x1

    if-eq v10, v6, :cond_7

    if-eq v10, v7, :cond_5

    if-eq v10, v9, :cond_7

    goto :goto_0

    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v13

    invoke-virtual {v5, v10, v13}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->isPointInside(FF)Z

    move-result v10

    if-nez v10, :cond_6

    iput-wide v11, v5, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mPendingDrag:J

    goto :goto_0

    :cond_6
    iget-wide v10, v5, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mPendingDrag:J

    const-wide/16 v12, 0x0

    cmp-long v12, v10, v12

    if-ltz v12, :cond_3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    cmp-long v10, v10, v12

    if-gtz v10, :cond_3

    invoke-virtual {v5}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->beginDrag()V

    invoke-virtual {v5, v8}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->getPosFromMotionEvent(F)F

    move-result v10

    iput v10, v5, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mOldThumbPosition:F

    invoke-virtual {v5, v10, v8}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->scrollTo(FF)V

    invoke-virtual {v5, v1}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    goto :goto_1

    :cond_7
    iput-wide v11, v5, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mPendingDrag:J

    goto :goto_0

    :cond_8
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    invoke-virtual {v5, v10, v11}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->isPointInside(FF)Z

    move-result v10

    if-eqz v10, :cond_3

    iget-object v10, v5, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget v5, v5, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mNormalVibrateIndex:I

    invoke-virtual {v10, v5}, Landroid/view/ViewGroup;->performHapticFeedback(I)Z

    move v5, v6

    :goto_1
    if-eqz v5, :cond_9

    return v6

    :cond_9
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v5

    iget-object v10, v0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v10}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v10

    iget-object v11, v0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v11}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v11

    iget-object v12, v0, Landroidx/recyclerview/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v12, :cond_a

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v12

    iput-object v12, v0, Landroidx/recyclerview/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_a
    iget-object v12, v0, Landroidx/recyclerview/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v12, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v12

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v13

    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v14

    if-ne v14, v7, :cond_b

    move v14, v6

    goto :goto_2

    :cond_b
    move v14, v4

    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v15

    and-int/lit8 v15, v15, 0x20

    if-eqz v15, :cond_c

    move v15, v6

    goto :goto_3

    :cond_c
    move v15, v4

    :goto_3
    const-string v2, "] "

    const-string v3, "] mLastTouchY["

    const/16 v8, 0xd3

    const-string v4, "SeslRecyclerView"

    const/high16 v16, 0x3f000000    # 0.5f

    if-eqz v12, :cond_24

    if-eq v12, v6, :cond_23

    if-eq v12, v7, :cond_13

    if-eq v12, v9, :cond_10

    const/4 v9, 0x5

    if-eq v12, v9, :cond_f

    const/4 v9, 0x6

    if-eq v12, v9, :cond_e

    if-eq v12, v8, :cond_24

    :cond_d
    :goto_4
    const/4 v4, 0x0

    goto/16 :goto_11

    :cond_e
    invoke-virtual/range {p0 .. p1}, Landroidx/recyclerview/widget/RecyclerView;->onPointerUp(Landroid/view/MotionEvent;)V

    goto :goto_4

    :cond_f
    invoke-virtual {v1, v13}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v7

    iput v7, v0, Landroidx/recyclerview/widget/RecyclerView;->mScrollPointerId:I

    invoke-virtual {v1, v13}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    add-float v7, v7, v16

    float-to-int v7, v7

    iput v7, v0, Landroidx/recyclerview/widget/RecyclerView;->mLastTouchX:I

    iput v7, v0, Landroidx/recyclerview/widget/RecyclerView;->mInitialTouchX:I

    invoke-virtual {v1, v13}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    add-float v1, v1, v16

    float-to-int v1, v1

    iput v1, v0, Landroidx/recyclerview/widget/RecyclerView;->mLastTouchY:I

    iput v1, v0, Landroidx/recyclerview/widget/RecyclerView;->mInitialTouchY:I

    sget-boolean v1, Landroidx/recyclerview/widget/RecyclerView;->sVerboseLoggingEnabled:Z

    if-eqz v1, :cond_d

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v7, "onIntercept POINTER_DOWN mLastTouchX["

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, v0, Landroidx/recyclerview/widget/RecyclerView;->mLastTouchX:I

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Landroidx/recyclerview/widget/RecyclerView;->mLastTouchY:I

    invoke-static {v1, v3, v2, v4}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_10
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView;->resetScroll()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    iget-boolean v2, v0, Landroidx/recyclerview/widget/RecyclerView;->mIsRecoilSupported:Z

    if-eqz v2, :cond_12

    iget-boolean v2, v0, Landroidx/recyclerview/widget/RecyclerView;->mIsRecoilEnabled:Z

    if-eqz v2, :cond_12

    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView;->mItemBackgroundHolder:Landroidx/recyclerview/widget/RecyclerView$ItemBackgroundHolder;

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$ItemBackgroundHolder;->mActiveBg:Ljava/lang/Object;

    check-cast v2, Landroidx/appcompat/graphics/drawable/SeslRecoilDrawable;

    if-eqz v2, :cond_11

    new-array v3, v1, [I

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/LayerDrawable;->setState([I)Z

    :cond_11
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimatorHolder:Landroidx/appcompat/animation/SeslRecoilAnimator$Holder;

    invoke-virtual {v1}, Landroidx/appcompat/animation/SeslRecoilAnimator$Holder;->setRelease()V

    goto :goto_4

    :cond_12
    :goto_5
    move v4, v1

    goto/16 :goto_11

    :cond_13
    iget v2, v0, Landroidx/recyclerview/widget/RecyclerView;->mLastTouchX:I

    if-ltz v2, :cond_d

    iget v2, v0, Landroidx/recyclerview/widget/RecyclerView;->mLastTouchY:I

    if-gez v2, :cond_14

    goto :goto_4

    :cond_14
    if-eqz v14, :cond_15

    if-eqz v15, :cond_15

    goto :goto_4

    :cond_15
    iget v2, v0, Landroidx/recyclerview/widget/RecyclerView;->mScrollPointerId:I

    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    if-gez v2, :cond_16

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error processing scroll; pointer index for id "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mScrollPointerId:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " not found. Did any MotionEvents get skipped?"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5}, Landroid/view/MotionEvent;->recycle()V

    const/4 v0, 0x0

    return v0

    :cond_16
    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    add-float v3, v3, v16

    float-to-int v3, v3

    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    add-float v1, v1, v16

    float-to-int v1, v1

    iget v2, v0, Landroidx/recyclerview/widget/RecyclerView;->mLastTouchX:I

    sub-int/2addr v2, v3

    iget v7, v0, Landroidx/recyclerview/widget/RecyclerView;->mLastTouchY:I

    sub-int/2addr v7, v1

    sget-boolean v8, Landroidx/recyclerview/widget/RecyclerView;->sVerboseLoggingEnabled:Z

    if-eqz v8, :cond_17

    const-string v8, "onIntercept MOVE dx["

    const-string v9, "] dy["

    const-string v12, "]"

    invoke-static {v8, v9, v2, v7, v12}, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$semanticsModifier$1$1$3$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_17
    iget v4, v0, Landroidx/recyclerview/widget/RecyclerView;->mScrollState:I

    if-eq v4, v6, :cond_1d

    if-eqz v10, :cond_19

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget v8, v0, Landroidx/recyclerview/widget/RecyclerView;->mTouchSlop:I

    if-le v4, v8, :cond_19

    if-lez v2, :cond_18

    sub-int/2addr v2, v8

    goto :goto_6

    :cond_18
    add-int/2addr v2, v8

    :goto_6
    iput v3, v0, Landroidx/recyclerview/widget/RecyclerView;->mLastTouchX:I

    move v4, v6

    goto :goto_7

    :cond_19
    const/4 v4, 0x0

    :goto_7
    if-eqz v11, :cond_1b

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v8

    iget v9, v0, Landroidx/recyclerview/widget/RecyclerView;->mTouchSlop:I

    if-le v8, v9, :cond_1b

    if-lez v7, :cond_1a

    sub-int/2addr v7, v9

    goto :goto_8

    :cond_1a
    add-int/2addr v7, v9

    :goto_8
    iput-boolean v6, v0, Landroidx/recyclerview/widget/RecyclerView;->mPreventFirstGlow:Z

    iput v1, v0, Landroidx/recyclerview/widget/RecyclerView;->mLastTouchY:I

    move v4, v6

    :cond_1b
    if-eqz v4, :cond_1d

    invoke-virtual {v0, v6}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    iget-boolean v4, v0, Landroidx/recyclerview/widget/RecyclerView;->mIsRecoilSupported:Z

    if-eqz v4, :cond_1d

    iget-boolean v4, v0, Landroidx/recyclerview/widget/RecyclerView;->mIsRecoilEnabled:Z

    if-eqz v4, :cond_1d

    iget-object v4, v0, Landroidx/recyclerview/widget/RecyclerView;->mItemBackgroundHolder:Landroidx/recyclerview/widget/RecyclerView$ItemBackgroundHolder;

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView$ItemBackgroundHolder;->mActiveBg:Ljava/lang/Object;

    check-cast v4, Landroidx/appcompat/graphics/drawable/SeslRecoilDrawable;

    if-eqz v4, :cond_1c

    const/4 v8, 0x0

    new-array v9, v8, [I

    invoke-virtual {v4, v9}, Landroid/graphics/drawable/LayerDrawable;->setState([I)Z

    :cond_1c
    iget-object v4, v0, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimatorHolder:Landroidx/appcompat/animation/SeslRecoilAnimator$Holder;

    invoke-virtual {v4}, Landroidx/appcompat/animation/SeslRecoilAnimator$Holder;->setRelease()V

    :cond_1d
    iget v4, v0, Landroidx/recyclerview/widget/RecyclerView;->mScrollState:I

    if-ne v4, v6, :cond_22

    iget-object v4, v0, Landroidx/recyclerview/widget/RecyclerView;->mScrollOffset:[I

    const/4 v8, 0x0

    aget v9, v4, v8

    sub-int/2addr v3, v9

    iput v3, v0, Landroidx/recyclerview/widget/RecyclerView;->mLastTouchX:I

    aget v3, v4, v6

    sub-int/2addr v1, v3

    iput v1, v0, Landroidx/recyclerview/widget/RecyclerView;->mLastTouchY:I

    if-eqz v10, :cond_1e

    move v1, v2

    goto :goto_9

    :cond_1e
    const/4 v1, 0x0

    :goto_9
    if-eqz v11, :cond_1f

    move v3, v7

    :goto_a
    const/4 v4, 0x0

    goto :goto_b

    :cond_1f
    const/4 v3, 0x0

    goto :goto_a

    :goto_b
    invoke-virtual {v0, v1, v3, v5, v4}, Landroidx/recyclerview/widget/RecyclerView;->scrollByInternal(IILandroid/view/MotionEvent;I)Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1, v6}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_20
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->mGapWorker:Landroidx/recyclerview/widget/GapWorker;

    if-eqz v1, :cond_22

    if-nez v2, :cond_21

    if-eqz v7, :cond_22

    :cond_21
    invoke-virtual {v1, v0, v2, v7}, Landroidx/recyclerview/widget/GapWorker;->postFromTraversal(Landroidx/recyclerview/widget/RecyclerView;II)V

    :cond_22
    invoke-virtual {v0, v7}, Landroidx/recyclerview/widget/RecyclerView;->adjustNestedScrollRangeBy$1(I)V

    goto/16 :goto_4

    :cond_23
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->clear()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->stopNestedScroll(I)V

    goto/16 :goto_5

    :cond_24
    if-eqz v14, :cond_25

    if-nez v15, :cond_26

    :cond_25
    if-ne v12, v8, :cond_27

    :cond_26
    iget-boolean v2, v0, Landroidx/recyclerview/widget/RecyclerView;->mIgnoreMotionEventTillDown:Z

    if-eqz v2, :cond_35

    const/4 v8, 0x0

    iput-boolean v8, v0, Landroidx/recyclerview/widget/RecyclerView;->mIgnoreMotionEventTillDown:Z

    goto/16 :goto_e

    :cond_27
    const/4 v8, 0x0

    iget-boolean v9, v0, Landroidx/recyclerview/widget/RecyclerView;->mIgnoreMotionEventTillDown:Z

    if-eqz v9, :cond_28

    iput-boolean v8, v0, Landroidx/recyclerview/widget/RecyclerView;->mIgnoreMotionEventTillDown:Z

    :cond_28
    invoke-virtual {v1, v8}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v9

    iput v9, v0, Landroidx/recyclerview/widget/RecyclerView;->mScrollPointerId:I

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    add-float v8, v8, v16

    float-to-int v8, v8

    iput v8, v0, Landroidx/recyclerview/widget/RecyclerView;->mLastTouchX:I

    iput v8, v0, Landroidx/recyclerview/widget/RecyclerView;->mInitialTouchX:I

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    add-float v8, v8, v16

    float-to-int v8, v8

    iput v8, v0, Landroidx/recyclerview/widget/RecyclerView;->mLastTouchY:I

    iput v8, v0, Landroidx/recyclerview/widget/RecyclerView;->mInitialTouchY:I

    iget-boolean v8, v0, Landroidx/recyclerview/widget/RecyclerView;->mUsePagingTouchSlopForStylus:Z

    if-eqz v8, :cond_2a

    const/16 v8, 0x4002

    invoke-virtual {v1, v8}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v8

    if-eqz v8, :cond_29

    iget v8, v0, Landroidx/recyclerview/widget/RecyclerView;->mPagingTouchSlop:I

    iput v8, v0, Landroidx/recyclerview/widget/RecyclerView;->mTouchSlop:I

    goto :goto_c

    :cond_29
    iget v8, v0, Landroidx/recyclerview/widget/RecyclerView;->mTouchSlop2:I

    iput v8, v0, Landroidx/recyclerview/widget/RecyclerView;->mTouchSlop:I

    :cond_2a
    :goto_c
    sget-boolean v8, Landroidx/recyclerview/widget/RecyclerView;->sVerboseLoggingEnabled:Z

    if-eqz v8, :cond_2b

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "onIntercept DOWN mTouchSlop["

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v9, v0, Landroidx/recyclerview/widget/RecyclerView;->mTouchSlop:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "] mTouchSlop["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v0, Landroidx/recyclerview/widget/RecyclerView;->mTouchSlop2:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "] mPagingTouchSlop["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v0, Landroidx/recyclerview/widget/RecyclerView;->mPagingTouchSlop:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "] mLastTouchX["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v0, Landroidx/recyclerview/widget/RecyclerView;->mLastTouchX:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Landroidx/recyclerview/widget/RecyclerView;->mLastTouchY:I

    invoke-static {v8, v3, v2, v4}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    :cond_2b
    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v2, :cond_2c

    invoke-static {v2}, Landroidx/core/widget/EdgeEffectCompat;->getDistance(Landroid/widget/EdgeEffect;)F

    move-result v2

    const/4 v4, 0x0

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_2d

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->canScrollHorizontally(I)Z

    move-result v8

    if-nez v8, :cond_2d

    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v8, v9

    sub-float v8, v3, v8

    invoke-static {v2, v4, v8}, Landroidx/core/widget/EdgeEffectCompat;->onPullDistance(Landroid/widget/EdgeEffect;FF)F

    move v2, v6

    goto :goto_d

    :cond_2c
    const/4 v4, 0x0

    :cond_2d
    const/4 v2, 0x0

    :goto_d
    iget-object v8, v0, Landroidx/recyclerview/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    if-eqz v8, :cond_2e

    invoke-static {v8}, Landroidx/core/widget/EdgeEffectCompat;->getDistance(Landroid/widget/EdgeEffect;)F

    move-result v8

    cmpl-float v8, v8, v4

    if-eqz v8, :cond_2e

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->canScrollHorizontally(I)Z

    move-result v8

    if-nez v8, :cond_2e

    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v8, v9

    invoke-static {v2, v4, v8}, Landroidx/core/widget/EdgeEffectCompat;->onPullDistance(Landroid/widget/EdgeEffect;FF)F

    move v2, v6

    :cond_2e
    iget-object v8, v0, Landroidx/recyclerview/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    if-eqz v8, :cond_2f

    invoke-static {v8}, Landroidx/core/widget/EdgeEffectCompat;->getDistance(Landroid/widget/EdgeEffect;)F

    move-result v8

    cmpl-float v8, v8, v4

    if-eqz v8, :cond_2f

    const/4 v8, -0x1

    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->canScrollVertically(I)Z

    move-result v8

    if-nez v8, :cond_2f

    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v8, v9

    invoke-static {v2, v4, v8}, Landroidx/core/widget/EdgeEffectCompat;->onPullDistance(Landroid/widget/EdgeEffect;FF)F

    move v2, v6

    :cond_2f
    iget-object v8, v0, Landroidx/recyclerview/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    if-eqz v8, :cond_30

    invoke-static {v8}, Landroidx/core/widget/EdgeEffectCompat;->getDistance(Landroid/widget/EdgeEffect;)F

    move-result v8

    cmpl-float v8, v8, v4

    if-eqz v8, :cond_30

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->canScrollVertically(I)Z

    move-result v8

    if-nez v8, :cond_30

    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v8, v9

    sub-float/2addr v3, v8

    invoke-static {v2, v4, v3}, Landroidx/core/widget/EdgeEffectCompat;->onPullDistance(Landroid/widget/EdgeEffect;FF)F

    move v2, v6

    :cond_30
    if-nez v2, :cond_31

    iget v2, v0, Landroidx/recyclerview/widget/RecyclerView;->mScrollState:I

    if-ne v2, v7, :cond_32

    :cond_31
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v2, v6}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    invoke-virtual {v0, v6}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    invoke-virtual {v0, v6}, Landroidx/recyclerview/widget/RecyclerView;->stopNestedScroll(I)V

    :cond_32
    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView;->mNestedOffsets:[I

    const/4 v3, 0x0

    aput v3, v2, v6

    aput v3, v2, v3

    iget-boolean v2, v0, Landroidx/recyclerview/widget/RecyclerView;->mHasNestedScrollRange:Z

    if-eqz v2, :cond_33

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView;->adjustNestedScrollRange$1()V

    :cond_33
    iput-boolean v3, v0, Landroidx/recyclerview/widget/RecyclerView;->mPreventFirstGlow:Z

    if-eqz v11, :cond_34

    or-int/lit8 v10, v10, 0x2

    :cond_34
    invoke-virtual {v0, v10, v3}, Landroidx/recyclerview/widget/RecyclerView;->startNestedScroll(II)V

    iput-boolean v3, v0, Landroidx/recyclerview/widget/RecyclerView;->mIsSkipMoveEvent:Z

    :cond_35
    :goto_e
    iget-boolean v2, v0, Landroidx/recyclerview/widget/RecyclerView;->mIsRecoilSupported:Z

    if-eqz v2, :cond_d

    iget-boolean v2, v0, Landroidx/recyclerview/widget/RecyclerView;->mIsRecoilEnabled:Z

    if-eqz v2, :cond_d

    iget v2, v0, Landroidx/recyclerview/widget/RecyclerView;->mScrollState:I

    if-nez v2, :cond_d

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->findChildViewUnder(FF)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_37

    invoke-virtual {v2}, Landroid/view/View;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_36

    goto :goto_f

    :cond_36
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {v0, v2, v3, v1}, Landroidx/recyclerview/widget/RecyclerView;->findClickableChildUnder(Landroid/view/View;FF)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_38

    if-eq v1, v2, :cond_38

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    mul-int/2addr v2, v3

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v4

    mul-int/2addr v4, v3

    int-to-double v3, v4

    int-to-double v7, v2

    const-wide/high16 v9, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v7, v9

    cmpg-double v2, v3, v7

    if-gez v2, :cond_38

    :cond_37
    :goto_f
    const/4 v1, 0x0

    :cond_38
    if-eqz v1, :cond_d

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->findContainingItemView(Landroid/view/View;)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_39

    const/4 v2, 0x0

    goto :goto_10

    :cond_39
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v2

    :goto_10
    if-eqz v2, :cond_d

    iget-boolean v2, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mIsViewHolderRecoilEffectEnabled:Z

    if-eqz v2, :cond_d

    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView;->mItemBackgroundHolder:Landroidx/recyclerview/widget/RecyclerView$ItemBackgroundHolder;

    iget-object v3, v2, Landroidx/recyclerview/widget/RecyclerView$ItemBackgroundHolder;->mActiveBg:Ljava/lang/Object;

    check-cast v3, Landroidx/appcompat/graphics/drawable/SeslRecoilDrawable;

    const/4 v4, 0x0

    if-eqz v3, :cond_3a

    new-array v7, v4, [I

    invoke-virtual {v3, v7}, Landroid/graphics/drawable/LayerDrawable;->setState([I)Z

    :cond_3a
    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    instance-of v3, v3, Landroidx/appcompat/graphics/drawable/SeslRecoilDrawable;

    if-eqz v3, :cond_3b

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/graphics/drawable/SeslRecoilDrawable;

    iput-object v3, v2, Landroidx/recyclerview/widget/RecyclerView$ItemBackgroundHolder;->mActiveBg:Ljava/lang/Object;

    const v7, 0x1010367

    filled-new-array {v7}, [I

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/graphics/drawable/LayerDrawable;->setState([I)Z

    iget-object v3, v2, Landroidx/recyclerview/widget/RecyclerView$ItemBackgroundHolder;->mActiveBg:Ljava/lang/Object;

    check-cast v3, Landroidx/appcompat/graphics/drawable/SeslRecoilDrawable;

    new-instance v7, Landroidx/recyclerview/widget/RecyclerView$ItemBackgroundHolder;

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    iput-object v2, v7, Landroidx/recyclerview/widget/RecyclerView$ItemBackgroundHolder;->mActiveBg:Ljava/lang/Object;

    iget-object v2, v3, Landroidx/appcompat/graphics/drawable/SeslRecoilDrawable;->mListener:Landroidx/recyclerview/widget/RecyclerView$ItemBackgroundHolder;

    if-nez v2, :cond_3b

    iput-object v7, v3, Landroidx/appcompat/graphics/drawable/SeslRecoilDrawable;->mListener:Landroidx/recyclerview/widget/RecyclerView$ItemBackgroundHolder;

    :cond_3b
    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimatorHolder:Landroidx/appcompat/animation/SeslRecoilAnimator$Holder;

    invoke-virtual {v2, v1}, Landroidx/appcompat/animation/SeslRecoilAnimator$Holder;->setPress(Landroid/view/View;)V

    :goto_11
    invoke-virtual {v5}, Landroid/view/MotionEvent;->recycle()V

    iget v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mScrollState:I

    if-ne v0, v6, :cond_3c

    move v4, v6

    :cond_3c
    return v4
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
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

    :cond_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->pageScroll$1(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->pageScroll$1(I)V

    goto :goto_0

    :cond_2
    iput-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mIsCtrlKeyPressed:Z

    goto :goto_0

    :cond_3
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView;->pageScroll$1(I)V

    goto :goto_0

    :cond_4
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->pageScroll$1(I)V

    :cond_5
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public final onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/16 v0, 0x71

    if-eq p1, v0, :cond_0

    const/16 v0, 0x72

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mIsCtrlKeyPressed:Z

    :goto_0
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public onLayout(ZIIII)V
    .locals 3

    const-string p2, "RV OnLayout"

    invoke-static {p2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->dispatchLayout()V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    const/4 p2, 0x1

    iput-boolean p2, p0, Landroidx/recyclerview/widget/RecyclerView;->mFirstLayoutComplete:Z

    iget-object p3, p0, Landroidx/recyclerview/widget/RecyclerView;->mFastScroller:Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;

    const/4 p4, 0x2

    if-eqz p3, :cond_3

    iget-object p5, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-eqz p5, :cond_3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p5

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    iget v1, p3, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mOldChildCount:I

    iget-object v2, p3, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v1, :cond_0

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    iput v1, p3, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mOldChildCount:I

    :cond_0
    iget v1, p3, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mOldItemCount:I

    if-ne v1, v0, :cond_1

    iget v1, p3, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mOldChildCount:I

    if-eq v1, p5, :cond_3

    :cond_1
    iput v0, p3, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mOldItemCount:I

    iput p5, p3, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mOldChildCount:I

    sub-int v1, v0, p5

    if-lez v1, :cond_2

    iget v1, p3, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mState:I

    if-eq v1, p4, :cond_2

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->findFirstVisibleItemPosition()I

    move-result v1

    invoke-virtual {p3, v1, p5, v0}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->getPosFromItemCount(III)F

    move-result v0

    invoke-virtual {p3, v0}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->setThumbPos(F)V

    :cond_2
    invoke-virtual {p3, p5}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->updateLongList(I)V

    :cond_3
    if-eqz p1, :cond_c

    iput-boolean p2, p0, Landroidx/recyclerview/widget/RecyclerView;->mSizeChange:Z

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x7f071134

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mSeslOverlayFeatureHeight:I

    iget-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mEnableGoToTop:Z

    const/4 p3, 0x0

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result p1

    iget p5, p0, Landroidx/recyclerview/widget/RecyclerView;->mGoToTopSize:I

    sub-int/2addr p1, p5

    iget p5, p0, Landroidx/recyclerview/widget/RecyclerView;->mGoToTopBottomPadding:I

    sub-int/2addr p1, p5

    if-gez p1, :cond_4

    iput p3, p0, Landroidx/recyclerview/widget/RecyclerView;->mGoToTopImmersiveBottomPadding:I

    const-string p1, "The Immersive padding value (0) was too large to draw GoToTop."

    const-string p4, "SeslRecyclerView"

    invoke-static {p4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    iput p3, p0, Landroidx/recyclerview/widget/RecyclerView;->mGoToTopImmersiveBottomPadding:I

    iget p5, p0, Landroidx/recyclerview/widget/RecyclerView;->mGoToTopState:I

    if-eqz p5, :cond_5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result p5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v0

    sub-int/2addr p5, v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v0

    sub-int/2addr p5, v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v0

    div-int/2addr p5, p4

    add-int/2addr p5, v0

    iget-object p4, p0, Landroidx/recyclerview/widget/RecyclerView;->mGoToTopRect:Landroid/graphics/Rect;

    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mGoToTopSize:I

    div-int/lit8 v1, v0, 0x2

    sub-int v2, p5, v1

    add-int/2addr v1, p5

    add-int/2addr v0, p1

    invoke-virtual {p4, v2, p1, v1, v0}, Landroid/graphics/Rect;->set(IIII)V

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mGoToTopView:Landroid/widget/ImageView;

    iget-object p4, p0, Landroidx/recyclerview/widget/RecyclerView;->mGoToTopRect:Landroid/graphics/Rect;

    iget p5, p4, Landroid/graphics/Rect;->left:I

    iget v0, p4, Landroid/graphics/Rect;->top:I

    iget v1, p4, Landroid/graphics/Rect;->right:I

    iget p4, p4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, p5, v0, v1, p4}, Landroid/widget/ImageView;->layout(IIII)V

    :cond_5
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mFastScroller:Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;

    if-eqz p1, :cond_6

    iget-object p4, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-eqz p4, :cond_6

    iput p3, p1, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mImmersiveBottomPadding:I

    invoke-virtual {p1}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->updateOffsetAndRange()V

    :cond_6
    :goto_0
    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setupGoToTop$1(I)V

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView;->autoHide(I)V

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result p1

    if-nez p1, :cond_b

    iput-boolean p3, p0, Landroidx/recyclerview/widget/RecyclerView;->mHasNestedScrollRange:Z

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    :goto_1
    if-eqz p1, :cond_a

    instance-of p4, p1, Landroid/view/ViewGroup;

    if-eqz p4, :cond_a

    instance-of p4, p1, Landroidx/core/view/NestedScrollingParent2;

    if-eqz p4, :cond_9

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p4

    :goto_2
    if-eqz p4, :cond_9

    invoke-virtual {p4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p5

    const-string v0, "CoordinatorLayout"

    invoke-virtual {p5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_8

    check-cast p1, Landroid/view/ViewGroup;

    iget-object p4, p0, Landroidx/recyclerview/widget/RecyclerView;->mWindowOffsets:[I

    invoke-virtual {p1, p4}, Landroid/view/ViewGroup;->getLocationInWindow([I)V

    iget-object p4, p0, Landroidx/recyclerview/widget/RecyclerView;->mWindowOffsets:[I

    aget p4, p4, p2

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result p1

    add-int/2addr p1, p4

    iget-object p4, p0, Landroidx/recyclerview/widget/RecyclerView;->mWindowOffsets:[I

    invoke-virtual {p0, p4}, Landroid/view/ViewGroup;->getLocationInWindow([I)V

    iget-object p4, p0, Landroidx/recyclerview/widget/RecyclerView;->mWindowOffsets:[I

    aget p4, p4, p2

    iput p4, p0, Landroidx/recyclerview/widget/RecyclerView;->mInitialTopOffsetOfScreen:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result p4

    iget p5, p0, Landroidx/recyclerview/widget/RecyclerView;->mInitialTopOffsetOfScreen:I

    sub-int/2addr p1, p5

    sub-int/2addr p4, p1

    iput p4, p0, Landroidx/recyclerview/widget/RecyclerView;->mRemainNestedScrollRange:I

    if-gez p4, :cond_7

    iput p3, p0, Landroidx/recyclerview/widget/RecyclerView;->mRemainNestedScrollRange:I

    :cond_7
    iget p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mRemainNestedScrollRange:I

    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mNestedScrollRange:I

    iput-boolean p2, p0, Landroidx/recyclerview/widget/RecyclerView;->mHasNestedScrollRange:Z

    goto :goto_3

    :cond_8
    invoke-virtual {p4}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p4

    goto :goto_2

    :cond_9
    invoke-interface {p1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    goto :goto_1

    :cond_a
    :goto_3
    iget-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mHasNestedScrollRange:Z

    if-nez p1, :cond_c

    iput p3, p0, Landroidx/recyclerview/widget/RecyclerView;->mInitialTopOffsetOfScreen:I

    iput p3, p0, Landroidx/recyclerview/widget/RecyclerView;->mRemainNestedScrollRange:I

    iput p3, p0, Landroidx/recyclerview/widget/RecyclerView;->mNestedScrollRange:I

    goto :goto_4

    :cond_b
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result p1

    if-eqz p1, :cond_c

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mWindowOffsets:[I

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getLocationInWindow([I)V

    iput p3, p0, Landroidx/recyclerview/widget/RecyclerView;->mRemainNestedScrollRange:I

    iput p3, p0, Landroidx/recyclerview/widget/RecyclerView;->mNestedScrollRange:I

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mWindowOffsets:[I

    aget p1, p1, p3

    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mInitialTopOffsetOfScreen:I

    :cond_c
    :goto_4
    return-void
.end method

.method public onMeasure(II)V
    .locals 5

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->defaultOnMeasure(II)V

    return-void

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

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->isAutoMeasureEnabled()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_6

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v4, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->defaultOnMeasure(II)V

    const/high16 v4, 0x40000000    # 2.0f

    if-ne v0, v4, :cond_1

    if-ne v3, v4, :cond_1

    move v2, v1

    :cond_1
    iput-boolean v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mLastAutoMeasureSkippedDueToExact:Z

    if-nez v2, :cond_5

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    iget v0, v0, Landroidx/recyclerview/widget/RecyclerView$State;->mLayoutStep:I

    if-ne v0, v1, :cond_3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->dispatchLayoutStep1()V

    :cond_3
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->setMeasureSpecs(II)V

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    iput-boolean v1, v0, Landroidx/recyclerview/widget/RecyclerView$State;->mIsMeasuring:Z

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->dispatchLayoutStep2()V

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->setMeasuredDimensionFromChildren(II)V

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->shouldMeasureTwice()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v2

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v3

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->setMeasureSpecs(II)V

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    iput-boolean v1, v0, Landroidx/recyclerview/widget/RecyclerView$State;->mIsMeasuring:Z

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->dispatchLayoutStep2()V

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->setMeasuredDimensionFromChildren(II)V

    :cond_4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result p1

    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mLastAutoMeasureNonExactMeasuredWidth:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result p1

    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mLastAutoMeasureNonExactMeasuredHeight:I

    goto :goto_4

    :cond_5
    :goto_0
    return-void

    :cond_6
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mHasFixedSize:Z

    if-eqz v0, :cond_7

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->defaultOnMeasure(II)V

    return-void

    :cond_7
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapterUpdateDuringMeasure:Z

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->startInterceptRequestLayout()V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->onEnterLayoutOrScroll()V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->processAdapterUpdatesAndSetAnimationFlags()V

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView;->onExitLayoutOrScroll(Z)V

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    iget-boolean v3, v0, Landroidx/recyclerview/widget/RecyclerView$State;->mRunPredictiveAnimations:Z

    if-eqz v3, :cond_8

    iput-boolean v1, v0, Landroidx/recyclerview/widget/RecyclerView$State;->mInPreLayout:Z

    goto :goto_1

    :cond_8
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapterHelper:Landroidx/recyclerview/widget/AdapterHelper;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/AdapterHelper;->consumeUpdatesInOnePass()V

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    iput-boolean v2, v0, Landroidx/recyclerview/widget/RecyclerView$State;->mInPreLayout:Z

    :goto_1
    iput-boolean v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapterUpdateDuringMeasure:Z

    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView;->stopInterceptRequestLayout(Z)V

    goto :goto_2

    :cond_9
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    iget-boolean v0, v0, Landroidx/recyclerview/widget/RecyclerView$State;->mRunPredictiveAnimations:Z

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    return-void

    :cond_a
    :goto_2
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_b

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    iput v0, v1, Landroidx/recyclerview/widget/RecyclerView$State;->mItemCount:I

    goto :goto_3

    :cond_b
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    iput v2, v0, Landroidx/recyclerview/widget/RecyclerView$State;->mItemCount:I

    :goto_3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->startInterceptRequestLayout()V

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->defaultOnMeasure(II)V

    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView;->stopInterceptRequestLayout(Z)V

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    iput-boolean v2, p0, Landroidx/recyclerview/widget/RecyclerView$State;->mInPreLayout:Z

    :goto_4
    return-void
.end method

.method public final onPointerUp(Landroid/view/MotionEvent;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iget v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mScrollPointerId:I

    if-ne v1, v2, :cond_1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mScrollPointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mLastTouchX:I

    iput v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mInitialTouchX:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    add-float/2addr p1, v2

    float-to-int p1, p1

    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mLastTouchY:I

    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mInitialTouchY:I

    :cond_1
    return-void
.end method

.method public final onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->isComputingLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z

    move-result p0

    return p0
.end method

.method public final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    instance-of v0, p1, Landroidx/recyclerview/widget/RecyclerView$SavedState;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    :cond_0
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$SavedState;

    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mPendingSavedState:Landroidx/recyclerview/widget/RecyclerView$SavedState;

    iget-object p1, p1, Landroidx/customview/view/AbsSavedState;->mSuperState:Landroid/os/Parcelable;

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    return-void
.end method

.method public final onRtlPropertiesChanged(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRtlPropertiesChanged(I)V

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mFastScroller:Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getVerticalScrollbarPosition()I

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->setScrollbarPosition(I)V

    :cond_0
    return-void
.end method

.method public final onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mIsNeedCheckLatency:Z

    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$SavedState;

    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/customview/view/AbsSavedState;-><init>(Landroid/os/Parcelable;)V

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mPendingSavedState:Landroidx/recyclerview/widget/RecyclerView$SavedState;

    if-eqz v1, :cond_0

    iget-object p0, v1, Landroidx/recyclerview/widget/RecyclerView$SavedState;->mLayoutState:Landroid/os/Parcelable;

    iput-object p0, v0, Landroidx/recyclerview/widget/RecyclerView$SavedState;->mLayoutState:Landroid/os/Parcelable;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object p0

    iput-object p0, v0, Landroidx/recyclerview/widget/RecyclerView$SavedState;->mLayoutState:Landroid/os/Parcelable;

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    iput-object p0, v0, Landroidx/recyclerview/widget/RecyclerView$SavedState;->mLayoutState:Landroid/os/Parcelable;

    :goto_0
    return-object v0
.end method

.method public final onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    if-ne p1, p3, :cond_0

    if-eq p2, p4, :cond_4

    :cond_0
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mFastScroller:Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;

    if-eqz p1, :cond_3

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->canScrollList(I)Z

    move-result p3

    const/4 p4, -0x1

    if-nez p3, :cond_2

    invoke-virtual {p1, p4}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->canScrollList(I)Z

    move-result p3

    if-eqz p3, :cond_1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :cond_2
    :goto_0
    iput-boolean p2, p1, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mLongList:Z

    iput p4, p1, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mListScrollRange:I

    iput p4, p1, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mListScrollExtent:I

    invoke-virtual {p1}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->updateLayout()V

    :cond_3
    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    :cond_4
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 24

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    iget-boolean v0, v6, Landroidx/recyclerview/widget/RecyclerView;->mLayoutSuppressed:Z

    const/4 v8, 0x0

    if-nez v0, :cond_0

    iget-boolean v0, v6, Landroidx/recyclerview/widget/RecyclerView;->mIgnoreMotionEventTillDown:Z

    if-eqz v0, :cond_1

    :cond_0
    move v0, v8

    goto/16 :goto_29

    :cond_1
    iget-object v0, v6, Landroidx/recyclerview/widget/RecyclerView;->mInterceptingOnItemTouchListener:Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;

    const/4 v9, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-nez v0, :cond_3

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    move v0, v8

    goto :goto_0

    :cond_2
    invoke-virtual/range {p0 .. p1}, Landroidx/recyclerview/widget/RecyclerView;->findInterceptingOnItemTouchListener(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    :cond_3
    invoke-interface {v0, v7}, Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;->onTouchEvent(Landroid/view/MotionEvent;)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v2, :cond_4

    if-ne v0, v9, :cond_5

    :cond_4
    iput-object v1, v6, Landroidx/recyclerview/widget/RecyclerView;->mInterceptingOnItemTouchListener:Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;

    :cond_5
    move v0, v9

    :goto_0
    if-eqz v0, :cond_6

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView;->resetScroll()V

    invoke-virtual {v6, v8}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    return v9

    :cond_6
    iget-object v0, v6, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    if-nez v0, :cond_7

    return v8

    :cond_7
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v10

    iget-object v0, v6, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v11

    iget-object v0, v6, Landroidx/recyclerview/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_8

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, v6, Landroidx/recyclerview/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_8
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v3

    if-nez v0, :cond_9

    iget-object v4, v6, Landroidx/recyclerview/widget/RecyclerView;->mNestedOffsets:[I

    aput v8, v4, v9

    aput v8, v4, v8

    :cond_9
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v12

    iget-object v4, v6, Landroidx/recyclerview/widget/RecyclerView;->mNestedOffsets:[I

    aget v5, v4, v8

    int-to-float v5, v5

    aget v4, v4, v9

    int-to-float v4, v4

    invoke-virtual {v12, v5, v4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    invoke-virtual {v7, v8}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_a

    move v4, v9

    goto :goto_1

    :cond_a
    move v4, v8

    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v13

    and-int/lit8 v13, v13, 0x20

    if-eqz v13, :cond_b

    move v13, v9

    goto :goto_2

    :cond_b
    move v13, v8

    :goto_2
    iget-object v14, v6, Landroidx/recyclerview/widget/RecyclerView;->mFastScroller:Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;

    if-eqz v14, :cond_c

    invoke-virtual {v14, v7}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v14

    if-eqz v14, :cond_c

    invoke-virtual {v12}, Landroid/view/MotionEvent;->recycle()V

    return v9

    :cond_c
    const-string v14, "SeslRecyclerView"

    const/high16 v15, 0x3f000000    # 0.5f

    if-eqz v0, :cond_57

    if-eq v0, v9, :cond_21

    if-eq v0, v5, :cond_11

    if-eq v0, v2, :cond_10

    const/4 v1, 0x5

    if-eq v0, v1, :cond_f

    const/4 v1, 0x6

    if-eq v0, v1, :cond_e

    :cond_d
    :goto_3
    move-object/from16 v20, v12

    goto/16 :goto_27

    :cond_e
    invoke-virtual/range {p0 .. p1}, Landroidx/recyclerview/widget/RecyclerView;->onPointerUp(Landroid/view/MotionEvent;)V

    goto :goto_3

    :cond_f
    invoke-virtual {v7, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, v6, Landroidx/recyclerview/widget/RecyclerView;->mScrollPointerId:I

    invoke-virtual {v7, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    add-float/2addr v0, v15

    float-to-int v0, v0

    iput v0, v6, Landroidx/recyclerview/widget/RecyclerView;->mLastTouchX:I

    iput v0, v6, Landroidx/recyclerview/widget/RecyclerView;->mInitialTouchX:I

    invoke-virtual {v7, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    add-float/2addr v0, v15

    float-to-int v0, v0

    iput v0, v6, Landroidx/recyclerview/widget/RecyclerView;->mLastTouchY:I

    iput v0, v6, Landroidx/recyclerview/widget/RecyclerView;->mInitialTouchY:I

    goto :goto_3

    :cond_10
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView;->resetScroll()V

    invoke-virtual {v6, v8}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    goto :goto_3

    :cond_11
    if-eqz v4, :cond_12

    if-eqz v13, :cond_12

    goto :goto_3

    :cond_12
    iget v0, v6, Landroidx/recyclerview/widget/RecyclerView;->mScrollPointerId:I

    invoke-virtual {v7, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-gez v0, :cond_13

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error processing scroll; pointer index for id "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, v6, Landroidx/recyclerview/widget/RecyclerView;->mScrollPointerId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " not found. Did any MotionEvents get skipped?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v12}, Landroid/view/MotionEvent;->recycle()V

    return v8

    :cond_13
    invoke-virtual {v7, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    add-float/2addr v1, v15

    float-to-int v13, v1

    invoke-virtual {v7, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    add-float/2addr v0, v15

    float-to-int v14, v0

    iget v0, v6, Landroidx/recyclerview/widget/RecyclerView;->mLastTouchX:I

    sub-int/2addr v0, v13

    iget v1, v6, Landroidx/recyclerview/widget/RecyclerView;->mLastTouchY:I

    sub-int/2addr v1, v14

    iget v2, v6, Landroidx/recyclerview/widget/RecyclerView;->mScrollState:I

    if-eq v2, v9, :cond_18

    if-eqz v10, :cond_15

    if-lez v0, :cond_14

    iget v2, v6, Landroidx/recyclerview/widget/RecyclerView;->mTouchSlop:I

    sub-int/2addr v0, v2

    invoke-static {v8, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_4

    :cond_14
    iget v2, v6, Landroidx/recyclerview/widget/RecyclerView;->mTouchSlop:I

    add-int/2addr v0, v2

    invoke-static {v8, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_4
    if-eqz v0, :cond_15

    move v2, v9

    goto :goto_5

    :cond_15
    move v2, v8

    :goto_5
    if-eqz v11, :cond_17

    if-lez v1, :cond_16

    iget v3, v6, Landroidx/recyclerview/widget/RecyclerView;->mTouchSlop:I

    sub-int/2addr v1, v3

    invoke-static {v8, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_6

    :cond_16
    iget v3, v6, Landroidx/recyclerview/widget/RecyclerView;->mTouchSlop:I

    add-int/2addr v1, v3

    invoke-static {v8, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    :goto_6
    if-eqz v1, :cond_17

    move v2, v9

    :cond_17
    if-eqz v2, :cond_18

    invoke-virtual {v6, v9}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    :cond_18
    iget v2, v6, Landroidx/recyclerview/widget/RecyclerView;->mScrollState:I

    if-ne v2, v9, :cond_d

    iget-object v2, v6, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    aput v8, v2, v8

    aput v8, v2, v9

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v6, v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->releaseHorizontalGlow(FI)I

    move-result v2

    sub-int v15, v0, v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {v6, v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->releaseVerticalGlow$1(FI)I

    move-result v0

    sub-int v16, v1, v0

    if-eqz v10, :cond_19

    move v1, v15

    goto :goto_7

    :cond_19
    move v1, v8

    :goto_7
    if-eqz v11, :cond_1a

    move/from16 v2, v16

    goto :goto_8

    :cond_1a
    move v2, v8

    :goto_8
    iget-object v4, v6, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    iget-object v5, v6, Landroidx/recyclerview/widget/RecyclerView;->mScrollOffset:[I

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Landroidx/recyclerview/widget/RecyclerView;->dispatchNestedPreScroll(III[I[I)Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, v6, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    aget v1, v0, v8

    sub-int/2addr v15, v1

    aget v0, v0, v9

    sub-int v16, v16, v0

    iget-object v0, v6, Landroidx/recyclerview/widget/RecyclerView;->mNestedOffsets:[I

    aget v1, v0, v8

    iget-object v2, v6, Landroidx/recyclerview/widget/RecyclerView;->mScrollOffset:[I

    aget v3, v2, v8

    add-int/2addr v1, v3

    aput v1, v0, v8

    aget v1, v0, v9

    aget v2, v2, v9

    add-int/2addr v1, v2

    aput v1, v0, v9

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v9}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_1b
    move/from16 v0, v16

    iget-object v1, v6, Landroidx/recyclerview/widget/RecyclerView;->mScrollOffset:[I

    aget v2, v1, v8

    sub-int/2addr v13, v2

    iput v13, v6, Landroidx/recyclerview/widget/RecyclerView;->mLastTouchX:I

    aget v1, v1, v9

    sub-int/2addr v14, v1

    iput v14, v6, Landroidx/recyclerview/widget/RecyclerView;->mLastTouchY:I

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getFlags()I

    move-result v1

    const/high16 v2, 0x2000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_1c

    iget-object v0, v6, Landroidx/recyclerview/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, v12}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    iput-boolean v9, v6, Landroidx/recyclerview/widget/RecyclerView;->mIsSkipMoveEvent:Z

    invoke-virtual {v12}, Landroid/view/MotionEvent;->recycle()V

    return v8

    :cond_1c
    if-eqz v10, :cond_1d

    move v1, v15

    goto :goto_9

    :cond_1d
    move v1, v8

    :goto_9
    if-eqz v11, :cond_1e

    move v2, v0

    goto :goto_a

    :cond_1e
    move v2, v8

    :goto_a
    invoke-virtual {v6, v1, v2, v7, v8}, Landroidx/recyclerview/widget/RecyclerView;->scrollByInternal(IILandroid/view/MotionEvent;I)Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1, v9}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_1f
    iget-object v1, v6, Landroidx/recyclerview/widget/RecyclerView;->mGapWorker:Landroidx/recyclerview/widget/GapWorker;

    if-eqz v1, :cond_d

    if-nez v15, :cond_20

    if-eqz v0, :cond_d

    :cond_20
    invoke-virtual {v1, v6, v15, v0}, Landroidx/recyclerview/widget/GapWorker;->postFromTraversal(Landroidx/recyclerview/widget/RecyclerView;II)V

    goto/16 :goto_3

    :cond_21
    iget-object v0, v6, Landroidx/recyclerview/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, v12}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    iget-object v0, v6, Landroidx/recyclerview/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v2, v6, Landroidx/recyclerview/widget/RecyclerView;->mMaxFlingVelocity:I

    int-to-float v2, v2

    const/16 v3, 0x3e8

    invoke-virtual {v0, v3, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    const/4 v0, 0x0

    if-eqz v10, :cond_22

    iget-object v2, v6, Landroidx/recyclerview/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v3, v6, Landroidx/recyclerview/widget/RecyclerView;->mScrollPointerId:I

    invoke-virtual {v2, v3}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v2

    neg-float v2, v2

    goto :goto_b

    :cond_22
    move v2, v0

    :goto_b
    if-eqz v11, :cond_23

    iget-object v3, v6, Landroidx/recyclerview/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v4, v6, Landroidx/recyclerview/widget/RecyclerView;->mScrollPointerId:I

    invoke-virtual {v3, v4}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v3

    neg-float v3, v3

    goto :goto_c

    :cond_23
    move v3, v0

    :goto_c
    cmpl-float v4, v2, v0

    if-nez v4, :cond_25

    cmpl-float v4, v3, v0

    if-eqz v4, :cond_24

    goto :goto_d

    :cond_24
    move/from16 v23, v3

    move v0, v8

    move-object/from16 v20, v12

    move-object/from16 v21, v14

    goto/16 :goto_25

    :cond_25
    :goto_d
    float-to-int v2, v2

    float-to-int v4, v3

    iget-object v5, v6, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    if-nez v5, :cond_27

    const-string v0, "Cannot fling without a LayoutManager set. Call setLayoutManager with a non-null argument."

    invoke-static {v14, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_26
    :goto_e
    move/from16 v23, v3

    move-object/from16 v20, v12

    move-object/from16 v21, v14

    goto/16 :goto_24

    :cond_27
    iget-boolean v7, v6, Landroidx/recyclerview/widget/RecyclerView;->mLayoutSuppressed:Z

    if-eqz v7, :cond_28

    :goto_f
    goto :goto_e

    :cond_28
    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v5

    iget-object v7, v6, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v7}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v7

    if-eqz v5, :cond_29

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v10

    iget v11, v6, Landroidx/recyclerview/widget/RecyclerView;->mMinFlingVelocity:I

    if-ge v10, v11, :cond_2a

    :cond_29
    move v2, v8

    :cond_2a
    if-eqz v7, :cond_2b

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v10

    iget v11, v6, Landroidx/recyclerview/widget/RecyclerView;->mMinFlingVelocity:I

    if-ge v10, v11, :cond_2c

    :cond_2b
    move v4, v8

    :cond_2c
    if-nez v2, :cond_2d

    if-nez v4, :cond_2d

    goto :goto_f

    :cond_2d
    if-eqz v2, :cond_30

    iget-object v10, v6, Landroidx/recyclerview/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    if-eqz v10, :cond_2f

    invoke-static {v10}, Landroidx/core/widget/EdgeEffectCompat;->getDistance(Landroid/widget/EdgeEffect;)F

    move-result v10

    cmpl-float v10, v10, v0

    if-eqz v10, :cond_2f

    iget-object v10, v6, Landroidx/recyclerview/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    neg-int v11, v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v13

    invoke-virtual {v6, v10, v11, v13}, Landroidx/recyclerview/widget/RecyclerView;->shouldAbsorb(Landroid/widget/EdgeEffect;II)Z

    move-result v10

    if-eqz v10, :cond_2e

    iget-object v2, v6, Landroidx/recyclerview/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v2, v11}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    :goto_10
    move v2, v8

    :cond_2e
    move v10, v2

    move v2, v8

    goto :goto_11

    :cond_2f
    iget-object v10, v6, Landroidx/recyclerview/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    if-eqz v10, :cond_30

    invoke-static {v10}, Landroidx/core/widget/EdgeEffectCompat;->getDistance(Landroid/widget/EdgeEffect;)F

    move-result v10

    cmpl-float v10, v10, v0

    if-eqz v10, :cond_30

    iget-object v10, v6, Landroidx/recyclerview/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v11

    invoke-virtual {v6, v10, v2, v11}, Landroidx/recyclerview/widget/RecyclerView;->shouldAbsorb(Landroid/widget/EdgeEffect;II)Z

    move-result v10

    if-eqz v10, :cond_2e

    iget-object v10, v6, Landroidx/recyclerview/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v10, v2}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    goto :goto_10

    :cond_30
    move v10, v8

    :goto_11
    if-eqz v4, :cond_33

    iget-object v11, v6, Landroidx/recyclerview/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    if-eqz v11, :cond_32

    invoke-static {v11}, Landroidx/core/widget/EdgeEffectCompat;->getDistance(Landroid/widget/EdgeEffect;)F

    move-result v11

    cmpl-float v11, v11, v0

    if-eqz v11, :cond_32

    iget-object v11, v6, Landroidx/recyclerview/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    neg-int v13, v4

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v15

    invoke-virtual {v6, v11, v13, v15}, Landroidx/recyclerview/widget/RecyclerView;->shouldAbsorb(Landroid/widget/EdgeEffect;II)Z

    move-result v11

    if-eqz v11, :cond_31

    iget-object v4, v6, Landroidx/recyclerview/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v4, v13}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    :goto_12
    move v4, v8

    :cond_31
    move v11, v8

    goto :goto_13

    :cond_32
    iget-object v11, v6, Landroidx/recyclerview/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    if-eqz v11, :cond_33

    invoke-static {v11}, Landroidx/core/widget/EdgeEffectCompat;->getDistance(Landroid/widget/EdgeEffect;)F

    move-result v11

    cmpl-float v11, v11, v0

    if-eqz v11, :cond_33

    iget-object v11, v6, Landroidx/recyclerview/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v13

    invoke-virtual {v6, v11, v4, v13}, Landroidx/recyclerview/widget/RecyclerView;->shouldAbsorb(Landroid/widget/EdgeEffect;II)Z

    move-result v11

    if-eqz v11, :cond_31

    iget-object v11, v6, Landroidx/recyclerview/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v11, v4}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    goto :goto_12

    :cond_33
    move v11, v4

    move v4, v8

    :goto_13
    if-nez v10, :cond_34

    if-eqz v4, :cond_35

    :cond_34
    iget v13, v6, Landroidx/recyclerview/widget/RecyclerView;->mMaxFlingVelocity:I

    neg-int v15, v13

    invoke-static {v10, v13}, Ljava/lang/Math;->min(II)I

    move-result v10

    invoke-static {v15, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    iget v13, v6, Landroidx/recyclerview/widget/RecyclerView;->mMaxFlingVelocity:I

    neg-int v15, v13

    invoke-static {v4, v13}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v15, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget-object v13, v6, Landroidx/recyclerview/widget/RecyclerView;->mViewFlinger:Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;

    invoke-virtual {v13, v10, v4}, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->fling(II)V

    :cond_35
    if-nez v2, :cond_37

    if-nez v11, :cond_37

    if-nez v10, :cond_36

    if-eqz v4, :cond_26

    :cond_36
    move/from16 v23, v3

    move-object/from16 v20, v12

    move-object/from16 v21, v14

    goto/16 :goto_26

    :cond_37
    int-to-float v4, v2

    int-to-float v10, v11

    invoke-virtual {v6, v4, v10}, Landroidx/recyclerview/widget/RecyclerView;->dispatchNestedPreFling(FF)Z

    move-result v13

    if-nez v13, :cond_26

    if-nez v5, :cond_39

    if-eqz v7, :cond_38

    goto :goto_14

    :cond_38
    move v13, v8

    goto :goto_15

    :cond_39
    :goto_14
    move v13, v9

    :goto_15
    invoke-virtual {v6, v4, v10, v13}, Landroidx/recyclerview/widget/RecyclerView;->dispatchNestedFling(FFZ)Z

    iget-object v4, v6, Landroidx/recyclerview/widget/RecyclerView;->mOnFlingListener:Landroidx/recyclerview/widget/RecyclerView$OnFlingListener;

    if-eqz v4, :cond_54

    check-cast v4, Landroidx/recyclerview/widget/PagerSnapHelper;

    iget-object v10, v4, Landroidx/recyclerview/widget/PagerSnapHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v10}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v10

    if-nez v10, :cond_3a

    goto/16 :goto_22

    :cond_3a
    iget-object v15, v4, Landroidx/recyclerview/widget/PagerSnapHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v15}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v15

    if-nez v15, :cond_3b

    goto/16 :goto_22

    :cond_3b
    iget-object v15, v4, Landroidx/recyclerview/widget/PagerSnapHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v15}, Landroidx/recyclerview/widget/RecyclerView;->getMinFlingVelocity()I

    move-result v15

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-gt v1, v15, :cond_3c

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-le v1, v15, :cond_54

    :cond_3c
    instance-of v1, v10, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;

    if-nez v1, :cond_3d

    goto/16 :goto_22

    :cond_3d
    if-nez v1, :cond_3e

    const/4 v15, 0x0

    goto :goto_16

    :cond_3e
    new-instance v15, Landroidx/recyclerview/widget/PagerSnapHelper$1;

    iget-object v8, v4, Landroidx/recyclerview/widget/PagerSnapHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v15, v4, v8}, Landroidx/recyclerview/widget/PagerSnapHelper$1;-><init>(Landroidx/recyclerview/widget/PagerSnapHelper;Landroid/content/Context;)V

    :goto_16
    if-nez v15, :cond_3f

    goto/16 :goto_22

    :cond_3f
    invoke-virtual {v10}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v8

    if-nez v8, :cond_42

    :goto_17
    move/from16 v23, v3

    move-object/from16 v20, v12

    move-object/from16 v21, v14

    :cond_40
    :goto_18
    const/4 v0, -0x1

    :cond_41
    :goto_19
    const/4 v1, -0x1

    goto/16 :goto_21

    :cond_42
    invoke-virtual {v10}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v17

    if-eqz v17, :cond_43

    invoke-virtual {v4, v10}, Landroidx/recyclerview/widget/PagerSnapHelper;->getVerticalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper$1;

    move-result-object v4

    goto :goto_1a

    :cond_43
    invoke-virtual {v10}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v17

    if-eqz v17, :cond_44

    invoke-virtual {v4, v10}, Landroidx/recyclerview/widget/PagerSnapHelper;->getHorizontalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper$1;

    move-result-object v4

    goto :goto_1a

    :cond_44
    const/4 v4, 0x0

    :goto_1a
    if-nez v4, :cond_45

    goto :goto_17

    :cond_45
    invoke-virtual {v10}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    const/high16 v18, -0x80000000

    const v19, 0x7fffffff

    move-object/from16 v20, v12

    move-object/from16 v21, v14

    move/from16 v12, v18

    move/from16 v14, v19

    const/4 v9, 0x0

    const/16 v16, 0x0

    const/16 v18, 0x0

    :goto_1b
    if-ge v9, v0, :cond_49

    move/from16 v22, v0

    invoke-virtual {v10, v9}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_46

    move/from16 v23, v3

    goto :goto_1c

    :cond_46
    move/from16 v23, v3

    invoke-static {v0, v4}, Landroidx/recyclerview/widget/PagerSnapHelper;->distanceToCenter(Landroid/view/View;Landroidx/recyclerview/widget/OrientationHelper$1;)I

    move-result v3

    if-gtz v3, :cond_47

    if-le v3, v12, :cond_47

    move-object/from16 v18, v0

    move v12, v3

    :cond_47
    if-ltz v3, :cond_48

    if-ge v3, v14, :cond_48

    move-object/from16 v16, v0

    move v14, v3

    :cond_48
    :goto_1c
    add-int/lit8 v9, v9, 0x1

    move/from16 v0, v22

    move/from16 v3, v23

    goto :goto_1b

    :cond_49
    move/from16 v23, v3

    invoke-virtual {v10}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v0

    if-eqz v0, :cond_4b

    if-lez v2, :cond_4a

    :goto_1d
    const/4 v0, 0x1

    goto :goto_1e

    :cond_4a
    const/4 v0, 0x0

    goto :goto_1e

    :cond_4b
    if-lez v11, :cond_4a

    goto :goto_1d

    :goto_1e
    if-eqz v0, :cond_4c

    if-eqz v16, :cond_4c

    invoke-static/range {v16 .. v16}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v0

    goto :goto_19

    :cond_4c
    if-nez v0, :cond_4d

    if-eqz v18, :cond_4d

    invoke-static/range {v18 .. v18}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v0

    goto :goto_19

    :cond_4d
    if-eqz v0, :cond_4e

    move-object/from16 v16, v18

    :cond_4e
    if-nez v16, :cond_4f

    goto/16 :goto_18

    :cond_4f
    invoke-static/range {v16 .. v16}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v3

    invoke-virtual {v10}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v4

    if-eqz v1, :cond_51

    move-object v1, v10

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;

    const/4 v9, 0x1

    sub-int/2addr v4, v9

    invoke-interface {v1, v4}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;->computeScrollVectorForPosition(I)Landroid/graphics/PointF;

    move-result-object v1

    if-eqz v1, :cond_51

    iget v4, v1, Landroid/graphics/PointF;->x:F

    const/4 v9, 0x0

    cmpg-float v4, v4, v9

    if-ltz v4, :cond_50

    iget v1, v1, Landroid/graphics/PointF;->y:F

    cmpg-float v1, v1, v9

    if-gez v1, :cond_51

    :cond_50
    const/4 v1, 0x1

    goto :goto_1f

    :cond_51
    const/4 v1, 0x0

    :goto_1f
    if-ne v1, v0, :cond_52

    const/4 v0, -0x1

    goto :goto_20

    :cond_52
    const/4 v0, 0x1

    :goto_20
    add-int/2addr v0, v3

    if-ltz v0, :cond_40

    if-lt v0, v8, :cond_41

    goto/16 :goto_18

    :goto_21
    if-ne v0, v1, :cond_53

    goto :goto_23

    :cond_53
    iput v0, v15, Landroidx/recyclerview/widget/LinearSmoothScroller;->mTargetPosition:I

    invoke-virtual {v10, v15}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->startSmoothScroll(Landroidx/recyclerview/widget/LinearSmoothScroller;)V

    goto :goto_26

    :cond_54
    :goto_22
    move/from16 v23, v3

    move-object/from16 v20, v12

    move-object/from16 v21, v14

    :goto_23
    if-eqz v13, :cond_56

    if-eqz v7, :cond_55

    or-int/lit8 v5, v5, 0x2

    :cond_55
    const/4 v0, 0x1

    invoke-virtual {v6, v5, v0}, Landroidx/recyclerview/widget/RecyclerView;->startNestedScroll(II)V

    iget v0, v6, Landroidx/recyclerview/widget/RecyclerView;->mMaxFlingVelocity:I

    neg-int v1, v0

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v1, v6, Landroidx/recyclerview/widget/RecyclerView;->mMaxFlingVelocity:I

    neg-int v2, v1

    invoke-static {v11, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget-object v2, v6, Landroidx/recyclerview/widget/RecyclerView;->mViewFlinger:Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;

    invoke-virtual {v2, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->fling(II)V

    goto :goto_26

    :cond_56
    :goto_24
    const/4 v0, 0x0

    :goto_25
    invoke-virtual {v6, v0}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    :goto_26
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onTouchUp() velocity : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v3, v23

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

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

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, v21

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView;->resetScroll()V

    move-object/from16 v1, v20

    goto :goto_28

    :cond_57
    move v0, v8

    move-object/from16 v20, v12

    move-object v1, v14

    invoke-virtual {v7, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    iput v2, v6, Landroidx/recyclerview/widget/RecyclerView;->mScrollPointerId:I

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    add-float/2addr v0, v15

    float-to-int v0, v0

    iput v0, v6, Landroidx/recyclerview/widget/RecyclerView;->mLastTouchX:I

    iput v0, v6, Landroidx/recyclerview/widget/RecyclerView;->mInitialTouchX:I

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    add-float/2addr v0, v15

    float-to-int v0, v0

    iput v0, v6, Landroidx/recyclerview/widget/RecyclerView;->mLastTouchY:I

    iput v0, v6, Landroidx/recyclerview/widget/RecyclerView;->mInitialTouchY:I

    sget-boolean v0, Landroidx/recyclerview/widget/RecyclerView;->sVerboseLoggingEnabled:Z

    if-eqz v0, :cond_58

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "onTouch DOWN mInitialTouchX["

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v6, Landroidx/recyclerview/widget/RecyclerView;->mInitialTouchX:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] mInitialTouchY["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v6, Landroidx/recyclerview/widget/RecyclerView;->mInitialTouchY:I

    const-string v3, "] "

    invoke-static {v0, v2, v3, v1}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    :cond_58
    iget-boolean v0, v6, Landroidx/recyclerview/widget/RecyclerView;->mHasNestedScrollRange:Z

    if-eqz v0, :cond_59

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView;->adjustNestedScrollRange$1()V

    :cond_59
    if-eqz v11, :cond_5a

    or-int/lit8 v10, v10, 0x2

    :cond_5a
    const/4 v0, 0x0

    invoke-virtual {v6, v10, v0}, Landroidx/recyclerview/widget/RecyclerView;->startNestedScroll(II)V

    :goto_27
    iget-object v0, v6, Landroidx/recyclerview/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :goto_28
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    const/4 v0, 0x1

    :goto_29
    return v0
.end method

.method public final pageScroll$1(I)V
    .locals 4

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-nez v0, :cond_0

    const-string p0, "SeslRecyclerView"

    const-string p1, "No adapter attached; skipping pageScroll"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    if-gtz v0, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_5

    if-eq p1, v1, :cond_4

    const/4 v3, 0x2

    if-eq p1, v3, :cond_3

    const/4 v3, 0x3

    if-eq p1, v3, :cond_2

    return-void

    :cond_2
    add-int/lit8 p1, v0, -0x1

    goto :goto_0

    :cond_3
    move p1, v2

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->findLastVisibleItemPosition()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    add-int/2addr p1, v3

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->findFirstVisibleItemPosition()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    sub-int/2addr p1, v3

    :goto_0
    sub-int/2addr v0, v1

    if-le p1, v0, :cond_6

    move v2, v0

    goto :goto_1

    :cond_6
    if-gez p1, :cond_7

    goto :goto_1

    :cond_7
    move v2, p1

    :goto_1
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$1;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Landroidx/recyclerview/widget/RecyclerView$1;-><init>(ILandroidx/recyclerview/widget/RecyclerView;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final postAnimationRunner()V
    .locals 2

    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mPostedAnimatorRunner:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mIsAttached:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimatorRunner:Landroidx/recyclerview/widget/RecyclerView$1;

    sget-object v1, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    invoke-virtual {p0, v0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mPostedAnimatorRunner:Z

    :cond_0
    return-void
.end method

.method public final processAdapterUpdatesAndSetAnimationFlags()V
    .locals 6

    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapterHelper:Landroidx/recyclerview/widget/AdapterHelper;

    iget-object v2, v0, Landroidx/recyclerview/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/AdapterHelper;->recycleUpdateOpsAndClearList(Ljava/util/List;)V

    iget-object v2, v0, Landroidx/recyclerview/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/AdapterHelper;->recycleUpdateOpsAndClearList(Ljava/util/List;)V

    iput v1, v0, Landroidx/recyclerview/widget/AdapterHelper;->mExistingUpdateTypes:I

    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mDispatchItemsChangedEvent:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onItemsChanged()V

    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->supportsPredictiveItemAnimations()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapterHelper:Landroidx/recyclerview/widget/AdapterHelper;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/AdapterHelper;->preProcess()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapterHelper:Landroidx/recyclerview/widget/AdapterHelper;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/AdapterHelper;->consumeUpdatesInOnePass()V

    :goto_0
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemsAddedOrRemoved:Z

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

    iget-boolean v4, v4, Landroidx/recyclerview/widget/RecyclerView$Adapter;->mHasStableIds:Z

    if-eqz v4, :cond_6

    :cond_5
    move v4, v2

    goto :goto_3

    :cond_6
    move v4, v1

    :goto_3
    iput-boolean v4, v3, Landroidx/recyclerview/widget/RecyclerView$State;->mRunSimpleAnimations:Z

    if-eqz v4, :cond_7

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    if-eqz v0, :cond_7

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->supportsPredictiveItemAnimations()Z

    move-result p0

    if-eqz p0, :cond_7

    move v1, v2

    :cond_7
    iput-boolean v1, v3, Landroidx/recyclerview/widget/RecyclerView$State;->mRunPredictiveAnimations:Z

    return-void
.end method

.method public final processDataSetCompletelyChanged(Z)V
    .locals 5

    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mDispatchItemsChangedEvent:Z

    or-int/2addr p1, v0

    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mDispatchItemsChangedEvent:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x6

    if-ge v1, p1, :cond_1

    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    invoke-virtual {v3, v1}, Landroidx/recyclerview/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->addFlags(I)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->markItemDecorInsetsDirty()V

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    :goto_1
    if-ge v0, p1, :cond_3

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    if-eqz v1, :cond_2

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->addFlags(I)V

    const/16 v3, 0x400

    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->addFlags(I)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$Recycler;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-eqz p1, :cond_4

    iget-boolean p1, p1, Landroidx/recyclerview/widget/RecyclerView$Adapter;->mHasStableIds:Z

    if-nez p1, :cond_5

    :cond_4
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->recycleAndClearCachedViews()V

    :cond_5
    return-void
.end method

.method public final recordAnimationInfoIfBouncedHiddenView(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V
    .locals 3

    iget v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    iget-boolean v0, v0, Landroidx/recyclerview/widget/RecyclerView$State;->mTrackOldChangeHolders:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isUpdated()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChangedHolderKey(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)J

    move-result-wide v0

    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mViewInfoStore:Landroidx/recyclerview/widget/ViewInfoStore;

    iget-object v2, v2, Landroidx/recyclerview/widget/ViewInfoStore;->mOldChangedHolders:Landroidx/collection/LongSparseArray;

    invoke-virtual {v2, v0, v1, p1}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    :cond_0
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mViewInfoStore:Landroidx/recyclerview/widget/ViewInfoStore;

    iget-object p0, p0, Landroidx/recyclerview/widget/ViewInfoStore;->mLayoutHolderMap:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {p0, p1}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;

    if-nez v0, :cond_1

    invoke-static {}, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;->obtain()Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iput-object p2, v0, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;->preInfo:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    iget p0, v0, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;->flags:I

    or-int/lit8 p0, p0, 0x4

    iput p0, v0, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;->flags:I

    return-void
.end method

.method public final releaseHorizontalGlow(FI)I
    .locals 3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    int-to-float p2, p2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p2, v0

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-static {v0}, Landroidx/core/widget/EdgeEffectCompat;->getDistance(Landroid/widget/EdgeEffect;)F

    move-result v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->onRelease()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    neg-float p2, p2

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, p1

    invoke-static {v0, p2, v2}, Landroidx/core/widget/EdgeEffectCompat;->onPullDistance(Landroid/widget/EdgeEffect;FF)F

    move-result p1

    neg-float p1, p1

    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    invoke-static {p2}, Landroidx/core/widget/EdgeEffectCompat;->getDistance(Landroid/widget/EdgeEffect;)F

    move-result p2

    cmpl-float p2, p2, v1

    if-nez p2, :cond_1

    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p2}, Landroid/widget/EdgeEffect;->onRelease()V

    :cond_1
    move v1, p1

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    goto :goto_2

    :cond_2
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_5

    invoke-static {v0}, Landroidx/core/widget/EdgeEffectCompat;->getDistance(Landroid/widget/EdgeEffect;)F

    move-result v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->onRelease()V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    invoke-static {v0, p2, p1}, Landroidx/core/widget/EdgeEffectCompat;->onPullDistance(Landroid/widget/EdgeEffect;FF)F

    move-result p1

    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    invoke-static {p2}, Landroidx/core/widget/EdgeEffectCompat;->getDistance(Landroid/widget/EdgeEffect;)F

    move-result p2

    cmpl-float p2, p2, v1

    if-nez p2, :cond_4

    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p2}, Landroid/widget/EdgeEffect;->onRelease()V

    :cond_4
    move v1, p1

    :goto_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

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

.method public final releaseVerticalGlow$1(FI)I
    .locals 3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    int-to-float p2, p2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p2, v0

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-static {v0}, Landroidx/core/widget/EdgeEffectCompat;->getDistance(Landroid/widget/EdgeEffect;)F

    move-result v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->canScrollVertically(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->onRelease()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    neg-float p2, p2

    invoke-static {v0, p2, p1}, Landroidx/core/widget/EdgeEffectCompat;->onPullDistance(Landroid/widget/EdgeEffect;FF)F

    move-result p1

    neg-float p1, p1

    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    invoke-static {p2}, Landroidx/core/widget/EdgeEffectCompat;->getDistance(Landroid/widget/EdgeEffect;)F

    move-result p2

    cmpl-float p2, p2, v1

    if-nez p2, :cond_1

    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p2}, Landroid/widget/EdgeEffect;->onRelease()V

    :cond_1
    move v1, p1

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    goto :goto_2

    :cond_2
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_5

    invoke-static {v0}, Landroidx/core/widget/EdgeEffectCompat;->getDistance(Landroid/widget/EdgeEffect;)F

    move-result v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->canScrollVertically(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->onRelease()V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, p1

    invoke-static {v0, p2, v2}, Landroidx/core/widget/EdgeEffectCompat;->onPullDistance(Landroid/widget/EdgeEffect;FF)F

    move-result p1

    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-static {p2}, Landroidx/core/widget/EdgeEffectCompat;->getDistance(Landroid/widget/EdgeEffect;)F

    move-result p2

    cmpl-float p2, p2, v1

    if-nez p2, :cond_4

    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p2}, Landroid/widget/EdgeEffect;->onRelease()V

    :cond_4
    move v1, p1

    :goto_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

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

.method public final removeAndRecycleViews()V
    .locals 2

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->endAnimations()V

    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->removeAndRecycleAllViews(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_2

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->removeAndRecycleScrapInt(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    :cond_2
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->recycleAndClearCachedViews()V

    return-void
.end method

.method public final removeDetachedView(Landroid/view/View;Z)V
    .locals 2

    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isTmpDetached()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit16 v1, v1, -0x101

    iput v1, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "Called removeDetachedView with a view which is not flagged as tmp detached."

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {p0, p2}, Landroidx/recyclerview/widget/ChildHelper$$ExternalSyntheticOutline0;->m(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    sget-boolean v0, Landroidx/recyclerview/widget/RecyclerView;->sDebugAssertionsEnabled:Z

    if-nez v0, :cond_3

    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->dispatchChildDetached(Landroid/view/View;)V

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->removeDetachedView(Landroid/view/View;Z)V

    return-void

    :cond_3
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "No ViewHolder found for child: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {p0, v0}, Landroidx/recyclerview/widget/ChildHelper$$ExternalSyntheticOutline0;->m(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V
    .locals 2

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_0

    const-string v1, "Cannot remove item decoration during a scroll  or layout"

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

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

    :cond_2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->markItemDecorInsetsDirty()V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    return-void
.end method

.method public final removeItemDecorationAt(I)V
    .locals 2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getItemDecorationCount()I

    move-result v0

    if-ltz p1, :cond_0

    if-ge p1, v0, :cond_0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->getItemDecorationAt(I)Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    return-void

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

.method public final removeOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V
    .locals 0

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    if-eqz p0, :cond_0

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mSmoothScroller:Landroidx/recyclerview/widget/LinearSmoothScroller;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Landroidx/recyclerview/widget/LinearSmoothScroller;->mRunning:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->isComputingLayout()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->requestChildOnScreen(Landroid/view/View;Landroid/view/View;)V

    :cond_2
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method public final requestChildOnScreen(Landroid/view/View;Landroid/view/View;)V
    .locals 11

    if-eqz p2, :cond_0

    move-object v0, p2

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v1, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    if-eqz v1, :cond_1

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    iget-boolean v1, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->mInsetsDirty:Z

    if-nez v1, :cond_1

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->left:I

    iget v2, v1, Landroid/graphics/Rect;->right:I

    iget v3, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->right:I

    iget v2, v1, Landroid/graphics/Rect;->top:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->top:I

    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v0

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    :cond_1
    if-eqz p2, :cond_2

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p2, v0}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V

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

.method public final requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 6

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->requestChildRectangleOnScreen(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;Landroid/graphics/Rect;ZZ)Z

    move-result p0

    return p0
.end method

.method public final requestDisallowInterceptTouchEvent(Z)V
    .locals 3

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;

    invoke-interface {v2, p1}, Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;->onRequestDisallowInterceptTouchEvent(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    return-void
.end method

.method public final requestLayout()V
    .locals 1

    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mInterceptRequestLayoutDepth:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayoutSuppressed:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayoutWasDefered:Z

    :goto_0
    return-void
.end method

.method public final resetScroll()V
    .locals 2

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->stopNestedScroll(I)V

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    :cond_1
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    or-int/2addr v0, v1

    :cond_2
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    or-int/2addr v0, v1

    :cond_3
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    or-int/2addr v0, v1

    :cond_4
    if-eqz v0, :cond_5

    sget-object v0, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    :cond_5
    return-void
.end method

.method public final scrollBy(II)V
    .locals 3

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    if-nez v0, :cond_0

    const-string p0, "SeslRecyclerView"

    const-string p1, "Cannot scroll without a LayoutManager set. Call setLayoutManager with a non-null argument."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayoutSuppressed:Z

    if-eqz v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v0

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

    invoke-virtual {p0, p1, p2, v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->scrollByInternal(IILandroid/view/MotionEvent;I)Z

    :cond_5
    return-void
.end method

.method public final scrollByInternal(IILandroid/view/MotionEvent;I)Z
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView;->consumePendingUpdateOperations()V

    iget-object v4, v0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_0

    iget-object v4, v0, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    aput v6, v4, v6

    aput v6, v4, v5

    invoke-virtual {v0, v1, v2, v4}, Landroidx/recyclerview/widget/RecyclerView;->scrollStep(II[I)V

    iget-object v4, v0, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    aget v7, v4, v6

    aget v4, v4, v5

    sub-int v8, v1, v7

    sub-int v9, v2, v4

    goto :goto_0

    :cond_0
    move v4, v6

    move v7, v4

    move v8, v7

    move v9, v8

    :goto_0
    iget-object v10, v0, Landroidx/recyclerview/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_1

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->invalidate()V

    :cond_1
    iget-object v15, v0, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    aput v6, v15, v6

    aput v6, v15, v5

    iget-object v14, v0, Landroidx/recyclerview/widget/RecyclerView;->mScrollOffset:[I

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollingChildHelper()Landroidx/core/view/NestedScrollingChildHelper;

    move-result-object v10

    move v11, v7

    move v12, v4

    move v13, v8

    move-object/from16 v16, v14

    move v14, v9

    move-object/from16 v17, v15

    move-object/from16 v15, v16

    move/from16 v16, p4

    invoke-virtual/range {v10 .. v17}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedScrollInternal(IIII[II[I)Z

    move-result v10

    if-nez v10, :cond_2

    iget-object v10, v0, Landroidx/recyclerview/widget/RecyclerView;->mScrollOffset:[I

    aput v6, v10, v6

    aput v6, v10, v5

    :cond_2
    iget-object v10, v0, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    aget v11, v10, v6

    sub-int/2addr v8, v11

    aget v10, v10, v5

    sub-int/2addr v9, v10

    if-nez v11, :cond_4

    if-eqz v10, :cond_3

    goto :goto_1

    :cond_3
    move v10, v6

    goto :goto_2

    :cond_4
    :goto_1
    move v10, v5

    :goto_2
    iget v11, v0, Landroidx/recyclerview/widget/RecyclerView;->mLastTouchX:I

    iget-object v12, v0, Landroidx/recyclerview/widget/RecyclerView;->mScrollOffset:[I

    aget v13, v12, v6

    sub-int/2addr v11, v13

    iput v11, v0, Landroidx/recyclerview/widget/RecyclerView;->mLastTouchX:I

    iget v11, v0, Landroidx/recyclerview/widget/RecyclerView;->mLastTouchY:I

    aget v12, v12, v5

    sub-int/2addr v11, v12

    iput v11, v0, Landroidx/recyclerview/widget/RecyclerView;->mLastTouchY:I

    iget-object v11, v0, Landroidx/recyclerview/widget/RecyclerView;->mNestedOffsets:[I

    aget v14, v11, v6

    add-int/2addr v14, v13

    aput v14, v11, v6

    aget v13, v11, v5

    add-int/2addr v13, v12

    aput v13, v11, v5

    iget-boolean v11, v0, Landroidx/recyclerview/widget/RecyclerView;->mIsEdgeEffectEnabled:Z

    if-eqz v11, :cond_b

    iget-boolean v11, v0, Landroidx/recyclerview/widget/RecyclerView;->mPreventFirstGlow:Z

    if-nez v11, :cond_b

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getOverScrollMode()I

    move-result v11

    const/4 v12, 0x2

    if-eq v11, v12, :cond_b

    if-eqz v3, :cond_a

    const/16 v11, 0x2002

    invoke-static {v3, v11}, Landroidx/core/view/MotionEventCompat;->isFromSource(Landroid/view/MotionEvent;I)Z

    move-result v11

    if-nez v11, :cond_a

    invoke-virtual/range {p3 .. p3}, Landroid/view/MotionEvent;->getX()F

    move-result v11

    int-to-float v8, v8

    invoke-virtual/range {p3 .. p3}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    int-to-float v9, v9

    const/4 v12, 0x0

    cmpg-float v13, v8, v12

    const/high16 v14, 0x3f800000    # 1.0f

    if-gez v13, :cond_5

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView;->ensureLeftGlow()V

    iget-object v13, v0, Landroidx/recyclerview/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    neg-float v15, v8

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v15, v6

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v3, v6

    sub-float v3, v14, v3

    invoke-static {v13, v15, v3}, Landroidx/core/widget/EdgeEffectCompat;->onPullDistance(Landroid/widget/EdgeEffect;FF)F

    :goto_3
    move v3, v5

    goto :goto_4

    :cond_5
    cmpl-float v6, v8, v12

    if-lez v6, :cond_6

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView;->ensureRightGlow()V

    iget-object v6, v0, Landroidx/recyclerview/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v13

    int-to-float v13, v13

    div-float v13, v8, v13

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v15

    int-to-float v15, v15

    div-float/2addr v3, v15

    invoke-static {v6, v13, v3}, Landroidx/core/widget/EdgeEffectCompat;->onPullDistance(Landroid/widget/EdgeEffect;FF)F

    goto :goto_3

    :cond_6
    const/4 v3, 0x0

    :goto_4
    cmpg-float v6, v9, v12

    if-gez v6, :cond_7

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView;->ensureTopGlow()V

    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    neg-float v6, v9

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v13

    int-to-float v13, v13

    div-float/2addr v6, v13

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v13

    int-to-float v13, v13

    div-float/2addr v11, v13

    invoke-static {v3, v6, v11}, Landroidx/core/widget/EdgeEffectCompat;->onPullDistance(Landroid/widget/EdgeEffect;FF)F

    :goto_5
    move v3, v5

    goto :goto_6

    :cond_7
    cmpl-float v6, v9, v12

    if-lez v6, :cond_8

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView;->ensureBottomGlow()V

    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float v6, v9, v6

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v13

    int-to-float v13, v13

    div-float/2addr v11, v13

    sub-float/2addr v14, v11

    invoke-static {v3, v6, v14}, Landroidx/core/widget/EdgeEffectCompat;->onPullDistance(Landroid/widget/EdgeEffect;FF)F

    goto :goto_5

    :cond_8
    :goto_6
    iput-boolean v3, v0, Landroidx/recyclerview/widget/RecyclerView;->mEdgeEffectByDragging:Z

    if-nez v3, :cond_9

    cmpl-float v3, v8, v12

    if-nez v3, :cond_9

    cmpl-float v3, v9, v12

    if-eqz v3, :cond_a

    :cond_9
    sget-object v3, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    :cond_a
    invoke-virtual/range {p0 .. p2}, Landroidx/recyclerview/widget/RecyclerView;->considerReleasingGlowsOnScroll(II)V

    :cond_b
    if-nez v7, :cond_c

    if-eqz v4, :cond_d

    :cond_c
    invoke-virtual {v0, v7, v4}, Landroidx/recyclerview/widget/RecyclerView;->dispatchOnScrolled(II)V

    :cond_d
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->awakenScrollBars()Z

    move-result v1

    if-nez v1, :cond_e

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->invalidate()V

    :cond_e
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    instance-of v1, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    if-eqz v1, :cond_f

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->canScrollVertically(I)Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->canScrollVertically(I)Z

    move-result v1

    if-nez v1, :cond_f

    goto :goto_7

    :cond_f
    const/4 v2, 0x0

    goto :goto_8

    :cond_10
    :goto_7
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onScrollStateChanged(I)V

    :goto_8
    iput-boolean v2, v0, Landroidx/recyclerview/widget/RecyclerView;->mPreventFirstGlow:Z

    if-nez v10, :cond_12

    if-nez v7, :cond_12

    if-eqz v4, :cond_11

    goto :goto_9

    :cond_11
    move v5, v2

    :cond_12
    :goto_9
    return v5
.end method

.method public final scrollStep(II[I)V
    .locals 9

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->startInterceptRequestLayout()V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->onEnterLayoutOrScroll()V

    const-string v0, "RV Scroll"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->fillRemainingScrollValues(Landroidx/recyclerview/widget/RecyclerView$State;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

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

    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    invoke-virtual {v2, p2, v3, v4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->scrollVerticallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result p2

    iget v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mGoToTopState:I

    if-nez v2, :cond_2

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setupGoToTop$1(I)V

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView;->autoHide(I)V

    goto :goto_1

    :cond_1
    move p2, v0

    :cond_2
    :goto_1
    invoke-static {}, Landroid/os/Trace;->endSection()V

    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/ChildHelper;->getChildCount()I

    move-result v2

    move v3, v0

    :goto_2
    if-ge v3, v2, :cond_5

    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    invoke-virtual {v4, v3}, Landroidx/recyclerview/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v5

    if-eqz v5, :cond_4

    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mShadowingHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    if-eqz v5, :cond_4

    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v6

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v7

    if-ne v6, v7, :cond_3

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v7

    if-eq v4, v7, :cond_4

    :cond_3
    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v7

    add-int/2addr v7, v6

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v8

    add-int/2addr v8, v4

    invoke-virtual {v5, v6, v4, v7, v8}, Landroid/view/View;->layout(IIII)V

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView;->onExitLayoutOrScroll(Z)V

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->stopInterceptRequestLayout(Z)V

    if-eqz p3, :cond_6

    aput p1, p3, v0

    aput p2, p3, v1

    :cond_6
    return-void
.end method

.method public final scrollTo(II)V
    .locals 0

    const-string p0, "SeslRecyclerView"

    const-string p1, "RecyclerView does not support scrolling to an absolute position. Use scrollToPosition instead"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final scrollToPosition(I)V
    .locals 2

    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayoutSuppressed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mViewFlinger:Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->stop()V

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_1

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mSmoothScroller:Landroidx/recyclerview/widget/LinearSmoothScroller;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearSmoothScroller;->stop()V

    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    if-nez v0, :cond_2

    const-string p0, "SeslRecyclerView"

    const-string p1, "Cannot scroll to position a LayoutManager set. Call setLayoutManager with a non-null argument."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->scrollToPosition(I)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->awakenScrollBars()Z

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mFastScroller:Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;

    if-eqz p1, :cond_3

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->findFirstVisibleItemPosition()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p0

    invoke-virtual {p1, v0, v1, p0}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->onScroll(III)V

    :cond_3
    return-void
.end method

.method public final sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->isComputingLayout()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getContentChangeTypes()I

    move-result p1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    move v0, p1

    :goto_1
    iget p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mEatenAccessibilityChangeFlags:I

    or-int/2addr p1, v0

    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mEatenAccessibilityChangeFlags:I

    return-void

    :cond_2
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public final seslFindNearChildViewUnder(FF)Landroid/view/View;
    .locals 11

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

    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    if-eqz v8, :cond_3

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v9

    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v8

    add-int/2addr v8, v9

    div-int/lit8 v8, v8, 0x2

    if-ne v4, v8, :cond_0

    goto :goto_1

    :cond_0
    sub-int v4, v1, v8

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-ge v4, v6, :cond_1

    move v6, v4

    move v4, v8

    move v7, v4

    goto :goto_1

    :cond_1
    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    instance-of v4, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    if-nez v4, :cond_2

    goto :goto_2

    :cond_2
    move v4, v8

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

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_9

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v8

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v9

    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v10

    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v6

    if-lt v7, v8, :cond_6

    if-gt v7, v9, :cond_6

    sub-int v8, v2, v10

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    sub-int v6, v2, v6

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

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_8
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    invoke-virtual {p0, v3}, Landroidx/recyclerview/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_9
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    :cond_a
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "findNearChildViewUnder didn\'t find valid child view! "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

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

.method public final seslSetFastScrollerEnabled(Z)V
    .locals 3

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mFastScroller:Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->isEnabled()Z

    move-result v0

    if-eq p1, v0, :cond_0

    move v1, v2

    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mFastScroller:Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;

    iget-boolean v2, v0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mEnabled:Z

    if-eq v2, p1, :cond_3

    iput-boolean p1, v0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mEnabled:Z

    invoke-virtual {v0}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->onStateDependencyChanged()V

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_3

    new-instance p1, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;

    invoke-direct {p1, p0}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mFastScroller:Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;

    iget-boolean v0, p1, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mEnabled:Z

    if-eq v0, v2, :cond_2

    iput-boolean v2, p1, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mEnabled:Z

    invoke-virtual {p1}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->onStateDependencyChanged()V

    :cond_2
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mFastScroller:Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getVerticalScrollbarPosition()I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->setScrollbarPosition(I)V

    move v1, v2

    :cond_3
    :goto_0
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mFastScroller:Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;

    if-eqz p1, :cond_4

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->updateLayout()V

    :cond_4
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    instance-of p0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    if-eqz p0, :cond_5

    const-string p0, "SeslRecyclerView"

    const-string p1, "FastScroller cannot be used with StaggeredGridLayoutManager."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-void
.end method

.method public final seslSetFillBottomColor(I)V
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mRectPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mRoundedCorner:Landroidx/appcompat/util/SeslSubheaderRoundedCorner;

    const/16 v0, 0xc

    invoke-virtual {p0, v0, p1}, Landroidx/appcompat/util/SeslRoundedCorner;->setRoundedCornerColor(II)V

    return-void
.end method

.method public final seslSetFillBottomEnabled(Z)V
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    instance-of v0, v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v0, :cond_0

    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mDrawRect:Z

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    :cond_0
    return-void
.end method

.method public final seslSetFillHorizontalPaddingEnabled(Z)V
    .locals 2

    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mDrawHorizontalPadding:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f071192

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mScrollbarBottomPadding:I

    invoke-static {p0, p1}, Landroidx/reflect/view/SeslViewReflector;->semSetScrollBarTopPadding(Landroid/view/View;I)V

    iget p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mScrollbarBottomPadding:I

    invoke-static {p0, p1}, Landroidx/reflect/view/SeslViewReflector;->semSetScrollBarBottomPadding(Landroid/view/View;I)V

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mFastScroller:Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollBarStyle()I

    move-result v0

    iget v1, p1, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mScrollBarStyle:I

    if-eq v1, v0, :cond_1

    iput v0, p1, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mScrollBarStyle:I

    const/4 v0, -0x1

    iput v0, p1, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mListScrollRange:I

    iput v0, p1, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mListScrollExtent:I

    invoke-virtual {p1}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->updateLayout()V

    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    return-void
.end method

.method public final seslSetGoToTopEnabled(Z)V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x2

    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroidx/appcompat/util/SeslMisc;->isLightTheme(Landroid/content/Context;)Z

    move-result v2

    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    if-eqz v2, :cond_0

    const v4, 0x7f080c11

    goto :goto_0

    :cond_0
    const v4, 0x7f080c10

    :goto_0
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mGoToTopImage:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_5

    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mGoToTopView:Landroid/widget/ImageView;

    if-nez v3, :cond_1

    new-instance v3, Landroid/widget/ImageView;

    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mGoToTopView:Landroid/widget/ImageView;

    :cond_1
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mGoToTopView:Landroid/widget/ImageView;

    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    if-eqz v2, :cond_2

    const v2, 0x7f080bd7

    goto :goto_1

    :cond_2
    const v2, 0x7f080bd6

    :goto_1
    const/4 v5, 0x0

    invoke-virtual {v4, v2, v5}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mGoToTopView:Landroid/widget/ImageView;

    iget v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mGoToTopElevation:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setElevation(F)V

    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mGoToTopView:Landroid/widget/ImageView;

    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mGoToTopImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_3

    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mGoToTopView:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-boolean v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mEnableGoToTop:Z

    if-nez v2, :cond_4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v2

    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mGoToTopView:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    goto :goto_2

    :cond_3
    iget-boolean v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mEnableGoToTop:Z

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v2

    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mGoToTopView:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    :cond_4
    :goto_2
    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mEnableGoToTop:Z

    new-array p1, v1, [F

    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mGoToTopFadeInAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x14d

    invoke-virtual {p1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mGoToTopFadeInAnimator:Landroid/animation/ValueAnimator;

    sget-object v2, Landroidx/appcompat/animation/SeslAnimationUtils;->SINE_IN_OUT_70:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mGoToTopFadeInAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Landroidx/recyclerview/widget/RecyclerView$13;

    invoke-direct {v2, v0, p0}, Landroidx/recyclerview/widget/RecyclerView$13;-><init>(ILandroidx/recyclerview/widget/RecyclerView;)V

    invoke-virtual {p1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array p1, v1, [F

    fill-array-data p1, :array_1

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mGoToTopFadeOutAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x96

    invoke-virtual {p1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mGoToTopFadeOutAnimator:Landroid/animation/ValueAnimator;

    sget-object v2, Landroidx/recyclerview/widget/RecyclerView;->LINEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mGoToTopFadeOutAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Landroidx/recyclerview/widget/RecyclerView$13;

    invoke-direct {v2, v1, p0}, Landroidx/recyclerview/widget/RecyclerView$13;-><init>(ILandroidx/recyclerview/widget/RecyclerView;)V

    invoke-virtual {p1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mGoToTopFadeOutAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroidx/recyclerview/widget/RecyclerView$2;

    invoke-direct {v1, v0, p0}, Landroidx/recyclerview/widget/RecyclerView$2;-><init>(ILandroidx/recyclerview/widget/RecyclerView;)V

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_5
    return-void

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

.method public setAccessibilityDelegateCompat(Landroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate;)V
    .locals 0

    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mAccessibilityDelegate:Landroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate;

    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    return-void
.end method

.method public setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 8

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutFrozen(Z)V

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-eqz v1, :cond_0

    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mObserver:Landroidx/recyclerview/widget/RecyclerView$RecyclerViewDataObserver;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->unregisterAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v1, p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->removeAndRecycleViews()V

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapterHelper:Landroidx/recyclerview/widget/AdapterHelper;

    iget-object v2, v1, Landroidx/recyclerview/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/AdapterHelper;->recycleUpdateOpsAndClearList(Ljava/util/List;)V

    iget-object v2, v1, Landroidx/recyclerview/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/AdapterHelper;->recycleUpdateOpsAndClearList(Ljava/util/List;)V

    iput v0, v1, Landroidx/recyclerview/widget/AdapterHelper;->mExistingUpdateTypes:I

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-eqz p1, :cond_1

    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mObserver:Landroidx/recyclerview/widget/RecyclerView$RecyclerViewDataObserver;

    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    :cond_1
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onAdapterChanged()V

    :cond_2
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    iget-object v3, p1, Landroidx/recyclerview/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->recycleAndClearCachedViews()V

    const/4 v3, 0x1

    invoke-virtual {p1, v1, v3}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->poolingContainerDetach(Landroidx/recyclerview/widget/RecyclerView$Adapter;Z)V

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->getRecycledViewPool()Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    move-result-object v4

    if-eqz v1, :cond_3

    iget v1, v4, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->mAttachCountForClearing:I

    sub-int/2addr v1, v3

    iput v1, v4, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->mAttachCountForClearing:I

    :cond_3
    iget v1, v4, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->mAttachCountForClearing:I

    if-nez v1, :cond_6

    move v1, v0

    :goto_0
    iget-object v5, v4, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->mScrap:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v1, v5, :cond_6

    iget-object v5, v4, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->mScrap:Landroid/util/SparseArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;

    if-eqz v5, :cond_5

    iget-object v6, v5, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;->mScrapHeap:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object v7, v7, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v7}, Landroidx/customview/poolingcontainer/PoolingContainer;->callPoolingContainerOnRelease(Landroid/view/View;)V

    goto :goto_1

    :cond_4
    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;->mScrapHeap:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    goto :goto_2

    :cond_5
    const-string v5, "SeslRecyclerView"

    const-string v6, "clear() wasn\'t executed because RecycledViewPool.mScrap was invalid"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    if-eqz v2, :cond_7

    iget v1, v4, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->mAttachCountForClearing:I

    add-int/2addr v1, v3

    iput v1, v4, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->mAttachCountForClearing:I

    :cond_7
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->maybeSendPoolingContainerAttach()V

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    iput-boolean v3, p1, Landroidx/recyclerview/widget/RecyclerView$State;->mStructureChanged:Z

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->processDataSetCompletelyChanged(Z)V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    return-void
.end method

.method public setChildDrawingOrderCallback(Landroidx/recyclerview/widget/RecyclerView$ChildDrawingOrderCallback;)V
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildDrawingOrderCallback:Landroidx/recyclerview/widget/RecyclerView$ChildDrawingOrderCallback;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setChildrenDrawingOrderEnabled(Z)V

    return-void
.end method

.method public setChildImportantForAccessibilityInternal(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)Z
    .locals 1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->isComputingLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    iput p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPendingAccessibilityState:I

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mPendingAccessibilityImportanceChange:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget-object p1, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    invoke-virtual {p0, p2}, Landroid/view/View;->setImportantForAccessibility(I)V

    const/4 p0, 0x1

    return p0
.end method

.method public setClipToPadding(Z)V
    .locals 1

    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mClipToPadding:Z

    if-eq p1, v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    :cond_0
    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mClipToPadding:Z

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    iget-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mFirstLayoutComplete:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    :cond_1
    return-void
.end method

.method public setEdgeEffectEnabled(Z)V
    .locals 1

    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mIsEdgeEffectEnabled:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mIsEdgeEffectEnabled:Z

    :cond_0
    return-void
.end method

.method public setEdgeEffectFactory(Landroidx/recyclerview/widget/RecyclerView$EdgeEffectFactory;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mEdgeEffectFactory:Landroidx/recyclerview/widget/RecyclerView$EdgeEffectFactory;

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    return-void
.end method

.method public setHasFixedSize(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mHasFixedSize:Z

    return-void
.end method

.method public setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V
    .locals 2

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->endAnimations()V

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    const/4 v1, 0x0

    iput-object v1, v0, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->mListener:Landroidx/recyclerview/widget/RecyclerView$9;

    :cond_0
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    if-eqz p1, :cond_1

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimatorListener:Landroidx/recyclerview/widget/RecyclerView$9;

    iput-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->mListener:Landroidx/recyclerview/widget/RecyclerView$9;

    iput-object p0, p1, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->mHostView:Landroid/view/View;

    :cond_1
    return-void
.end method

.method public setItemViewCacheSize(I)V
    .locals 0

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView$Recycler;->mRequestedCacheMax:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->updateViewCacheSize()V

    return-void
.end method

.method public setLayoutFrozen(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->suppressLayout(Z)V

    return-void
.end method

.method public setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V
    .locals 7

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    instance-of v0, p1, Landroidx/recyclerview/widget/LinearLayoutManager;

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

    iget-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mDrawLastRoundedCorner:Z

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v3

    :goto_1
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mDrawLastRoundedCorner:Z

    invoke-virtual {p0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mViewFlinger:Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->stop()V

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_3

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mSmoothScroller:Landroidx/recyclerview/widget/LinearSmoothScroller;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearSmoothScroller;->stop()V

    :cond_3
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->endAnimations()V

    :cond_4
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->removeAndRecycleAllViews(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->removeAndRecycleScrapInt(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->recycleAndClearCachedViews()V

    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mIsAttached:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    iput-boolean v3, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mIsAttachedToWindow:Z

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView;)V

    :cond_5
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->setRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    iput-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    goto :goto_2

    :cond_6
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->recycleAndClearCachedViews()V

    :goto_2
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    iget-object v1, v0, Landroidx/recyclerview/widget/ChildHelper;->mBucket:Landroidx/recyclerview/widget/ChildHelper$Bucket;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/ChildHelper$Bucket;->reset()V

    iget-object v1, v0, Landroidx/recyclerview/widget/ChildHelper;->mHiddenViews:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v2

    :goto_3
    iget-object v4, v0, Landroidx/recyclerview/widget/ChildHelper;->mCallback:Landroidx/recyclerview/widget/RecyclerView$9;

    if-ltz v1, :cond_8

    iget-object v5, v0, Landroidx/recyclerview/widget/ChildHelper;->mHiddenViews:Ljava/util/List;

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v5

    if-eqz v5, :cond_7

    iget v6, v5, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mWasImportantForAccessibilityBeforeHidden:I

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView$9;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v4, v5, v6}, Landroidx/recyclerview/widget/RecyclerView;->setChildImportantForAccessibilityInternal(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)Z

    iput v3, v5, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mWasImportantForAccessibilityBeforeHidden:I

    :cond_7
    iget-object v4, v0, Landroidx/recyclerview/widget/ChildHelper;->mHiddenViews:Ljava/util/List;

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    :cond_8
    iget-object v0, v4, Landroidx/recyclerview/widget/RecyclerView$9;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    :goto_4
    if-ge v3, v1, :cond_9

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/RecyclerView;->dispatchChildDetached(Landroid/view/View;)V

    invoke-virtual {v4}, Landroid/view/View;->clearAnimation()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_9
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    if-eqz p1, :cond_b

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_a

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->setRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    iget-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mIsAttached:Z

    if-eqz p1, :cond_b

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    iput-boolean v2, p1, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mIsAttachedToWindow:Z

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView;)V

    goto :goto_5

    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LayoutManager "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " is already attached to a RecyclerView:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p1, v0}, Landroidx/recyclerview/widget/ChildHelper$$ExternalSyntheticOutline0;->m(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b
    :goto_5
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->updateViewCacheSize()V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    return-void
.end method

.method public setLayoutTransition(Landroid/animation/LayoutTransition;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Providing a LayoutTransition into RecyclerView is not supported. Please use setItemAnimator() instead for animating changes to the items in this RecyclerView"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setNestedScrollingEnabled(Z)V
    .locals 2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollingChildHelper()Landroidx/core/view/NestedScrollingChildHelper;

    move-result-object p0

    iget-boolean v0, p0, Landroidx/core/view/NestedScrollingChildHelper;->mIsNestedScrollingEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/core/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    sget-object v1, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    invoke-static {v0}, Landroidx/core/view/ViewCompat$Api21Impl;->stopNestedScroll(Landroid/view/View;)V

    :cond_0
    iput-boolean p1, p0, Landroidx/core/view/NestedScrollingChildHelper;->mIsNestedScrollingEnabled:Z

    return-void
.end method

.method public setOnFlingListener(Landroidx/recyclerview/widget/RecyclerView$OnFlingListener;)V
    .locals 0

    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mOnFlingListener:Landroidx/recyclerview/widget/RecyclerView$OnFlingListener;

    return-void
.end method

.method public setOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    return-void
.end method

.method public setPreserveFocusAfterLayout(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mPreserveFocusAfterLayout:Z

    return-void
.end method

.method public setRecycledViewPool(Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;)V
    .locals 3

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$Recycler;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->poolingContainerDetach(Landroidx/recyclerview/widget/RecyclerView$Adapter;Z)V

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$Recycler;->mRecyclerPool:Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    if-eqz v1, :cond_0

    iget v2, v1, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->mAttachCountForClearing:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->mAttachCountForClearing:I

    :cond_0
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$Recycler;->mRecyclerPool:Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$Recycler;->mRecyclerPool:Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    iget v0, p1, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->mAttachCountForClearing:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->mAttachCountForClearing:I

    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->maybeSendPoolingContainerAttach()V

    return-void
.end method

.method public setRecyclerListener(Landroidx/recyclerview/widget/RecyclerView$RecyclerListener;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecyclerListener:Landroidx/recyclerview/widget/RecyclerView$RecyclerListener;

    return-void
.end method

.method public setScrollBarStyle(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setScrollBarStyle(I)V

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mFastScroller:Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;

    if-eqz p0, :cond_0

    iget v0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mScrollBarStyle:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mScrollBarStyle:I

    const/4 p1, -0x1

    iput p1, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mListScrollRange:I

    iput p1, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mListScrollExtent:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->updateLayout()V

    :cond_0
    return-void
.end method

.method public setScrollState(I)V
    .locals 5

    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mScrollState:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    const-string/jumbo v0, "setting scroll state to "

    const-string v1, " from "

    invoke-static {p1, v0, v1}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mScrollState:I

    const-string v4, "SeslRecyclerView"

    invoke-static {v2, v3, v4}, Landroidx/preference/Preference$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    sget-boolean v2, Landroidx/recyclerview/widget/RecyclerView;->sVerboseLoggingEnabled:Z

    if-eqz v2, :cond_1

    invoke-static {p1, v0, v1}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mScrollState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    invoke-static {v4, v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mScrollState:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mViewFlinger:Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->stop()V

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_2

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mSmoothScroller:Landroidx/recyclerview/widget/LinearSmoothScroller;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearSmoothScroller;->stop()V

    :cond_2
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onScrollStateChanged(I)V

    :cond_3
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    if-eqz v0, :cond_4

    invoke-virtual {v0, p1, p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(ILandroidx/recyclerview/widget/RecyclerView;)V

    :cond_4
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_5

    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v2, p1, p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(ILandroidx/recyclerview/widget/RecyclerView;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_5
    if-ne p1, v1, :cond_6

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mEdgeEffectByDragging:Z

    :cond_6
    return-void
.end method

.method public setScrollingTouchSlop(I)V
    .locals 4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    const-string/jumbo v1, "setScrollingTouchSlop(): slopConstant["

    const-string v2, "]"

    const-string v3, "SeslRecyclerView"

    invoke-static {p1, v1, v2, v3}, Landroidx/mediarouter/app/MediaRouteControllerDialog$VolumeGroupAdapter$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mUsePagingTouchSlopForStylus:Z

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setScrollingTouchSlop(): bad argument constant "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "; using default value"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result p1

    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mTouchSlop:I

    goto :goto_1

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

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final setupGoToTop$1(I)V
    .locals 11

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->isGoToTopAvailableEnvironment()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mEnableGoToTop:Z

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mAutoHide:Landroidx/recyclerview/widget/RecyclerView$1;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->canScrollUp$1()Z

    move-result v2

    if-nez v2, :cond_1

    move p1, v1

    :cond_1
    const/4 v2, -0x1

    if-ne p1, v2, :cond_3

    iget-boolean v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mSizeChange:Z

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->canScrollUp$1()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->canScrollDown$1()Z

    move-result p1

    if-nez p1, :cond_2

    move p1, v1

    goto :goto_0

    :cond_2
    iget p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mGoToTopLastState:I

    goto :goto_0

    :cond_3
    if-ne p1, v2, :cond_5

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->canScrollUp$1()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->canScrollDown$1()Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    move p1, v0

    :cond_5
    :goto_0
    if-eqz p1, :cond_6

    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mGoToToFadeOutRunnable:Landroidx/recyclerview/widget/RecyclerView$1;

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_6
    if-eq p1, v0, :cond_7

    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mGoToToFadeInRunnable:Landroidx/recyclerview/widget/RecyclerView$1;

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_7
    iget v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mShowFadeOutGTT:I

    if-nez v2, :cond_8

    if-nez p1, :cond_8

    iget v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mGoToTopLastState:I

    if-eqz v2, :cond_8

    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mGoToToFadeOutRunnable:Landroidx/recyclerview/widget/RecyclerView$1;

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    :cond_8
    const/4 v2, 0x2

    if-eq p1, v2, :cond_9

    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mGoToTopView:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setPressed(Z)V

    :cond_9
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mGoToTopState:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v4

    div-int/2addr v3, v2

    add-int/2addr v3, v4

    if-eqz p1, :cond_b

    if-eq p1, v0, :cond_a

    if-eq p1, v2, :cond_a

    goto :goto_1

    :cond_a
    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mGoToToFadeOutRunnable:Landroidx/recyclerview/widget/RecyclerView$1;

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v4

    iget-object v5, p0, Landroidx/recyclerview/widget/RecyclerView;->mGoToTopRect:Landroid/graphics/Rect;

    iget v6, p0, Landroidx/recyclerview/widget/RecyclerView;->mGoToTopSize:I

    div-int/lit8 v7, v6, 0x2

    sub-int v8, v3, v7

    sub-int v6, v4, v6

    iget v9, p0, Landroidx/recyclerview/widget/RecyclerView;->mGoToTopBottomPadding:I

    sub-int/2addr v6, v9

    iget v10, p0, Landroidx/recyclerview/widget/RecyclerView;->mGoToTopImmersiveBottomPadding:I

    sub-int/2addr v6, v10

    add-int/2addr v7, v3

    sub-int/2addr v4, v9

    sub-int/2addr v4, v10

    invoke-virtual {v5, v8, v6, v7, v4}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1

    :cond_b
    iget v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mShowFadeOutGTT:I

    if-ne v3, v2, :cond_c

    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mGoToTopRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v1, v1, v1, v1}, Landroid/graphics/Rect;->set(IIII)V

    :cond_c
    :goto_1
    iget v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mShowFadeOutGTT:I

    if-ne v3, v2, :cond_d

    iput v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mShowFadeOutGTT:I

    :cond_d
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mGoToTopView:Landroid/widget/ImageView;

    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mGoToTopRect:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->left:I

    iget v5, v3, Landroid/graphics/Rect;->top:I

    iget v6, v3, Landroid/graphics/Rect;->right:I

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v2, v4, v5, v6, v3}, Landroid/widget/ImageView;->layout(IIII)V

    if-ne p1, v0, :cond_f

    iget p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mGoToTopLastState:I

    if-eqz p1, :cond_e

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mGoToTopView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getAlpha()F

    move-result p1

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_e

    iget-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mSizeChange:Z

    if-eqz p1, :cond_f

    :cond_e
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mGoToToFadeInRunnable:Landroidx/recyclerview/widget/RecyclerView$1;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    :cond_f
    iput-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mSizeChange:Z

    iget p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mGoToTopState:I

    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mGoToTopLastState:I

    :cond_10
    :goto_2
    return-void
.end method

.method public final shouldAbsorb(Landroid/widget/EdgeEffect;II)Z
    .locals 8

    const/4 v0, 0x1

    if-lez p2, :cond_0

    return v0

    :cond_0
    invoke-static {p1}, Landroidx/core/widget/EdgeEffectCompat;->getDistance(Landroid/widget/EdgeEffect;)F

    move-result p1

    int-to-float p3, p3

    mul-float/2addr p1, p3

    neg-int p2, p2

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    int-to-float p2, p2

    const p3, 0x3eb33333    # 0.35f

    mul-float/2addr p2, p3

    iget p3, p0, Landroidx/recyclerview/widget/RecyclerView;->mPhysicalCoef:F

    const v1, 0x3c75c28f    # 0.015f

    mul-float/2addr p3, v1

    div-float/2addr p2, p3

    float-to-double p2, p2

    invoke-static {p2, p3}, Ljava/lang/Math;->log(D)D

    move-result-wide p2

    sget v2, Landroidx/recyclerview/widget/RecyclerView;->DECELERATION_RATE:F

    float-to-double v2, v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double v4, v2, v4

    iget p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mPhysicalCoef:F

    mul-float/2addr p0, v1

    float-to-double v6, p0

    div-double/2addr v2, v4

    mul-double/2addr v2, p2

    invoke-static {v2, v3}, Ljava/lang/Math;->exp(D)D

    move-result-wide p2

    mul-double/2addr p2, v6

    double-to-float p0, p2

    cmpg-float p0, p0, p1

    if-gez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final showGoToTop$1()V
    .locals 2

    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mEnableGoToTop:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->canScrollUp$1()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mGoToTopState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setupGoToTop$1(I)V

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->autoHide(I)V

    :cond_0
    return-void
.end method

.method public final showPointerIcon$1(Landroid/view/MotionEvent;I)V
    .locals 1

    const/16 v0, 0x4e21

    if-ne p2, v0, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mContext:Landroid/content/Context;

    invoke-static {v0, p2}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object p2

    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result p1

    invoke-static {p0, p1, p2}, Landroidx/reflect/view/SeslViewReflector;->semSetPointerIcon(Landroid/view/View;ILandroid/view/PointerIcon;)V

    return-void
.end method

.method public final smoothScrollBy(IIZ)V
    .locals 2

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    if-nez v0, :cond_0

    const-string p0, "SeslRecyclerView"

    const-string p1, "Cannot smooth scroll without a LayoutManager set. Call setLayoutManager with a non-null argument."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayoutSuppressed:Z

    if-eqz v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    move p1, v1

    :cond_2
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v0

    if-nez v0, :cond_3

    move p2, v1

    :cond_3
    if-nez p1, :cond_4

    if-eqz p2, :cond_8

    :cond_4
    if-eqz p3, :cond_7

    const/4 p3, 0x1

    if-eqz p1, :cond_5

    move v1, p3

    :cond_5
    if-eqz p2, :cond_6

    or-int/lit8 v1, v1, 0x2

    :cond_6
    invoke-virtual {p0, v1, p3}, Landroidx/recyclerview/widget/RecyclerView;->startNestedScroll(II)V

    :cond_7
    iget-object p3, p0, Landroidx/recyclerview/widget/RecyclerView;->mViewFlinger:Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;

    const/high16 v0, -0x80000000

    const/4 v1, 0x0

    invoke-virtual {p3, p1, p2, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->smoothScrollBy(IIILandroid/view/animation/Interpolator;)V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->showGoToTop$1()V

    :cond_8
    return-void
.end method

.method public final smoothScrollToPosition(I)V
    .locals 1

    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayoutSuppressed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    if-nez v0, :cond_1

    const-string p0, "SeslRecyclerView"

    const-string p1, "Cannot smooth scroll without a LayoutManager set. Call setLayoutManager with a non-null argument."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-virtual {v0, p1, p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->smoothScrollToPosition(ILandroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method public final startInterceptRequestLayout()V
    .locals 2

    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mInterceptRequestLayoutDepth:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mInterceptRequestLayoutDepth:I

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayoutSuppressed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayoutWasDefered:Z

    :cond_0
    return-void
.end method

.method public final startNestedScroll(II)V
    .locals 0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollingChildHelper()Landroidx/core/view/NestedScrollingChildHelper;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroidx/core/view/NestedScrollingChildHelper;->startNestedScroll(II)Z

    return-void
.end method

.method public final startNestedScroll(I)Z
    .locals 1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollingChildHelper()Landroidx/core/view/NestedScrollingChildHelper;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/core/view/NestedScrollingChildHelper;->startNestedScroll(II)Z

    move-result p0

    return p0
.end method

.method public final stopInterceptRequestLayout(Z)V
    .locals 3

    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mInterceptRequestLayoutDepth:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    sget-boolean v0, Landroidx/recyclerview/widget/RecyclerView;->sDebugAssertionsEnabled:Z

    if-nez v0, :cond_0

    iput v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mInterceptRequestLayoutDepth:I

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "stopInterceptRequestLayout was called more times than startInterceptRequestLayout."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Landroidx/recyclerview/widget/ChildHelper$$ExternalSyntheticOutline0;->m(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    if-nez p1, :cond_2

    iget-boolean v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayoutSuppressed:Z

    if-nez v2, :cond_2

    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayoutWasDefered:Z

    :cond_2
    iget v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mInterceptRequestLayoutDepth:I

    if-ne v2, v1, :cond_4

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayoutWasDefered:Z

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayoutSuppressed:Z

    if-nez p1, :cond_3

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    if-eqz p1, :cond_3

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->dispatchLayout()V

    :cond_3
    iget-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayoutSuppressed:Z

    if-nez p1, :cond_4

    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayoutWasDefered:Z

    :cond_4
    iget p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mInterceptRequestLayoutDepth:I

    sub-int/2addr p1, v1

    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mInterceptRequestLayoutDepth:I

    return-void
.end method

.method public final stopNestedScroll()V
    .locals 1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollingChildHelper()Landroidx/core/view/NestedScrollingChildHelper;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/core/view/NestedScrollingChildHelper;->stopNestedScroll(I)V

    return-void
.end method

.method public final stopNestedScroll(I)V
    .locals 0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollingChildHelper()Landroidx/core/view/NestedScrollingChildHelper;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/core/view/NestedScrollingChildHelper;->stopNestedScroll(I)V

    return-void
.end method

.method public final suppressLayout(Z)V
    .locals 9

    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayoutSuppressed:Z

    if-eq p1, v0, :cond_2

    const-string v0, "Do not suppressLayout in layout or scroll"

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    const/4 v0, 0x0

    if-nez p1, :cond_1

    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayoutSuppressed:Z

    iget-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayoutWasDefered:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    :cond_0
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayoutWasDefered:Z

    goto :goto_0

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-wide v1, v3

    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayoutSuppressed:Z

    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mIgnoreMotionEventTillDown:Z

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mViewFlinger:Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->stop()V

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    if-eqz p0, :cond_2

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mSmoothScroller:Landroidx/recyclerview/widget/LinearSmoothScroller;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearSmoothScroller;->stop()V

    :cond_2
    :goto_0
    return-void
.end method

.method public final updateLongPressMultiSelection(IIZ)V
    .locals 11

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/ChildHelper;->getChildCount()I

    move-result v0

    iget-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mIsFirstMultiSelectionMove:Z

    const-string v2, "SeslRecyclerView"

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenDragStartX:I

    iput p2, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenDragStartY:I

    int-to-float v1, p1

    int-to-float v4, p2

    invoke-virtual {p0, v1, v4}, Landroidx/recyclerview/widget/RecyclerView;->findChildViewUnder(FF)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenTrackedChild:Landroid/view/View;

    if-nez v5, :cond_0

    invoke-virtual {p0, v1, v4}, Landroidx/recyclerview/widget/RecyclerView;->seslFindNearChildViewUnder(FF)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenTrackedChild:Landroid/view/View;

    if-nez v1, :cond_0

    const-string/jumbo p1, "updateLongPressMultiSelection, mPenTrackedChild is NULL"

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mIsFirstMultiSelectionMove:Z

    return-void

    :cond_0
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mLongPressMultiSelectionListener:Landroidx/recyclerview/widget/RecyclerView$SeslLongPressMultiSelectionListener;

    if-eqz v1, :cond_1

    invoke-interface {v1, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$SeslLongPressMultiSelectionListener;->onLongPressMultiSelectionStarted(II)V

    :cond_1
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenTrackedChild:Landroid/view/View;

    invoke-static {v1}, Landroidx/recyclerview/widget/RecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    move-result v1

    iput v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenTrackedChildPosition:I

    iput v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenDragSelectedViewPosition:I

    iget v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenDragStartY:I

    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenTrackedChild:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    sub-int/2addr v1, v4

    iput v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenDistanceFromTrackedChildTop:I

    iput-boolean v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mIsFirstMultiSelectionMove:Z

    :cond_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenDragEndX:I

    iput p2, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenDragEndY:I

    if-gez p2, :cond_3

    iput v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenDragEndY:I

    goto :goto_0

    :cond_3
    if-le p2, v1, :cond_4

    iput v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenDragEndY:I

    :cond_4
    :goto_0
    int-to-float p1, p1

    iget v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenDragEndY:I

    int-to-float v4, v4

    invoke-virtual {p0, p1, v4}, Landroidx/recyclerview/widget/RecyclerView;->findChildViewUnder(FF)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_5

    iget p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenDragEndX:I

    int-to-float p1, p1

    iget v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenDragEndY:I

    int-to-float v4, v4

    invoke-virtual {p0, p1, v4}, Landroidx/recyclerview/widget/RecyclerView;->seslFindNearChildViewUnder(FF)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_5

    const-string/jumbo p0, "updateLongPressMultiSelection, touchedView is NULL"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5
    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    move-result p1

    const/4 v4, -0x1

    if-eq p1, v4, :cond_18

    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenDragSelectedViewPosition:I

    iget v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenTrackedChildPosition:I

    if-ge v2, p1, :cond_6

    move v10, v2

    move v2, p1

    move p1, v10

    :cond_6
    iget v5, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenDragStartX:I

    iget v6, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenDragEndX:I

    if-ge v5, v6, :cond_7

    move v7, v5

    goto :goto_1

    :cond_7
    move v7, v6

    :goto_1
    iput v7, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenDragBlockLeft:I

    iget v7, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenDragStartY:I

    iget v8, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenDragEndY:I

    if-ge v7, v8, :cond_8

    goto :goto_2

    :cond_8
    move v7, v8

    :goto_2
    iput v7, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenDragBlockTop:I

    if-le v6, v5, :cond_9

    move v5, v6

    :cond_9
    iput v5, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenDragBlockRight:I

    move v5, v3

    :goto_3
    if-ge v5, v0, :cond_10

    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_f

    invoke-static {v6}, Landroidx/recyclerview/widget/RecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    move-result v7

    iput v7, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenDragSelectedViewPosition:I

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-nez v7, :cond_f

    iget v7, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenDragSelectedViewPosition:I

    if-gt p1, v7, :cond_c

    if-gt v7, v2, :cond_c

    iget v8, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenTrackedChildPosition:I

    if-eq v7, v8, :cond_c

    if-eq v7, v4, :cond_f

    iget-object v8, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenDragSelectedItemArray:Ljava/util/ArrayList;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_f

    iget-object v7, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenDragSelectedItemArray:Ljava/util/ArrayList;

    iget v8, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenDragSelectedViewPosition:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Landroidx/recyclerview/widget/RecyclerView;->mLongPressMultiSelectionListener:Landroidx/recyclerview/widget/RecyclerView$SeslLongPressMultiSelectionListener;

    if-eqz v7, :cond_f

    iget v8, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenDragSelectedViewPosition:I

    iget-object v9, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-eqz v9, :cond_b

    iget-boolean v9, v9, Landroidx/recyclerview/widget/RecyclerView$Adapter;->mHasStableIds:Z

    if-nez v9, :cond_a

    goto :goto_4

    :cond_a
    invoke-static {v6}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    :cond_b
    :goto_4
    invoke-interface {v7, v8}, Landroidx/recyclerview/widget/RecyclerView$SeslLongPressMultiSelectionListener;->onItemSelected(I)V

    goto :goto_6

    :cond_c
    if-eq v7, v4, :cond_f

    iget-object v8, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenDragSelectedItemArray:Ljava/util/ArrayList;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f

    iget-object v7, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenDragSelectedItemArray:Ljava/util/ArrayList;

    iget v8, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenDragSelectedViewPosition:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v7, p0, Landroidx/recyclerview/widget/RecyclerView;->mLongPressMultiSelectionListener:Landroidx/recyclerview/widget/RecyclerView$SeslLongPressMultiSelectionListener;

    if-eqz v7, :cond_f

    iget v8, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenDragSelectedViewPosition:I

    iget-object v9, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-eqz v9, :cond_e

    iget-boolean v9, v9, Landroidx/recyclerview/widget/RecyclerView$Adapter;->mHasStableIds:Z

    if-nez v9, :cond_d

    goto :goto_5

    :cond_d
    invoke-static {v6}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    :cond_e
    :goto_5
    invoke-interface {v7, v8}, Landroidx/recyclerview/widget/RecyclerView$SeslLongPressMultiSelectionListener;->onItemSelected(I)V

    :cond_f
    :goto_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_10
    iget p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mLastTouchY:I

    sub-int/2addr p1, p2

    if-eqz p3, :cond_17

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p3

    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mTouchSlop:I

    if-lt p3, v0, :cond_17

    iget p3, p0, Landroidx/recyclerview/widget/RecyclerView;->mHoverTopAreaHeight:I

    const/4 v0, 0x1

    if-gt p2, p3, :cond_12

    if-lez p1, :cond_12

    iget-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mHoverAreaEnter:Z

    if-nez p1, :cond_11

    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mHoverAreaEnter:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mHoverScrollStartTime:J

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    if-eqz p1, :cond_11

    invoke-virtual {p1, v0, p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(ILandroidx/recyclerview/widget/RecyclerView;)V

    :cond_11
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mHoverHandler:Landroidx/recyclerview/widget/RecyclerView$6;

    invoke-virtual {p1, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_17

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mHoverRecognitionStartTime:J

    const/4 p1, 0x2

    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mHoverScrollDirection:I

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mHoverHandler:Landroidx/recyclerview/widget/RecyclerView$6;

    invoke-virtual {p1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_7

    :cond_12
    iget p3, p0, Landroidx/recyclerview/widget/RecyclerView;->mHoverBottomAreaHeight:I

    sub-int/2addr v1, p3

    iget p3, p0, Landroidx/recyclerview/widget/RecyclerView;->mRemainNestedScrollRange:I

    sub-int/2addr v1, p3

    if-lt p2, v1, :cond_14

    if-gez p1, :cond_14

    iget-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mHoverAreaEnter:Z

    if-nez p1, :cond_13

    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mHoverAreaEnter:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mHoverScrollStartTime:J

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    if-eqz p1, :cond_13

    invoke-virtual {p1, v0, p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(ILandroidx/recyclerview/widget/RecyclerView;)V

    :cond_13
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mHoverHandler:Landroidx/recyclerview/widget/RecyclerView$6;

    invoke-virtual {p1, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_17

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mHoverRecognitionStartTime:J

    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mHoverScrollDirection:I

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mHoverHandler:Landroidx/recyclerview/widget/RecyclerView$6;

    invoke-virtual {p1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_7

    :cond_14
    iget-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mHoverAreaEnter:Z

    if-eqz p1, :cond_15

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    if-eqz p1, :cond_15

    invoke-virtual {p1, v3, p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(ILandroidx/recyclerview/widget/RecyclerView;)V

    :cond_15
    const-wide/16 p1, 0x0

    iput-wide p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mHoverScrollStartTime:J

    iput-wide p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mHoverRecognitionStartTime:J

    iput-boolean v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mHoverAreaEnter:Z

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mHoverHandler:Landroidx/recyclerview/widget/RecyclerView$6;

    invoke-virtual {p1, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_16

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mHoverHandler:Landroidx/recyclerview/widget/RecyclerView$6;

    invoke-virtual {p1, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mScrollState:I

    if-ne p1, v0, :cond_16

    invoke-virtual {p0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    :cond_16
    iput-boolean v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mIsHoverOverscrolled:Z

    :cond_17
    :goto_7
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void

    :cond_18
    const-string/jumbo p0, "touchedPosition is NO_POSITION"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

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
