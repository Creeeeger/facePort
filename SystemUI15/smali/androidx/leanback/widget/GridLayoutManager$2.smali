.class public final Landroidx/leanback/widget/GridLayoutManager$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Landroidx/leanback/widget/GridLayoutManager;


# direct methods
.method public constructor <init>(Landroidx/leanback/widget/GridLayoutManager;)V
    .locals 0

    iput-object p1, p0, Landroidx/leanback/widget/GridLayoutManager$2;->this$0:Landroidx/leanback/widget/GridLayoutManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final addItem(IIILjava/lang/Object;)V
    .locals 8

    move-object v1, p4

    check-cast v1, Landroid/view/View;

    const/high16 p4, -0x80000000

    iget-object v6, p0, Landroidx/leanback/widget/GridLayoutManager$2;->this$0:Landroidx/leanback/widget/GridLayoutManager;

    if-eq p3, p4, :cond_0

    const p4, 0x7fffffff

    if-ne p3, p4, :cond_2

    :cond_0
    iget-object p3, v6, Landroidx/leanback/widget/GridLayoutManager;->mGrid:Landroidx/leanback/widget/Grid;

    iget-boolean p3, p3, Landroidx/leanback/widget/Grid;->mReversedFlow:Z

    iget-object p4, v6, Landroidx/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroidx/leanback/widget/WindowAlignment;

    if-nez p3, :cond_1

    iget-object p3, p4, Landroidx/leanback/widget/WindowAlignment;->mMainAxis:Landroidx/leanback/widget/WindowAlignment$Axis;

    iget p3, p3, Landroidx/leanback/widget/WindowAlignment$Axis;->mPaddingMin:I

    goto :goto_0

    :cond_1
    iget-object p3, p4, Landroidx/leanback/widget/WindowAlignment;->mMainAxis:Landroidx/leanback/widget/WindowAlignment$Axis;

    iget p4, p3, Landroidx/leanback/widget/WindowAlignment$Axis;->mSize:I

    iget p3, p3, Landroidx/leanback/widget/WindowAlignment$Axis;->mPaddingMax:I

    sub-int/2addr p4, p3

    move p3, p4

    :cond_2
    :goto_0
    iget-object p4, v6, Landroidx/leanback/widget/GridLayoutManager;->mGrid:Landroidx/leanback/widget/Grid;

    iget-boolean p4, p4, Landroidx/leanback/widget/Grid;->mReversedFlow:Z

    const/4 v7, 0x1

    xor-int/2addr p4, v7

    if-eqz p4, :cond_3

    add-int/2addr p1, p3

    move v4, p1

    move v3, p3

    goto :goto_1

    :cond_3
    sub-int p1, p3, p1

    move v3, p1

    move v4, p3

    :goto_1
    invoke-virtual {v6, p2}, Landroidx/leanback/widget/GridLayoutManager;->getRowStartSecondary(I)I

    move-result p1

    iget-object p3, v6, Landroidx/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroidx/leanback/widget/WindowAlignment;

    iget-object p3, p3, Landroidx/leanback/widget/WindowAlignment;->mSecondAxis:Landroidx/leanback/widget/WindowAlignment$Axis;

    iget p3, p3, Landroidx/leanback/widget/WindowAlignment$Axis;->mPaddingMin:I

    add-int/2addr p1, p3

    iget p3, v6, Landroidx/leanback/widget/GridLayoutManager;->mScrollOffsetSecondary:I

    sub-int v5, p1, p3

    iget-object p1, v6, Landroidx/leanback/widget/GridLayoutManager;->mChildrenStates:Landroidx/leanback/widget/ViewsStateBundle;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager$2;->this$0:Landroidx/leanback/widget/GridLayoutManager;

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Landroidx/leanback/widget/GridLayoutManager;->layoutChild(Landroid/view/View;IIII)V

    iget-object p0, v6, Landroidx/leanback/widget/GridLayoutManager;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    iget-boolean p0, p0, Landroidx/recyclerview/widget/RecyclerView$State;->mInPreLayout:Z

    if-nez p0, :cond_4

    invoke-virtual {v6}, Landroidx/leanback/widget/GridLayoutManager;->updateScrollLimits()V

    :cond_4
    iget p0, v6, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    and-int/lit8 p0, p0, 0x3

    if-eq p0, v7, :cond_8

    iget-object p0, v6, Landroidx/leanback/widget/GridLayoutManager;->mPendingMoveSmoothScroller:Landroidx/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;

    if-eqz p0, :cond_8

    iget-boolean p1, p0, Landroidx/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->mStaggeredGrid:Z

    iget-object p2, p0, Landroidx/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->this$0:Landroidx/leanback/widget/GridLayoutManager;

    if-eqz p1, :cond_5

    iget p1, p0, Landroidx/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->mPendingMoves:I

    if-eqz p1, :cond_5

    invoke-virtual {p2, p1, v7}, Landroidx/leanback/widget/GridLayoutManager;->processSelectionMoves(IZ)I

    move-result p1

    iput p1, p0, Landroidx/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->mPendingMoves:I

    :cond_5
    iget p1, p0, Landroidx/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->mPendingMoves:I

    if-eqz p1, :cond_7

    if-lez p1, :cond_6

    invoke-virtual {p2}, Landroidx/leanback/widget/GridLayoutManager;->hasCreatedLastItem()Z

    move-result p1

    if-nez p1, :cond_7

    :cond_6
    iget p1, p0, Landroidx/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->mPendingMoves:I

    if-gez p1, :cond_8

    invoke-virtual {p2}, Landroidx/leanback/widget/GridLayoutManager;->hasCreatedFirstItem()Z

    move-result p1

    if-eqz p1, :cond_8

    :cond_7
    iget p1, p2, Landroidx/leanback/widget/GridLayoutManager;->mFocusPosition:I

    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->mTargetPosition:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->stop()V

    :cond_8
    return-void
