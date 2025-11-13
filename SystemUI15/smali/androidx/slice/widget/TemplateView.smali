.class public final Landroidx/slice/widget/TemplateView;
.super Landroidx/slice/widget/SliceChildView;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroidx/slice/widget/SliceViewPolicy$PolicyChangeListener;


# instance fields
.field public final mAdapter:Landroidx/slice/widget/SliceAdapter;

.field public mDisplayedItems:Ljava/util/List;

.field public mDisplayedItemsHeight:I

.field public final mForeground:Landroid/view/View;

.field public mListContent:Landroidx/slice/widget/ListContent;

.field public final mLoc:[I

.field public mParent:Landroidx/slice/widget/SliceView;

.field public final mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0, p1}, Landroidx/slice/widget/SliceChildView;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/slice/widget/TemplateView;->mDisplayedItems:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Landroidx/slice/widget/TemplateView;->mDisplayedItemsHeight:I

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroidx/slice/widget/TemplateView;->mLoc:[I

    new-instance v0, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/slice/widget/TemplateView;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    new-instance v1, Landroidx/slice/widget/SliceAdapter;

    invoke-direct {v1, p1}, Landroidx/slice/widget/SliceAdapter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroidx/slice/widget/TemplateView;->mAdapter:Landroidx/slice/widget/SliceAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    new-instance v1, Landroidx/slice/widget/SliceAdapter;

    invoke-direct {v1, p1}, Landroidx/slice/widget/SliceAdapter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroidx/slice/widget/TemplateView;->mAdapter:Landroidx/slice/widget/SliceAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    new-instance p1, Landroid/view/View;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Landroidx/slice/widget/TemplateView;->mForeground:Landroid/view/View;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x101030e

    invoke-static {v1, v0}, Landroidx/slice/widget/SliceViewUtil;->getDrawable(ILandroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput v0, p0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-virtual {p1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public final getLoadingActions()Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Landroidx/slice/widget/TemplateView;->mAdapter:Landroidx/slice/widget/SliceAdapter;

    iget-object p0, p0, Landroidx/slice/widget/SliceAdapter;->mLoadingActions:Ljava/util/Set;

    return-object p0
.end method

.method public final onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroidx/slice/widget/SliceView;

    iput-object v0, p0, Landroidx/slice/widget/TemplateView;->mParent:Landroidx/slice/widget/SliceView;

    iget-object v1, p0, Landroidx/slice/widget/TemplateView;->mAdapter:Landroidx/slice/widget/SliceAdapter;

    iput-object v0, v1, Landroidx/slice/widget/SliceAdapter;->mParent:Landroidx/slice/widget/SliceView;

    iput-object p0, v1, Landroidx/slice/widget/SliceAdapter;->mTemplateView:Landroidx/slice/widget/TemplateView;

    return-void
.end method

.method public final onMeasure(II)V
    .locals 2

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iget-object v1, p0, Landroidx/slice/widget/SliceChildView;->mViewPolicy:Landroidx/slice/widget/SliceViewPolicy;

    iget-boolean v1, v1, Landroidx/slice/widget/SliceViewPolicy;->mScrollable:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Landroidx/slice/widget/TemplateView;->mDisplayedItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget v1, p0, Landroidx/slice/widget/TemplateView;->mDisplayedItemsHeight:I

    if-eq v1, v0, :cond_0

    invoke-virtual {p0, v0}, Landroidx/slice/widget/TemplateView;->updateDisplayedItems(I)V

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public final resetView()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Landroidx/slice/widget/TemplateView;->mDisplayedItemsHeight:I

    iget-object v0, p0, Landroidx/slice/widget/TemplateView;->mDisplayedItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Landroidx/slice/widget/TemplateView;->mAdapter:Landroidx/slice/widget/SliceAdapter;

    invoke-virtual {p0}, Landroidx/slice/widget/SliceChildView;->getMode()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/slice/widget/SliceAdapter;->setSliceItems(ILjava/util/List;)V

    iput-object v2, p0, Landroidx/slice/widget/TemplateView;->mListContent:Landroidx/slice/widget/ListContent;

    return-void
.end method

.method public final setAllowTwoLines(Z)V
    .locals 0

    iget-object p0, p0, Landroidx/slice/widget/TemplateView;->mAdapter:Landroidx/slice/widget/SliceAdapter;

    iput-boolean p1, p0, Landroidx/slice/widget/SliceAdapter;->mAllowTwoLines:Z

    invoke-virtual {p0}, Landroidx/slice/widget/SliceAdapter;->notifyHeaderChanged()V

    return-void
.end method

.method public final setInsets(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroidx/slice/widget/SliceChildView;->setInsets(IIII)V

    iget-object p0, p0, Landroidx/slice/widget/TemplateView;->mAdapter:Landroidx/slice/widget/SliceAdapter;

    iput p1, p0, Landroidx/slice/widget/SliceAdapter;->mInsetStart:I

    iput p2, p0, Landroidx/slice/widget/SliceAdapter;->mInsetTop:I

    iput p3, p0, Landroidx/slice/widget/SliceAdapter;->mInsetEnd:I

    iput p4, p0, Landroidx/slice/widget/SliceAdapter;->mInsetBottom:I

    return-void
.end method

.method public final setLastUpdated(J)V
    .locals 2

    iput-wide p1, p0, Landroidx/slice/widget/SliceChildView;->mLastUpdated:J

    iget-object p0, p0, Landroidx/slice/widget/TemplateView;->mAdapter:Landroidx/slice/widget/SliceAdapter;

    iget-wide v0, p0, Landroidx/slice/widget/SliceAdapter;->mLastUpdated:J

    cmp-long v0, v0, p1

    if-eqz v0, :cond_0

    iput-wide p1, p0, Landroidx/slice/widget/SliceAdapter;->mLastUpdated:J

    invoke-virtual {p0}, Landroidx/slice/widget/SliceAdapter;->notifyHeaderChanged()V

    :cond_0
    return-void
.end method

.method public final setLoadingActions(Ljava/util/Set;)V
    .locals 0

    iget-object p0, p0, Landroidx/slice/widget/TemplateView;->mAdapter:Landroidx/slice/widget/SliceAdapter;

    if-nez p1, :cond_0

    iget-object p1, p0, Landroidx/slice/widget/SliceAdapter;->mLoadingActions:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    goto :goto_0

    :cond_0
    iput-object p1, p0, Landroidx/slice/widget/SliceAdapter;->mLoadingActions:Ljava/util/Set;

    :goto_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public final setPolicy(Landroidx/slice/widget/SliceViewPolicy;)V
    .locals 1

    iput-object p1, p0, Landroidx/slice/widget/SliceChildView;->mViewPolicy:Landroidx/slice/widget/SliceViewPolicy;

    iget-object v0, p0, Landroidx/slice/widget/TemplateView;->mAdapter:Landroidx/slice/widget/SliceAdapter;

    iput-object p1, v0, Landroidx/slice/widget/SliceAdapter;->mPolicy:Landroidx/slice/widget/SliceViewPolicy;

    iput-object p0, p1, Landroidx/slice/widget/SliceViewPolicy;->mListener:Landroidx/slice/widget/SliceViewPolicy$PolicyChangeListener;

    return-void
.end method

.method public final setShowLastUpdated(Z)V
    .locals 1

    iput-boolean p1, p0, Landroidx/slice/widget/SliceChildView;->mShowLastUpdated:Z

    iget-object p0, p0, Landroidx/slice/widget/TemplateView;->mAdapter:Landroidx/slice/widget/SliceAdapter;

    iget-boolean v0, p0, Landroidx/slice/widget/SliceAdapter;->mShowLastUpdated:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Landroidx/slice/widget/SliceAdapter;->mShowLastUpdated:Z

    invoke-virtual {p0}, Landroidx/slice/widget/SliceAdapter;->notifyHeaderChanged()V

    :cond_0
    return-void
.end method

.method public final setSliceActionListener(Lcom/android/systemui/volume/VolumePanelDialog$$ExternalSyntheticLambda5;)V
    .locals 0

    iput-object p1, p0, Landroidx/slice/widget/SliceChildView;->mObserver:Lcom/android/systemui/volume/VolumePanelDialog$$ExternalSyntheticLambda5;

    iget-object p0, p0, Landroidx/slice/widget/TemplateView;->mAdapter:Landroidx/slice/widget/SliceAdapter;

    if-eqz p0, :cond_0

    iput-object p1, p0, Landroidx/slice/widget/SliceAdapter;->mSliceObserver:Lcom/android/systemui/volume/VolumePanelDialog$$ExternalSyntheticLambda5;

    :cond_0
    return-void
.end method

.method public final setSliceActions(Ljava/util/List;)V
    .locals 0

    iget-object p0, p0, Landroidx/slice/widget/TemplateView;->mAdapter:Landroidx/slice/widget/SliceAdapter;

    iput-object p1, p0, Landroidx/slice/widget/SliceAdapter;->mSliceActions:Ljava/util/List;

    invoke-virtual {p0}, Landroidx/slice/widget/SliceAdapter;->notifyHeaderChanged()V

    return-void
.end method

.method public final setSliceContent(Landroidx/slice/widget/ListContent;)V
    .locals 2

    iput-object p1, p0, Landroidx/slice/widget/TemplateView;->mListContent:Landroidx/slice/widget/ListContent;

    iget-object v0, p0, Landroidx/slice/widget/SliceChildView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    iget-object v1, p0, Landroidx/slice/widget/SliceChildView;->mViewPolicy:Landroidx/slice/widget/SliceViewPolicy;

    invoke-virtual {p1, v0, v1}, Landroidx/slice/widget/ListContent;->getHeight(Landroidx/slice/widget/SliceStyle;Landroidx/slice/widget/SliceViewPolicy;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/slice/widget/TemplateView;->updateDisplayedItems(I)V

    return-void
.end method

.method public final setStyle(Landroidx/slice/widget/SliceStyle;Landroidx/slice/widget/RowStyle;)V
    .locals 1

    iput-object p1, p0, Landroidx/slice/widget/SliceChildView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    iput-object p2, p0, Landroidx/slice/widget/SliceChildView;->mRowStyle:Landroidx/slice/widget/RowStyle;

    iget-object v0, p0, Landroidx/slice/widget/TemplateView;->mAdapter:Landroidx/slice/widget/SliceAdapter;

    iput-object p1, v0, Landroidx/slice/widget/SliceAdapter;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    iget-boolean p1, p2, Landroidx/slice/widget/RowStyle;->mDisableRecyclerViewItemAnimator:Z

    if-eqz p1, :cond_0

    iget-object p0, p0, Landroidx/slice/widget/TemplateView;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/DefaultItemAnimator;)V

    :cond_0
    return-void
.end method

.method public final setTint(I)V
    .locals 0

    iput p1, p0, Landroidx/slice/widget/SliceChildView;->mTintColor:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/slice/widget/TemplateView;->updateDisplayedItems(I)V

    return-void
.end method

.method public final updateDisplayedItems(I)V
    .locals 6

    iget-object v0, p0, Landroidx/slice/widget/TemplateView;->mListContent:Landroidx/slice/widget/ListContent;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroidx/slice/widget/ListContent;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v0, p0, Landroidx/slice/widget/TemplateView;->mListContent:Landroidx/slice/widget/ListContent;

    iget-object v1, p0, Landroidx/slice/widget/SliceChildView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    iget-object v2, p0, Landroidx/slice/widget/SliceChildView;->mViewPolicy:Landroidx/slice/widget/SliceViewPolicy;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v3, v2, Landroidx/slice/widget/SliceViewPolicy;->mMode:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v3, v5, :cond_1

    new-instance p1, Landroidx/slice/widget/DisplayedListItems;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, v0, Landroidx/slice/widget/ListContent;->mHeaderContent:Landroidx/slice/widget/RowContent;

    filled-new-array {v2}, [Landroidx/slice/widget/RowContent;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v0, v0, Landroidx/slice/widget/ListContent;->mRowItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v5

    invoke-direct {p1, v1, v0}, Landroidx/slice/widget/DisplayedListItems;-><init>(Ljava/util/List;I)V

    goto :goto_0

    :cond_1
    iget-boolean v3, v2, Landroidx/slice/widget/SliceViewPolicy;->mScrollable:Z

    if-nez v3, :cond_2

    if-lez p1, :cond_2

    invoke-virtual {v1, v0, p1, v2}, Landroidx/slice/widget/SliceStyle;->getListItemsForNonScrollingList(Landroidx/slice/widget/ListContent;ILandroidx/slice/widget/SliceViewPolicy;)Landroidx/slice/widget/DisplayedListItems;

    move-result-object p1

    goto :goto_0

    :cond_2
    new-instance p1, Landroidx/slice/widget/DisplayedListItems;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Landroidx/slice/widget/ListContent;->mRowItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_3

    invoke-virtual {v1, v0}, Landroidx/slice/widget/SliceStyle;->shouldSkipFirstListItem(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v5, v1}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v0

    :cond_3
    invoke-direct {p1, v0, v4}, Landroidx/slice/widget/DisplayedListItems;-><init>(Ljava/util/List;I)V

    :goto_0
    iget-object p1, p1, Landroidx/slice/widget/DisplayedListItems;->mDisplayedItems:Ljava/util/List;

    iput-object p1, p0, Landroidx/slice/widget/TemplateView;->mDisplayedItems:Ljava/util/List;

    iget-object v0, p0, Landroidx/slice/widget/SliceChildView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    iget-object v1, p0, Landroidx/slice/widget/SliceChildView;->mViewPolicy:Landroidx/slice/widget/SliceViewPolicy;

    invoke-virtual {v0, p1, v1}, Landroidx/slice/widget/SliceStyle;->getListItemsHeight(Ljava/util/List;Landroidx/slice/widget/SliceViewPolicy;)I

    move-result p1

    iput p1, p0, Landroidx/slice/widget/TemplateView;->mDisplayedItemsHeight:I

    iget-object p1, p0, Landroidx/slice/widget/TemplateView;->mAdapter:Landroidx/slice/widget/SliceAdapter;

    iget-object v0, p0, Landroidx/slice/widget/TemplateView;->mDisplayedItems:Ljava/util/List;

    iget-object v1, p0, Landroidx/slice/widget/SliceChildView;->mViewPolicy:Landroidx/slice/widget/SliceViewPolicy;

    iget v1, v1, Landroidx/slice/widget/SliceViewPolicy;->mMode:I

    invoke-virtual {p1, v1, v0}, Landroidx/slice/widget/SliceAdapter;->setSliceItems(ILjava/util/List;)V

    iget p1, p0, Landroidx/slice/widget/TemplateView;->mDisplayedItemsHeight:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    if-le p1, v0, :cond_4

    move v4, v5

    :cond_4
    iget-object p1, p0, Landroidx/slice/widget/TemplateView;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p0, p0, Landroidx/slice/widget/SliceChildView;->mViewPolicy:Landroidx/slice/widget/SliceViewPolicy;

    iget-boolean p0, p0, Landroidx/slice/widget/SliceViewPolicy;->mScrollable:Z

    if-eqz p0, :cond_5

    if-eqz v4, :cond_5

    goto :goto_1

    :cond_5
    const/4 v5, 0x2

    :goto_1
    invoke-virtual {p1, v5}, Landroid/view/ViewGroup;->setOverScrollMode(I)V

    return-void

    :cond_6
    :goto_2
    invoke-virtual {p0}, Landroidx/slice/widget/TemplateView;->resetView()V

    return-void
.end method
