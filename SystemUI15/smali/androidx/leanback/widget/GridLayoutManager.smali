.class public final Landroidx/leanback/widget/GridLayoutManager;
.super Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final sTempRect:Landroid/graphics/Rect;

.field public static final sTwoInts:[I


# instance fields
.field public mAudioManager:Landroid/media/AudioManager;

.field public mBaseGridView:Landroidx/leanback/widget/BaseGridView;

.field public mChildViewHolderSelectedListeners:Ljava/util/ArrayList;

.field public final mChildVisibility:I

.field public final mChildrenStates:Landroidx/leanback/widget/ViewsStateBundle;

.field public mCurrentSmoothScroller:Landroidx/leanback/widget/GridLayoutManager$GridLinearSmoothScroller;

.field public mDisappearingPositions:[I

.field public mExtraLayoutSpaceInPreLayout:I

.field public mFixedRowSizeSecondary:I

.field public mFlag:I

.field public mFocusPosition:I

.field public mFocusPositionOffset:I

.field public mGravity:I

.field public mGrid:Landroidx/leanback/widget/Grid;

.field public final mGridProvider:Landroidx/leanback/widget/GridLayoutManager$2;

.field public final mItemAlignment:Landroidx/leanback/widget/ItemAlignment;

.field public final mMaxPendingMoves:I

.field public mMaxSizeSecondary:I

.field public final mMeasuredDimension:[I

.field public mNumRows:I

.field public mNumRowsRequested:I

.field public mOrientation:I

.field public mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

.field public mPendingMoveSmoothScroller:Landroidx/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;

.field public mPositionDeltaInPreLayout:I

.field public final mPositionToRowInPostLayout:Landroid/util/SparseIntArray;

.field public mPrimaryScrollExtra:I

.field public mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

.field public final mRequestLayoutRunnable:Landroidx/leanback/widget/GridLayoutManager$1;

.field public mRowSizeSecondary:[I

.field public mRowSizeSecondaryRequested:I

.field public mSaveContextLevel:I

.field public mScrollOffsetSecondary:I

.field public mSizePrimary:I

.field public final mSmoothScrollSpeedFactor:F

.field public mSpacingPrimary:I

.field public mSpacingSecondary:I

.field public mState:Landroidx/recyclerview/widget/RecyclerView$State;

.field public mSubFocusPosition:I

.field public mVerticalSpacing:I

.field public final mWindowAlignment:Landroidx/leanback/widget/WindowAlignment;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Landroidx/leanback/widget/GridLayoutManager;->sTempRect:Landroid/graphics/Rect;

    const/4 v0, 0x2

    new-array v0, v0, [I

    sput-object v0, Landroidx/leanback/widget/GridLayoutManager;->sTwoInts:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/leanback/widget/GridLayoutManager;-><init>(Landroidx/leanback/widget/BaseGridView;)V

    return-void
.end method

.method public constructor <init>(Landroidx/leanback/widget/BaseGridView;)V
    .locals 3

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mSmoothScrollSpeedFactor:F

    const/16 v0, 0xa

    iput v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mMaxPendingMoves:I

    const/4 v0, 0x0

    iput v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mOrientation:I

    new-instance v1, Landroidx/recyclerview/widget/OrientationHelper$1;

    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/OrientationHelper$1;-><init>(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iput-object v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mPositionToRowInPostLayout:Landroid/util/SparseIntArray;

    const v1, 0x36200

    iput v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mChildViewHolderSelectedListeners:Ljava/util/ArrayList;

    const/4 v1, -0x1

    iput v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPosition:I

    iput v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mSubFocusPosition:I

    iput v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPositionOffset:I

    const v2, 0x800033

    iput v2, p0, Landroidx/leanback/widget/GridLayoutManager;->mGravity:I

    const/4 v2, 0x1

    iput v2, p0, Landroidx/leanback/widget/GridLayoutManager;->mNumRowsRequested:I

    new-instance v2, Landroidx/leanback/widget/WindowAlignment;

    invoke-direct {v2}, Landroidx/leanback/widget/WindowAlignment;-><init>()V

    iput-object v2, p0, Landroidx/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroidx/leanback/widget/WindowAlignment;

    new-instance v2, Landroidx/leanback/widget/ItemAlignment;

    invoke-direct {v2}, Landroidx/leanback/widget/ItemAlignment;-><init>()V

    iput-object v2, p0, Landroidx/leanback/widget/GridLayoutManager;->mItemAlignment:Landroidx/leanback/widget/ItemAlignment;

    const/4 v2, 0x2

    new-array v2, v2, [I

    iput-object v2, p0, Landroidx/leanback/widget/GridLayoutManager;->mMeasuredDimension:[I

    new-instance v2, Landroidx/leanback/widget/ViewsStateBundle;

    invoke-direct {v2}, Landroidx/leanback/widget/ViewsStateBundle;-><init>()V

    iput-object v2, p0, Landroidx/leanback/widget/GridLayoutManager;->mChildrenStates:Landroidx/leanback/widget/ViewsStateBundle;

    new-instance v2, Landroidx/leanback/widget/GridLayoutManager$1;

    invoke-direct {v2, p0}, Landroidx/leanback/widget/GridLayoutManager$1;-><init>(Landroidx/leanback/widget/GridLayoutManager;)V

    iput-object v2, p0, Landroidx/leanback/widget/GridLayoutManager;->mRequestLayoutRunnable:Landroidx/leanback/widget/GridLayoutManager$1;

    new-instance v2, Landroidx/leanback/widget/GridLayoutManager$2;

    invoke-direct {v2, p0}, Landroidx/leanback/widget/GridLayoutManager$2;-><init>(Landroidx/leanback/widget/GridLayoutManager;)V

    iput-object v2, p0, Landroidx/leanback/widget/GridLayoutManager;->mGridProvider:Landroidx/leanback/widget/GridLayoutManager$2;

    iput-object p1, p0, Landroidx/leanback/widget/GridLayoutManager;->mBaseGridView:Landroidx/leanback/widget/BaseGridView;

    iput v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mChildVisibility:I

    iget-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mItemPrefetchEnabled:Z

    if-eqz p1, :cond_0

    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mItemPrefetchEnabled:Z

    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mPrefetchMaxCountObserved:I

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p0, :cond_0

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->updateViewCacheSize()V

    :cond_0
    return-void
.end method

.method public static getAdapterPositionByView(Landroid/view/View;)I
    .locals 2

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;

    if-eqz p0, :cond_2

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->mViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->mViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAbsoluteAdapterPosition()I

    move-result p0

    return p0

    :cond_2
    :goto_0
    return v0
.end method

.method public static getDecoratedMeasuredHeightWithMargin(Landroid/view/View;)I
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;

    invoke-static {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedMeasuredHeight(Landroid/view/View;)I

    move-result p0

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr p0, v1

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr p0, v0

    return p0
.end method

.method public static getDecoratedMeasuredWidthWithMargin(Landroid/view/View;)I
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;

    invoke-static {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedMeasuredWidth(Landroid/view/View;)I

    move-result p0

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr p0, v1

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr p0, v0

    return p0
.end method

.method public static getSubPositionByView(Landroid/view/View;Landroid/view/View;)I
    .locals 8

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    if-nez p1, :cond_0

    goto :goto_3

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;

    iget-object v1, v1, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;->mAlignmentFacet:Landroidx/leanback/widget/ItemAlignmentFacet;

    if-eqz v1, :cond_4

    iget-object v1, v1, Landroidx/leanback/widget/ItemAlignmentFacet;->mAlignmentDefs:[Landroidx/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;

    array-length v2, v1

    const/4 v3, 0x1

    if-le v2, v3, :cond_4

    :goto_0
    if-eq p1, p0, :cond_4

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_3

    move v5, v3

    :goto_1
    array-length v6, v1

    if-ge v5, v6, :cond_3

    aget-object v6, v1, v5

    iget v7, v6, Landroidx/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;->mFocusViewId:I

    if-eq v7, v4, :cond_1

    goto :goto_2

    :cond_1
    iget v7, v6, Landroidx/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;->mViewId:I

    :goto_2
    if-ne v7, v2, :cond_2

    return v5

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    goto :goto_0

    :cond_4
    :goto_3
    return v0
.end method


# virtual methods
.method public final appendVisibleItems()V
    .locals 3

    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mGrid:Landroidx/leanback/widget/Grid;

    iget v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    const/high16 v2, 0x40000

    and-int/2addr v1, v2

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget p0, p0, Landroidx/leanback/widget/GridLayoutManager;->mExtraLayoutSpaceInPreLayout:I

    rsub-int/lit8 p0, p0, 0x0

    goto :goto_0

    :cond_0
    iget v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mSizePrimary:I

    iget p0, p0, Landroidx/leanback/widget/GridLayoutManager;->mExtraLayoutSpaceInPreLayout:I

    add-int/2addr p0, v1

    :goto_0
    invoke-virtual {v0, p0, v2}, Landroidx/leanback/widget/Grid;->appendVisibleItems(IZ)Z

    return-void
.end method

.method public final canScrollHorizontally()Z
    .locals 2

    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mOrientation:I

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget p0, p0, Landroidx/leanback/widget/GridLayoutManager;->mNumRows:I

    if-le p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public final canScrollVertically()Z
    .locals 2

    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mOrientation:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget p0, p0, Landroidx/leanback/widget/GridLayoutManager;->mNumRows:I

    if-le p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public final checkLayoutParams(Landroidx/recyclerview/widget/RecyclerView$LayoutParams;)Z
    .locals 0

    instance-of p0, p1, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;

    return p0
.end method

.method public final collectAdjacentPrefetchPositions(IILandroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;)V
    .locals 1

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0, p3}, Landroidx/leanback/widget/GridLayoutManager;->saveContext(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V

    iget p3, p0, Landroidx/leanback/widget/GridLayoutManager;->mOrientation:I

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    move p1, p2

    :goto_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result p2

    if-eqz p2, :cond_3

    if-nez p1, :cond_1

    goto :goto_2

    :cond_1
    if-gez p1, :cond_2

    const/4 p2, 0x0

    goto :goto_1

    :cond_2
    iget p2, p0, Landroidx/leanback/widget/GridLayoutManager;->mSizePrimary:I

    :goto_1
    iget-object p3, p0, Landroidx/leanback/widget/GridLayoutManager;->mGrid:Landroidx/leanback/widget/Grid;

    invoke-virtual {p3, p2, p1, p4}, Landroidx/leanback/widget/Grid;->collectAdjacentPrefetchPositions(IILandroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Landroidx/leanback/widget/GridLayoutManager;->leaveContext()V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_3
    :goto_2
    invoke-virtual {p0}, Landroidx/leanback/widget/GridLayoutManager;->leaveContext()V

    return-void

    :goto_3
    invoke-virtual {p0}, Landroidx/leanback/widget/GridLayoutManager;->leaveContext()V

    throw p1
.end method

.method public final collectInitialPrefetchPositions(ILandroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;)V
    .locals 4

    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mBaseGridView:Landroidx/leanback/widget/BaseGridView;

    iget v0, v0, Landroidx/leanback/widget/BaseGridView;->mInitialPrefetchItemCount:I

    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    iget p0, p0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPosition:I

    add-int/lit8 v1, v0, -0x1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr p0, v1

    sub-int v1, p1, v0

    invoke-static {p0, v1}, Ljava/lang/Math;->min(II)I

    move-result p0

    const/4 v1, 0x0

    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    move v2, p0

    :goto_0
    if-ge v2, p1, :cond_0

    add-int v3, p0, v0

    if-ge v2, v3, :cond_0

    invoke-virtual {p2, v2, v1}, Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->addPosition(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final dispatchChildSelected()V
    .locals 7

    const/4 v0, 0x1

    const/4 v1, -0x1

    iget-object v2, p0, Landroidx/leanback/widget/GridLayoutManager;->mChildViewHolderSelectedListeners:Ljava/util/ArrayList;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_6

    iget v2, p0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPosition:I

    const/4 v3, 0x0

    if-ne v2, v1, :cond_0

    move-object v2, v3

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v2

    :goto_0
    if-eqz v2, :cond_2

    iget-object v3, p0, Landroidx/leanback/widget/GridLayoutManager;->mBaseGridView:Landroidx/leanback/widget/BaseGridView;

    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v2

    iget-object v3, p0, Landroidx/leanback/widget/GridLayoutManager;->mBaseGridView:Landroidx/leanback/widget/BaseGridView;

    iget v4, p0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPosition:I

    iget-object v5, p0, Landroidx/leanback/widget/GridLayoutManager;->mChildViewHolderSelectedListeners:Ljava/util/ArrayList;

    if-nez v5, :cond_1

    goto :goto_3

    :cond_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v0

    :goto_1
    if-ltz v5, :cond_4

    iget-object v6, p0, Landroidx/leanback/widget/GridLayoutManager;->mChildViewHolderSelectedListeners:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/leanback/widget/OnChildViewHolderSelectedListener;

    invoke-virtual {v6, v3, v2, v4}, Landroidx/leanback/widget/OnChildViewHolderSelectedListener;->onChildViewHolderSelected(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    add-int/2addr v5, v1

    goto :goto_1

    :cond_2
    iget-object v2, p0, Landroidx/leanback/widget/GridLayoutManager;->mBaseGridView:Landroidx/leanback/widget/BaseGridView;

    iget-object v4, p0, Landroidx/leanback/widget/GridLayoutManager;->mChildViewHolderSelectedListeners:Ljava/util/ArrayList;

    if-nez v4, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v0

    :goto_2
    if-ltz v4, :cond_4

    iget-object v5, p0, Landroidx/leanback/widget/GridLayoutManager;->mChildViewHolderSelectedListeners:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/leanback/widget/OnChildViewHolderSelectedListener;

    invoke-virtual {v5, v2, v3, v1}, Landroidx/leanback/widget/OnChildViewHolderSelectedListener;->onChildViewHolderSelected(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    add-int/2addr v4, v1

    goto :goto_2

    :cond_4
    :goto_3
    iget v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    and-int/lit8 v1, v1, 0x3

    if-eq v1, v0, :cond_6

    iget-object v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mBaseGridView:Landroidx/leanback/widget/BaseGridView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->isLayoutRequested()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_6

    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->isLayoutRequested()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mBaseGridView:Landroidx/leanback/widget/BaseGridView;

    sget-object v1, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    iget-object p0, p0, Landroidx/leanback/widget/GridLayoutManager;->mRequestLayoutRunnable:Landroidx/leanback/widget/GridLayoutManager$1;

    invoke-virtual {v0, p0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_5

    :cond_5
    add-int/2addr v2, v0

    goto :goto_4

    :cond_6
    :goto_5
    return-void
.end method

.method public final dispatchChildSelectedAndPositioned()V
    .locals 2

    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mChildViewHolderSelectedListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4

    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPosition:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    iget-object v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mBaseGridView:Landroidx/leanback/widget/BaseGridView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mChildViewHolderSelectedListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    goto :goto_3

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_4

    iget-object v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mChildViewHolderSelectedListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/leanback/widget/OnChildViewHolderSelectedListener;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mChildViewHolderSelectedListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_2
    if-ltz v0, :cond_4

    iget-object v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mChildViewHolderSelectedListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/leanback/widget/OnChildViewHolderSelectedListener;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_4
    :goto_3
    return-void
.end method

.method public final generateDefaultLayoutParams()Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    .locals 1

    new-instance p0, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p0, v0, v0}, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;-><init>(II)V

    return-object p0
.end method

.method public final generateLayoutParams(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    .locals 0

    new-instance p0, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;

    invoke-direct {p0, p1, p2}, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object p0
.end method

.method public final generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    .locals 0

    instance-of p0, p1, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;

    if-eqz p0, :cond_0

    new-instance p0, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;

    check-cast p1, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;

    invoke-direct {p0, p1}, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;-><init>(Landroidx/leanback/widget/GridLayoutManager$LayoutParams;)V

    return-object p0

    :cond_0
    instance-of p0, p1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    if-eqz p0, :cond_1

    new-instance p0, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    invoke-direct {p0, p1}, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;-><init>(Landroidx/recyclerview/widget/RecyclerView$LayoutParams;)V

    return-object p0

    :cond_1
    instance-of p0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p0, :cond_2

    new-instance p0, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {p0, p1}, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object p0

    :cond_2
    new-instance p0, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;

    invoke-direct {p0, p1}, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object p0
.end method

.method public final getColumnCountForAccessibility(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 2

    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mGrid:Landroidx/leanback/widget/Grid;

    if-eqz v0, :cond_0

    iget p0, v0, Landroidx/leanback/widget/Grid;->mNumRows:I

    return p0

    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getColumnCountForAccessibility(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result p0

    return p0
.end method

.method public final getDecoratedBottom(Landroid/view/View;)I
    .locals 0

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedBottom(Landroid/view/View;)I

    move-result p0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;

    iget p1, p1, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;->mBottomInset:I

    sub-int/2addr p0, p1

    return p0
.end method

.method public final getDecoratedBoundsWithMargins(Landroid/graphics/Rect;Landroid/view/View;)V
    .locals 1

    invoke-static {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->getDecoratedBoundsWithMarginsInt(Landroid/graphics/Rect;Landroid/view/View;)V

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;

    iget p2, p1, Landroid/graphics/Rect;->left:I

    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;->mLeftInset:I

    add-int/2addr p2, v0

    iput p2, p1, Landroid/graphics/Rect;->left:I

    iget p2, p1, Landroid/graphics/Rect;->top:I

    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;->mTopInset:I

    add-int/2addr p2, v0

    iput p2, p1, Landroid/graphics/Rect;->top:I

    iget p2, p1, Landroid/graphics/Rect;->right:I

    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;->mRightInset:I

    sub-int/2addr p2, v0

    iput p2, p1, Landroid/graphics/Rect;->right:I

    iget p2, p1, Landroid/graphics/Rect;->bottom:I

    iget p0, p0, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;->mBottomInset:I

    sub-int/2addr p2, p0

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method public final getDecoratedLeft(Landroid/view/View;)I
    .locals 0

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedLeft(Landroid/view/View;)I

    move-result p0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;

    iget p1, p1, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;->mLeftInset:I

    add-int/2addr p0, p1

    return p0
.end method

.method public final getDecoratedRight(Landroid/view/View;)I
    .locals 0

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedRight(Landroid/view/View;)I

    move-result p0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;

    iget p1, p1, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;->mRightInset:I

    sub-int/2addr p0, p1

    return p0
.end method

.method public final getDecoratedTop(Landroid/view/View;)I
    .locals 0

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedTop(Landroid/view/View;)I

    move-result p0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;

    iget p1, p1, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;->mTopInset:I

    add-int/2addr p0, p1

    return p0
.end method

.method public final getMovement(I)I
    .locals 9

    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mOrientation:I

    const/16 v1, 0x82

    const/16 v2, 0x42

    const/16 v3, 0x21

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x1

    const/16 v8, 0x11

    if-nez v0, :cond_6

    const/high16 v0, 0x40000

    if-eq p1, v8, :cond_4

    if-eq p1, v3, :cond_5

    if-eq p1, v2, :cond_1

    if-eq p1, v1, :cond_0

    move v4, v8

    goto :goto_2

    :cond_0
    :goto_0
    move v4, v6

    goto :goto_2

    :cond_1
    iget p0, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    and-int/2addr p0, v0

    if-nez p0, :cond_3

    :cond_2
    move v4, v7

    goto :goto_2

    :cond_3
    :goto_1
    move v4, v5

    goto :goto_2

    :cond_4
    iget p0, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    and-int/2addr p0, v0

    if-nez p0, :cond_2

    goto :goto_1

    :cond_5
    :goto_2
    move v5, v4

    goto :goto_4

    :cond_6
    if-ne v0, v7, :cond_a

    const/high16 v0, 0x80000

    if-eq p1, v8, :cond_9

    if-eq p1, v3, :cond_b

    if-eq p1, v2, :cond_8

    if-eq p1, v1, :cond_7

    goto :goto_3

    :cond_7
    move v5, v7

    goto :goto_4

    :cond_8
    iget p0, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    and-int/2addr p0, v0

    if-nez p0, :cond_5

    goto :goto_0

    :cond_9
    iget p0, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    and-int/2addr p0, v0

    if-nez p0, :cond_0

    goto :goto_2

    :cond_a
    :goto_3
    move v5, v8

    :cond_b
    :goto_4
    return v5
.end method

.method public final getRowCountForAccessibility(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 1

    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mOrientation:I

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mGrid:Landroidx/leanback/widget/Grid;

    if-eqz v0, :cond_0

    iget p0, v0, Landroidx/leanback/widget/Grid;->mNumRows:I

    return p0

    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getRowCountForAccessibility(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result p0

    return p0
.end method

.method public final getRowSizeSecondary(I)I
    .locals 1

    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mFixedRowSizeSecondary:I

    if-eqz v0, :cond_0

    return v0

    :cond_0
    iget-object p0, p0, Landroidx/leanback/widget/GridLayoutManager;->mRowSizeSecondary:[I

    if-nez p0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    aget p0, p0, p1

    return p0
.end method

.method public final getRowStartSecondary(I)I
    .locals 4

    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    const/high16 v1, 0x80000

    and-int/2addr v0, v1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mNumRows:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-le v0, p1, :cond_2

    invoke-virtual {p0, v0}, Landroidx/leanback/widget/GridLayoutManager;->getRowSizeSecondary(I)I

    move-result v2

    iget v3, p0, Landroidx/leanback/widget/GridLayoutManager;->mSpacingSecondary:I

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_1
    if-ge v1, p1, :cond_1

    invoke-virtual {p0, v1}, Landroidx/leanback/widget/GridLayoutManager;->getRowSizeSecondary(I)I

    move-result v2

    iget v3, p0, Landroidx/leanback/widget/GridLayoutManager;->mSpacingSecondary:I

    add-int/2addr v2, v3

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    move v1, v0

    :cond_2
    return v1
.end method

.method public final getScrollPosition(Landroid/view/View;Landroid/view/View;[I)Z
    .locals 5

    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroidx/leanback/widget/WindowAlignment;

    iget-object v1, v0, Landroidx/leanback/widget/WindowAlignment;->mMainAxis:Landroidx/leanback/widget/WindowAlignment$Axis;

    iget v2, p0, Landroidx/leanback/widget/GridLayoutManager;->mOrientation:I

    if-nez v2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v3

    iget v4, v2, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;->mLeftInset:I

    add-int/2addr v3, v4

    iget v2, v2, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;->mAlignX:I

    :goto_0
    add-int/2addr v3, v2

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    iget v4, v2, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;->mTopInset:I

    add-int/2addr v3, v4

    iget v2, v2, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;->mAlignY:I

    goto :goto_0

    :goto_1
    invoke-virtual {v1, v3}, Landroidx/leanback/widget/WindowAlignment$Axis;->getScroll(I)I

    move-result v1

    const/4 v2, 0x0

    if-eqz p2, :cond_1

    invoke-static {p1, p2}, Landroidx/leanback/widget/GridLayoutManager;->getSubPositionByView(Landroid/view/View;Landroid/view/View;)I

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;

    iget-object v3, v3, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;->mAlignMultiple:[I

    aget p2, v3, p2

    aget v3, v3, v2

    sub-int/2addr p2, v3

    add-int/2addr v1, p2

    :cond_1
    iget p2, p0, Landroidx/leanback/widget/GridLayoutManager;->mOrientation:I

    if-nez p2, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    iget v3, p2, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;->mTopInset:I

    add-int/2addr p1, v3

    iget p2, p2, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;->mAlignY:I

    :goto_2
    add-int/2addr p1, p2

    goto :goto_3

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p1

    iget v3, p2, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;->mLeftInset:I

    add-int/2addr p1, v3

    iget p2, p2, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;->mAlignX:I

    goto :goto_2

    :goto_3
    iget-object p2, v0, Landroidx/leanback/widget/WindowAlignment;->mSecondAxis:Landroidx/leanback/widget/WindowAlignment$Axis;

    invoke-virtual {p2, p1}, Landroidx/leanback/widget/WindowAlignment$Axis;->getScroll(I)I

    move-result p1

    iget p0, p0, Landroidx/leanback/widget/GridLayoutManager;->mPrimaryScrollExtra:I

    add-int/2addr v1, p0

    const/4 p0, 0x1

    if-nez v1, :cond_4

    if-eqz p1, :cond_3

    goto :goto_4

    :cond_3
    aput v2, p3, v2

    aput v2, p3, p0

    goto :goto_5

    :cond_4
    :goto_4
    aput v1, p3, v2

    aput p1, p3, p0

    move v2, p0

    :goto_5
    return v2
.end method

.method public final getSizeSecondary()I
    .locals 2

    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    const/high16 v1, 0x80000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mNumRows:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    invoke-virtual {p0, v0}, Landroidx/leanback/widget/GridLayoutManager;->getRowStartSecondary(I)I

    move-result v1

    invoke-virtual {p0, v0}, Landroidx/leanback/widget/GridLayoutManager;->getRowSizeSecondary(I)I

    move-result p0

    add-int/2addr p0, v1

    return p0
.end method

.method public final hasCreatedFirstItem()Z
    .locals 1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/leanback/widget/GridLayoutManager;->mBaseGridView:Landroidx/leanback/widget/BaseGridView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public final hasCreatedLastItem()Z
    .locals 2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object p0, p0, Landroidx/leanback/widget/GridLayoutManager;->mBaseGridView:Landroidx/leanback/widget/BaseGridView;

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public final isItemFullyVisible(I)Z
    .locals 3

    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mBaseGridView:Landroidx/leanback/widget/BaseGridView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    if-ltz v1, :cond_1

    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    iget-object v2, p0, Landroidx/leanback/widget/GridLayoutManager;->mBaseGridView:Landroidx/leanback/widget/BaseGridView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    if-gt v1, v2, :cond_1

    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    if-ltz v1, :cond_1

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    iget-object p0, p0, Landroidx/leanback/widget/GridLayoutManager;->mBaseGridView:Landroidx/leanback/widget/BaseGridView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result p0

    if-gt p1, p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public final layoutChild(Landroid/view/View;IIII)V
    .locals 8

    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mOrientation:I

    if-nez v0, :cond_0

    invoke-static {p1}, Landroidx/leanback/widget/GridLayoutManager;->getDecoratedMeasuredHeightWithMargin(Landroid/view/View;)I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Landroidx/leanback/widget/GridLayoutManager;->getDecoratedMeasuredWidthWithMargin(Landroid/view/View;)I

    move-result v0

    :goto_0
    iget v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mFixedRowSizeSecondary:I

    if-lez v1, :cond_1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_1
    iget v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mGravity:I

    and-int/lit8 v2, v1, 0x70

    iget v3, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    const/high16 v4, 0xc0000

    and-int/2addr v3, v4

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    const v3, 0x800007

    and-int/2addr v1, v3

    invoke-static {v1, v4}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v1

    goto :goto_1

    :cond_2
    and-int/lit8 v1, v1, 0x7

    :goto_1
    iget v3, p0, Landroidx/leanback/widget/GridLayoutManager;->mOrientation:I

    if-nez v3, :cond_3

    const/16 v5, 0x30

    if-eq v2, v5, :cond_a

    :cond_3
    if-ne v3, v4, :cond_4

    const/4 v5, 0x3

    if-ne v1, v5, :cond_4

    goto :goto_3

    :cond_4
    if-nez v3, :cond_5

    const/16 v5, 0x50

    if-eq v2, v5, :cond_6

    :cond_5
    if-ne v3, v4, :cond_7

    const/4 v5, 0x5

    if-ne v1, v5, :cond_7

    :cond_6
    invoke-virtual {p0, p2}, Landroidx/leanback/widget/GridLayoutManager;->getRowSizeSecondary(I)I

    move-result p2

    sub-int/2addr p2, v0

    :goto_2
    add-int/2addr p5, p2

    goto :goto_3

    :cond_7
    if-nez v3, :cond_8

    const/16 v5, 0x10

    if-eq v2, v5, :cond_9

    :cond_8
    if-ne v3, v4, :cond_a

    if-ne v1, v4, :cond_a

    :cond_9
    invoke-virtual {p0, p2}, Landroidx/leanback/widget/GridLayoutManager;->getRowSizeSecondary(I)I

    move-result p2

    sub-int/2addr p2, v0

    div-int/lit8 p2, p2, 0x2

    goto :goto_2

    :cond_a
    :goto_3
    iget p2, p0, Landroidx/leanback/widget/GridLayoutManager;->mOrientation:I

    if-nez p2, :cond_b

    add-int/2addr v0, p5

    goto :goto_4

    :cond_b
    add-int/2addr v0, p5

    move v6, p5

    move p5, p3

    move p3, v6

    move v7, v0

    move v0, p4

    move p4, v7

    :goto_4
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;

    invoke-static {p1, p3, p5, p4, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->layoutDecoratedWithMargins(Landroid/view/View;IIII)V

    sget-object v1, Landroidx/leanback/widget/GridLayoutManager;->sTempRect:Landroid/graphics/Rect;

    invoke-static {v1, p1}, Landroidx/recyclerview/widget/RecyclerView;->getDecoratedBoundsWithMarginsInt(Landroid/graphics/Rect;Landroid/view/View;)V

    iget v2, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr p3, v2

    iget v2, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr p5, v2

    iget v2, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, p4

    iget p4, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p4, v0

    iput p3, p2, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;->mLeftInset:I

    iput p5, p2, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;->mTopInset:I

    iput v2, p2, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;->mRightInset:I

    iput p4, p2, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;->mBottomInset:I

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;

    iget-object p3, p2, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;->mAlignmentFacet:Landroidx/leanback/widget/ItemAlignmentFacet;

    iget-object p4, p0, Landroidx/leanback/widget/GridLayoutManager;->mItemAlignment:Landroidx/leanback/widget/ItemAlignment;

    if-nez p3, :cond_c

    iget-object p0, p4, Landroidx/leanback/widget/ItemAlignment;->horizontal:Landroidx/leanback/widget/ItemAlignment$Axis;

    iget p3, p0, Landroidx/leanback/widget/ItemAlignment$Axis;->mOrientation:I

    invoke-static {p1, p0, p3}, Landroidx/leanback/widget/ItemAlignmentFacetHelper;->getAlignmentPosition(Landroid/view/View;Landroidx/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;I)I

    move-result p0

    iput p0, p2, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;->mAlignX:I

    iget-object p0, p4, Landroidx/leanback/widget/ItemAlignment;->vertical:Landroidx/leanback/widget/ItemAlignment$Axis;

    iget p3, p0, Landroidx/leanback/widget/ItemAlignment$Axis;->mOrientation:I

    invoke-static {p1, p0, p3}, Landroidx/leanback/widget/ItemAlignmentFacetHelper;->getAlignmentPosition(Landroid/view/View;Landroidx/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;I)I

    move-result p0

    iput p0, p2, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;->mAlignY:I

    goto :goto_7

    :cond_c
    iget p5, p0, Landroidx/leanback/widget/GridLayoutManager;->mOrientation:I

    iget-object v0, p2, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;->mAlignMultiple:[I

    iget-object p3, p3, Landroidx/leanback/widget/ItemAlignmentFacet;->mAlignmentDefs:[Landroidx/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;

    if-eqz v0, :cond_d

    array-length v0, v0

    array-length v1, p3

    if-eq v0, v1, :cond_e

    :cond_d
    array-length v0, p3

    new-array v0, v0, [I

    iput-object v0, p2, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;->mAlignMultiple:[I

    :cond_e
    const/4 v0, 0x0

    move v1, v0

    :goto_5
    array-length v2, p3

    if-ge v1, v2, :cond_f

    iget-object v2, p2, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;->mAlignMultiple:[I

    aget-object v3, p3, v1

    invoke-static {p1, v3, p5}, Landroidx/leanback/widget/ItemAlignmentFacetHelper;->getAlignmentPosition(Landroid/view/View;Landroidx/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;I)I

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_f
    if-nez p5, :cond_10

    iget-object p3, p2, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;->mAlignMultiple:[I

    aget p3, p3, v0

    iput p3, p2, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;->mAlignX:I

    goto :goto_6

    :cond_10
    iget-object p3, p2, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;->mAlignMultiple:[I

    aget p3, p3, v0

    iput p3, p2, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;->mAlignY:I

    :goto_6
    iget p0, p0, Landroidx/leanback/widget/GridLayoutManager;->mOrientation:I

    if-nez p0, :cond_11

    iget-object p0, p4, Landroidx/leanback/widget/ItemAlignment;->vertical:Landroidx/leanback/widget/ItemAlignment$Axis;

    iget p3, p0, Landroidx/leanback/widget/ItemAlignment$Axis;->mOrientation:I

    invoke-static {p1, p0, p3}, Landroidx/leanback/widget/ItemAlignmentFacetHelper;->getAlignmentPosition(Landroid/view/View;Landroidx/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;I)I

    move-result p0

    iput p0, p2, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;->mAlignY:I

    goto :goto_7

    :cond_11
    iget-object p0, p4, Landroidx/leanback/widget/ItemAlignment;->horizontal:Landroidx/leanback/widget/ItemAlignment$Axis;

    iget p3, p0, Landroidx/leanback/widget/ItemAlignment$Axis;->mOrientation:I

    invoke-static {p1, p0, p3}, Landroidx/leanback/widget/ItemAlignmentFacetHelper;->getAlignmentPosition(Landroid/view/View;Landroidx/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;I)I

    move-result p0

    iput p0, p2, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;->mAlignX:I

    :goto_7
    return-void
.end method

.method public final leaveContext()V
    .locals 1

    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mSaveContextLevel:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mSaveContextLevel:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    iput-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    const/4 v0, 0x0

    iput v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mPositionDeltaInPreLayout:I

    iput v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mExtraLayoutSpaceInPreLayout:I

    :cond_0
    return-void
.end method

.method public final measureChild(Landroid/view/View;)V
    .locals 7

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;

    sget-object v1, Landroidx/leanback/widget/GridLayoutManager;->sTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v1, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->calculateItemDecorationsForChild(Landroid/graphics/Rect;Landroid/view/View;)V

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v2, v3

    iget v3, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v3

    iget v3, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v3, v4

    iget v4, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v4

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v1

    iget v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mRowSizeSecondaryRequested:I

    const/4 v4, -0x2

    const/4 v5, 0x0

    if-ne v1, v4, :cond_0

    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    goto :goto_0

    :cond_0
    iget v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mFixedRowSizeSecondary:I

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    :goto_0
    iget p0, p0, Landroidx/leanback/widget/GridLayoutManager;->mOrientation:I

    if-nez p0, :cond_1

    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {p0, v2, v4}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result p0

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {v1, v3, v0}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v0

    goto :goto_1

    :cond_1
    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {p0, v3, v4}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result p0

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {v1, v2, v0}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v0

    move v6, v0

    move v0, p0

    move p0, v6

    :goto_1
    invoke-virtual {p1, p0, v0}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method public final onAdapterChanged(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/leanback/widget/GridLayoutManager;->mGrid:Landroidx/leanback/widget/Grid;

    iput-object p1, p0, Landroidx/leanback/widget/GridLayoutManager;->mRowSizeSecondary:[I

    iget p1, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    and-int/lit16 p1, p1, -0x401

    iput p1, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    const/4 p1, -0x1

    iput p1, p0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPosition:I

    const/4 p1, 0x0

    iput p1, p0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPositionOffset:I

    iget-object p0, p0, Landroidx/leanback/widget/GridLayoutManager;->mChildrenStates:Landroidx/leanback/widget/ViewsStateBundle;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_0
    return-void
.end method

.method public final onAddFocusables(Landroidx/recyclerview/widget/RecyclerView;Ljava/util/ArrayList;II)Z
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    iget v4, v0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    const v5, 0x8000

    and-int/2addr v4, v5

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    return v5

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->hasFocus()Z

    move-result v4

    if-eqz v4, :cond_1d

    iget-object v4, v0, Landroidx/leanback/widget/GridLayoutManager;->mPendingMoveSmoothScroller:Landroidx/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;

    if-eqz v4, :cond_1

    return v5

    :cond_1
    invoke-virtual {v0, v2}, Landroidx/leanback/widget/GridLayoutManager;->getMovement(I)I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->findFocus()Landroid/view/View;

    move-result-object v6

    const/4 v8, -0x1

    if-eqz v6, :cond_3

    iget-object v9, v0, Landroidx/leanback/widget/GridLayoutManager;->mBaseGridView:Landroidx/leanback/widget/BaseGridView;

    if-eqz v9, :cond_3

    if-eq v6, v9, :cond_3

    invoke-virtual {v0, v6}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findContainingItemView(Landroid/view/View;)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v9

    const/4 v10, 0x0

    :goto_0
    if-ge v10, v9, :cond_3

    invoke-virtual {v0, v10}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    if-ne v11, v6, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_3
    move v10, v8

    :goto_1
    invoke-virtual {v0, v10}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-static {v6}, Landroidx/leanback/widget/GridLayoutManager;->getAdapterPositionByView(Landroid/view/View;)I

    move-result v6

    if-ne v6, v8, :cond_4

    const/4 v9, 0x0

    goto :goto_2

    :cond_4
    invoke-virtual {v0, v6}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v9

    :goto_2
    if-eqz v9, :cond_5

    invoke-virtual {v9, v1, v2, v3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    :cond_5
    iget-object v11, v0, Landroidx/leanback/widget/GridLayoutManager;->mGrid:Landroidx/leanback/widget/Grid;

    if-eqz v11, :cond_1c

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v11

    if-nez v11, :cond_6

    goto/16 :goto_b

    :cond_6
    const/4 v11, 0x2

    const/4 v12, 0x3

    if-eq v4, v12, :cond_7

    if-ne v4, v11, :cond_8

    :cond_7
    iget-object v13, v0, Landroidx/leanback/widget/GridLayoutManager;->mGrid:Landroidx/leanback/widget/Grid;

    iget v13, v13, Landroidx/leanback/widget/Grid;->mNumRows:I

    if-gt v13, v5, :cond_8

    return v5

    :cond_8
    iget-object v13, v0, Landroidx/leanback/widget/GridLayoutManager;->mGrid:Landroidx/leanback/widget/Grid;

    if-eqz v13, :cond_9

    if-eqz v9, :cond_9

    invoke-virtual {v13, v6}, Landroidx/leanback/widget/Grid;->getLocation(I)Landroidx/leanback/widget/Grid$Location;

    move-result-object v13

    iget v13, v13, Landroidx/leanback/widget/Grid$Location;->mRow:I

    goto :goto_3

    :cond_9
    move v13, v8

    :goto_3
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-eq v4, v5, :cond_b

    if-ne v4, v12, :cond_a

    goto :goto_4

    :cond_a
    move v15, v8

    goto :goto_5

    :cond_b
    :goto_4
    move v15, v5

    :goto_5
    if-lez v15, :cond_c

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v16

    add-int/lit8 v16, v16, -0x1

    move/from16 v7, v16

    goto :goto_6

    :cond_c
    const/4 v7, 0x0

    :goto_6
    if-ne v10, v8, :cond_e

    if-lez v15, :cond_d

    const/4 v8, 0x0

    goto :goto_7

    :cond_d
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v8

    sub-int/2addr v8, v5

    goto :goto_7

    :cond_e
    add-int v8, v10, v15

    :goto_7
    if-lez v15, :cond_f

    if-gt v8, v7, :cond_20

    goto :goto_8

    :cond_f
    if-lt v8, v7, :cond_20

    :goto_8
    invoke-virtual {v0, v8}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v16

    if-nez v16, :cond_1b

    invoke-virtual {v10}, Landroid/view/View;->hasFocusable()Z

    move-result v16

    if-nez v16, :cond_10

    goto :goto_a

    :cond_10
    if-nez v9, :cond_11

    invoke-virtual {v10, v1, v2, v3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-le v10, v14, :cond_1b

    goto/16 :goto_c

    :cond_11
    invoke-virtual {v0, v8}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Landroidx/leanback/widget/GridLayoutManager;->getAdapterPositionByView(Landroid/view/View;)I

    move-result v11

    iget-object v12, v0, Landroidx/leanback/widget/GridLayoutManager;->mGrid:Landroidx/leanback/widget/Grid;

    invoke-virtual {v12, v11}, Landroidx/leanback/widget/Grid;->getLocation(I)Landroidx/leanback/widget/Grid$Location;

    move-result-object v12

    if-nez v12, :cond_13

    :cond_12
    :goto_9
    const/4 v11, 0x2

    goto :goto_a

    :cond_13
    iget v12, v12, Landroidx/leanback/widget/Grid$Location;->mRow:I

    if-ne v4, v5, :cond_14

    if-ne v12, v13, :cond_12

    if-le v11, v6, :cond_12

    invoke-virtual {v10, v1, v2, v3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-le v10, v14, :cond_12

    goto :goto_c

    :cond_14
    if-nez v4, :cond_15

    if-ne v12, v13, :cond_12

    if-ge v11, v6, :cond_12

    invoke-virtual {v10, v1, v2, v3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-le v10, v14, :cond_12

    goto :goto_c

    :cond_15
    const/4 v11, 0x3

    if-ne v4, v11, :cond_18

    if-ne v12, v13, :cond_16

    goto :goto_9

    :cond_16
    if-ge v12, v13, :cond_17

    goto :goto_c

    :cond_17
    invoke-virtual {v10, v1, v2, v3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    goto :goto_9

    :cond_18
    const/4 v11, 0x2

    if-ne v4, v11, :cond_1b

    if-ne v12, v13, :cond_19

    goto :goto_a

    :cond_19
    if-le v12, v13, :cond_1a

    goto :goto_c

    :cond_1a
    invoke-virtual {v10, v1, v2, v3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    :cond_1b
    :goto_a
    add-int/2addr v8, v15

    const/4 v12, 0x3

    goto :goto_7

    :cond_1c
    :goto_b
    return v5

    :cond_1d
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    iget v6, v0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPosition:I

    invoke-virtual {v0, v6}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1e

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    :cond_1e
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eq v0, v4, :cond_1f

    return v5

    :cond_1f
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->isFocusable()Z

    move-result v0

    if-eqz v0, :cond_20

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_20
    :goto_c
    return v5
.end method

.method public final onInitializeAccessibilityNodeInfo(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 5

    invoke-virtual {p0, p1, p2}, Landroidx/leanback/widget/GridLayoutManager;->saveContext(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    iget v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    const/high16 v2, 0x40000

    and-int/2addr v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    and-int/lit16 v1, v1, 0x800

    if-eqz v1, :cond_1

    if-le v0, v4, :cond_4

    invoke-virtual {p0, v3}, Landroidx/leanback/widget/GridLayoutManager;->isItemFullyVisible(I)Z

    move-result v1

    if-nez v1, :cond_4

    :cond_1
    iget v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mOrientation:I

    if-nez v1, :cond_3

    if-eqz v2, :cond_2

    sget-object v1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_SCROLL_RIGHT:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    goto :goto_1

    :cond_2
    sget-object v1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_SCROLL_LEFT:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    :goto_1
    invoke-virtual {p3, v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    goto :goto_2

    :cond_3
    sget-object v1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_SCROLL_UP:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-virtual {p3, v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    :goto_2
    invoke-virtual {p3, v4}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setScrollable(Z)V

    :cond_4
    iget v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    and-int/lit16 v1, v1, 0x1000

    if-eqz v1, :cond_5

    if-le v0, v4, :cond_8

    sub-int/2addr v0, v4

    invoke-virtual {p0, v0}, Landroidx/leanback/widget/GridLayoutManager;->isItemFullyVisible(I)Z

    move-result v0

    if-nez v0, :cond_8

    :cond_5
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mOrientation:I

    if-nez v0, :cond_7

    if-eqz v2, :cond_6

    sget-object v0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_SCROLL_LEFT:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    goto :goto_3

    :cond_6
    sget-object v0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_SCROLL_RIGHT:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    :goto_3
    invoke-virtual {p3, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    goto :goto_4

    :cond_7
    sget-object v0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_SCROLL_DOWN:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-virtual {p3, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    :goto_4
    invoke-virtual {p3, v4}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setScrollable(Z)V

    :cond_8
    invoke-virtual {p0, p1, p2}, Landroidx/leanback/widget/GridLayoutManager;->getRowCountForAccessibility(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result v0

    invoke-virtual {p0, p1, p2}, Landroidx/leanback/widget/GridLayoutManager;->getColumnCountForAccessibility(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result p1

    invoke-static {v0, p1, v3}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat;->obtain(III)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setCollectionInfo(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat;)V

    const-class p1, Landroid/widget/GridView;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroidx/leanback/widget/GridLayoutManager;->leaveContext()V

    return-void
.end method

.method public final onInitializeAccessibilityNodeInfoForItem(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 1

    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget-object p2, p0, Landroidx/leanback/widget/GridLayoutManager;->mGrid:Landroidx/leanback/widget/Grid;

    if-eqz p2, :cond_5

    instance-of p2, p1, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    check-cast p1, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->mViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAbsoluteAdapterPosition()I

    move-result p1

    const/4 p2, -0x1

    if-ltz p1, :cond_2

    iget-object p3, p0, Landroidx/leanback/widget/GridLayoutManager;->mGrid:Landroidx/leanback/widget/Grid;

    invoke-virtual {p3, p1}, Landroidx/leanback/widget/Grid;->getLocation(I)Landroidx/leanback/widget/Grid$Location;

    move-result-object p3

    if-nez p3, :cond_1

    goto :goto_0

    :cond_1
    iget p2, p3, Landroidx/leanback/widget/Grid$Location;->mRow:I

    :cond_2
    :goto_0
    if-gez p2, :cond_3

    return-void

    :cond_3
    iget-object p3, p0, Landroidx/leanback/widget/GridLayoutManager;->mGrid:Landroidx/leanback/widget/Grid;

    iget p3, p3, Landroidx/leanback/widget/Grid;->mNumRows:I

    div-int/2addr p1, p3

    iget p0, p0, Landroidx/leanback/widget/GridLayoutManager;->mOrientation:I

    const/4 p3, 0x0

    const/4 v0, 0x1

    if-nez p0, :cond_4

    invoke-static {p2, v0, p1, v0, p3}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;->obtain(IIIIZ)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;

    move-result-object p0

    invoke-virtual {p4, p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setCollectionItemInfo(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;)V

    goto :goto_1

    :cond_4
    invoke-static {p1, v0, p2, v0, p3}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;->obtain(IIIIZ)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;

    move-result-object p0

    invoke-virtual {p4, p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setCollectionItemInfo(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public final onInterceptFocusSearch(Landroid/view/View;I)Landroid/view/View;
    .locals 7

    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    const v1, 0x8000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq p2, v2, :cond_2

    if-ne p2, v3, :cond_1

    goto :goto_0

    :cond_1
    iget-object v4, p0, Landroidx/leanback/widget/GridLayoutManager;->mBaseGridView:Landroidx/leanback/widget/BaseGridView;

    invoke-virtual {v0, v4, p1, p2}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    goto :goto_6

    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroidx/leanback/widget/GridLayoutManager;->canScrollVertically()Z

    move-result v4

    if-eqz v4, :cond_4

    if-ne p2, v2, :cond_3

    const/16 v4, 0x82

    goto :goto_1

    :cond_3
    const/16 v4, 0x21

    :goto_1
    iget-object v5, p0, Landroidx/leanback/widget/GridLayoutManager;->mBaseGridView:Landroidx/leanback/widget/BaseGridView;

    invoke-virtual {v0, v5, p1, v4}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    goto :goto_2

    :cond_4
    const/4 v4, 0x0

    :goto_2
    invoke-virtual {p0}, Landroidx/leanback/widget/GridLayoutManager;->canScrollHorizontally()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getLayoutDirection()I

    move-result v4

    if-ne v4, v3, :cond_5

    move v4, v3

    goto :goto_3

    :cond_5
    move v4, v1

    :goto_3
    if-ne p2, v2, :cond_6

    move v5, v3

    goto :goto_4

    :cond_6
    move v5, v1

    :goto_4
    xor-int/2addr v4, v5

    if-eqz v4, :cond_7

    const/16 v4, 0x42

    goto :goto_5

    :cond_7
    const/16 v4, 0x11

    :goto_5
    iget-object v5, p0, Landroidx/leanback/widget/GridLayoutManager;->mBaseGridView:Landroidx/leanback/widget/BaseGridView;

    invoke-virtual {v0, v5, p1, v4}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    goto :goto_6

    :cond_8
    move-object v0, v4

    :goto_6
    if-eqz v0, :cond_9

    return-object v0

    :cond_9
    iget-object v4, p0, Landroidx/leanback/widget/GridLayoutManager;->mBaseGridView:Landroidx/leanback/widget/BaseGridView;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v4

    const/high16 v5, 0x60000

    if-ne v4, v5, :cond_a

    iget-object p0, p0, Landroidx/leanback/widget/GridLayoutManager;->mBaseGridView:Landroidx/leanback/widget/BaseGridView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/view/ViewParent;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_a
    invoke-virtual {p0, p2}, Landroidx/leanback/widget/GridLayoutManager;->getMovement(I)I

    move-result v4

    iget-object v5, p0, Landroidx/leanback/widget/GridLayoutManager;->mBaseGridView:Landroidx/leanback/widget/BaseGridView;

    iget v5, v5, Landroidx/recyclerview/widget/RecyclerView;->mScrollState:I

    if-eqz v5, :cond_b

    move v5, v3

    goto :goto_7

    :cond_b
    move v5, v1

    :goto_7
    const/high16 v6, 0x20000

    if-ne v4, v3, :cond_e

    if-nez v5, :cond_c

    iget v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    and-int/lit16 v1, v1, 0x1000

    if-nez v1, :cond_d

    :cond_c
    move-object v0, p1

    :cond_d
    iget v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    and-int/2addr v1, v6

    if-eqz v1, :cond_14

    invoke-virtual {p0}, Landroidx/leanback/widget/GridLayoutManager;->hasCreatedLastItem()Z

    move-result v1

    if-nez v1, :cond_14

    invoke-virtual {p0, v3}, Landroidx/leanback/widget/GridLayoutManager;->processPendingMovement(Z)V

    goto :goto_8

    :cond_e
    if-nez v4, :cond_11

    if-nez v5, :cond_f

    iget v2, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    and-int/lit16 v2, v2, 0x800

    if-nez v2, :cond_10

    :cond_f
    move-object v0, p1

    :cond_10
    iget v2, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    and-int/2addr v2, v6

    if-eqz v2, :cond_14

    invoke-virtual {p0}, Landroidx/leanback/widget/GridLayoutManager;->hasCreatedFirstItem()Z

    move-result v2

    if-nez v2, :cond_14

    invoke-virtual {p0, v1}, Landroidx/leanback/widget/GridLayoutManager;->processPendingMovement(Z)V

    goto :goto_8

    :cond_11
    const/4 v1, 0x3

    if-ne v4, v1, :cond_12

    if-nez v5, :cond_13

    iget v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    and-int/lit16 v1, v1, 0x4000

    if-nez v1, :cond_14

    goto :goto_8

    :cond_12
    if-ne v4, v2, :cond_14

    if-nez v5, :cond_13

    iget v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    and-int/lit16 v1, v1, 0x2000

    if-nez v1, :cond_14

    :cond_13
    :goto_8
    move-object v0, p1

    :cond_14
    if-eqz v0, :cond_15

    return-object v0

    :cond_15
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mBaseGridView:Landroidx/leanback/widget/BaseGridView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/view/ViewParent;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_16

    return-object p2

    :cond_16
    if-eqz p1, :cond_17

    goto :goto_9

    :cond_17
    iget-object p1, p0, Landroidx/leanback/widget/GridLayoutManager;->mBaseGridView:Landroidx/leanback/widget/BaseGridView;

    :goto_9
    return-object p1
.end method

.method public final onItemsAdded(II)V
    .locals 3

    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mGrid:Landroidx/leanback/widget/Grid;

    if-eqz v1, :cond_0

    iget v1, v1, Landroidx/leanback/widget/Grid;->mFirstVisibleIndex:I

    if-ltz v1, :cond_0

    iget v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPositionOffset:I

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_0

    add-int/2addr v0, v1

    if-gt p1, v0, :cond_0

    add-int/2addr v1, p2

    iput v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPositionOffset:I

    :cond_0
    iget-object p0, p0, Landroidx/leanback/widget/GridLayoutManager;->mChildrenStates:Landroidx/leanback/widget/ViewsStateBundle;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final onItemsChanged()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPositionOffset:I

    iget-object p0, p0, Landroidx/leanback/widget/GridLayoutManager;->mChildrenStates:Landroidx/leanback/widget/ViewsStateBundle;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final onItemsMoved(II)V
    .locals 3

    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    iget v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPositionOffset:I

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_2

    add-int/2addr v0, v1

    if-gt p1, v0, :cond_0

    add-int/lit8 v2, p1, 0x1

    if-ge v0, v2, :cond_0

    sub-int/2addr p2, p1

    add-int/2addr p2, v1

    iput p2, p0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPositionOffset:I

    goto :goto_0

    :cond_0
    if-ge p1, v0, :cond_1

    add-int/lit8 v2, v0, -0x1

    if-le p2, v2, :cond_1

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPositionOffset:I

    goto :goto_0

    :cond_1
    if-le p1, v0, :cond_2

    if-ge p2, v0, :cond_2

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPositionOffset:I

    :cond_2
    :goto_0
    iget-object p0, p0, Landroidx/leanback/widget/GridLayoutManager;->mChildrenStates:Landroidx/leanback/widget/ViewsStateBundle;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final onItemsRemoved(II)V
    .locals 5

    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mGrid:Landroidx/leanback/widget/Grid;

    if-eqz v1, :cond_1

    iget v1, v1, Landroidx/leanback/widget/Grid;->mFirstVisibleIndex:I

    if-ltz v1, :cond_1

    iget v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPositionOffset:I

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_1

    add-int v3, v0, v1

    if-gt p1, v3, :cond_1

    add-int v4, p1, p2

    if-le v4, v3, :cond_0

    sub-int/2addr p1, v3

    add-int/2addr p1, v1

    add-int/2addr p1, v0

    iput p1, p0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPosition:I

    iput v2, p0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPositionOffset:I

    goto :goto_0

    :cond_0
    sub-int/2addr v1, p2

    iput v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPositionOffset:I

    :cond_1
    :goto_0
    iget-object p0, p0, Landroidx/leanback/widget/GridLayoutManager;->mChildrenStates:Landroidx/leanback/widget/ViewsStateBundle;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final onItemsUpdated(II)V
    .locals 1

    add-int/2addr p2, p1

    :goto_0
    if-ge p1, p2, :cond_0

    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mChildrenStates:Landroidx/leanback/widget/ViewsStateBundle;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 24

    move-object/from16 v6, p0

    move-object/from16 v7, p2

    iget v0, v6, Landroidx/leanback/widget/GridLayoutManager;->mNumRows:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    if-gez v0, :cond_1

    return-void

    :cond_1
    iget v0, v6, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_2

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    if-lez v0, :cond_2

    iget v0, v6, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    or-int/lit16 v0, v0, 0x80

    iput v0, v6, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    return-void

    :cond_2
    iget v0, v6, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    and-int/lit16 v1, v0, 0x200

    const/4 v8, 0x0

    if-nez v1, :cond_3

    iput-object v8, v6, Landroidx/leanback/widget/GridLayoutManager;->mGrid:Landroidx/leanback/widget/Grid;

    iput-object v8, v6, Landroidx/leanback/widget/GridLayoutManager;->mRowSizeSecondary:[I

    and-int/lit16 v0, v0, -0x401

    iput v0, v6, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    invoke-virtual/range {p0 .. p1}, Landroidx/leanback/widget/GridLayoutManager;->removeAndRecycleAllViews(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    return-void

    :cond_3
    and-int/lit8 v0, v0, -0x4

    const/4 v9, 0x1

    or-int/2addr v0, v9

    iput v0, v6, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    invoke-virtual/range {p0 .. p2}, Landroidx/leanback/widget/GridLayoutManager;->saveContext(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V

    iget-boolean v0, v7, Landroidx/recyclerview/widget/RecyclerView$State;->mInPreLayout:Z

    const/high16 v1, -0x80000000

    const/4 v10, 0x0

    if-eqz v0, :cond_b

    invoke-virtual/range {p0 .. p0}, Landroidx/leanback/widget/GridLayoutManager;->updatePositionDeltaInPreLayout()V

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    iget-object v3, v6, Landroidx/leanback/widget/GridLayoutManager;->mGrid:Landroidx/leanback/widget/Grid;

    if-eqz v3, :cond_a

    if-lez v0, :cond_a

    iget-object v3, v6, Landroidx/leanback/widget/GridLayoutManager;->mBaseGridView:Landroidx/leanback/widget/BaseGridView;

    invoke-virtual {v6, v10}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v3

    iget v3, v3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mOldPosition:I

    iget-object v4, v6, Landroidx/leanback/widget/GridLayoutManager;->mBaseGridView:Landroidx/leanback/widget/BaseGridView;

    add-int/lit8 v5, v0, -0x1

    invoke-virtual {v6, v5}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v4

    iget v4, v4, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mOldPosition:I

    const v2, 0x7fffffff

    :goto_0
    if-ge v10, v0, :cond_8

    invoke-virtual {v6, v10}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;

    iget-object v8, v6, Landroidx/leanback/widget/GridLayoutManager;->mBaseGridView:Landroidx/leanback/widget/BaseGridView;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v8

    iget-object v9, v7, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->mViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {v9}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isUpdated()Z

    move-result v9

    if-nez v9, :cond_6

    iget-object v9, v7, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->mViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {v9}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v9

    if-nez v9, :cond_6

    invoke-virtual {v5}, Landroid/view/View;->isLayoutRequested()Z

    move-result v9

    if-nez v9, :cond_6

    invoke-virtual {v5}, Landroid/view/View;->hasFocus()Z

    move-result v9

    if-nez v9, :cond_4

    iget v9, v6, Landroidx/leanback/widget/GridLayoutManager;->mFocusPosition:I

    iget-object v11, v7, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->mViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {v11}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAbsoluteAdapterPosition()I

    move-result v11

    if-eq v9, v11, :cond_6

    :cond_4
    invoke-virtual {v5}, Landroid/view/View;->hasFocus()Z

    move-result v9

    if-eqz v9, :cond_5

    iget v9, v6, Landroidx/leanback/widget/GridLayoutManager;->mFocusPosition:I

    iget-object v7, v7, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->mViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {v7}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAbsoluteAdapterPosition()I

    move-result v7

    if-ne v9, v7, :cond_6

    :cond_5
    if-lt v8, v3, :cond_6

    if-le v8, v4, :cond_7

    :cond_6
    iget-object v7, v6, Landroidx/leanback/widget/GridLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v7, v5}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v7

    invoke-static {v2, v7}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget-object v7, v6, Landroidx/leanback/widget/GridLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v7, v5}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v5

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    :cond_7
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_8
    if-le v1, v2, :cond_9

    sub-int/2addr v1, v2

    iput v1, v6, Landroidx/leanback/widget/GridLayoutManager;->mExtraLayoutSpaceInPreLayout:I

    :cond_9
    invoke-virtual/range {p0 .. p0}, Landroidx/leanback/widget/GridLayoutManager;->appendVisibleItems()V

    invoke-virtual/range {p0 .. p0}, Landroidx/leanback/widget/GridLayoutManager;->prependVisibleItems()V

    :cond_a
    iget v0, v6, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    and-int/lit8 v0, v0, -0x4

    iput v0, v6, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    invoke-virtual/range {p0 .. p0}, Landroidx/leanback/widget/GridLayoutManager;->leaveContext()V

    return-void

    :cond_b
    iget-boolean v0, v7, Landroidx/recyclerview/widget/RecyclerView$State;->mRunPredictiveAnimations:Z

    if-eqz v0, :cond_d

    iget-object v0, v6, Landroidx/leanback/widget/GridLayoutManager;->mPositionToRowInPostLayout:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    move v3, v10

    :goto_1
    if-ge v3, v0, :cond_d

    iget-object v4, v6, Landroidx/leanback/widget/GridLayoutManager;->mBaseGridView:Landroidx/leanback/widget/BaseGridView;

    invoke-virtual {v6, v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v4

    iget v4, v4, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mOldPosition:I

    if-ltz v4, :cond_c

    iget-object v5, v6, Landroidx/leanback/widget/GridLayoutManager;->mGrid:Landroidx/leanback/widget/Grid;

    invoke-virtual {v5, v4}, Landroidx/leanback/widget/Grid;->getLocation(I)Landroidx/leanback/widget/Grid$Location;

    move-result-object v5

    if-eqz v5, :cond_c

    iget-object v11, v6, Landroidx/leanback/widget/GridLayoutManager;->mPositionToRowInPostLayout:Landroid/util/SparseIntArray;

    iget v5, v5, Landroidx/leanback/widget/Grid$Location;->mRow:I

    invoke-virtual {v11, v4, v5}, Landroid/util/SparseIntArray;->put(II)V

    :cond_c
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_d
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->isSmoothScrolling()Z

    move-result v0

    xor-int/lit8 v11, v0, 0x1

    iget v0, v6, Landroidx/leanback/widget/GridLayoutManager;->mFocusPosition:I

    const/4 v3, -0x1

    if-eq v0, v3, :cond_e

    iget v4, v6, Landroidx/leanback/widget/GridLayoutManager;->mFocusPositionOffset:I

    if-eq v4, v1, :cond_e

    add-int/2addr v0, v4

    iput v0, v6, Landroidx/leanback/widget/GridLayoutManager;->mFocusPosition:I

    iput v10, v6, Landroidx/leanback/widget/GridLayoutManager;->mSubFocusPosition:I

    :cond_e
    iput v10, v6, Landroidx/leanback/widget/GridLayoutManager;->mFocusPositionOffset:I

    iget v0, v6, Landroidx/leanback/widget/GridLayoutManager;->mFocusPosition:I

    invoke-virtual {v6, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v12

    iget v13, v6, Landroidx/leanback/widget/GridLayoutManager;->mFocusPosition:I

    iget v14, v6, Landroidx/leanback/widget/GridLayoutManager;->mSubFocusPosition:I

    iget-object v0, v6, Landroidx/leanback/widget/GridLayoutManager;->mBaseGridView:Landroidx/leanback/widget/BaseGridView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->hasFocus()Z

    move-result v15

    iget-object v0, v6, Landroidx/leanback/widget/GridLayoutManager;->mGrid:Landroidx/leanback/widget/Grid;

    if-eqz v0, :cond_f

    iget v4, v0, Landroidx/leanback/widget/Grid;->mFirstVisibleIndex:I

    goto :goto_2

    :cond_f
    move v4, v3

    :goto_2
    if-eqz v0, :cond_10

    iget v0, v0, Landroidx/leanback/widget/Grid;->mLastVisibleIndex:I

    goto :goto_3

    :cond_10
    move v0, v3

    :goto_3
    iget v5, v6, Landroidx/leanback/widget/GridLayoutManager;->mOrientation:I

    if-nez v5, :cond_11

    iget v5, v7, Landroidx/recyclerview/widget/RecyclerView$State;->mRemainingScrollHorizontal:I

    iget v2, v7, Landroidx/recyclerview/widget/RecyclerView$State;->mRemainingScrollVertical:I

    :goto_4
    move/from16 v23, v5

    move v5, v2

    move/from16 v2, v23

    goto :goto_5

    :cond_11
    iget v2, v7, Landroidx/recyclerview/widget/RecyclerView$State;->mRemainingScrollHorizontal:I

    iget v5, v7, Landroidx/recyclerview/widget/RecyclerView$State;->mRemainingScrollVertical:I

    goto :goto_4

    :goto_5
    iget-object v1, v6, Landroidx/leanback/widget/GridLayoutManager;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v1

    if-nez v1, :cond_12

    iput v3, v6, Landroidx/leanback/widget/GridLayoutManager;->mFocusPosition:I

    iput v10, v6, Landroidx/leanback/widget/GridLayoutManager;->mSubFocusPosition:I

    goto :goto_6

    :cond_12
    iget v8, v6, Landroidx/leanback/widget/GridLayoutManager;->mFocusPosition:I

    if-lt v8, v1, :cond_13

    sub-int/2addr v1, v9

    iput v1, v6, Landroidx/leanback/widget/GridLayoutManager;->mFocusPosition:I

    iput v10, v6, Landroidx/leanback/widget/GridLayoutManager;->mSubFocusPosition:I

    goto :goto_6

    :cond_13
    if-ne v8, v3, :cond_14

    if-lez v1, :cond_14

    iput v10, v6, Landroidx/leanback/widget/GridLayoutManager;->mFocusPosition:I

    iput v10, v6, Landroidx/leanback/widget/GridLayoutManager;->mSubFocusPosition:I

    :cond_14
    :goto_6
    iget-object v1, v6, Landroidx/leanback/widget/GridLayoutManager;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    iget-boolean v1, v1, Landroidx/recyclerview/widget/RecyclerView$State;->mStructureChanged:Z

    iget-object v8, v6, Landroidx/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroidx/leanback/widget/WindowAlignment;

    if-nez v1, :cond_1f

    iget-object v1, v6, Landroidx/leanback/widget/GridLayoutManager;->mGrid:Landroidx/leanback/widget/Grid;

    if-eqz v1, :cond_1f

    iget v9, v1, Landroidx/leanback/widget/Grid;->mFirstVisibleIndex:I

    if-ltz v9, :cond_1f

    iget v9, v6, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    and-int/lit16 v9, v9, 0x100

    if-nez v9, :cond_1f

    iget v1, v1, Landroidx/leanback/widget/Grid;->mNumRows:I

    iget v9, v6, Landroidx/leanback/widget/GridLayoutManager;->mNumRows:I

    if-ne v1, v9, :cond_1f

    iget-object v0, v8, Landroidx/leanback/widget/WindowAlignment;->horizontal:Landroidx/leanback/widget/WindowAlignment$Axis;

    iget v1, v6, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mWidth:I

    iput v1, v0, Landroidx/leanback/widget/WindowAlignment$Axis;->mSize:I

    iget v1, v6, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mHeight:I

    iget-object v3, v8, Landroidx/leanback/widget/WindowAlignment;->vertical:Landroidx/leanback/widget/WindowAlignment$Axis;

    iput v1, v3, Landroidx/leanback/widget/WindowAlignment$Axis;->mSize:I

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    move-result v4

    iput v1, v0, Landroidx/leanback/widget/WindowAlignment$Axis;->mPaddingMin:I

    iput v4, v0, Landroidx/leanback/widget/WindowAlignment$Axis;->mPaddingMax:I

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v1

    iput v0, v3, Landroidx/leanback/widget/WindowAlignment$Axis;->mPaddingMin:I

    iput v1, v3, Landroidx/leanback/widget/WindowAlignment$Axis;->mPaddingMax:I

    iget-object v0, v8, Landroidx/leanback/widget/WindowAlignment;->mMainAxis:Landroidx/leanback/widget/WindowAlignment$Axis;

    iget v0, v0, Landroidx/leanback/widget/WindowAlignment$Axis;->mSize:I

    iput v0, v6, Landroidx/leanback/widget/GridLayoutManager;->mSizePrimary:I

    invoke-virtual/range {p0 .. p0}, Landroidx/leanback/widget/GridLayoutManager;->updateSecondaryScrollLimits()V

    iget-object v0, v6, Landroidx/leanback/widget/GridLayoutManager;->mGrid:Landroidx/leanback/widget/Grid;

    iget v1, v6, Landroidx/leanback/widget/GridLayoutManager;->mSpacingPrimary:I

    iput v1, v0, Landroidx/leanback/widget/Grid;->mSpacing:I

    iget v1, v6, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    or-int/lit8 v1, v1, 0x4

    iput v1, v6, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    iget v1, v6, Landroidx/leanback/widget/GridLayoutManager;->mFocusPosition:I

    iput v1, v0, Landroidx/leanback/widget/Grid;->mStartIndex:I

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v9

    iget-object v0, v6, Landroidx/leanback/widget/GridLayoutManager;->mGrid:Landroidx/leanback/widget/Grid;

    iget v0, v0, Landroidx/leanback/widget/Grid;->mFirstVisibleIndex:I

    iget v1, v6, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    and-int/lit8 v1, v1, -0x9

    iput v1, v6, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    move v4, v0

    move v3, v10

    :goto_7
    if-ge v3, v9, :cond_1d

    invoke-virtual {v6, v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Landroidx/leanback/widget/GridLayoutManager;->getAdapterPositionByView(Landroid/view/View;)I

    move-result v1

    if-eq v4, v1, :cond_15

    :goto_8
    move v7, v4

    move/from16 v19, v5

    move-object/from16 v20, v12

    move/from16 v18, v13

    move/from16 v22, v14

    move/from16 v17, v15

    move v14, v2

    move v13, v3

    goto/16 :goto_f

    :cond_15
    iget-object v1, v6, Landroidx/leanback/widget/GridLayoutManager;->mGrid:Landroidx/leanback/widget/Grid;

    invoke-virtual {v1, v4}, Landroidx/leanback/widget/Grid;->getLocation(I)Landroidx/leanback/widget/Grid$Location;

    move-result-object v1

    if-nez v1, :cond_16

    goto :goto_8

    :cond_16
    iget v10, v1, Landroidx/leanback/widget/Grid$Location;->mRow:I

    invoke-virtual {v6, v10}, Landroidx/leanback/widget/GridLayoutManager;->getRowStartSecondary(I)I

    move-result v10

    move/from16 v18, v2

    iget-object v2, v8, Landroidx/leanback/widget/WindowAlignment;->mSecondAxis:Landroidx/leanback/widget/WindowAlignment$Axis;

    iget v2, v2, Landroidx/leanback/widget/WindowAlignment$Axis;->mPaddingMin:I

    add-int/2addr v10, v2

    iget v2, v6, Landroidx/leanback/widget/GridLayoutManager;->mScrollOffsetSecondary:I

    sub-int/2addr v10, v2

    iget-object v2, v6, Landroidx/leanback/widget/GridLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v16

    sget-object v2, Landroidx/leanback/widget/GridLayoutManager;->sTempRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v2, v0}, Landroidx/leanback/widget/GridLayoutManager;->getDecoratedBoundsWithMargins(Landroid/graphics/Rect;Landroid/view/View;)V

    move/from16 v19, v5

    iget v5, v6, Landroidx/leanback/widget/GridLayoutManager;->mOrientation:I

    if-nez v5, :cond_17

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    :goto_9
    move v5, v2

    goto :goto_a

    :cond_17
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    goto :goto_9

    :goto_a
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->mViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget v2, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_18

    iget v2, v6, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    or-int/lit8 v2, v2, 0x8

    iput v2, v6, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    iget-object v2, v6, Landroidx/leanback/widget/GridLayoutManager;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    move/from16 p1, v5

    iget-object v5, v6, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    invoke-virtual {v5, v0}, Landroidx/recyclerview/widget/ChildHelper;->indexOfChild(Landroid/view/View;)I

    move-result v5

    invoke-virtual {v6, v2, v5, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->scrapOrRecycleView(Landroidx/recyclerview/widget/RecyclerView$Recycler;ILandroid/view/View;)V

    iget-object v0, v6, Landroidx/leanback/widget/GridLayoutManager;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->getViewForPosition(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;

    iget-object v5, v6, Landroidx/leanback/widget/GridLayoutManager;->mBaseGridView:Landroidx/leanback/widget/BaseGridView;

    invoke-virtual {v5, v0}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    const/4 v5, 0x0

    iput-object v5, v2, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;->mAlignmentFacet:Landroidx/leanback/widget/ItemAlignmentFacet;

    const/4 v2, 0x0

    invoke-virtual {v6, v0, v3, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->addViewInt(Landroid/view/View;IZ)V

    :goto_b
    move-object v2, v0

    goto :goto_c

    :cond_18
    move/from16 p1, v5

    const/4 v5, 0x0

    goto :goto_b

    :goto_c
    invoke-virtual {v6, v2}, Landroidx/leanback/widget/GridLayoutManager;->measureChild(Landroid/view/View;)V

    iget v0, v6, Landroidx/leanback/widget/GridLayoutManager;->mOrientation:I

    if-nez v0, :cond_19

    invoke-static {v2}, Landroidx/leanback/widget/GridLayoutManager;->getDecoratedMeasuredWidthWithMargin(Landroid/view/View;)I

    move-result v0

    :goto_d
    add-int v17, v16, v0

    goto :goto_e

    :cond_19
    invoke-static {v2}, Landroidx/leanback/widget/GridLayoutManager;->getDecoratedMeasuredHeightWithMargin(Landroid/view/View;)I

    move-result v0

    goto :goto_d

    :goto_e
    iget v1, v1, Landroidx/leanback/widget/Grid$Location;->mRow:I

    move-object/from16 v20, v12

    move v12, v0

    move-object/from16 v0, p0

    move/from16 v21, v1

    move-object v1, v2

    move/from16 v22, v14

    move/from16 v14, v18

    move/from16 v2, v21

    move/from16 v18, v13

    move v13, v3

    move/from16 v3, v16

    move v7, v4

    move/from16 v4, v17

    move-object/from16 v16, v5

    move/from16 v17, v15

    move/from16 v15, p1

    move v5, v10

    invoke-virtual/range {v0 .. v5}, Landroidx/leanback/widget/GridLayoutManager;->layoutChild(Landroid/view/View;IIII)V

    if-eq v15, v12, :cond_1c

    :goto_f
    iget-object v0, v6, Landroidx/leanback/widget/GridLayoutManager;->mGrid:Landroidx/leanback/widget/Grid;

    iget v0, v0, Landroidx/leanback/widget/Grid;->mLastVisibleIndex:I

    const/4 v1, 0x1

    sub-int/2addr v9, v1

    :goto_10
    if-lt v9, v13, :cond_1a

    invoke-virtual {v6, v9}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, v6, Landroidx/leanback/widget/GridLayoutManager;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    iget-object v3, v6, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    invoke-virtual {v3, v1}, Landroidx/recyclerview/widget/ChildHelper;->indexOfChild(Landroid/view/View;)I

    move-result v3

    invoke-virtual {v6, v2, v3, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->scrapOrRecycleView(Landroidx/recyclerview/widget/RecyclerView$Recycler;ILandroid/view/View;)V

    add-int/lit8 v9, v9, -0x1

    goto :goto_10

    :cond_1a
    iget-object v1, v6, Landroidx/leanback/widget/GridLayoutManager;->mGrid:Landroidx/leanback/widget/Grid;

    invoke-virtual {v1, v7}, Landroidx/leanback/widget/Grid;->invalidateItemsAfter(I)V

    iget v1, v6, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    const/high16 v2, 0x10000

    and-int/2addr v1, v2

    if-eqz v1, :cond_1b

    invoke-virtual/range {p0 .. p0}, Landroidx/leanback/widget/GridLayoutManager;->appendVisibleItems()V

    iget v1, v6, Landroidx/leanback/widget/GridLayoutManager;->mFocusPosition:I

    if-ltz v1, :cond_1e

    if-gt v1, v0, :cond_1e

    :goto_11
    iget-object v0, v6, Landroidx/leanback/widget/GridLayoutManager;->mGrid:Landroidx/leanback/widget/Grid;

    iget v1, v0, Landroidx/leanback/widget/Grid;->mLastVisibleIndex:I

    iget v2, v6, Landroidx/leanback/widget/GridLayoutManager;->mFocusPosition:I

    if-ge v1, v2, :cond_1e

    invoke-virtual {v0}, Landroidx/leanback/widget/Grid;->appendOneColumnVisibleItems()Z

    goto :goto_11

    :cond_1b
    :goto_12
    iget-object v1, v6, Landroidx/leanback/widget/GridLayoutManager;->mGrid:Landroidx/leanback/widget/Grid;

    invoke-virtual {v1}, Landroidx/leanback/widget/Grid;->appendOneColumnVisibleItems()Z

    move-result v1

    if-eqz v1, :cond_1e

    iget-object v1, v6, Landroidx/leanback/widget/GridLayoutManager;->mGrid:Landroidx/leanback/widget/Grid;

    iget v1, v1, Landroidx/leanback/widget/Grid;->mLastVisibleIndex:I

    if-ge v1, v0, :cond_1e

    goto :goto_12

    :cond_1c
    add-int/lit8 v3, v13, 0x1

    add-int/lit8 v4, v7, 0x1

    move-object/from16 v7, p2

    move v2, v14

    move/from16 v15, v17

    move/from16 v13, v18

    move/from16 v5, v19

    move-object/from16 v12, v20

    move/from16 v14, v22

    const/4 v10, 0x0

    goto/16 :goto_7

    :cond_1d
    move/from16 v19, v5

    move-object/from16 v20, v12

    move/from16 v18, v13

    move/from16 v22, v14

    move/from16 v17, v15

    move v14, v2

    :cond_1e
    invoke-virtual/range {p0 .. p0}, Landroidx/leanback/widget/GridLayoutManager;->updateScrollLimits()V

    invoke-virtual/range {p0 .. p0}, Landroidx/leanback/widget/GridLayoutManager;->updateSecondaryScrollLimits()V

    goto/16 :goto_18

    :cond_1f
    move/from16 v19, v5

    move-object/from16 v20, v12

    move/from16 v18, v13

    move/from16 v22, v14

    move/from16 v17, v15

    move v14, v2

    iget v1, v6, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    and-int/lit16 v2, v1, -0x101

    iput v2, v6, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    iget-object v2, v6, Landroidx/leanback/widget/GridLayoutManager;->mGrid:Landroidx/leanback/widget/Grid;

    if-eqz v2, :cond_21

    iget v5, v6, Landroidx/leanback/widget/GridLayoutManager;->mNumRows:I

    iget v7, v2, Landroidx/leanback/widget/Grid;->mNumRows:I

    if-ne v5, v7, :cond_21

    const/high16 v5, 0x40000

    and-int/2addr v1, v5

    if-eqz v1, :cond_20

    const/4 v1, 0x1

    goto :goto_13

    :cond_20
    const/4 v1, 0x0

    :goto_13
    iget-boolean v2, v2, Landroidx/leanback/widget/Grid;->mReversedFlow:Z

    if-eq v1, v2, :cond_24

    :cond_21
    iget v1, v6, Landroidx/leanback/widget/GridLayoutManager;->mNumRows:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_22

    new-instance v1, Landroidx/leanback/widget/SingleRow;

    invoke-direct {v1}, Landroidx/leanback/widget/SingleRow;-><init>()V

    goto :goto_14

    :cond_22
    new-instance v2, Landroidx/leanback/widget/StaggeredGridDefault;

    invoke-direct {v2}, Landroidx/leanback/widget/StaggeredGridDefault;-><init>()V

    invoke-virtual {v2, v1}, Landroidx/leanback/widget/Grid;->setNumRows(I)V

    move-object v1, v2

    :goto_14
    iput-object v1, v6, Landroidx/leanback/widget/GridLayoutManager;->mGrid:Landroidx/leanback/widget/Grid;

    iget-object v2, v6, Landroidx/leanback/widget/GridLayoutManager;->mGridProvider:Landroidx/leanback/widget/GridLayoutManager$2;

    iput-object v2, v1, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/GridLayoutManager$2;

    iget v2, v6, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    const/high16 v5, 0x40000

    and-int/2addr v2, v5

    if-eqz v2, :cond_23

    const/4 v2, 0x1

    goto :goto_15

    :cond_23
    const/4 v2, 0x0

    :goto_15
    iput-boolean v2, v1, Landroidx/leanback/widget/Grid;->mReversedFlow:Z

    :cond_24
    iget-object v1, v8, Landroidx/leanback/widget/WindowAlignment;->mMainAxis:Landroidx/leanback/widget/WindowAlignment$Axis;

    const/high16 v2, -0x80000000

    iput v2, v1, Landroidx/leanback/widget/WindowAlignment$Axis;->mMinEdge:I

    const v2, 0x7fffffff

    iput v2, v1, Landroidx/leanback/widget/WindowAlignment$Axis;->mMaxEdge:I

    iget v1, v6, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mWidth:I

    iget-object v2, v8, Landroidx/leanback/widget/WindowAlignment;->horizontal:Landroidx/leanback/widget/WindowAlignment$Axis;

    iput v1, v2, Landroidx/leanback/widget/WindowAlignment$Axis;->mSize:I

    iget v1, v6, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mHeight:I

    iget-object v5, v8, Landroidx/leanback/widget/WindowAlignment;->vertical:Landroidx/leanback/widget/WindowAlignment$Axis;

    iput v1, v5, Landroidx/leanback/widget/WindowAlignment$Axis;->mSize:I

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    move-result v7

    iput v1, v2, Landroidx/leanback/widget/WindowAlignment$Axis;->mPaddingMin:I

    iput v7, v2, Landroidx/leanback/widget/WindowAlignment$Axis;->mPaddingMax:I

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v2

    iput v1, v5, Landroidx/leanback/widget/WindowAlignment$Axis;->mPaddingMin:I

    iput v2, v5, Landroidx/leanback/widget/WindowAlignment$Axis;->mPaddingMax:I

    iget-object v1, v8, Landroidx/leanback/widget/WindowAlignment;->mMainAxis:Landroidx/leanback/widget/WindowAlignment$Axis;

    iget v1, v1, Landroidx/leanback/widget/WindowAlignment$Axis;->mSize:I

    iput v1, v6, Landroidx/leanback/widget/GridLayoutManager;->mSizePrimary:I

    const/4 v1, 0x0

    iput v1, v6, Landroidx/leanback/widget/GridLayoutManager;->mScrollOffsetSecondary:I

    invoke-virtual/range {p0 .. p0}, Landroidx/leanback/widget/GridLayoutManager;->updateSecondaryScrollLimits()V

    iget-object v1, v6, Landroidx/leanback/widget/GridLayoutManager;->mGrid:Landroidx/leanback/widget/Grid;

    iget v2, v6, Landroidx/leanback/widget/GridLayoutManager;->mSpacingPrimary:I

    iput v2, v1, Landroidx/leanback/widget/Grid;->mSpacing:I

    iget-object v1, v6, Landroidx/leanback/widget/GridLayoutManager;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    invoke-virtual {v6, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->detachAndScrapAttachedViews(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    iget-object v1, v6, Landroidx/leanback/widget/GridLayoutManager;->mGrid:Landroidx/leanback/widget/Grid;

    iput v3, v1, Landroidx/leanback/widget/Grid;->mLastVisibleIndex:I

    iput v3, v1, Landroidx/leanback/widget/Grid;->mFirstVisibleIndex:I

    iget-object v2, v8, Landroidx/leanback/widget/WindowAlignment;->mMainAxis:Landroidx/leanback/widget/WindowAlignment$Axis;

    const/high16 v5, -0x80000000

    iput v5, v2, Landroidx/leanback/widget/WindowAlignment$Axis;->mMinEdge:I

    iput v5, v2, Landroidx/leanback/widget/WindowAlignment$Axis;->mMinScroll:I

    const v5, 0x7fffffff

    iput v5, v2, Landroidx/leanback/widget/WindowAlignment$Axis;->mMaxEdge:I

    iput v5, v2, Landroidx/leanback/widget/WindowAlignment$Axis;->mMaxScroll:I

    iget v2, v6, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    and-int/lit8 v5, v2, -0x5

    iput v5, v6, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    and-int/lit8 v2, v2, -0x15

    if-eqz v11, :cond_25

    const/16 v5, 0x10

    goto :goto_16

    :cond_25
    const/4 v5, 0x0

    :goto_16
    or-int/2addr v2, v5

    iput v2, v6, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    if-eqz v11, :cond_27

    if-ltz v4, :cond_26

    iget v2, v6, Landroidx/leanback/widget/GridLayoutManager;->mFocusPosition:I

    if-gt v2, v0, :cond_26

    if-ge v2, v4, :cond_27

    :cond_26
    iget v4, v6, Landroidx/leanback/widget/GridLayoutManager;->mFocusPosition:I

    move v0, v4

    :cond_27
    iput v4, v1, Landroidx/leanback/widget/Grid;->mStartIndex:I

    if-eq v0, v3, :cond_28

    :goto_17
    iget-object v1, v6, Landroidx/leanback/widget/GridLayoutManager;->mGrid:Landroidx/leanback/widget/Grid;

    invoke-virtual {v1}, Landroidx/leanback/widget/Grid;->appendOneColumnVisibleItems()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-virtual {v6, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_28

    goto :goto_17

    :cond_28
    :goto_18
    invoke-virtual/range {p0 .. p0}, Landroidx/leanback/widget/GridLayoutManager;->updateScrollLimits()V

    iget-object v0, v6, Landroidx/leanback/widget/GridLayoutManager;->mGrid:Landroidx/leanback/widget/Grid;

    iget v7, v0, Landroidx/leanback/widget/Grid;->mFirstVisibleIndex:I

    iget v8, v0, Landroidx/leanback/widget/Grid;->mLastVisibleIndex:I

    neg-int v9, v14

    move/from16 v10, v19

    neg-int v12, v10

    iget v0, v6, Landroidx/leanback/widget/GridLayoutManager;->mFocusPosition:I

    invoke-virtual {v6, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v13

    if-eqz v13, :cond_29

    if-eqz v11, :cond_29

    invoke-virtual {v13}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object v1, v13

    move v4, v9

    move v5, v12

    invoke-virtual/range {v0 .. v5}, Landroidx/leanback/widget/GridLayoutManager;->scrollToView(Landroid/view/View;Landroid/view/View;ZII)V

    :cond_29
    if-eqz v13, :cond_2a

    if-eqz v17, :cond_2a

    invoke-virtual {v13}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_2a

    invoke-virtual {v13}, Landroid/view/View;->requestFocus()Z

    goto :goto_1c

    :cond_2a
    if-nez v17, :cond_2e

    iget-object v0, v6, Landroidx/leanback/widget/GridLayoutManager;->mBaseGridView:Landroidx/leanback/widget/BaseGridView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_2e

    if-eqz v13, :cond_2c

    invoke-virtual {v13}, Landroid/view/View;->hasFocusable()Z

    move-result v0

    if-eqz v0, :cond_2c

    iget-object v0, v6, Landroidx/leanback/widget/GridLayoutManager;->mBaseGridView:Landroidx/leanback/widget/BaseGridView;

    invoke-virtual {v0, v13}, Landroid/view/ViewGroup;->focusableViewAvailable(Landroid/view/View;)V

    :cond_2b
    :goto_19
    move-object v1, v13

    goto :goto_1b

    :cond_2c
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_1a
    if-ge v1, v0, :cond_2b

    invoke-virtual {v6, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    if-eqz v13, :cond_2d

    invoke-virtual {v13}, Landroid/view/View;->hasFocusable()Z

    move-result v2

    if-eqz v2, :cond_2d

    iget-object v0, v6, Landroidx/leanback/widget/GridLayoutManager;->mBaseGridView:Landroidx/leanback/widget/BaseGridView;

    invoke-virtual {v0, v13}, Landroid/view/ViewGroup;->focusableViewAvailable(Landroid/view/View;)V

    goto :goto_19

    :cond_2d
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    :goto_1b
    if-eqz v11, :cond_2e

    if-eqz v1, :cond_2e

    invoke-virtual {v1}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-virtual {v1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move v4, v9

    move v5, v12

    invoke-virtual/range {v0 .. v5}, Landroidx/leanback/widget/GridLayoutManager;->scrollToView(Landroid/view/View;Landroid/view/View;ZII)V

    :cond_2e
    :goto_1c
    invoke-virtual/range {p0 .. p0}, Landroidx/leanback/widget/GridLayoutManager;->appendVisibleItems()V

    invoke-virtual/range {p0 .. p0}, Landroidx/leanback/widget/GridLayoutManager;->prependVisibleItems()V

    iget-object v0, v6, Landroidx/leanback/widget/GridLayoutManager;->mGrid:Landroidx/leanback/widget/Grid;

    iget v1, v0, Landroidx/leanback/widget/Grid;->mFirstVisibleIndex:I

    if-ne v1, v7, :cond_49

    iget v0, v0, Landroidx/leanback/widget/Grid;->mLastVisibleIndex:I

    if-ne v0, v8, :cond_49

    invoke-virtual/range {p0 .. p0}, Landroidx/leanback/widget/GridLayoutManager;->removeInvisibleViewsAtFront()V

    invoke-virtual/range {p0 .. p0}, Landroidx/leanback/widget/GridLayoutManager;->removeInvisibleViewsAtEnd()V

    move-object/from16 v0, p2

    iget-boolean v0, v0, Landroidx/recyclerview/widget/RecyclerView$State;->mRunPredictiveAnimations:Z

    if-eqz v0, :cond_40

    iget-object v0, v6, Landroidx/leanback/widget/GridLayoutManager;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$Recycler;->mUnmodifiableAttachedScrap:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_2f

    goto/16 :goto_25

    :cond_2f
    iget-object v2, v6, Landroidx/leanback/widget/GridLayoutManager;->mDisappearingPositions:[I

    if-eqz v2, :cond_30

    array-length v3, v2

    if-le v1, v3, :cond_33

    :cond_30
    if-nez v2, :cond_31

    const/16 v2, 0x10

    goto :goto_1d

    :cond_31
    array-length v2, v2

    :goto_1d
    if-ge v2, v1, :cond_32

    shl-int/lit8 v2, v2, 0x1

    goto :goto_1d

    :cond_32
    new-array v2, v2, [I

    iput-object v2, v6, Landroidx/leanback/widget/GridLayoutManager;->mDisappearingPositions:[I

    :cond_33
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1e
    if-ge v2, v1, :cond_35

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAbsoluteAdapterPosition()I

    move-result v4

    if-ltz v4, :cond_34

    iget-object v5, v6, Landroidx/leanback/widget/GridLayoutManager;->mDisappearingPositions:[I

    add-int/lit8 v7, v3, 0x1

    aput v4, v5, v3

    move v3, v7

    :cond_34
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    :cond_35
    if-lez v3, :cond_3f

    iget-object v0, v6, Landroidx/leanback/widget/GridLayoutManager;->mDisappearingPositions:[I

    const/4 v1, 0x0

    invoke-static {v0, v1, v3}, Ljava/util/Arrays;->sort([III)V

    iget-object v0, v6, Landroidx/leanback/widget/GridLayoutManager;->mGrid:Landroidx/leanback/widget/Grid;

    iget-object v2, v6, Landroidx/leanback/widget/GridLayoutManager;->mDisappearingPositions:[I

    iget-object v4, v6, Landroidx/leanback/widget/GridLayoutManager;->mPositionToRowInPostLayout:Landroid/util/SparseIntArray;

    iget v5, v0, Landroidx/leanback/widget/Grid;->mLastVisibleIndex:I

    if-ltz v5, :cond_36

    invoke-static {v2, v1, v3, v5}, Ljava/util/Arrays;->binarySearch([IIII)I

    move-result v7

    goto :goto_1f

    :cond_36
    const/4 v7, 0x0

    :goto_1f
    iget-object v1, v0, Landroidx/leanback/widget/Grid;->mTmpItem:[Ljava/lang/Object;

    if-gez v7, :cond_3a

    neg-int v7, v7

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    iget-boolean v8, v0, Landroidx/leanback/widget/Grid;->mReversedFlow:Z

    if-eqz v8, :cond_37

    iget-object v8, v0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/GridLayoutManager$2;

    invoke-virtual {v8, v5}, Landroidx/leanback/widget/GridLayoutManager$2;->getEdge(I)I

    move-result v8

    iget-object v9, v0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/GridLayoutManager$2;

    invoke-virtual {v9, v5}, Landroidx/leanback/widget/GridLayoutManager$2;->getSize(I)I

    move-result v5

    sub-int/2addr v8, v5

    iget v5, v0, Landroidx/leanback/widget/Grid;->mSpacing:I

    sub-int/2addr v8, v5

    goto :goto_20

    :cond_37
    iget-object v8, v0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/GridLayoutManager$2;

    invoke-virtual {v8, v5}, Landroidx/leanback/widget/GridLayoutManager$2;->getEdge(I)I

    move-result v8

    iget-object v9, v0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/GridLayoutManager$2;

    invoke-virtual {v9, v5}, Landroidx/leanback/widget/GridLayoutManager$2;->getSize(I)I

    move-result v5

    add-int/2addr v5, v8

    iget v8, v0, Landroidx/leanback/widget/Grid;->mSpacing:I

    add-int/2addr v8, v5

    :goto_20
    if-ge v7, v3, :cond_3a

    aget v5, v2, v7

    invoke-virtual {v4, v5}, Landroid/util/SparseIntArray;->get(I)I

    move-result v9

    if-gez v9, :cond_38

    const/4 v9, 0x0

    :cond_38
    iget-object v10, v0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/GridLayoutManager$2;

    const/4 v11, 0x1

    invoke-virtual {v10, v5, v11, v1, v11}, Landroidx/leanback/widget/GridLayoutManager$2;->createItem(IZ[Ljava/lang/Object;Z)I

    move-result v5

    iget-object v10, v0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/GridLayoutManager$2;

    const/4 v11, 0x0

    aget-object v12, v1, v11

    invoke-virtual {v10, v5, v9, v8, v12}, Landroidx/leanback/widget/GridLayoutManager$2;->addItem(IIILjava/lang/Object;)V

    iget-boolean v9, v0, Landroidx/leanback/widget/Grid;->mReversedFlow:Z

    if-eqz v9, :cond_39

    sub-int/2addr v8, v5

    iget v5, v0, Landroidx/leanback/widget/Grid;->mSpacing:I

    sub-int/2addr v8, v5

    goto :goto_21

    :cond_39
    add-int/2addr v8, v5

    iget v5, v0, Landroidx/leanback/widget/Grid;->mSpacing:I

    add-int/2addr v8, v5

    :goto_21
    add-int/lit8 v7, v7, 0x1

    goto :goto_20

    :cond_3a
    iget v5, v0, Landroidx/leanback/widget/Grid;->mFirstVisibleIndex:I

    if-ltz v5, :cond_3b

    const/4 v7, 0x0

    invoke-static {v2, v7, v3, v5}, Ljava/util/Arrays;->binarySearch([IIII)I

    move-result v3

    goto :goto_22

    :cond_3b
    const/4 v3, 0x0

    :goto_22
    if-gez v3, :cond_3f

    neg-int v3, v3

    add-int/lit8 v3, v3, -0x2

    iget-boolean v7, v0, Landroidx/leanback/widget/Grid;->mReversedFlow:Z

    if-eqz v7, :cond_3c

    iget-object v7, v0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/GridLayoutManager$2;

    invoke-virtual {v7, v5}, Landroidx/leanback/widget/GridLayoutManager$2;->getEdge(I)I

    move-result v5

    goto :goto_23

    :cond_3c
    iget-object v7, v0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/GridLayoutManager$2;

    invoke-virtual {v7, v5}, Landroidx/leanback/widget/GridLayoutManager$2;->getEdge(I)I

    move-result v5

    :goto_23
    if-ltz v3, :cond_3f

    aget v7, v2, v3

    invoke-virtual {v4, v7}, Landroid/util/SparseIntArray;->get(I)I

    move-result v8

    if-gez v8, :cond_3d

    const/4 v8, 0x0

    :cond_3d
    iget-object v9, v0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/GridLayoutManager$2;

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-virtual {v9, v7, v11, v1, v10}, Landroidx/leanback/widget/GridLayoutManager$2;->createItem(IZ[Ljava/lang/Object;Z)I

    move-result v7

    iget-boolean v9, v0, Landroidx/leanback/widget/Grid;->mReversedFlow:Z

    if-eqz v9, :cond_3e

    iget v9, v0, Landroidx/leanback/widget/Grid;->mSpacing:I

    add-int/2addr v5, v9

    add-int/2addr v5, v7

    goto :goto_24

    :cond_3e
    iget v9, v0, Landroidx/leanback/widget/Grid;->mSpacing:I

    sub-int/2addr v5, v9

    sub-int/2addr v5, v7

    :goto_24
    iget-object v9, v0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/GridLayoutManager$2;

    const/4 v10, 0x0

    aget-object v11, v1, v10

    invoke-virtual {v9, v7, v8, v5, v11}, Landroidx/leanback/widget/GridLayoutManager$2;->addItem(IIILjava/lang/Object;)V

    add-int/lit8 v3, v3, -0x1

    goto :goto_23

    :cond_3f
    iget-object v0, v6, Landroidx/leanback/widget/GridLayoutManager;->mPositionToRowInPostLayout:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    :cond_40
    :goto_25
    iget v0, v6, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    and-int/lit16 v1, v0, 0x400

    if-eqz v1, :cond_41

    and-int/lit16 v0, v0, -0x401

    iput v0, v6, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    goto :goto_26

    :cond_41
    invoke-virtual/range {p0 .. p0}, Landroidx/leanback/widget/GridLayoutManager;->updateRowSecondarySizeRefresh()V

    :goto_26
    iget v0, v6, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_43

    iget v0, v6, Landroidx/leanback/widget/GridLayoutManager;->mFocusPosition:I

    move/from16 v1, v18

    if-ne v0, v1, :cond_42

    iget v1, v6, Landroidx/leanback/widget/GridLayoutManager;->mSubFocusPosition:I

    move/from16 v2, v22

    if-ne v1, v2, :cond_42

    invoke-virtual {v6, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    move-object/from16 v3, v20

    if-ne v0, v3, :cond_42

    iget v0, v6, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_43

    :cond_42
    invoke-virtual/range {p0 .. p0}, Landroidx/leanback/widget/GridLayoutManager;->dispatchChildSelected()V

    goto :goto_27

    :cond_43
    iget v0, v6, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    and-int/lit8 v0, v0, 0x14

    const/16 v4, 0x10

    if-ne v0, v4, :cond_44

    invoke-virtual/range {p0 .. p0}, Landroidx/leanback/widget/GridLayoutManager;->dispatchChildSelected()V

    :cond_44
    :goto_27
    invoke-virtual/range {p0 .. p0}, Landroidx/leanback/widget/GridLayoutManager;->dispatchChildSelectedAndPositioned()V

    iget v0, v6, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_48

    iget v1, v6, Landroidx/leanback/widget/GridLayoutManager;->mOrientation:I

    const/4 v5, 0x1

    if-ne v1, v5, :cond_45

    iget v0, v6, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mHeight:I

    neg-int v0, v0

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v1

    if-lez v1, :cond_47

    const/4 v1, 0x0

    invoke-virtual {v6, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    if-gez v1, :cond_47

    goto :goto_28

    :cond_45
    const/high16 v7, 0x40000

    and-int/2addr v0, v7

    if-eqz v0, :cond_46

    iget v0, v6, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mWidth:I

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v1

    if-lez v1, :cond_47

    const/4 v1, 0x0

    invoke-virtual {v6, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    if-le v1, v0, :cond_47

    move v0, v1

    goto :goto_29

    :cond_46
    iget v0, v6, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mWidth:I

    neg-int v0, v0

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v1

    if-lez v1, :cond_47

    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    if-gez v1, :cond_47

    :goto_28
    add-int/2addr v0, v1

    :cond_47
    :goto_29
    invoke-virtual {v6, v0}, Landroidx/leanback/widget/GridLayoutManager;->scrollDirectionPrimary(I)I

    :cond_48
    iget v0, v6, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    and-int/lit8 v0, v0, -0x4

    iput v0, v6, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    invoke-virtual/range {p0 .. p0}, Landroidx/leanback/widget/GridLayoutManager;->leaveContext()V

    return-void

    :cond_49
    move-object/from16 v0, p2

    move/from16 v19, v10

    goto/16 :goto_18
.end method

.method public final onLayoutCompleted(Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 0

    return-void
.end method

.method public final onMeasure(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;II)V
    .locals 6

    invoke-virtual {p0, p1, p2}, Landroidx/leanback/widget/GridLayoutManager;->saveContext(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V

    iget p1, p0, Landroidx/leanback/widget/GridLayoutManager;->mOrientation:I

    if-nez p1, :cond_0

    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p4}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    invoke-static {p4}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result p4

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v0

    :goto_0
    add-int/2addr v0, p4

    goto :goto_1

    :cond_0
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    invoke-static {p4}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    move-result p4

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    move-result v0

    goto :goto_0

    :goto_1
    iput p2, p0, Landroidx/leanback/widget/GridLayoutManager;->mMaxSizeSecondary:I

    iget p4, p0, Landroidx/leanback/widget/GridLayoutManager;->mRowSizeSecondaryRequested:I

    const/4 v1, 0x1

    const/4 v2, -0x2

    const-string/jumbo v3, "wrong spec"

    const/high16 v4, 0x40000000    # 2.0f

    const/high16 v5, -0x80000000

    if-ne p4, v2, :cond_8

    iget p2, p0, Landroidx/leanback/widget/GridLayoutManager;->mNumRowsRequested:I

    if-nez p2, :cond_1

    move p2, v1

    :cond_1
    iput p2, p0, Landroidx/leanback/widget/GridLayoutManager;->mNumRows:I

    const/4 p4, 0x0

    iput p4, p0, Landroidx/leanback/widget/GridLayoutManager;->mFixedRowSizeSecondary:I

    iget-object p4, p0, Landroidx/leanback/widget/GridLayoutManager;->mRowSizeSecondary:[I

    if-eqz p4, :cond_2

    array-length p4, p4

    if-eq p4, p2, :cond_3

    :cond_2
    new-array p2, p2, [I

    iput-object p2, p0, Landroidx/leanback/widget/GridLayoutManager;->mRowSizeSecondary:[I

    :cond_3
    iget-object p2, p0, Landroidx/leanback/widget/GridLayoutManager;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    iget-boolean p2, p2, Landroidx/recyclerview/widget/RecyclerView$State;->mInPreLayout:Z

    if-eqz p2, :cond_4

    invoke-virtual {p0}, Landroidx/leanback/widget/GridLayoutManager;->updatePositionDeltaInPreLayout()V

    :cond_4
    invoke-virtual {p0, v1}, Landroidx/leanback/widget/GridLayoutManager;->processRowSizeSecondary(Z)Z

    if-eq p3, v5, :cond_7

    if-eqz p3, :cond_6

    if-ne p3, v4, :cond_5

    iget p2, p0, Landroidx/leanback/widget/GridLayoutManager;->mMaxSizeSecondary:I

    goto/16 :goto_5

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    invoke-virtual {p0}, Landroidx/leanback/widget/GridLayoutManager;->getSizeSecondary()I

    move-result p2

    :goto_2
    add-int/2addr p2, v0

    goto/16 :goto_5

    :cond_7
    invoke-virtual {p0}, Landroidx/leanback/widget/GridLayoutManager;->getSizeSecondary()I

    move-result p2

    add-int/2addr p2, v0

    iget p3, p0, Landroidx/leanback/widget/GridLayoutManager;->mMaxSizeSecondary:I

    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result p2

    goto :goto_5

    :cond_8
    if-eq p3, v5, :cond_d

    if-eqz p3, :cond_a

    if-ne p3, v4, :cond_9

    goto :goto_3

    :cond_9
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    if-nez p4, :cond_b

    sub-int p4, p2, v0

    :cond_b
    iput p4, p0, Landroidx/leanback/widget/GridLayoutManager;->mFixedRowSizeSecondary:I

    iget p2, p0, Landroidx/leanback/widget/GridLayoutManager;->mNumRowsRequested:I

    if-nez p2, :cond_c

    move p2, v1

    :cond_c
    iput p2, p0, Landroidx/leanback/widget/GridLayoutManager;->mNumRows:I

    mul-int/2addr p4, p2

    iget p3, p0, Landroidx/leanback/widget/GridLayoutManager;->mSpacingSecondary:I

    sub-int/2addr p2, v1

    mul-int/2addr p2, p3

    add-int/2addr p2, p4

    goto :goto_2

    :cond_d
    :goto_3
    iget v2, p0, Landroidx/leanback/widget/GridLayoutManager;->mNumRowsRequested:I

    if-nez v2, :cond_e

    if-nez p4, :cond_e

    iput v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mNumRows:I

    sub-int p4, p2, v0

    iput p4, p0, Landroidx/leanback/widget/GridLayoutManager;->mFixedRowSizeSecondary:I

    goto :goto_4

    :cond_e
    if-nez v2, :cond_f

    iput p4, p0, Landroidx/leanback/widget/GridLayoutManager;->mFixedRowSizeSecondary:I

    iget v2, p0, Landroidx/leanback/widget/GridLayoutManager;->mSpacingSecondary:I

    add-int v3, p2, v2

    add-int/2addr p4, v2

    div-int/2addr v3, p4

    iput v3, p0, Landroidx/leanback/widget/GridLayoutManager;->mNumRows:I

    goto :goto_4

    :cond_f
    if-nez p4, :cond_10

    iput v2, p0, Landroidx/leanback/widget/GridLayoutManager;->mNumRows:I

    sub-int p4, p2, v0

    iget v3, p0, Landroidx/leanback/widget/GridLayoutManager;->mSpacingSecondary:I

    add-int/lit8 v4, v2, -0x1

    mul-int/2addr v4, v3

    sub-int/2addr p4, v4

    div-int/2addr p4, v2

    iput p4, p0, Landroidx/leanback/widget/GridLayoutManager;->mFixedRowSizeSecondary:I

    goto :goto_4

    :cond_10
    iput v2, p0, Landroidx/leanback/widget/GridLayoutManager;->mNumRows:I

    iput p4, p0, Landroidx/leanback/widget/GridLayoutManager;->mFixedRowSizeSecondary:I

    :goto_4
    if-ne p3, v5, :cond_11

    iget p3, p0, Landroidx/leanback/widget/GridLayoutManager;->mFixedRowSizeSecondary:I

    iget p4, p0, Landroidx/leanback/widget/GridLayoutManager;->mNumRows:I

    mul-int/2addr p3, p4

    iget v2, p0, Landroidx/leanback/widget/GridLayoutManager;->mSpacingSecondary:I

    sub-int/2addr p4, v1

    mul-int/2addr p4, v2

    add-int/2addr p4, p3

    add-int/2addr p4, v0

    if-ge p4, p2, :cond_11

    move p2, p4

    :cond_11
    :goto_5
    iget p3, p0, Landroidx/leanback/widget/GridLayoutManager;->mOrientation:I

    if-nez p3, :cond_12

    iget-object p3, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p3, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->access$6500(Landroidx/recyclerview/widget/RecyclerView;II)V

    goto :goto_6

    :cond_12
    iget-object p3, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p3, p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->access$6500(Landroidx/recyclerview/widget/RecyclerView;II)V

    :goto_6
    invoke-virtual {p0}, Landroidx/leanback/widget/GridLayoutManager;->leaveContext()V

    return-void
.end method

.method public final onRequestChildFocus(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;Landroid/view/View;)Z
    .locals 7

    iget p1, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    const v0, 0x8000

    and-int/2addr p1, v0

    const/4 v6, 0x1

    if-eqz p1, :cond_0

    return v6

    :cond_0
    invoke-static {p2}, Landroidx/leanback/widget/GridLayoutManager;->getAdapterPositionByView(Landroid/view/View;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    return v6

    :cond_1
    iget p1, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    and-int/lit8 p1, p1, 0x23

    if-nez p1, :cond_2

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, v6

    invoke-virtual/range {v0 .. v5}, Landroidx/leanback/widget/GridLayoutManager;->scrollToView(Landroid/view/View;Landroid/view/View;ZII)V

    :cond_2
    return v6
.end method

.method public final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    instance-of v0, p1, Landroidx/leanback/widget/GridLayoutManager$SavedState;

    if-nez v0, :cond_0

    return-void

    :cond_0
    check-cast p1, Landroidx/leanback/widget/GridLayoutManager$SavedState;

    iget p1, p1, Landroidx/leanback/widget/GridLayoutManager$SavedState;->mIndex:I

    iput p1, p0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPosition:I

    const/4 p1, 0x0

    iput p1, p0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPositionOffset:I

    iget-object p1, p0, Landroidx/leanback/widget/GridLayoutManager;->mChildrenStates:Landroidx/leanback/widget/ViewsStateBundle;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    or-int/lit16 p1, p1, 0x100

    iput p1, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->requestLayout()V

    return-void
.end method

.method public final onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    new-instance v0, Landroidx/leanback/widget/GridLayoutManager$SavedState;

    invoke-direct {v0}, Landroidx/leanback/widget/GridLayoutManager$SavedState;-><init>()V

    iget v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPosition:I

    iput v1, v0, Landroidx/leanback/widget/GridLayoutManager$SavedState;->mIndex:I

    iget-object v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mChildrenStates:Landroidx/leanback/widget/ViewsStateBundle;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Landroidx/leanback/widget/GridLayoutManager;->getAdapterPositionByView(Landroid/view/View;)I

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    iput-object p0, v0, Landroidx/leanback/widget/GridLayoutManager$SavedState;->mChildStates:Landroid/os/Bundle;

    return-object v0
.end method

.method public final performAccessibilityAction(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;ILandroid/os/Bundle;)Z
    .locals 4

    iget p4, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    const/high16 v0, 0x20000

    and-int/2addr p4, v0

    const/4 v0, 0x1

    if-eqz p4, :cond_d

    invoke-virtual {p0, p1, p2}, Landroidx/leanback/widget/GridLayoutManager;->saveContext(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V

    iget p1, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    const/high16 p4, 0x40000

    and-int/2addr p1, p4

    const/4 p4, 0x0

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, p4

    :goto_0
    iget v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mOrientation:I

    const/16 v2, 0x2000

    const/16 v3, 0x1000

    if-nez v1, :cond_2

    sget-object v1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_SCROLL_LEFT:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-virtual {v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->getId()I

    move-result v1

    if-ne p3, v1, :cond_1

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_1
    sget-object v1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_SCROLL_RIGHT:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-virtual {v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->getId()I

    move-result v1

    if-ne p3, v1, :cond_6

    if-eqz p1, :cond_5

    goto :goto_1

    :cond_2
    sget-object p1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_SCROLL_UP:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-virtual {p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->getId()I

    move-result p1

    if-ne p3, p1, :cond_4

    :cond_3
    :goto_1
    move p3, v2

    goto :goto_3

    :cond_4
    sget-object p1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_SCROLL_DOWN:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-virtual {p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->getId()I

    move-result p1

    if-ne p3, p1, :cond_6

    :cond_5
    :goto_2
    move p3, v3

    :cond_6
    :goto_3
    iget p1, p0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPosition:I

    if-nez p1, :cond_7

    if-ne p3, v2, :cond_7

    move v1, v0

    goto :goto_4

    :cond_7
    move v1, p4

    :goto_4
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result p2

    sub-int/2addr p2, v0

    if-ne p1, p2, :cond_8

    if-ne p3, v3, :cond_8

    move p1, v0

    goto :goto_5

    :cond_8
    move p1, p4

    :goto_5
    if-nez v1, :cond_c

    if-eqz p1, :cond_9

    goto :goto_6

    :cond_9
    if-eq p3, v3, :cond_b

    if-eq p3, v2, :cond_a

    goto :goto_7

    :cond_a
    invoke-virtual {p0, p4}, Landroidx/leanback/widget/GridLayoutManager;->processPendingMovement(Z)V

    const/4 p1, -0x1

    invoke-virtual {p0, p1, p4}, Landroidx/leanback/widget/GridLayoutManager;->processSelectionMoves(IZ)I

    goto :goto_7

    :cond_b
    invoke-virtual {p0, v0}, Landroidx/leanback/widget/GridLayoutManager;->processPendingMovement(Z)V

    invoke-virtual {p0, v0, p4}, Landroidx/leanback/widget/GridLayoutManager;->processSelectionMoves(IZ)I

    goto :goto_7

    :cond_c
    :goto_6
    invoke-static {v3}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p1

    iget-object p2, p0, Landroidx/leanback/widget/GridLayoutManager;->mBaseGridView:Landroidx/leanback/widget/BaseGridView;

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    iget-object p2, p0, Landroidx/leanback/widget/GridLayoutManager;->mBaseGridView:Landroidx/leanback/widget/BaseGridView;

    invoke-virtual {p2, p2, p1}, Landroid/view/ViewGroup;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    :goto_7
    invoke-virtual {p0}, Landroidx/leanback/widget/GridLayoutManager;->leaveContext()V

    :cond_d
    return v0
.end method

.method public final prependVisibleItems()V
    .locals 3

    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mGrid:Landroidx/leanback/widget/Grid;

    iget v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    const/high16 v2, 0x40000

    and-int/2addr v1, v2

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mSizePrimary:I

    iget p0, p0, Landroidx/leanback/widget/GridLayoutManager;->mExtraLayoutSpaceInPreLayout:I

    add-int/2addr v1, p0

    goto :goto_0

    :cond_0
    iget p0, p0, Landroidx/leanback/widget/GridLayoutManager;->mExtraLayoutSpaceInPreLayout:I

    rsub-int/lit8 v1, p0, 0x0

    :goto_0
    invoke-virtual {v0, v1, v2}, Landroidx/leanback/widget/Grid;->prependVisibleItems(IZ)Z

    return-void
.end method

.method public final processPendingMovement(Z)V
    .locals 5

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/leanback/widget/GridLayoutManager;->hasCreatedLastItem()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/leanback/widget/GridLayoutManager;->hasCreatedFirstItem()Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mPendingMoveSmoothScroller:Landroidx/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;

    const/4 v1, 0x1

    if-nez v0, :cond_4

    new-instance v0, Landroidx/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;

    if-eqz p1, :cond_2

    move v2, v1

    goto :goto_1

    :cond_2
    const/4 v2, -0x1

    :goto_1
    iget v3, p0, Landroidx/leanback/widget/GridLayoutManager;->mNumRows:I

    const/4 v4, 0x0

    if-le v3, v1, :cond_3

    move v3, v1

    goto :goto_2

    :cond_3
    move v3, v4

    :goto_2
    invoke-direct {v0, p0, v2, v3}, Landroidx/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;-><init>(Landroidx/leanback/widget/GridLayoutManager;IZ)V

    iput v4, p0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPositionOffset:I

    invoke-virtual {p0, v0}, Landroidx/leanback/widget/GridLayoutManager;->startSmoothScroll(Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;)V

    goto :goto_3

    :cond_4
    iget-object v2, v0, Landroidx/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->this$0:Landroidx/leanback/widget/GridLayoutManager;

    if-eqz p1, :cond_5

    iget v3, v0, Landroidx/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->mPendingMoves:I

    iget v2, v2, Landroidx/leanback/widget/GridLayoutManager;->mMaxPendingMoves:I

    if-ge v3, v2, :cond_6

    add-int/2addr v3, v1

    iput v3, v0, Landroidx/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->mPendingMoves:I

    goto :goto_3

    :cond_5
    iget v3, v0, Landroidx/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->mPendingMoves:I

    iget v2, v2, Landroidx/leanback/widget/GridLayoutManager;->mMaxPendingMoves:I

    neg-int v2, v2

    if-le v3, v2, :cond_6

    sub-int/2addr v3, v1

    iput v3, v0, Landroidx/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->mPendingMoves:I

    :cond_6
    :goto_3
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mOrientation:I

    if-nez v0, :cond_9

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getLayoutDirection()I

    move-result v0

    const/4 v2, 0x4

    const/4 v3, 0x3

    if-ne v0, v1, :cond_8

    if-eqz p1, :cond_b

    :cond_7
    move v2, v3

    goto :goto_4

    :cond_8
    if-eqz p1, :cond_7

    goto :goto_4

    :cond_9
    if-eqz p1, :cond_a

    const/4 v1, 0x2

    :cond_a
    move v2, v1

    :cond_b
    :goto_4
    iget-object p1, p0, Landroidx/leanback/widget/GridLayoutManager;->mAudioManager:Landroid/media/AudioManager;

    if-nez p1, :cond_c

    iget-object p1, p0, Landroidx/leanback/widget/GridLayoutManager;->mBaseGridView:Landroidx/leanback/widget/BaseGridView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Landroidx/leanback/widget/GridLayoutManager;->mAudioManager:Landroid/media/AudioManager;

    :cond_c
    iget-object p0, p0, Landroidx/leanback/widget/GridLayoutManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p0, v2}, Landroid/media/AudioManager;->playSoundEffect(I)V

    return-void
.end method

.method public final processRowSizeSecondary(Z)Z
    .locals 17

    move-object/from16 v0, p0

    const/4 v1, 0x1

    iget v2, v0, Landroidx/leanback/widget/GridLayoutManager;->mFixedRowSizeSecondary:I

    const/4 v3, 0x0

    if-nez v2, :cond_19

    iget-object v2, v0, Landroidx/leanback/widget/GridLayoutManager;->mRowSizeSecondary:[I

    if-nez v2, :cond_0

    goto/16 :goto_d

    :cond_0
    iget-object v2, v0, Landroidx/leanback/widget/GridLayoutManager;->mGrid:Landroidx/leanback/widget/Grid;

    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    iget v5, v2, Landroidx/leanback/widget/Grid;->mFirstVisibleIndex:I

    iget v6, v2, Landroidx/leanback/widget/Grid;->mLastVisibleIndex:I

    invoke-virtual {v2, v5, v6}, Landroidx/leanback/widget/Grid;->getItemPositionsInRows(II)[Landroidx/collection/CircularIntArray;

    move-result-object v2

    :goto_0
    move v6, v3

    move v7, v6

    const/4 v8, -0x1

    :goto_1
    iget v9, v0, Landroidx/leanback/widget/GridLayoutManager;->mNumRows:I

    if-ge v6, v9, :cond_18

    if-nez v2, :cond_2

    const/4 v9, 0x0

    goto :goto_2

    :cond_2
    aget-object v9, v2, v6

    :goto_2
    if-nez v9, :cond_3

    move v10, v3

    goto :goto_3

    :cond_3
    iget v10, v9, Landroidx/collection/CircularIntArray;->tail:I

    iget v11, v9, Landroidx/collection/CircularIntArray;->capacityBitmask:I

    and-int/2addr v10, v11

    :goto_3
    move v11, v3

    const/4 v12, -0x1

    :goto_4
    if-ge v11, v10, :cond_c

    if-ltz v11, :cond_a

    iget v13, v9, Landroidx/collection/CircularIntArray;->tail:I

    iget v14, v9, Landroidx/collection/CircularIntArray;->capacityBitmask:I

    and-int v15, v13, v14

    if-ge v11, v15, :cond_b

    iget-object v15, v9, Landroidx/collection/CircularIntArray;->elements:[I

    and-int v16, v11, v14

    aget v16, v15, v16

    add-int/lit8 v4, v11, 0x1

    if-ltz v4, :cond_9

    and-int/2addr v13, v14

    if-ge v4, v13, :cond_9

    and-int/2addr v4, v14

    aget v4, v15, v4

    move/from16 v13, v16

    :goto_5
    if-gt v13, v4, :cond_8

    iget v14, v0, Landroidx/leanback/widget/GridLayoutManager;->mPositionDeltaInPreLayout:I

    sub-int v14, v13, v14

    invoke-virtual {v0, v14}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v14

    if-nez v14, :cond_4

    goto :goto_7

    :cond_4
    if-eqz p1, :cond_5

    invoke-virtual {v0, v14}, Landroidx/leanback/widget/GridLayoutManager;->measureChild(Landroid/view/View;)V

    :cond_5
    iget v15, v0, Landroidx/leanback/widget/GridLayoutManager;->mOrientation:I

    if-nez v15, :cond_6

    invoke-static {v14}, Landroidx/leanback/widget/GridLayoutManager;->getDecoratedMeasuredHeightWithMargin(Landroid/view/View;)I

    move-result v14

    goto :goto_6

    :cond_6
    invoke-static {v14}, Landroidx/leanback/widget/GridLayoutManager;->getDecoratedMeasuredWidthWithMargin(Landroid/view/View;)I

    move-result v14

    :goto_6
    if-le v14, v12, :cond_7

    move v12, v14

    :cond_7
    :goto_7
    add-int/2addr v13, v1

    goto :goto_5

    :cond_8
    add-int/lit8 v11, v11, 0x2

    goto :goto_4

    :cond_9
    sget v0, Landroidx/collection/CollectionPlatformUtils;->$r8$clinit:I

    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_a
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_b
    sget v0, Landroidx/collection/CollectionPlatformUtils;->$r8$clinit:I

    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_c
    iget-object v4, v0, Landroidx/leanback/widget/GridLayoutManager;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v4

    iget-object v9, v0, Landroidx/leanback/widget/GridLayoutManager;->mBaseGridView:Landroidx/leanback/widget/BaseGridView;

    iget-boolean v9, v9, Landroidx/recyclerview/widget/RecyclerView;->mHasFixedSize:Z

    if-nez v9, :cond_15

    if-eqz p1, :cond_15

    if-gez v12, :cond_15

    if-lez v4, :cond_15

    if-gez v8, :cond_14

    iget v9, v0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPosition:I

    if-gez v9, :cond_d

    move v9, v3

    goto :goto_8

    :cond_d
    if-lt v9, v4, :cond_e

    add-int/lit8 v9, v4, -0x1

    :cond_e
    :goto_8
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v10

    if-lez v10, :cond_11

    iget-object v10, v0, Landroidx/leanback/widget/GridLayoutManager;->mBaseGridView:Landroidx/leanback/widget/BaseGridView;

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v10

    invoke-virtual {v10}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v10

    iget-object v11, v0, Landroidx/leanback/widget/GridLayoutManager;->mBaseGridView:Landroidx/leanback/widget/BaseGridView;

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v13

    sub-int/2addr v13, v1

    invoke-virtual {v0, v13}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v11, v13}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v11

    invoke-virtual {v11}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v11

    if-lt v9, v10, :cond_11

    if-gt v9, v11, :cond_11

    sub-int v13, v9, v10

    sub-int v9, v11, v9

    if-gt v13, v9, :cond_f

    add-int/lit8 v9, v10, -0x1

    goto :goto_9

    :cond_f
    add-int/lit8 v9, v11, 0x1

    :goto_9
    if-gez v9, :cond_10

    add-int/lit8 v13, v4, -0x1

    if-ge v11, v13, :cond_10

    add-int/lit8 v9, v11, 0x1

    goto :goto_a

    :cond_10
    if-lt v9, v4, :cond_11

    if-lez v10, :cond_11

    add-int/lit8 v9, v10, -0x1

    :cond_11
    :goto_a
    if-ltz v9, :cond_14

    if-ge v9, v4, :cond_14

    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    iget-object v10, v0, Landroidx/leanback/widget/GridLayoutManager;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    invoke-virtual {v10, v9}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->getViewForPosition(I)Landroid/view/View;

    move-result-object v9

    iget-object v10, v0, Landroidx/leanback/widget/GridLayoutManager;->mMeasuredDimension:[I

    if-eqz v9, :cond_12

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;

    sget-object v13, Landroidx/leanback/widget/GridLayoutManager;->sTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v13, v9}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->calculateItemDecorationsForChild(Landroid/graphics/Rect;Landroid/view/View;)V

    iget v14, v11, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v15, v11, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v14, v15

    iget v15, v13, Landroid/graphics/Rect;->left:I

    add-int/2addr v14, v15

    iget v15, v13, Landroid/graphics/Rect;->right:I

    add-int/2addr v14, v15

    iget v15, v11, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v5, v11, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v15, v5

    iget v5, v13, Landroid/graphics/Rect;->top:I

    add-int/2addr v15, v5

    iget v5, v13, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v15, v5

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    move-result v13

    add-int/2addr v13, v5

    add-int/2addr v13, v14

    iget v5, v11, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {v4, v13, v5}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v13

    add-int/2addr v13, v5

    add-int/2addr v13, v15

    iget v5, v11, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {v8, v13, v5}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v5

    invoke-virtual {v9, v4, v5}, Landroid/view/View;->measure(II)V

    invoke-static {v9}, Landroidx/leanback/widget/GridLayoutManager;->getDecoratedMeasuredWidthWithMargin(Landroid/view/View;)I

    move-result v4

    aput v4, v10, v3

    invoke-static {v9}, Landroidx/leanback/widget/GridLayoutManager;->getDecoratedMeasuredHeightWithMargin(Landroid/view/View;)I

    move-result v4

    aput v4, v10, v1

    iget-object v4, v0, Landroidx/leanback/widget/GridLayoutManager;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    invoke-virtual {v4, v9}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->recycleView(Landroid/view/View;)V

    :cond_12
    iget v4, v0, Landroidx/leanback/widget/GridLayoutManager;->mOrientation:I

    if-nez v4, :cond_13

    aget v4, v10, v1

    :goto_b
    move v8, v4

    goto :goto_c

    :cond_13
    aget v4, v10, v3

    goto :goto_b

    :cond_14
    :goto_c
    if-ltz v8, :cond_15

    move v12, v8

    :cond_15
    if-gez v12, :cond_16

    move v12, v3

    :cond_16
    iget-object v4, v0, Landroidx/leanback/widget/GridLayoutManager;->mRowSizeSecondary:[I

    aget v5, v4, v6

    if-eq v5, v12, :cond_17

    aput v12, v4, v6

    move v7, v1

    :cond_17
    add-int/2addr v6, v1

    goto/16 :goto_1

    :cond_18
    return v7

    :cond_19
    :goto_d
    return v3
.end method

.method public final processSelectionMoves(IZ)I
    .locals 10

    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mGrid:Landroidx/leanback/widget/Grid;

    if-nez v0, :cond_0

    return p1

    :cond_0
    iget v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPosition:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    invoke-virtual {v0, v1}, Landroidx/leanback/widget/Grid;->getLocation(I)Landroidx/leanback/widget/Grid$Location;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget v0, v0, Landroidx/leanback/widget/Grid$Location;->mRow:I

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v2

    :goto_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v6, v4

    :goto_2
    if-ge v6, v3, :cond_b

    if-eqz p1, :cond_b

    if-lez p1, :cond_3

    move v7, v6

    goto :goto_3

    :cond_3
    add-int/lit8 v7, v3, -0x1

    sub-int/2addr v7, v6

    :goto_3
    invoke-virtual {p0, v7}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v9

    if-nez v9, :cond_a

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->hasFocus()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-virtual {v8}, Landroid/view/View;->hasFocusable()Z

    move-result v9

    if-eqz v9, :cond_a

    :cond_4
    invoke-virtual {p0, v7}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-static {v7}, Landroidx/leanback/widget/GridLayoutManager;->getAdapterPositionByView(Landroid/view/View;)I

    move-result v7

    iget-object v9, p0, Landroidx/leanback/widget/GridLayoutManager;->mGrid:Landroidx/leanback/widget/Grid;

    invoke-virtual {v9, v7}, Landroidx/leanback/widget/Grid;->getLocation(I)Landroidx/leanback/widget/Grid$Location;

    move-result-object v9

    if-nez v9, :cond_5

    move v9, v2

    goto :goto_4

    :cond_5
    iget v9, v9, Landroidx/leanback/widget/Grid$Location;->mRow:I

    :goto_4
    if-ne v0, v2, :cond_6

    move v1, v7

    move-object v5, v8

    move v0, v9

    goto :goto_6

    :cond_6
    if-ne v9, v0, :cond_a

    if-lez p1, :cond_7

    if-gt v7, v1, :cond_8

    :cond_7
    if-gez p1, :cond_a

    if-ge v7, v1, :cond_a

    :cond_8
    if-lez p1, :cond_9

    add-int/lit8 p1, p1, -0x1

    :goto_5
    move v1, v7

    move-object v5, v8

    goto :goto_6

    :cond_9
    add-int/lit8 p1, p1, 0x1

    goto :goto_5

    :cond_a
    :goto_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_b
    if-eqz v5, :cond_e

    if-eqz p2, :cond_d

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->hasFocus()Z

    move-result p2

    if-eqz p2, :cond_c

    iget p2, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    or-int/lit8 p2, p2, 0x20

    iput p2, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    iget p2, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    and-int/lit8 p2, p2, -0x21

    iput p2, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    :cond_c
    iput v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPosition:I

    iput v4, p0, Landroidx/leanback/widget/GridLayoutManager;->mSubFocusPosition:I

    goto :goto_7

    :cond_d
    const/4 p2, 0x1

    invoke-virtual {p0, v5, p2}, Landroidx/leanback/widget/GridLayoutManager;->scrollToView(Landroid/view/View;Z)V

    :cond_e
    :goto_7
    return p1
.end method

.method public final removeAndRecycleAllViews(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V
    .locals 2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->removeViewAt(I)V

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->recycleView(Landroid/view/View;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final removeInvisibleViewsAtEnd()V
    .locals 4

    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    const v1, 0x10040

    and-int/2addr v1, v0

    const/high16 v2, 0x10000

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mGrid:Landroidx/leanback/widget/Grid;

    iget v2, p0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPosition:I

    const/high16 v3, 0x40000

    and-int/2addr v0, v3

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget p0, p0, Landroidx/leanback/widget/GridLayoutManager;->mSizePrimary:I

    :goto_0
    iget v0, v1, Landroidx/leanback/widget/Grid;->mLastVisibleIndex:I

    iget v3, v1, Landroidx/leanback/widget/Grid;->mFirstVisibleIndex:I

    if-lt v0, v3, :cond_2

    if-le v0, v2, :cond_2

    iget-boolean v3, v1, Landroidx/leanback/widget/Grid;->mReversedFlow:Z

    if-nez v3, :cond_1

    iget-object v3, v1, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/GridLayoutManager$2;

    invoke-virtual {v3, v0}, Landroidx/leanback/widget/GridLayoutManager$2;->getEdge(I)I

    move-result v0

    if-lt v0, p0, :cond_2

    goto :goto_1

    :cond_1
    iget-object v3, v1, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/GridLayoutManager$2;

    invoke-virtual {v3, v0}, Landroidx/leanback/widget/GridLayoutManager$2;->getEdge(I)I

    move-result v0

    if-gt v0, p0, :cond_2

    :goto_1
    iget-object v0, v1, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/GridLayoutManager$2;

    iget v3, v1, Landroidx/leanback/widget/Grid;->mLastVisibleIndex:I

    invoke-virtual {v0, v3}, Landroidx/leanback/widget/GridLayoutManager$2;->removeItem(I)V

    iget v0, v1, Landroidx/leanback/widget/Grid;->mLastVisibleIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, v1, Landroidx/leanback/widget/Grid;->mLastVisibleIndex:I

    goto :goto_0

    :cond_2
    iget p0, v1, Landroidx/leanback/widget/Grid;->mLastVisibleIndex:I

    iget v0, v1, Landroidx/leanback/widget/Grid;->mFirstVisibleIndex:I

    if-ge p0, v0, :cond_3

    const/4 p0, -0x1

    iput p0, v1, Landroidx/leanback/widget/Grid;->mLastVisibleIndex:I

    iput p0, v1, Landroidx/leanback/widget/Grid;->mFirstVisibleIndex:I

    :cond_3
    return-void
.end method

.method public final removeInvisibleViewsAtFront()V
    .locals 5

    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    const v1, 0x10040

    and-int/2addr v1, v0

    const/high16 v2, 0x10000

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mGrid:Landroidx/leanback/widget/Grid;

    iget v2, p0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPosition:I

    const/high16 v3, 0x40000

    and-int/2addr v0, v3

    if-eqz v0, :cond_0

    iget p0, p0, Landroidx/leanback/widget/GridLayoutManager;->mSizePrimary:I

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    iget v0, v1, Landroidx/leanback/widget/Grid;->mLastVisibleIndex:I

    iget v3, v1, Landroidx/leanback/widget/Grid;->mFirstVisibleIndex:I

    if-lt v0, v3, :cond_2

    if-ge v3, v2, :cond_2

    iget-object v0, v1, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/GridLayoutManager$2;

    invoke-virtual {v0, v3}, Landroidx/leanback/widget/GridLayoutManager$2;->getSize(I)I

    move-result v0

    iget-boolean v3, v1, Landroidx/leanback/widget/Grid;->mReversedFlow:Z

    if-nez v3, :cond_1

    iget-object v3, v1, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/GridLayoutManager$2;

    iget v4, v1, Landroidx/leanback/widget/Grid;->mFirstVisibleIndex:I

    invoke-virtual {v3, v4}, Landroidx/leanback/widget/GridLayoutManager$2;->getEdge(I)I

    move-result v3

    add-int/2addr v3, v0

    if-gt v3, p0, :cond_2

    goto :goto_1

    :cond_1
    iget-object v3, v1, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/GridLayoutManager$2;

    iget v4, v1, Landroidx/leanback/widget/Grid;->mFirstVisibleIndex:I

    invoke-virtual {v3, v4}, Landroidx/leanback/widget/GridLayoutManager$2;->getEdge(I)I

    move-result v3

    sub-int/2addr v3, v0

    if-lt v3, p0, :cond_2

    :goto_1
    iget-object v0, v1, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/GridLayoutManager$2;

    iget v3, v1, Landroidx/leanback/widget/Grid;->mFirstVisibleIndex:I

    invoke-virtual {v0, v3}, Landroidx/leanback/widget/GridLayoutManager$2;->removeItem(I)V

    iget v0, v1, Landroidx/leanback/widget/Grid;->mFirstVisibleIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v1, Landroidx/leanback/widget/Grid;->mFirstVisibleIndex:I

    goto :goto_0

    :cond_2
    iget p0, v1, Landroidx/leanback/widget/Grid;->mLastVisibleIndex:I

    iget v0, v1, Landroidx/leanback/widget/Grid;->mFirstVisibleIndex:I

    if-ge p0, v0, :cond_3

    const/4 p0, -0x1

    iput p0, v1, Landroidx/leanback/widget/Grid;->mLastVisibleIndex:I

    iput p0, v1, Landroidx/leanback/widget/Grid;->mFirstVisibleIndex:I

    :cond_3
    return-void
.end method

.method public final requestChildRectangleOnScreen(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final saveContext(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 1

    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mSaveContextLevel:I

    if-nez v0, :cond_0

    iput-object p1, p0, Landroidx/leanback/widget/GridLayoutManager;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    iput-object p2, p0, Landroidx/leanback/widget/GridLayoutManager;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    const/4 p1, 0x0

    iput p1, p0, Landroidx/leanback/widget/GridLayoutManager;->mPositionDeltaInPreLayout:I

    iput p1, p0, Landroidx/leanback/widget/GridLayoutManager;->mExtraLayoutSpaceInPreLayout:I

    :cond_0
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mSaveContextLevel:I

    return-void
.end method

.method public final scrollDirectionPrimary(I)I
    .locals 6

    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    and-int/lit8 v1, v0, 0x40

    const/4 v2, 0x1

    if-nez v1, :cond_3

    and-int/lit8 v0, v0, 0x3

    if-eq v0, v2, :cond_3

    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroidx/leanback/widget/WindowAlignment;

    if-lez p1, :cond_1

    iget-object v0, v0, Landroidx/leanback/widget/WindowAlignment;->mMainAxis:Landroidx/leanback/widget/WindowAlignment$Axis;

    iget v1, v0, Landroidx/leanback/widget/WindowAlignment$Axis;->mMaxEdge:I

    const v3, 0x7fffffff

    if-ne v1, v3, :cond_0

    goto :goto_1

    :cond_0
    iget v0, v0, Landroidx/leanback/widget/WindowAlignment$Axis;->mMaxScroll:I

    if-le p1, v0, :cond_3

    goto :goto_0

    :cond_1
    if-gez p1, :cond_3

    iget-object v0, v0, Landroidx/leanback/widget/WindowAlignment;->mMainAxis:Landroidx/leanback/widget/WindowAlignment$Axis;

    iget v1, v0, Landroidx/leanback/widget/WindowAlignment$Axis;->mMinEdge:I

    const/high16 v3, -0x80000000

    if-ne v1, v3, :cond_2

    goto :goto_1

    :cond_2
    iget v0, v0, Landroidx/leanback/widget/WindowAlignment$Axis;->mMinScroll:I

    if-ge p1, v0, :cond_3

    :goto_0
    move p1, v0

    :cond_3
    :goto_1
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    neg-int v1, p1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v3

    iget v4, p0, Landroidx/leanback/widget/GridLayoutManager;->mOrientation:I

    if-ne v4, v2, :cond_5

    move v4, v0

    :goto_2
    if-ge v4, v3, :cond_6

    invoke-virtual {p0, v4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_5
    move v4, v0

    :goto_3
    if-ge v4, v3, :cond_6

    invoke-virtual {p0, v4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/view/View;->offsetLeftAndRight(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_6
    iget v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    and-int/lit8 v1, v1, 0x3

    if-ne v1, v2, :cond_7

    invoke-virtual {p0}, Landroidx/leanback/widget/GridLayoutManager;->updateScrollLimits()V

    return p1

    :cond_7
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v1

    iget v3, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    const/high16 v4, 0x40000

    and-int/2addr v3, v4

    if-eqz v3, :cond_8

    if-lez p1, :cond_9

    goto :goto_4

    :cond_8
    if-gez p1, :cond_9

    :goto_4
    invoke-virtual {p0}, Landroidx/leanback/widget/GridLayoutManager;->prependVisibleItems()V

    goto :goto_5

    :cond_9
    invoke-virtual {p0}, Landroidx/leanback/widget/GridLayoutManager;->appendVisibleItems()V

    :goto_5
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v3

    if-le v3, v1, :cond_a

    move v1, v2

    goto :goto_6

    :cond_a
    move v1, v0

    :goto_6
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v3

    iget v5, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    and-int/2addr v4, v5

    if-eqz v4, :cond_b

    if-lez p1, :cond_c

    goto :goto_7

    :cond_b
    if-gez p1, :cond_c

    :goto_7
    invoke-virtual {p0}, Landroidx/leanback/widget/GridLayoutManager;->removeInvisibleViewsAtEnd()V

    goto :goto_8

    :cond_c
    invoke-virtual {p0}, Landroidx/leanback/widget/GridLayoutManager;->removeInvisibleViewsAtFront()V

    :goto_8
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v4

    if-ge v4, v3, :cond_d

    goto :goto_9

    :cond_d
    move v2, v0

    :goto_9
    or-int v0, v1, v2

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Landroidx/leanback/widget/GridLayoutManager;->updateRowSecondarySizeRefresh()V

    :cond_e
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mBaseGridView:Landroidx/leanback/widget/BaseGridView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    invoke-virtual {p0}, Landroidx/leanback/widget/GridLayoutManager;->updateScrollLimits()V

    return p1
.end method

.method public final scrollDirectionSecondary(I)I
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    neg-int v1, p1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v2

    iget v3, p0, Landroidx/leanback/widget/GridLayoutManager;->mOrientation:I

    if-nez v3, :cond_1

    :goto_0
    if-ge v0, v2, :cond_2

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-ge v0, v2, :cond_2

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/View;->offsetLeftAndRight(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mScrollOffsetSecondary:I

    add-int/2addr v0, p1

    iput v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mScrollOffsetSecondary:I

    invoke-virtual {p0}, Landroidx/leanback/widget/GridLayoutManager;->updateSecondaryScrollLimits()V

    iget-object p0, p0, Landroidx/leanback/widget/GridLayoutManager;->mBaseGridView:Landroidx/leanback/widget/BaseGridView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return p1
.end method

.method public final scrollHorizontallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 1

    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mGrid:Landroidx/leanback/widget/Grid;

    if-eqz v0, :cond_1

    invoke-virtual {p0, p2, p3}, Landroidx/leanback/widget/GridLayoutManager;->saveContext(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V

    iget p2, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    and-int/lit8 p2, p2, -0x4

    or-int/lit8 p2, p2, 0x2

    iput p2, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    iget p2, p0, Landroidx/leanback/widget/GridLayoutManager;->mOrientation:I

    if-nez p2, :cond_0

    invoke-virtual {p0, p1}, Landroidx/leanback/widget/GridLayoutManager;->scrollDirectionPrimary(I)I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/leanback/widget/GridLayoutManager;->scrollDirectionSecondary(I)I

    move-result p1

    :goto_0
    invoke-virtual {p0}, Landroidx/leanback/widget/GridLayoutManager;->leaveContext()V

    iget p2, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    and-int/lit8 p2, p2, -0x4

    iput p2, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    return p1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final scrollToPosition(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/leanback/widget/GridLayoutManager;->setSelection$1(IZ)V

    return-void
.end method

.method public final scrollToSelection(IZ)V
    .locals 7

    const/4 v0, 0x0

    iput v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mPrimaryScrollExtra:I

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->isSmoothScrolling()Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    if-eqz v2, :cond_0

    iget-object v4, p0, Landroidx/leanback/widget/GridLayoutManager;->mBaseGridView:Landroidx/leanback/widget/BaseGridView;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->isLayoutRequested()Z

    move-result v4

    if-nez v4, :cond_0

    if-eqz v1, :cond_0

    invoke-static {v1}, Landroidx/leanback/widget/GridLayoutManager;->getAdapterPositionByView(Landroid/view/View;)I

    move-result v4

    if-ne v4, p1, :cond_0

    iget p1, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    or-int/lit8 p1, p1, 0x20

    iput p1, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    invoke-virtual {p0, v1, p2}, Landroidx/leanback/widget/GridLayoutManager;->scrollToView(Landroid/view/View;Z)V

    iget p1, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    and-int/lit8 p1, p1, -0x21

    iput p1, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    goto/16 :goto_0

    :cond_0
    iget v4, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    and-int/lit16 v5, v4, 0x200

    const/high16 v6, -0x80000000

    if-eqz v5, :cond_8

    and-int/lit8 v4, v4, 0x40

    if-eqz v4, :cond_1

    goto/16 :goto_1

    :cond_1
    if-eqz p2, :cond_3

    iget-object v4, p0, Landroidx/leanback/widget/GridLayoutManager;->mBaseGridView:Landroidx/leanback/widget/BaseGridView;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->isLayoutRequested()Z

    move-result v4

    if-nez v4, :cond_3

    iput p1, p0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPosition:I

    iput v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mSubFocusPosition:I

    iput v6, p0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPositionOffset:I

    iget-object p2, p0, Landroidx/leanback/widget/GridLayoutManager;->mGrid:Landroidx/leanback/widget/Grid;

    if-eqz p2, :cond_2

    new-instance p2, Landroidx/leanback/widget/GridLayoutManager$4;

    invoke-direct {p2, p0}, Landroidx/leanback/widget/GridLayoutManager$4;-><init>(Landroidx/leanback/widget/GridLayoutManager;)V

    iput p1, p2, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->mTargetPosition:I

    invoke-virtual {p0, p2}, Landroidx/leanback/widget/GridLayoutManager;->startSmoothScroll(Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;)V

    iget p1, p2, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->mTargetPosition:I

    iget p2, p0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPosition:I

    if-eq p1, p2, :cond_7

    iput p1, p0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPosition:I

    iput v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mSubFocusPosition:I

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "GridLayoutManager:"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/leanback/widget/GridLayoutManager;->mBaseGridView:Landroidx/leanback/widget/BaseGridView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getId()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "setSelectionSmooth should not be called before first layout pass"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    if-nez v2, :cond_5

    iget-object v2, p0, Landroidx/leanback/widget/GridLayoutManager;->mCurrentSmoothScroller:Landroidx/leanback/widget/GridLayoutManager$GridLinearSmoothScroller;

    if-eqz v2, :cond_4

    iput-boolean v3, v2, Landroidx/leanback/widget/GridLayoutManager$GridLinearSmoothScroller;->mSkipOnStopInternal:Z

    :cond_4
    iget-object v2, p0, Landroidx/leanback/widget/GridLayoutManager;->mBaseGridView:Landroidx/leanback/widget/BaseGridView;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->stopScroll()V

    :cond_5
    iget-object v2, p0, Landroidx/leanback/widget/GridLayoutManager;->mBaseGridView:Landroidx/leanback/widget/BaseGridView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->isLayoutRequested()Z

    move-result v2

    if-nez v2, :cond_6

    if-eqz v1, :cond_6

    invoke-static {v1}, Landroidx/leanback/widget/GridLayoutManager;->getAdapterPositionByView(Landroid/view/View;)I

    move-result v2

    if-ne v2, p1, :cond_6

    iget p1, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    or-int/lit8 p1, p1, 0x20

    iput p1, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    invoke-virtual {p0, v1, p2}, Landroidx/leanback/widget/GridLayoutManager;->scrollToView(Landroid/view/View;Z)V

    iget p1, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    and-int/lit8 p1, p1, -0x21

    iput p1, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    goto :goto_0

    :cond_6
    iput p1, p0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPosition:I

    iput v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mSubFocusPosition:I

    iput v6, p0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPositionOffset:I

    iget p1, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    or-int/lit16 p1, p1, 0x100

    iput p1, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->requestLayout()V

    :cond_7
    :goto_0
    return-void

    :cond_8
    :goto_1
    iput p1, p0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPosition:I

    iput v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mSubFocusPosition:I

    iput v6, p0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPositionOffset:I

    return-void
.end method

.method public final scrollToView(Landroid/view/View;Landroid/view/View;ZII)V
    .locals 6

    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Landroidx/leanback/widget/GridLayoutManager;->getAdapterPositionByView(Landroid/view/View;)I

    move-result v0

    invoke-static {p1, p2}, Landroidx/leanback/widget/GridLayoutManager;->getSubPositionByView(Landroid/view/View;Landroid/view/View;)I

    move-result v1

    iget v2, p0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPosition:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v0, v2, :cond_1

    iget v2, p0, Landroidx/leanback/widget/GridLayoutManager;->mSubFocusPosition:I

    if-eq v1, v2, :cond_3

    :cond_1
    iput v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPosition:I

    iput v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mSubFocusPosition:I

    iput v3, p0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPositionOffset:I

    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    and-int/lit8 v0, v0, 0x3

    if-eq v0, v4, :cond_2

    invoke-virtual {p0}, Landroidx/leanback/widget/GridLayoutManager;->dispatchChildSelected()V

    :cond_2
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mBaseGridView:Landroidx/leanback/widget/BaseGridView;

    invoke-virtual {v0}, Landroidx/leanback/widget/BaseGridView;->isChildrenDrawingOrderEnabledInternal()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mBaseGridView:Landroidx/leanback/widget/BaseGridView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    :cond_3
    if-nez p1, :cond_4

    return-void

    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mBaseGridView:Landroidx/leanback/widget/BaseGridView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    :cond_5
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    const/high16 v1, 0x20000

    and-int/2addr v0, v1

    if-nez v0, :cond_6

    if-eqz p3, :cond_6

    return-void

    :cond_6
    sget-object v0, Landroidx/leanback/widget/GridLayoutManager;->sTwoInts:[I

    invoke-virtual {p0, p1, p2, v0}, Landroidx/leanback/widget/GridLayoutManager;->getScrollPosition(Landroid/view/View;Landroid/view/View;[I)Z

    move-result p1

    if-nez p1, :cond_7

    if-nez p4, :cond_7

    if-eqz p5, :cond_b

    :cond_7
    aget p1, v0, v3

    add-int/2addr p1, p4

    aget p2, v0, v4

    add-int/2addr p2, p5

    iget p4, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    and-int/lit8 p4, p4, 0x3

    if-ne p4, v4, :cond_8

    invoke-virtual {p0, p1}, Landroidx/leanback/widget/GridLayoutManager;->scrollDirectionPrimary(I)I

    invoke-virtual {p0, p2}, Landroidx/leanback/widget/GridLayoutManager;->scrollDirectionSecondary(I)I

    goto :goto_1

    :cond_8
    iget p4, p0, Landroidx/leanback/widget/GridLayoutManager;->mOrientation:I

    if-nez p4, :cond_9

    goto :goto_0

    :cond_9
    move v5, p2

    move p2, p1

    move p1, v5

    :goto_0
    if-eqz p3, :cond_a

    iget-object p0, p0, Landroidx/leanback/widget/GridLayoutManager;->mBaseGridView:Landroidx/leanback/widget/BaseGridView;

    invoke-virtual {p0, p1, p2, v3}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(IIZ)V

    goto :goto_1

    :cond_a
    iget-object p3, p0, Landroidx/leanback/widget/GridLayoutManager;->mBaseGridView:Landroidx/leanback/widget/BaseGridView;

    invoke-virtual {p3, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    invoke-virtual {p0}, Landroidx/leanback/widget/GridLayoutManager;->dispatchChildSelectedAndPositioned()V

    :cond_b
    :goto_1
    return-void
.end method

.method public final scrollToView(Landroid/view/View;Z)V
    .locals 6

    invoke-virtual {p1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    invoke-virtual/range {v0 .. v5}, Landroidx/leanback/widget/GridLayoutManager;->scrollToView(Landroid/view/View;Landroid/view/View;ZII)V

    return-void
.end method

.method public final scrollVerticallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 2

    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mGrid:Landroidx/leanback/widget/Grid;

    if-eqz v1, :cond_1

    and-int/lit8 v0, v0, -0x4

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    invoke-virtual {p0, p2, p3}, Landroidx/leanback/widget/GridLayoutManager;->saveContext(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V

    iget p2, p0, Landroidx/leanback/widget/GridLayoutManager;->mOrientation:I

    const/4 p3, 0x1

    if-ne p2, p3, :cond_0

    invoke-virtual {p0, p1}, Landroidx/leanback/widget/GridLayoutManager;->scrollDirectionPrimary(I)I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/leanback/widget/GridLayoutManager;->scrollDirectionSecondary(I)I

    move-result p1

    :goto_0
    invoke-virtual {p0}, Landroidx/leanback/widget/GridLayoutManager;->leaveContext()V

    iget p2, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    and-int/lit8 p2, p2, -0x4

    iput p2, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    return p1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final setOrientation(I)V
    .locals 3

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Landroidx/leanback/widget/GridLayoutManager;->mOrientation:I

    invoke-static {p0, p1}, Landroidx/recyclerview/widget/OrientationHelper;->createOrientationHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;I)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object v0

    iput-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroidx/leanback/widget/WindowAlignment;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v0, Landroidx/leanback/widget/WindowAlignment;->vertical:Landroidx/leanback/widget/WindowAlignment$Axis;

    iget-object v2, v0, Landroidx/leanback/widget/WindowAlignment;->horizontal:Landroidx/leanback/widget/WindowAlignment$Axis;

    if-nez p1, :cond_1

    iput-object v2, v0, Landroidx/leanback/widget/WindowAlignment;->mMainAxis:Landroidx/leanback/widget/WindowAlignment$Axis;

    iput-object v1, v0, Landroidx/leanback/widget/WindowAlignment;->mSecondAxis:Landroidx/leanback/widget/WindowAlignment$Axis;

    goto :goto_0

    :cond_1
    iput-object v1, v0, Landroidx/leanback/widget/WindowAlignment;->mMainAxis:Landroidx/leanback/widget/WindowAlignment$Axis;

    iput-object v2, v0, Landroidx/leanback/widget/WindowAlignment;->mSecondAxis:Landroidx/leanback/widget/WindowAlignment$Axis;

    :goto_0
    iget-object p1, p0, Landroidx/leanback/widget/GridLayoutManager;->mItemAlignment:Landroidx/leanback/widget/ItemAlignment;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    or-int/lit16 p1, p1, 0x100

    iput p1, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    return-void
.end method

.method public final setRowHeight(I)V
    .locals 1

    if-gez p1, :cond_1

    const/4 v0, -0x2

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid row height: "

    invoke-static {p1, v0}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iput p1, p0, Landroidx/leanback/widget/GridLayoutManager;->mRowSizeSecondaryRequested:I

    return-void
.end method

.method public final setSelection$1(IZ)V
    .locals 1

    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPosition:I

    if-eq v0, p1, :cond_0

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    :cond_0
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mSubFocusPosition:I

    if-nez v0, :cond_1

    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mPrimaryScrollExtra:I

    if-eqz v0, :cond_2

    :cond_1
    invoke-virtual {p0, p1, p2}, Landroidx/leanback/widget/GridLayoutManager;->scrollToSelection(IZ)V

    :cond_2
    return-void
.end method

.method public final smoothScrollToPosition(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 0

    const/4 p1, 0x1

    invoke-virtual {p0, p2, p1}, Landroidx/leanback/widget/GridLayoutManager;->setSelection$1(IZ)V

    return-void
.end method

.method public final startSmoothScroll(Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;)V
    .locals 2

    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mCurrentSmoothScroller:Landroidx/leanback/widget/GridLayoutManager$GridLinearSmoothScroller;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroidx/leanback/widget/GridLayoutManager$GridLinearSmoothScroller;->mSkipOnStopInternal:Z

    :cond_0
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->startSmoothScroll(Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;)V

    iget-boolean v0, p1, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->mRunning:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    instance-of v0, p1, Landroidx/leanback/widget/GridLayoutManager$GridLinearSmoothScroller;

    if-eqz v0, :cond_2

    check-cast p1, Landroidx/leanback/widget/GridLayoutManager$GridLinearSmoothScroller;

    iput-object p1, p0, Landroidx/leanback/widget/GridLayoutManager;->mCurrentSmoothScroller:Landroidx/leanback/widget/GridLayoutManager$GridLinearSmoothScroller;

    instance-of v0, p1, Landroidx/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;

    if-eqz v0, :cond_1

    check-cast p1, Landroidx/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;

    iput-object p1, p0, Landroidx/leanback/widget/GridLayoutManager;->mPendingMoveSmoothScroller:Landroidx/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;

    goto :goto_0

    :cond_1
    iput-object v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mPendingMoveSmoothScroller:Landroidx/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;

    goto :goto_0

    :cond_2
    iput-object v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mCurrentSmoothScroller:Landroidx/leanback/widget/GridLayoutManager$GridLinearSmoothScroller;

    iput-object v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mPendingMoveSmoothScroller:Landroidx/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;

    :goto_0
    return-void
.end method

.method public final updatePositionDeltaInPreLayout()V
    .locals 2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;

    iget-object v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mGrid:Landroidx/leanback/widget/Grid;

    iget v1, v1, Landroidx/leanback/widget/Grid;->mFirstVisibleIndex:I

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->mViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v0

    sub-int/2addr v1, v0

    iput v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mPositionDeltaInPreLayout:I

    goto :goto_0

    :cond_0
    iput v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mPositionDeltaInPreLayout:I

    :goto_0
    return-void
.end method

.method public final updateRowSecondarySizeRefresh()V
    .locals 4

    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    and-int/lit16 v0, v0, -0x401

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroidx/leanback/widget/GridLayoutManager;->processRowSizeSecondary(Z)Z

    move-result v2

    const/16 v3, 0x400

    if-eqz v2, :cond_0

    move v1, v3

    :cond_0
    or-int/2addr v0, v1

    iput v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    and-int/2addr v0, v3

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mBaseGridView:Landroidx/leanback/widget/BaseGridView;

    sget-object v1, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    iget-object p0, p0, Landroidx/leanback/widget/GridLayoutManager;->mRequestLayoutRunnable:Landroidx/leanback/widget/GridLayoutManager$1;

    invoke-virtual {v0, p0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public final updateScrollLimits()V
    .locals 12

    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    const/high16 v1, 0x40000

    and-int/2addr v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mGrid:Landroidx/leanback/widget/Grid;

    iget v0, v0, Landroidx/leanback/widget/Grid;->mLastVisibleIndex:I

    iget-object v3, p0, Landroidx/leanback/widget/GridLayoutManager;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v3

    sub-int/2addr v3, v2

    iget-object v4, p0, Landroidx/leanback/widget/GridLayoutManager;->mGrid:Landroidx/leanback/widget/Grid;

    iget v4, v4, Landroidx/leanback/widget/Grid;->mFirstVisibleIndex:I

    move v5, v4

    move v4, v3

    move v3, v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mGrid:Landroidx/leanback/widget/Grid;

    iget v3, v0, Landroidx/leanback/widget/Grid;->mFirstVisibleIndex:I

    iget v4, v0, Landroidx/leanback/widget/Grid;->mLastVisibleIndex:I

    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    sub-int/2addr v0, v2

    move v5, v4

    move v4, v1

    move v11, v3

    move v3, v0

    move v0, v11

    :goto_0
    if-ltz v0, :cond_b

    if-gez v5, :cond_2

    goto/16 :goto_8

    :cond_2
    if-ne v0, v4, :cond_3

    move v0, v2

    goto :goto_1

    :cond_3
    move v0, v1

    :goto_1
    if-ne v5, v3, :cond_4

    move v3, v2

    goto :goto_2

    :cond_4
    move v3, v1

    :goto_2
    const/high16 v4, -0x80000000

    const v5, 0x7fffffff

    iget-object v6, p0, Landroidx/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroidx/leanback/widget/WindowAlignment;

    if-nez v0, :cond_5

    iget-object v7, v6, Landroidx/leanback/widget/WindowAlignment;->mMainAxis:Landroidx/leanback/widget/WindowAlignment$Axis;

    iget v8, v7, Landroidx/leanback/widget/WindowAlignment$Axis;->mMaxEdge:I

    if-ne v8, v5, :cond_5

    if-nez v3, :cond_5

    iget v7, v7, Landroidx/leanback/widget/WindowAlignment$Axis;->mMinEdge:I

    if-ne v7, v4, :cond_5

    return-void

    :cond_5
    sget-object v7, Landroidx/leanback/widget/GridLayoutManager;->sTwoInts:[I

    if-eqz v0, :cond_8

    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mGrid:Landroidx/leanback/widget/Grid;

    invoke-virtual {v0, v2, v7}, Landroidx/leanback/widget/Grid;->findRowMax(Z[I)I

    move-result v5

    aget v0, v7, v2

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    iget v8, p0, Landroidx/leanback/widget/GridLayoutManager;->mOrientation:I

    if-nez v8, :cond_6

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v9

    iget v10, v8, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;->mLeftInset:I

    add-int/2addr v9, v10

    iget v8, v8, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;->mAlignX:I

    :goto_3
    add-int/2addr v9, v8

    goto :goto_4

    :cond_6
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v9

    iget v10, v8, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;->mTopInset:I

    add-int/2addr v9, v10

    iget v8, v8, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;->mAlignY:I

    goto :goto_3

    :goto_4
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;

    iget-object v0, v0, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;->mAlignMultiple:[I

    if-eqz v0, :cond_7

    array-length v8, v0

    if-lez v8, :cond_7

    array-length v8, v0

    sub-int/2addr v8, v2

    aget v8, v0, v8

    aget v0, v0, v1

    sub-int/2addr v8, v0

    add-int/2addr v8, v9

    goto :goto_5

    :cond_7
    move v8, v9

    goto :goto_5

    :cond_8
    move v8, v5

    :goto_5
    if-eqz v3, :cond_a

    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mGrid:Landroidx/leanback/widget/Grid;

    invoke-virtual {v0, v1, v7}, Landroidx/leanback/widget/Grid;->findRowMin(Z[I)I

    move-result v4

    aget v0, v7, v2

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    iget p0, p0, Landroidx/leanback/widget/GridLayoutManager;->mOrientation:I

    if-nez p0, :cond_9

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iget v1, p0, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;->mLeftInset:I

    add-int/2addr v0, v1

    iget p0, p0, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;->mAlignX:I

    :goto_6
    add-int/2addr v0, p0

    goto :goto_7

    :cond_9
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iget v1, p0, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;->mTopInset:I

    add-int/2addr v0, v1

    iget p0, p0, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;->mAlignY:I

    goto :goto_6

    :cond_a
    move v0, v4

    :goto_7
    iget-object p0, v6, Landroidx/leanback/widget/WindowAlignment;->mMainAxis:Landroidx/leanback/widget/WindowAlignment$Axis;

    invoke-virtual {p0, v4, v5, v0, v8}, Landroidx/leanback/widget/WindowAlignment$Axis;->updateMinMax(IIII)V

    :cond_b
    :goto_8
    return-void
.end method

.method public final updateSecondaryScrollLimits()V
    .locals 3

    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroidx/leanback/widget/WindowAlignment;

    iget-object v0, v0, Landroidx/leanback/widget/WindowAlignment;->mSecondAxis:Landroidx/leanback/widget/WindowAlignment$Axis;

    iget v1, v0, Landroidx/leanback/widget/WindowAlignment$Axis;->mPaddingMin:I

    iget v2, p0, Landroidx/leanback/widget/GridLayoutManager;->mScrollOffsetSecondary:I

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroidx/leanback/widget/GridLayoutManager;->getSizeSecondary()I

    move-result p0

    add-int/2addr p0, v1

    invoke-virtual {v0, v1, p0, v1, p0}, Landroidx/leanback/widget/WindowAlignment$Axis;->updateMinMax(IIII)V

    return-void
.end method