.end method

.method public final createItem(IZ[Ljava/lang/Object;Z)I
    .locals 7

    iget-object p0, p0, Landroidx/leanback/widget/GridLayoutManager$2;->this$0:Landroidx/leanback/widget/GridLayoutManager;

    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mPositionDeltaInPreLayout:I

    sub-int v0, p1, v0

    iget-object v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->getViewForPosition(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;

    iget-object v2, p0, Landroidx/leanback/widget/GridLayoutManager;->mBaseGridView:Landroidx/leanback/widget/BaseGridView;

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    const/4 v2, 0x0

    iput-object v2, v1, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;->mAlignmentFacet:Landroidx/leanback/widget/ItemAlignmentFacet;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->mViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v1

    const/4 v3, 0x0

    if-nez v1, :cond_10

    const/4 v1, -0x1

    const/4 v4, 0x1

    if-eqz p4, :cond_1

    if-eqz p2, :cond_0

    invoke-virtual {p0, v0, v1, v4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->addViewInt(Landroid/view/View;IZ)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0, v3, v4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->addViewInt(Landroid/view/View;IZ)V

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p0, v0, v1, v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->addViewInt(Landroid/view/View;IZ)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v0, v3, v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->addViewInt(Landroid/view/View;IZ)V

    :goto_0
    iget p2, p0, Landroidx/leanback/widget/GridLayoutManager;->mChildVisibility:I

    if-eq p2, v1, :cond_3

    invoke-virtual {v0, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    iget-object p2, p0, Landroidx/leanback/widget/GridLayoutManager;->mPendingMoveSmoothScroller:Landroidx/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;

    if-eqz p2, :cond_c

    iget-boolean p4, p2, Landroidx/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->mStaggeredGrid:Z

    if-nez p4, :cond_c

    iget p4, p2, Landroidx/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->mPendingMoves:I

    if-nez p4, :cond_4

    goto :goto_6

    :cond_4
    iget-object v1, p2, Landroidx/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->this$0:Landroidx/leanback/widget/GridLayoutManager;

    if-lez p4, :cond_5

    iget p4, v1, Landroidx/leanback/widget/GridLayoutManager;->mFocusPosition:I

    iget v5, v1, Landroidx/leanback/widget/GridLayoutManager;->mNumRows:I

    :goto_1
    add-int/2addr p4, v5

    goto :goto_3

    :cond_5
    iget p4, v1, Landroidx/leanback/widget/GridLayoutManager;->mFocusPosition:I

    iget v5, v1, Landroidx/leanback/widget/GridLayoutManager;->mNumRows:I

    :goto_2
    sub-int/2addr p4, v5

    :goto_3
    iget v5, p2, Landroidx/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->mPendingMoves:I

    if-eqz v5, :cond_b

    invoke-virtual {p2, p4}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->findViewByPosition(I)Landroid/view/View;

    move-result-object v5

    if-nez v5, :cond_6

    goto :goto_5

    :cond_6
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_9

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->hasFocus()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-virtual {v5}, Landroid/view/View;->hasFocusable()Z

    move-result v6

    if-eqz v6, :cond_9

    :cond_7
    iput p4, v1, Landroidx/leanback/widget/GridLayoutManager;->mFocusPosition:I

    iput v3, v1, Landroidx/leanback/widget/GridLayoutManager;->mSubFocusPosition:I

    iget v2, p2, Landroidx/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->mPendingMoves:I

    if-lez v2, :cond_8

    add-int/lit8 v2, v2, -0x1

    iput v2, p2, Landroidx/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->mPendingMoves:I

    goto :goto_4

    :cond_8
    add-int/lit8 v2, v2, 0x1

    iput v2, p2, Landroidx/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->mPendingMoves:I

    :goto_4
    move-object v2, v5

    :cond_9
    iget v5, p2, Landroidx/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->mPendingMoves:I

    if-lez v5, :cond_a

    iget v5, v1, Landroidx/leanback/widget/GridLayoutManager;->mNumRows:I

    goto :goto_1

    :cond_a
    iget v5, v1, Landroidx/leanback/widget/GridLayoutManager;->mNumRows:I

    goto :goto_2

    :cond_b
    :goto_5
    if-eqz v2, :cond_c

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->hasFocus()Z

    move-result p2

    if-eqz p2, :cond_c

    iget p2, v1, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    or-int/lit8 p2, p2, 0x20

    iput p2, v1, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    iget p2, v1, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    and-int/lit8 p2, p2, -0x21

    iput p2, v1, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    :cond_c
    :goto_6
    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object p2

    invoke-static {v0, p2}, Landroidx/leanback/widget/GridLayoutManager;->getSubPositionByView(Landroid/view/View;Landroid/view/View;)I

    move-result p2

    iget p4, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    and-int/lit8 v1, p4, 0x3

    if-eq v1, v4, :cond_d

    iget p4, p0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPosition:I

    if-ne p1, p4, :cond_f

    iget p1, p0, Landroidx/leanback/widget/GridLayoutManager;->mSubFocusPosition:I

    if-ne p2, p1, :cond_f

    iget-object p1, p0, Landroidx/leanback/widget/GridLayoutManager;->mPendingMoveSmoothScroller:Landroidx/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;

    if-nez p1, :cond_f

    invoke-virtual {p0}, Landroidx/leanback/widget/GridLayoutManager;->dispatchChildSelected()V

    goto :goto_7

    :cond_d
    and-int/lit8 v1, p4, 0x4

    if-nez v1, :cond_f

    and-int/lit8 p4, p4, 0x10

    if-nez p4, :cond_e

    iget v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPosition:I

    if-ne p1, v1, :cond_e

    iget v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mSubFocusPosition:I

    if-ne p2, v1, :cond_e

    invoke-virtual {p0}, Landroidx/leanback/widget/GridLayoutManager;->dispatchChildSelected()V

    goto :goto_7

    :cond_e
    if-eqz p4, :cond_f

    iget p4, p0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPosition:I

    if-lt p1, p4, :cond_f

    invoke-virtual {v0}, Landroid/view/View;->hasFocusable()Z

    move-result p4

    if-eqz p4, :cond_f

    iput p1, p0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPosition:I

    iput p2, p0, Landroidx/leanback/widget/GridLayoutManager;->mSubFocusPosition:I

    iget p1, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    and-int/lit8 p1, p1, -0x11

    iput p1, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    invoke-virtual {p0}, Landroidx/leanback/widget/GridLayoutManager;->dispatchChildSelected()V

    :cond_f
    :goto_7
    invoke-virtual {p0, v0}, Landroidx/leanback/widget/GridLayoutManager;->measureChild(Landroid/view/View;)V

    :cond_10
    aput-object v0, p3, v3

    iget p0, p0, Landroidx/leanback/widget/GridLayoutManager;->mOrientation:I

    if-nez p0, :cond_11

    invoke-static {v0}, Landroidx/leanback/widget/GridLayoutManager;->getDecoratedMeasuredWidthWithMargin(Landroid/view/View;)I

    move-result p0

    goto :goto_8

    :cond_11
    invoke-static {v0}, Landroidx/leanback/widget/GridLayoutManager;->getDecoratedMeasuredHeightWithMargin(Landroid/view/View;)I

    move-result p0

    :goto_8
    return p0
.end method

.method public final getCount()I
    .locals 1

    iget-object p0, p0, Landroidx/leanback/widget/GridLayoutManager$2;->this$0:Landroidx/leanback/widget/GridLayoutManager;

    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    iget p0, p0, Landroidx/leanback/widget/GridLayoutManager;->mPositionDeltaInPreLayout:I

    add-int/2addr v0, p0

    return v0
.end method

.method public final getEdge(I)I
    .locals 2

    iget-object p0, p0, Landroidx/leanback/widget/GridLayoutManager$2;->this$0:Landroidx/leanback/widget/GridLayoutManager;

    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mPositionDeltaInPreLayout:I

    sub-int/2addr p1, v0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object p1

    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    const/high16 v1, 0x40000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/leanback/widget/GridLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroidx/leanback/widget/GridLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result p0

    :goto_0
    return p0
.end method

.method public final getSize(I)I
    .locals 1

    iget-object p0, p0, Landroidx/leanback/widget/GridLayoutManager$2;->this$0:Landroidx/leanback/widget/GridLayoutManager;

    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mPositionDeltaInPreLayout:I

    sub-int/2addr p1, v0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object p1

    sget-object v0, Landroidx/leanback/widget/GridLayoutManager;->sTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, p1}, Landroidx/leanback/widget/GridLayoutManager;->getDecoratedBoundsWithMargins(Landroid/graphics/Rect;Landroid/view/View;)V

    iget p0, p0, Landroidx/leanback/widget/GridLayoutManager;->mOrientation:I

    if-nez p0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result p0

    :goto_0
    return p0
.end method

.method public final removeItem(I)V
    .locals 2

    iget-object p0, p0, Landroidx/leanback/widget/GridLayoutManager$2;->this$0:Landroidx/leanback/widget/GridLayoutManager;

    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mPositionDeltaInPreLayout:I

    sub-int/2addr p1, v0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object p1

    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    and-int/lit8 v0, v0, 0x3

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/ChildHelper;->indexOfChild(Landroid/view/View;)I

    move-result v1

    invoke-virtual {p0, v0, v1, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->scrapOrRecycleView(Landroidx/recyclerview/widget/RecyclerView$Recycler;ILandroid/view/View;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    invoke-virtual {p0, p1, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->removeAndRecycleView(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    :goto_0
    return-void
.end method
